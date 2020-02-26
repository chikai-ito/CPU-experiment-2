open Cfg
open Lra

let collect_loop_variants code =
  List.fold_left 
    (fun acc instr ->
      match instr.op with
      | Phi((x, t), yls) -> S.union (S.of_list (x :: (List.map fst yls))) acc
      | _ -> acc)
    S.empty code

let separate_loop_invariants code variants =
  List.partition
    (fun instr ->
      match instr.op with
      | Set((x, t), i) -> not (S.mem x variants)
      | SetF((x, t), d) -> not (S.mem x variants)
      | _ -> false)
    code

let exists_call code =
  List.fold_left
    (fun bool instr ->
      match instr.op with
      | CallCls _ -> true
      | CallDir(_, Id.L(l), _, _) when l <> "min_caml_create_array"
                                       && l <> "min_caml_create_float_array" ->
         true
      | _ -> bool)
  false code

let lcm block =
  match block.next with
  | Loop (br, _) ->
     let b = !br in
     (* if not (exists_call b.code) then  *)
       let s = collect_loop_variants b.code in
       let c0, c1 = separate_loop_invariants b.code s in
       block.code <- block.code @ c0;
       b.code <- c1
     (* else
      *   () *)
  | _ -> ()

let f cfg = List.iter lcm cfg
