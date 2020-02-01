open Asm2
open Enums
open Lra
open Lra2
open Igraph

type alloc_result = Alloc of Id.t | Spill of Type.t
type alloc_tbl_t = alloc_result H.t

let lookup_alloc regtbl lr =
  try
    H.find regtbl lr
  with
    Not_found ->
    Format.eprintf "variable %s is not on the alloc table@." lr;
    assert false

let is_alloc alloc =
  match alloc with Alloc _ -> true | Spill _ -> false

let alloced_reg alloc =
  match alloc with Alloc (r) -> r | Spill _ -> assert false

let add_reg : alloc_tbl_t -> Id.t -> Id.t -> unit =
  fun regtbl x r ->
  assert (not (H.mem regtbl x));
  H.add regtbl x (Alloc (r))

let add_spill : alloc_tbl_t -> Id.t -> Type.t -> unit =
  fun regtbl x t ->
  assert (not (H.mem regtbl x));
  H.add regtbl x (Spill (t))

(* liverangeの集合を取りそれに割付られているレジスタのリストを返す *)
let make_reg_list : alloc_tbl_t -> S.t -> Id.t list =
  fun regtbl lr_set ->
  let lr_list = S.elements lr_set in
  List.map
    (fun lr ->
      match lookup_alloc regtbl lr with
      | Alloc (r) -> r
      | Spill _ -> assert false)
    lr_list

(* これを書き換えてcoalescingする *)
let choose_reg allregs regs lr =
  try
    List.find (fun r -> not (List.mem r regs)) allregs
  with
    Not_found -> assert false

let assign_lr : alloc_tbl_t -> inter_graph -> (liverange * Type.t) Stack.t ->
               Id.t list -> Id.t list -> unit =
  fun regtbl graph stack allregs fallregs ->
  let allocated = ref [] in
  while not (Stack.is_empty stack) do
    let lr, ty = Stack.pop stack in
    let adjs, _ = adjs_of_node graph lr in
    (* すでに割り付けたLRと干渉グラフ中で接続するLRの共通部分 *)
    let adjs' = S.inter adjs (S.of_list !allocated) in
    let regs = make_reg_list regtbl adjs' in
    let reg = (match ty with
               | Type.Float -> choose_reg fallregs regs lr
               | _ -> choose_reg allregs regs lr) in
    Format.eprintf "assign register %s to live range %s@." reg lr;
    add_reg regtbl lr reg;
    allocated := lr :: !allocated
  done


(* 干渉グラフをSpillによって彩色可能なものにする *)
(* 削除したnodeはregtblにSpillとして記録する *)
(* spill_rank_listの順序を調節してspill strategyを変更する *)
let rec spill_lr : alloc_tbl_t -> inter_graph -> (liverange * Type.t) list ->
                   int -> int -> (liverange * Type.t) Stack.t =
  fun regtbl graph spill_rank_list imax fmax ->
  try
    color_graph graph imax fmax
  with
    Not_colorable ->
    (assert (not (spill_rank_list = []));
     let lr, ty = List.hd spill_rank_list in
     Format.eprintf "spill live range : %s@." lr;
     add_spill regtbl lr ty;
     delete_node graph lr;
     spill_lr regtbl graph (List.tl spill_rank_list) imax fmax)

let f : inter_graph -> alloc_tbl_t =
  fun graph ->
  let allregs = Array.to_list Asm2.regs in
  let fallregs = Array.to_list Asm2.fregs in
  let regtbl : alloc_tbl_t = H.create graph.size in
  let spill_rank_list = nodes_of_graph graph in
  let imax = List.length allregs in
  let fmax = List.length fallregs in
  Format.eprintf "setup completed in RegAlloc.f@.";
  let stack = spill_lr regtbl graph spill_rank_list imax fmax in
  assign_lr regtbl graph stack allregs fallregs;
  regtbl
