open Asm2
open Enums
open RegAlloc2
open Cfg

(* 現在のARのstacktopのoffset *)
let stacktop = ref 0
(* 変数からoffsetへのmap *)
let stackmap = H.create 5000

let save x =
  if not (H.mem stackmap x) then
    (H.add stackmap x !stacktop;
     stacktop := !stacktop + 4)

let add_list_to_stackmap regtbl xs =
  let xs = List.map fst (* spillされた変数を集める *)
             (List.filter
                (fun (x, a) -> not (is_alloc a))
                (List.map (fun x -> (x, lookup_alloc regtbl x)) xs)) in
  List.iter save xs

let get_offset x =
  try H.find stackmap x with Not_found -> assert false

                                        
(* 関数呼び出しのために引数を並べ替える(register shuffling) (caml2html: emit_shuffle) *)
let rec shuffle sw xys =
  (* remove identical moves *)
  let _, xys = List.partition (fun (x, y) -> x = y) xys in
  (* find acyclic moves *)
  match List.partition (fun (_, y) -> List.mem_assoc y xys) xys with
  | [], [] -> []
  | (x, y) :: xys, [] -> (* no acyclic moves; resolve a cyclic move *)
      (y, sw) :: (x, y) :: shuffle sw (List.map
                                         (function
                                           | (y', z) when y = y' -> (sw, z)
                                           | yz -> yz)
                                         xys)
  | xys, acyc -> acyc @ shuffle sw xys


let ld mem = match mem with I -> "ilw" | M -> "lw"
let ld mem = match mem with I -> "ilw" | M -> "lw"
let ld_s mem = match mem with I -> "ilw.s" | M -> "lw.s"
let st mem = match mem with I -> "isw" | M -> "sw"
let st_s mem = match mem with I -> "isw.s" | M -> "sw.s"

let add_regmap regtbl =
  fun (spl_regs, fspl_regs, regmap, spilled) x ->
  match lookup_alloc regtbl x with
  | Alloc(r) -> (spl_regs, fspl_regs, (x,r) :: regmap, spilled)
  | Spill (t) ->
     (match t with
      | Type.Float -> (* float型のspillの時 *)
         if not (List.mem_assoc x regmap) then
           ((* まだregmapに追加されていないとき *)
            save x; (* AR上に追加 *)
            match fspl_regs with
            | r :: rs -> (spl_regs, rs, (x, r) :: regmap, (x, t) :: spilled)
            | [] -> assert false (* spill regは２つあれば足りるはず *))
         else if not (List.mem_assoc x spilled) then
           (* regmapに追加されているがspilledに追加されていない *)
           (* これはdefsの後のusesのときの計算で起こりうる, get_reg中参照 *)
           (spl_regs, fspl_regs, regmap, (x, t) :: spilled)
         else
           (spl_regs, fspl_regs, regmap, spilled)
      | _ -> (* その他の型の時 *)
         if not (List.mem_assoc x regmap) then
           (save x;
            match spl_regs with
            | r :: rs -> (rs, fspl_regs, (x, r) :: regmap, (x, t) :: spilled)
            | [] -> assert false)
         else if not (List.mem_assoc x spilled) then
           (spl_regs, fspl_regs, regmap, (x, t) :: spilled)
         else
           (spl_regs, fspl_regs, regmap, spilled))
     

let get_reg regtbl defs uses =
  let spl_regs, fspl_regs, regmap, dspls =
    List.fold_left
      (add_regmap regtbl)
      ([reg_sub1; reg_sub2], [freg_sub1; freg_sub2], [], [])
      defs in
  let _, _, regmap, uspls =
    List.fold_left
      (add_regmap regtbl)
      (spl_regs, fspl_regs, regmap, [])
      uses in
  regmap, (List.rev dspls), (List.rev uspls)

let lookup_regmap regmap x =
  try List.assoc x regmap with Not_found -> assert false

let insert_restore oc regmap spilled =
  List.iter
    (fun (x, t) ->
      let reg = lookup_regmap regmap x in
      let offset = get_offset x in
      if t = Type.Float then
        Printf.fprintf oc "\tlw.s\t%s %s %d\n" reg_sp reg offset
      else
        Printf.fprintf oc "\tlw\t%s %s %d\n" reg_sp reg offset)
    spilled

let insert_save oc regmap spilled =
  List.iter
    (fun (x, t) ->
      let reg = lookup_regmap regmap x in
      let offset = get_offset x in
      if t = Type.Float then
        Printf.fprintf oc "\tsw.s\t%s %s %d\n" reg_sp reg offset
      else
        Printf.fprintf oc "\tsw\t%s %s %d\n" reg_sp reg offset)
    spilled

let output_simple_op oc regmap operation = 
  let lu = lookup_regmap regmap in
  match operation with
  | Phi _ -> () (* Phi関数は単純に消す *)
  | Nop -> ()
  | Set((x, _), i) ->
     Printf.fprintf oc "\taddi\t%%r0 %s %d\n" (lu x) i
  | SetL((x, _), (Id.L(l))) ->
     Printf.fprintf oc "\taddi\t%%r0 %s %s\n" x l
  | Mov((x, _), y) when (lu x) = (lu y) -> ()
  | Mov((x, _), y) -> Printf.fprintf oc "\tmov\t%s %s\n" (lu y) (lu x)
  | Neg((x, _), y) -> Printf.fprintf oc "\tsub\t%%r0 %s %s\n" (lu y) (lu x)
  | Itof((x, _), y) -> Printf.fprintf oc "\tmtc1\t%s %s\n" (lu y) (lu x)
  | In((x, _)) -> Printf.fprintf oc "\tin\t%s\n" (lu x)
  | Fin((x, _), _) -> Printf.fprintf oc "\tfin\t%s\n" (lu x)
  | Out(y) -> Printf.fprintf oc "\tout\t%s\n" (lu y)
  | AddI((x, _), y, i) -> Printf.fprintf oc "\taddi\t%s %s %d\n" (lu y) (lu x) i
  | Add((x, _), y, z) -> Printf.fprintf oc "\tadd\t%s %s %s\n" (lu y) (lu z) (lu x)
  | Sub((x, _), y, z) -> Printf.fprintf oc "\tsub\t%s %s %s\n" (lu y) (lu z) (lu x)
  | Mul((x, _), y, z) -> Printf.fprintf oc "\tmul\t%s %s %s\n" (lu y) (lu z) (lu x)
  | Div((x, _), y, z) -> Printf.fprintf oc "\tdiv\t%s %s %s\n" (lu y) (lu z) (lu x)
  | SLLI((x, _), y, i) -> Printf.fprintf oc "\tslli\t%s %s %d\n" (lu y) (lu x) i
  | SLL((x, _), y, z) -> Printf.fprintf oc "\tsll\t%s %s %s\n" (lu y) (lu x) (lu z)
  | Ld((x, _), mem, y, C(i)) ->
     Printf.fprintf oc "\t%s\t%s %s %d\n" (ld mem) (lu y) (lu x) i
  | Ld((x, _), mem, y, V(z)) ->
     Printf.fprintf oc "\tadd\t%s %s %%r31\n" (lu y) (lu z);
     Printf.fprintf oc "\t%s\t%%r31 %s 0\n" (ld mem) (lu x)
  | St(_, mem, x, y, C(i)) ->
     Printf.fprintf oc "\t%s\t%s %s %d\n" (st mem) (lu y) (lu x) i
  | St(_, mem, x, y, V(z)) ->
     Printf.fprintf oc "\tadd\t%s %s %%r31\n" (lu y) (lu z);
     Printf.fprintf oc "\t%s\t%%r31 %s 0\n" (st mem) (lu x)
  | FMov((x, _), y) when (lu x) = (lu y) -> ()
  | FMov((x, _), y) -> Printf.fprintf oc "\tmov.s\t%s %s\n" (lu y) (lu x)
  | FNeg((x, _), y) -> Printf.fprintf oc "\tneg.s\t%s %s\n" (lu y) (lu x)
  | Ftoi((x, _), y) -> Printf.fprintf oc "\tmfc1\t%s %s\n" (lu x) (lu y)
  | FSqrt((x, _), y) -> Printf.fprintf oc "\tsqrt.s\t%s %s\n" (lu y) (lu x)
  | FAdd((x, _), y, z) -> Printf.fprintf oc "\tadd.s\t%s %s %s\n" (lu z) (lu y) (lu x)
  | FSub((x, _), y, z) -> Printf.fprintf oc "\tsub.s\t%s %s %s\n" (lu z) (lu y) (lu x)
  | FMul((x, _), y, z) -> Printf.fprintf oc "\tmul.s\t%s %s %s\n" (lu z) (lu y) (lu x)
  | FDiv((x, _), y, z) -> Printf.fprintf oc "\tdiv.s\t%s %s %s\n" (lu z) (lu y) (lu x)
  | LdF((x, _), mem, y, C(i)) ->
     Printf.fprintf oc "\t%s\t%s %s %d\n" (ld_s mem) (lu y) (lu x) i
  | LdF((x, _), mem, y, V(z)) ->
     Printf.fprintf oc "\tadd\t%s %s %%r31\n" (lu y) (lu z);
     Printf.fprintf oc "\t%s\t%%r31 %s 0\n" (ld_s mem) (lu x)
  | StF(_, mem, x, y, C(i)) ->
     Printf.fprintf oc "\t%s\t%s %s %d\n" (st_s mem) (lu y) (lu x) i
  | StF(_, mem, x, y, V(z)) ->
     Printf.fprintf oc "\tadd\t%s %s %%r31\n" (lu y) (lu z);
     Printf.fprintf oc "\t%s\t%%r31 %s 0\n" (st_s mem) (lu x)
     (* CallCls, CallDir, Entryはsimpleではない, 特別なルーチンで扱う *)
  | Return((x, t)) ->
     if t = Type.Float then
       (if (lu x) <> fregs.(0) then
          Printf.fprintf oc "\tmov.s\t%s %s\n" (lu x) fregs.(0))
     else
       (if (lu x) <> regs.(0) then
          Printf.fprintf oc "\tmov\t%s %s\n" (lu x) regs.(0))
  | _ -> assert false

let output_save_op_restore oc regtbl oper defs uses =
  let regmap, dspls, uspls = get_reg regtbl defs uses in
  insert_restore oc regmap uspls;
  output_simple_op oc regmap oper;
  insert_save oc regmap dspls
 
let rec output_instr oc livenow_tbl regtbl instr =
  let oper = instr.op in
  let out_sor = output_save_op_restore oc regtbl in
  match oper with
  | Phi _ -> () (* Phi関数は消す *)
  | Nop -> ()
  | Set((x, _), _) -> out_sor oper [x] []
  | SetL((x, _), _) -> out_sor oper [x] []
  | Mov((x, _), y) -> out_sor oper [x] [y]
  | Neg((x, _), y) -> out_sor oper [x] [y]
  | Itof((x, _), y) -> out_sor oper [x] [y]
  | In((x, _)) -> out_sor oper [x] []
  | Fin((x, _), y) -> out_sor oper [x] [y]
  | Out(y) -> out_sor oper [] [y]
  | AddI((x, _), y, _) -> out_sor oper [x] [y]
  | Add((x, _), y, z) -> out_sor oper [x] [y; z]
  | Sub((x, _), y, z) -> out_sor oper [x] [y; z]
  | Mul((x, _), y, z) -> out_sor oper [x] [y; z]
  | Div((x, _), y, z) -> out_sor oper [x] [y; z]
  | SLLI((x, _), y, _) -> out_sor oper [x] [y]
  | SLL((x, _), y, z) -> out_sor oper [x] [y; z]
  | Ld((x, _), _, y, C(_)) -> out_sor oper [x] [y]
  | Ld((x, _), mem, y, V(z)) ->
     let regmap, dspls, uspls = get_reg regtbl [] [y; z] in
     assert (dspls = []);
     insert_restore oc regmap uspls; (* restore *)
     Printf.fprintf oc "\tadd\t%s %s %%r31\n"
       (lookup_regmap regmap y) (lookup_regmap regmap z);
     let regmap, dspls, uspls = get_reg regtbl [x] [] in
     assert (uspls = []);
     Printf.fprintf oc "\t%s\t%%r31 %s 0\n" (ld mem)
       (lookup_regmap regmap x);
     insert_save oc regmap dspls; (* save*)
  | St(_, _, x, y, C(_)) -> out_sor oper [] [x; y]
  | St(_, mem, x, y, V(z)) ->
     let regmap, dspls, uspls = get_reg regtbl [] [y; z] in
     assert (dspls = []);
     insert_restore oc regmap uspls; (* restore *)
     Printf.fprintf oc "\tadd\t%s %s %%r31\n"
       (lookup_regmap regmap y) (lookup_regmap regmap z);
     let regmap, dspls, uspls = get_reg regtbl [] [x] in
     assert (dspls = []);
     insert_restore oc regmap uspls; (* storeするxをrestore *)
     Printf.fprintf oc "\t%s\t%%r31 %s 0\n" (st mem)
       (lookup_regmap regmap x)
  | FMov((x, _), y) -> out_sor oper [x] [y]
  | FNeg((x, _), y) -> out_sor oper [x] [y]
  | Floor((x, _), y) -> out_sor oper [x] [y]
  | Ftoi((x, _), y) -> out_sor oper [x] [y]
  | FSqrt((x, _), y) -> out_sor oper [x] [y]
  | FAdd((x, _), y, z) -> out_sor oper [x] [y; z]
  | FSub((x, _), y, z) -> out_sor oper [x] [y; z]
  | FMul((x, _), y, z) -> out_sor oper [x] [y; z]
  | FDiv((x, _), y, z) -> out_sor oper [x] [y; z]
  | LdF((x, _), _, y, C(_)) -> out_sor oper [x] [y]
  | LdF((x, _), mem, y, V(z)) ->
     let regmap, dspls, uspls = get_reg regtbl [] [y; z] in
     assert (dspls = []);
     insert_restore oc regmap uspls; (* restore *)
     Printf.fprintf oc "\tadd\t%s %s %%r31\n"
       (lookup_regmap regmap y) (lookup_regmap regmap z);
     let regmap, dspls, uspls = get_reg regtbl [x] [] in
     assert (uspls = []);
     Printf.fprintf oc "\t%s\t%%r31 %s 0\n" (ld_s mem)
       (lookup_regmap regmap x);
     insert_save oc regmap dspls; (* save*)
  | StF(_, _, x, y, C(_)) -> out_sor oper [] [x; y]
  | StF(_, mem, x, y, V(z)) ->
     let regmap, dspls, uspls = get_reg regtbl [] [y; z] in
     assert (dspls = []);
     insert_restore oc regmap uspls; (* restore *)
     Printf.fprintf oc "\tadd\t%s %s %%r31\n"
       (lookup_regmap regmap y) (lookup_regmap regmap z);
     let regmap, dspls, uspls = get_reg regtbl [] [x] in
     assert (dspls = []);
     insert_restore oc regmap uspls; (* storeするxをrestore *)
     Printf.fprintf oc "\t%s\t%%r31 %s 0\n" (st_s mem)
       (lookup_regmap regmap x)
  | CallCls _ ->
     callcls_routine oc livenow_tbl regtbl instr
  | CallDir _ ->
     calldir_routine oc livenow_tbl regtbl instr
  | Entry _ ->
     entry_routine oc regtbl instr
  | Return((x, t)) ->
     (match lookup_alloc regtbl x with
      | Alloc(r) ->
         if t = Type.Float && r <> fregs.(0) then
           Printf.fprintf oc "\tmov.s\t%s %s\n" r fregs.(0)
         else if r <> regs.(0) then
           Printf.fprintf oc "\tmov\t%s %s\n" r regs.(0)
         else
           ()
      | Spill(t') ->
         if t = Type.Float && t' = Type.Float then
           insert_restore oc [(x, fregs.(0))] [(x, t)]
         else if t <> Type.Float && t' <> Type.Float then
           insert_restore oc [(x, regs.(0))] [(x, t)]
         else
           assert false)
  | _ ->  assert false
                           
and ofs_live_regs saves top =
  let new_top, savemap =
    List.fold_left
      (fun (ofs, acc) r ->
        (ofs + 4, (r, ofs) :: acc))
      (top, []) saves in
  new_top, savemap

and save_live_regs oc savemap =
  List.iter
    (fun (r, ofs) ->
      if is_freg r then
        Printf.fprintf oc "\tsw.s\t%s %s %d\n" reg_sp r ofs
      else
        Printf.fprintf oc "\tsw\t%s %s %d\n" reg_sp r ofs)
    savemap

and restore_live_regs oc savemap =
  List.iter
    (fun (r, ofs) ->
      if is_freg r then
        Printf.fprintf oc "\tlw.s\t%s %s %d\n" reg_sp r ofs
      else
        Printf.fprintf oc "\tlw\t%s %s %d\n" reg_sp r ofs)
    savemap

and make_int_argmap regtbl xs =
  let allocs = List.map
               (fun x -> (x, lookup_alloc regtbl x))
               xs in
  let _, shuffle_map = List.fold_left
                        (fun (i, acc) (x, a) -> (i + 1, (x, a, regs.(i)) :: acc))
                        (0, []) allocs in
  let xrrs, xsrs = List.partition
                   (fun (_, a, _) -> is_alloc a)
                   shuffle_map in
  let rrs = List.map (fun (_, a, r) -> (alloced_reg a, r)) xrrs in
  let xrs = List.map (fun (x, _, r) -> (x, r)) xsrs in
  rrs, xrs

and make_float_argmap regtbl xs =
  let allocs = List.map
                 (fun x -> (x, lookup_alloc regtbl x))
                 xs in
  let _, shuffle_map = List.fold_left
                         (fun (i, acc) (x, a) -> (i + 1, (x, a, fregs.(i)) :: acc))
                         (0, []) allocs in
  let xrrs, xsrs = List.partition
                   (fun (_, a, _) -> is_alloc a)
                   shuffle_map in
  let rrs = List.map (fun (_, a, r) -> (alloced_reg a, r)) xrrs in
  let xrs = List.map (fun (x, _, r) -> (x, r)) xsrs in
  rrs, xrs

and insert_int_shuffle oc xys =
  List.iter
    (fun (x, y) -> Printf.fprintf oc "\tmov\t%s %s\n" x y)
    (shuffle reg_sub2 xys)

and insert_float_shuffle oc xys =
  List.iter
    (fun (x, y) -> Printf.fprintf oc "\tmov.s\t%s %s\n" x y)
    (shuffle freg_sub1 xys)
  
and insert_int_restore oc xrs =
  List.iter
    (fun (x, r) -> Printf.fprintf oc "\tlw\t%s %s %d\n" reg_sp r (get_offset x))
    xrs

and insert_float_restore oc xrs =
  List.iter
    (fun (x, r) -> Printf.fprintf oc "\tlw.s\t%s %s %d\n" reg_sp r (get_offset x))
    xrs

and insert_int_save oc xrs =
  List.iter
    (fun (x, r) -> Printf.fprintf oc "\tsw\t%s %s %d\n" reg_sp r (get_offset x))
    xrs

and insert_float_save oc xrs =
  List.iter
    (fun (x, r) -> Printf.fprintf oc "\tsw.s\t%s %s %d\n" reg_sp r (get_offset x))
    xrs
    
and callcls_routine oc livenow_tbl regtbl instr =
  let iid = instr.instr_id in
  let oper = instr.op in
  match oper with
  | CallCls((x, t), f, ys, zs) ->
     add_list_to_stackmap regtbl (x :: f :: (ys @ zs));
     let livenow =
       try H.find livenow_tbl iid with Not_found -> assert false in
     let livenow = S.elements livenow in
     let saves = List.concat (* 関数呼び出しに際してsaveが必要なregisters *)
                   (List.map
                      (fun x -> match lookup_alloc regtbl x with
                                | Alloc(r) -> [r]
                                | Spill _ -> [])
                      livenow) in
     let new_top, savemap = ofs_live_regs saves !stacktop in
     let rrs, xrs = make_int_argmap regtbl ys in
     let frrs, fxrs = make_float_argmap regtbl zs in
     save_live_regs oc savemap;
     insert_int_shuffle oc ((x, reg_sub1) :: rrs); (* reg_sub1をreg_clとする  *)
     insert_int_restore oc xrs;
     insert_float_shuffle oc frrs;
     insert_float_shuffle oc fxrs;
     Printf.fprintf oc "\tsw\t%s %s %d\n" reg_sp reg_ra new_top;
     Printf.fprintf oc "\tlw\t%s %s 0\n" reg_sub1 reg_sub2;
     Printf.fprintf oc "\taddi\t%s %s %d\n" reg_sp reg_sp (new_top + 4);
     Printf.fprintf oc "\tjalr\t%s\n" reg_sub2;
     Printf.fprintf oc "\taddi\t%s %s -%d\n" reg_sp reg_sp (new_top + 4);
     Printf.fprintf oc "\tlw\t%s %s %d\n" reg_sp reg_ra new_top;
     (if t = Type.Float then
        (match lookup_alloc regtbl x with
         | Alloc(r) when r <> fregs.(0) ->
            Printf.fprintf oc "\tmov.s\t%s %s\n" fregs.(0) r
         | Alloc _ -> ()
         | Spill _ ->
            Printf.fprintf oc "\tsw.s\t%s %s %d\n" reg_sp fregs.(0) (get_offset x))
      else
        (match lookup_alloc regtbl x with
         | Alloc(r) when r <> regs.(0) ->
            Printf.fprintf oc "\tmov\t%s %s\n" regs.(0) r
         | Alloc _ -> ()
         | Spill _ ->
            Printf.fprintf oc "\tsw\t%s %s %d\n" reg_sp regs.(0) (get_offset x)));
     restore_live_regs oc savemap
  | _ -> assert false

and calldir_routine oc livenow_tbl regtbl instr =
  let iid = instr.instr_id in
  let oper = instr.op in
  match oper with
  | CallDir((x, t), Id.L(l), ys, zs) ->
     add_list_to_stackmap regtbl (x :: (ys @ zs));
     let livenow =
       try H.find livenow_tbl iid with Not_found -> assert false in
     let livenow = S.elements livenow in
     let saves = List.concat
                   (List.map
                      (fun x -> match lookup_alloc regtbl x with
                                | Alloc(r) -> [r]
                                | Spill _ -> [])
                      livenow) in
     let new_top, savemap = ofs_live_regs saves !stacktop in
     let rrs, xrs = make_int_argmap regtbl ys in
     let frrs, fxrs = make_float_argmap regtbl zs in
     save_live_regs oc savemap;
     insert_int_shuffle oc rrs; (* レジスタに乗っている引数をシャッフル *)
     insert_int_restore oc xrs; (* 乗っていない引数をロード *)
     insert_float_shuffle oc frrs;
     insert_float_restore oc fxrs;
     Printf.fprintf oc "\tsw\t%s %s %d\n" reg_sp reg_ra new_top;
     Printf.fprintf oc "\taddi\t%s %s %d\n" reg_sp reg_sp (new_top + 4);
     Printf.fprintf oc "\tjal\t%s\n" x;
     Printf.fprintf oc "\taddi\t%s %s -%d\n" reg_sp reg_sp (new_top + 4);
     Printf.fprintf oc "\tlw\t%s %s %d\n" reg_sp reg_ra new_top;
     (if t = Type.Float then
        (match lookup_alloc regtbl x with
         | Alloc (r) when r <> fregs.(0) ->
            Printf.fprintf oc "\tmov.s\t%s %s\n" fregs.(0) r
         | Alloc _ -> ()
         | Spill _ ->
            Printf.fprintf oc "\tsw.s\t%s %s %d\n" reg_sp fregs.(0) (get_offset x))
      else
        (match lookup_alloc regtbl x with
         | Alloc (r) when r <> regs.(0) ->
            Printf.fprintf oc "\tmov\t%s %s\n" regs.(0) r
         | Alloc _ -> ()
         | Spill _ ->
            Printf.fprintf oc "\tsw\t%s %s %d\n" reg_sp regs.(0) (get_offset x)));
     restore_live_regs oc savemap
  | _ -> assert false
     
and entry_routine oc regtbl instr =
  let oper = instr.op in
  match oper with
  | Entry(xs, ys) ->
     add_list_to_stackmap regtbl (xs @ ys);
     let rrs, xrs = make_int_argmap regtbl xs in
     let rrs = List.map (fun (x, y) -> (y, x)) rrs in
     let frrs, fxrs = make_float_argmap regtbl ys in
     let frrs = List.map (fun (x, y) -> (y, x)) frrs in
     insert_int_save oc xrs;
     insert_int_shuffle oc rrs;
     insert_float_save oc fxrs;
     insert_float_shuffle oc frrs
  | _ -> assert false

let brnc (t, cmp) =
  match t with
  | Type.Float ->
     (match cmp with
      | Eq -> "fbeq"
      | NE -> "fbne"
      | LE -> "fble"
      | Lt -> "fbl")
  | _ ->
     (match cmp with
      | Eq -> "beq"
      | NE -> "bne"
      | LE -> "ble"
      | Lt -> "bl")

let output_block oc livenow_tbl regtbl block =
  List.iter
    (output_instr oc livenow_tbl regtbl) block.code

let is_done tbl block =
  let l = Cfg.label_of_block block in
  try
    H.find tbl l
  with
    Not_found -> H.add tbl l true; false

let check_next oc livenow_tbl regtbl work_tbl block stack =
  let is_not_done = (fun x -> not (is_done work_tbl x)) in
  output_block oc livenow_tbl regtbl block;
  match block.next with
  | Brc(cmpr, bref1, bref2) ->
     let b1, b2 = !bref1, !bref2 in
     let l1 = Cfg.label_of_block b1 in
     let l2 = Cfg.label_of_block b2 in
     let x, y = cmpr.args in
     let brnc = brnc cmpr.branch in
     let regmap, _ , uspls = get_reg regtbl [] [x; y] in
     let lu = lookup_regmap regmap in
     insert_restore oc regmap uspls;
     Printf.fprintf oc "\t%s\t%s %s %s\n" brnc (lu x) (lu y) l1;
     (if is_not_done b1 then Stack.push (true, b1) stack);
     if is_not_done b2 then
       (* ここのfalseはわかりにくいので課題提出の際にはtrueにする *)
       (* Stack.push (false, b2) stack *)
       Stack.push (true, b2) stack
     else
       Printf.fprintf oc "\tj\t%s\n" l2
  | Cnfl(bref) ->
     let b = !bref in
     let l = Cfg.label_of_block b in
     if is_not_done b then
       Stack.push (true, b) stack
     else
       Printf.fprintf oc "\tj\t%s\n" l
  | Loop(bref) ->
     let b = !bref in
     (* let l = Cfg.label_of_block b in *)
     if is_not_done b then
       Stack.push (true, b) stack
     else
       assert false
  | Back(_, bref) ->
     let b = !bref in
     let l = Cfg.label_of_block b in
     (* (if is_not_done b then Stack.pop (true, b) stack); *)
     (if is_not_done b then assert false);
     Printf.fprintf oc "\tj\t%s\n" l
  | End ->
     Printf.fprintf oc "\tret\n"


let rec out_dfs oc livenow_tbl regtbl work_tbl stack =
  if Stack.is_empty stack then
    ()
  else
    let print_label, block = Stack.pop stack in
    (if print_label then
       let l = label_of_block block in
       Printf.fprintf oc "%s :\n" l);
    check_next oc livenow_tbl regtbl work_tbl block stack;
    out_dfs oc livenow_tbl regtbl work_tbl stack

let output_cfg oc livenow_tbl regtbl blocks =
  let work_tbl = H.create (List.length blocks) in
  let stack = Stack.create () in
  let b = List.hd blocks in
  let l = Cfg.label_of_block b in
  Stack.push (true, b) stack;
  H.add work_tbl l true;
  out_dfs oc livenow_tbl regtbl work_tbl stack;
  assert ((H.length work_tbl) = (List.length blocks));
  try
    List.iter
      (fun b -> let l = Cfg.label_of_block b in
                let _ = H.find work_tbl l in ()) blocks
  with
    Not_found -> assert false
