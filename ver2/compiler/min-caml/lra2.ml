(* lra.mlのデバッグ用関数+プリント関数群 *)
open Lra
open Enums
open Cfg
open Igraph
   
(* デバッグ用の関数たち *)
let print_lr_info { name = lr; size = n; set = s } =
  Printf.printf "name of LR : %s\n" lr;
  Printf.printf "size : %d\n" n;
  print_string "members : ";
  List.iter
    (fun x -> Printf.printf "%s, " x) (S.elements s);
  print_string "\b\b\n"

let print_lr lr_tbl x =
  try
    let lr_ix = H.find lr_tbl x in
    print_string "--------\n";
    Printf.printf "id : %s\n" x;
    print_lr_info lr_ix;
    print_string "--------\n"
  with
    Not_found ->
    print_string "--------\n";
    Printf.printf "%s : not found \n" x;
    print_string "--------\n"

let test_run _ =
  let list = ["xx.0"; "y.1"; "z.5"; "x.1"] in
  let lr_tbl = make_lr_tbl 100 in
  List.iter (fun x -> add_lr_tbl lr_tbl x Type.Int) list;
  union_lr lr_tbl "xx.0" "y.1";
  union_lr lr_tbl "y.1" "z.5";
  List.iter (print_lr lr_tbl) list

let register_type lr_ty_tbl lr ty =
  try
    let t = H.find lr_ty_tbl lr in
    if t = Type.Float then
      assert (ty = Type.Float)
    else
      assert (ty <> Type.Float)
  with
    Not_found -> H.add lr_ty_tbl lr ty
    

(* mergeしたlive-range tableを元に命令中の変数を置き換えて, 型の情報をlr_ty_tblに登録 *)
let replace_id_with_lr : lr_info H.t -> Type.t H.t -> Cfg.instr -> Cfg.instr =
  fun lrtbl lr_ty_tbl { instr_id = iid; op = operation } ->
  let lu = lookup_lr lrtbl in
  let rt x t = register_type lr_ty_tbl (lu x) t in
  match operation with
  | Phi ((x, t), yls) ->
     rt x t;
     let yls' = List.map (fun (y, l) -> (lu y, l)) yls in
     { instr_id = iid; op = Phi((lu x, t), yls') }
  | Nop -> { instr_id = iid; op = Nop }
  | Set((x, t), i) -> rt x t; { instr_id = iid; op = Set((lu x, t), i) }
  | SetL((x, t), l) -> rt x t; { instr_id = iid; op = SetL((lu x, t), l) }
  | Mov((x, t), y) -> rt x t; { instr_id = iid; op = Mov((lu x, t), lu y) }
  | Neg((x, t), y) -> rt x t; { instr_id = iid; op = Neg((lu x, t), lu y) }
  | Itof((x, t), y) -> rt x t; { instr_id = iid; op = Itof((lu x, t), lu y) }
  | In((x, t)) -> rt x t; { instr_id = iid; op = In((lu x, t)) }
  | Fin((x, t), y) -> rt x t; { instr_id = iid; op = Fin((lu x, t), lu y) }
  | Out (y) -> { instr_id = iid; op = Out(lu y) }
  | AddI((x, t), y, i) -> rt x t; { instr_id = iid; op = AddI((lu x, t), lu y, i) }
  | Add((x, t), y, z) -> rt x t; { instr_id = iid; op = Add((lu x, t), lu y, lu z) }
  | Sub((x, t), y, z) -> rt x t; { instr_id = iid; op = Sub((lu x, t), lu y, lu z) }
  | Mul((x, t), y, z) -> rt x t; { instr_id = iid; op = Mul((lu x, t), lu y, lu z) }
  | Div((x, t), y, z) -> rt x t; { instr_id = iid; op = Div((lu x, t), lu y, lu z) }
  | SLL((x, t), y, z) -> rt x t; { instr_id = iid; op = SLL((lu x, t), lu y, lu z) }
  | SLLI((x, t), y, i) -> rt x t; { instr_id = iid; op = SLLI((lu x, t), lu y, i) }
  | Ld((x, t), mem, y, Asm2.V(z)) -> rt x t; { instr_id = iid; op = Ld((lu x, t), mem, lu y, Asm2.V(lu z)) }
  | Ld((x, t), mem, y, Asm2.C(i)) -> rt x t; { instr_id = iid; op = Ld((lu x, t), mem, lu y, Asm2.C(i)) }
  | St((x, t), mem, y, z, Asm2.V(w)) -> rt x t; { instr_id = iid; op = St((lu x, t), mem, lu y, lu z, Asm2.V(lu w)) }
  | St((x, t), mem, y, z, Asm2.C(i)) -> rt x t; { instr_id = iid; op = St((lu x, t), mem, lu y, lu z, Asm2.C(i)) }
  | FMov((x, t), y) -> rt x t; { instr_id = iid; op = FMov((lu x, t), lu y) }
  | Ftoi((x, t), y) -> rt x t; { instr_id = iid; op = Ftoi((lu x, t), lu y) }
  | FNeg((x, t), y) -> rt x t; { instr_id = iid; op = FNeg((lu x, t), lu y) }
  | Floor((x, t), y) -> rt x t; { instr_id = iid; op = Floor((lu x, t), lu y) }
  | FSqrt((x, t), y) -> rt x t; { instr_id = iid; op = FSqrt((lu x, t), lu y) }
  | FAdd((x, t), y, z) -> rt x t; { instr_id = iid; op = FAdd((lu x, t), lu y, lu z) }
  | FSub((x, t), y, z) -> rt x t; { instr_id = iid; op = FSub((lu x, t), lu y, lu z) }
  | FMul((x, t), y, z) -> rt x t; { instr_id = iid; op = FMul((lu x, t), lu y, lu z) }
  | FDiv((x, t), y, z) -> rt x t; { instr_id = iid; op = FDiv((lu x, t), lu y, lu z) }
  | LdF((x, t), mem, y, Asm2.V(z)) -> rt x t; { instr_id = iid; op = LdF((lu x, t), mem, lu y, Asm2.V(lu z)) }
  | LdF((x, t), mem, y, Asm2.C(i)) -> rt x t; { instr_id = iid; op = LdF((lu x, t), mem, lu y, Asm2.C(i)) }
  | StF((x, t), mem, y, z, Asm2.V(w)) -> rt x t; { instr_id = iid; op = StF((lu x, t), mem, lu y, lu z, Asm2.V(lu w)) }
  | StF((x, t), mem, y, z, Asm2.C(i)) -> rt x t; { instr_id = iid; op = StF((lu x, t), mem, lu y, lu z, Asm2.C(i)) }
  | CallCls((x, t), f, ys, zs) ->
     rt x t;
     { instr_id = iid; op = CallCls((lu x, t), lu f, List.map lu ys, List.map lu zs) }
  | CallDir((x, t), l, ys, zs) ->
     rt x t;
     { instr_id = iid; op = CallDir((lu x, t), l, List.map lu ys, List.map lu zs) }
  | Entry(xs, ys) ->
     List.iter (fun x -> rt x Type.Int) xs;
     List.iter (fun x -> rt x Type.Float) ys;
     { instr_id = iid; op = Entry(List.map lu xs, List.map lu ys) }
  | Return((x, t)) -> rt x t; { instr_id = iid; op = Return((lu x, t)) }
  | _ -> assert false


let block_replace_id_with_lr : lr_info H.t -> Type.t H.t -> Cfg.block -> unit =
  fun lrtbl lr_ty_tbl block ->
  block.code <- List.map (replace_id_with_lr lrtbl lr_ty_tbl) block.code

let cfg_replace_with_lr : lr_info H.t -> Cfg.block list -> Type.t H.t =
  fun lrtbl blocks ->
  let lr_ty_tbl = H.create ((List.length blocks) * 100) in
  List.iter (block_replace_id_with_lr lrtbl lr_ty_tbl) blocks;
  lr_ty_tbl

let lookup_ty : Type.t H.t -> Id.t -> Type.t =
  fun lr_ty_tbl lr ->
  try H.find lr_ty_tbl lr with Not_found -> assert false


let separate_lr : Type.t H.t -> Id.t list -> Id.t list * Id.t list =
  fun lr_ty_tbl livenow ->
  let i_livenow, f_livenow =
    List.fold_left
      (fun (i_acc, f_acc) lr ->
        match lookup_ty lr_ty_tbl lr with
        | Type.Float -> (i_acc, lr :: f_acc)
        | _ -> (lr :: i_acc, f_acc))
      ([], []) livenow in
  i_livenow, f_livenow

let add_interf_of_instr :
      Igraph.inter_graph -> S.t H.t -> Type.t H.t -> Cfg.instr -> unit =
  fun graph livenow_tbl lr_ty_tbl instr ->
  let defs, _ = defs_uses_of_instr instr in
  let livelist = S.elements (Lra.lookup_livenow_tbl livenow_tbl instr) in
  let i_lives, f_lives = separate_lr lr_ty_tbl livelist in
  let interfs = List.concat
                  (List.map
                     (fun def ->
                       match lookup_ty lr_ty_tbl def with
                       | Type.Float -> 
                          (List.map (fun lr -> (def, lr, Type.Float)) f_lives)
                       | _ ->
                          (* 簡単のため, regAlloc2以降ではFloat以外の型は全てIntと考える *)
                          (List.map (fun lr -> (def, lr, Type.Int)) i_lives))
                     defs) in
  List.iter (fun (x, y, ty) -> add_edge graph (x, ty) (y, ty)) interfs

let add_interf_of_block :
      Igraph.inter_graph -> S.t H.t -> Type.t H.t -> Cfg.block -> unit =
  fun graph livenow_tbl lr_ty_tbl block ->
  List.iter
    (add_interf_of_instr graph livenow_tbl lr_ty_tbl)
    block.code
  
    
let build_igraph : Cfg.block list -> Igraph.inter_graph =
  (* 副作用としてblock各命令の変数たちがLRに書き換わる *)
  fun blocks ->
  let lrtbl, idset, lrset = Lra.blocklist_to_lrtbl blocks in
  let lr_ty_tbl = cfg_replace_with_lr lrtbl blocks in (* ここで変数がLRに書き換わる *)
  let lra_sets =  dfa_of_liveout blocks in
  let livenow_tbl = build_livenow_tbl_of_blocks lra_sets blocks in
  let igraph = create_graph ((List.length blocks) * 100) in
  List.iter (add_interf_of_block igraph livenow_tbl lr_ty_tbl) blocks;
  igraph

      
