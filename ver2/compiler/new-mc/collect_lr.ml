open Cfg
open Lra
(* codes for collecting the infomations of live ranges *)
(* the infomations are used when allocating registers in regAllo2.ml *)

(* target registersのためのデータ型 *)
(* 第一要素がレジスタオフセット，第二要素がループの深さ *)
(* compare関数の定義より，target offsetはループの深さの降順に管理される *)
module TarS =
  Set.Make
    (struct
      type t = int * int
      let compare a b = compare (snd b) (snd a)
    end)
include TarS

(* ループの深さの降順に並べられたtarget offsetsと使用可能なregister listを受け取り *)
(* 重要度も加味したtarget register listを返す *)
(* ofs = -1はreg_clを表す *)
let tar_list regs tarset =
  let tarofs = List.map fst (TarS.elements tarset) in
  let tarofs = List.filter (fun x -> x < (List.length regs)) tarofs in
  List.map
    (fun x ->
      if x >= 0 then
        List.nth regs x
      else if x = (-1) then
        Asm2.reg_cl
      else
        assert false)
    tarofs

let scale = ref 3

type lr_status_t = { target : TarS.t;
                   use_count : int }
(* use_countは使用される命令の深さを加味して加算する *)
(* use_count += !scale * depと更新 *)

(* ofs_dep = (ofs, dep) *)
let add_target ofs_dep stat =
  { target = TarS.add ofs_dep stat.target; use_count = stat.use_count }

let add_use_count dep stat =
  { target = stat.target; use_count = (!scale * dep) + stat.use_count }

type lr_stat_tbl_t = lr_status_t H.t

let make_lr_stat_tbl n =
  let tbl : lr_stat_tbl_t = H.create n in tbl

let get_status stat_tbl lr =
  try
    H.find stat_tbl lr
  with
    Not_found -> assert false

let register_stat stat_tbl lr =
  (if not (H.mem stat_tbl lr) then
     let status = { target = TarS.empty; use_count = 0 } in
     H.add stat_tbl lr status)

let add_use_to_stat stat_tbl lr dep =
  (if not (H.mem stat_tbl lr) then register_stat stat_tbl lr);
  let stat = H.find stat_tbl lr in
  H.replace stat_tbl lr (add_use_count dep stat)

let add_tar_to_stat stat_tbl lr ofs_dep =
  (if not (H.mem stat_tbl lr) then register_stat stat_tbl lr);
  let stat = H.find stat_tbl lr in
  H.replace stat_tbl lr (add_target ofs_dep stat)
  
let compute_ofs_deps dep xs =
  snd
    (List.fold_left
       (fun (ofs, acc) x -> (ofs + 1, (x, (ofs, dep)) :: acc))
    (0, []) xs)

let add_ofs_deps stat_tbl dep xs =
  let ofs_deps_map = compute_ofs_deps dep xs in
  List.iter
    (fun (x, ofs_dep) ->
      add_tar_to_stat stat_tbl x ofs_dep)
    ofs_deps_map

let add_uses stat_tbl dep xs =
  List.iter
    (fun x -> add_use_to_stat stat_tbl x dep)
    xs


let collect_stats_from_instr stat_tbl dep instr =
  let defs, uses = Lra.defs_uses_of_instr instr in
  List.iter (register_stat stat_tbl) defs;
  add_uses stat_tbl dep uses; (* use count *)
  match instr.op with (* target *)
  | CallCls((x, _), f, ys, zs) ->
     add_ofs_deps stat_tbl dep ys;
     add_ofs_deps stat_tbl dep zs;
     add_tar_to_stat stat_tbl x (0, dep);
     add_tar_to_stat stat_tbl f (-1, dep)
  | CallDir((x, _), _, ys, zs) ->
     add_ofs_deps stat_tbl dep ys;
     add_ofs_deps stat_tbl dep zs;
     add_tar_to_stat stat_tbl x (0, dep)
  | Entry(l, xs, ys) ->
     add_tar_to_stat stat_tbl l (-1,dep);
     add_ofs_deps stat_tbl dep xs;
     add_ofs_deps stat_tbl dep ys
  | Return((x, _)) ->
     add_tar_to_stat stat_tbl x (0, dep)
  | _ -> ()

let collect_stats_from_brnc stat_tbl dep = function
  | Brc(cmpr, _, _) ->
     let x, y = cmpr.args in
     add_uses stat_tbl dep [x; y]
  | _ -> ()

let collect_stats_from_block stat_tbl block =
  let dep = block.l_dep in
  List.iter
    (collect_stats_from_instr stat_tbl dep)
    block.code;
  collect_stats_from_brnc stat_tbl dep block.next

let make_stat_tbl : Cfg.block list -> lr_stat_tbl_t =
  fun cfg ->
  let stat_tbl = make_lr_stat_tbl (20 * (List.length cfg) )in
  List.iter
    (collect_stats_from_block stat_tbl)
    cfg;
  stat_tbl
