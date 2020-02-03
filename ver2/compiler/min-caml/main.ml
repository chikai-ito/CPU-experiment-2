let limit = ref 25
let limit2 = ref 0

let rec iter n e = (* ��Ŭ�������򤯤꤫���� (caml2html: main_iter) *)
  Format.eprintf "iteration %d@." n;
  if n = 0 then e else
    let e' = Elim.f (ConstFold.f (Inline2.f (Assoc.f (Beta.f e)))) in
    if e = e' then e else
      iter (n - 1) e'

let rec iter2 n e = (* ��Ŭ�������򤯤꤫���� (caml2html: main_iter) *)
  Format.eprintf "iteration %d@." n;
  if n = 0 then e else
    let e' = Elim.f (ConstFold.f (Inline.f (Assoc.f (Beta.f e)))) in
    if e = e' then e else
      iter2 (n - 1) e'

let print_set set =
  let list = S.elements set in
  List.iter (Printf.printf "%s, ") list;
  print_string "\n"

let lexbuf2 outchan l = (* �Хåե��򥳥�ѥ��뤷�ƥ����ͥ�ؽ��Ϥ��� (caml2html: main_lexbuf) *)
  Id.counter := 0;
  Typing.extenv := M.empty;
  let syntax = Parser.exp Lexer.token l in
  let syntax, ty = Typing.f syntax in
  (* Syntax.print_syntax syntax; *)
  let kNormal = Alpha.f (KNormal.f syntax) in
  let kNormal = iter !limit kNormal in
  let kNormal = ANormal.f (iter2 !limit2 kNormal) in
  let lNormal = Loop.f (LNormal.ktol kNormal) in
  (* let lNormal = Loop.f (Linline.f lNormal) in *)
  let virtCode = Simm2.f (Virtual2.f (Closure2.f lNormal)) in
  (* Printf.printf "----ANormal----\n";
   * KNormal.print_kNormal kNormal; *)
  Emit2.f outchan virtCode ty
  (* let (_, f_cfgs, cfg) = Cfg.f virtCode in
   * let igraph, livenow_tbl, stat_tbl = Lra2.build_igraph cfg in
   * (\* H.iter (fun x y ->
   *  *     Printf.printf "%s : " x;
   *  *     print_set y) livenow_tbl; *\)
   * let regtbl = RegAlloc2.f stat_tbl igraph in
   * (\* List.iter Cfg_db.print_block cfg; *\)
   * (\* Format.eprintf "----------@."; () *\)
   * (\* let _ = List.map (fun (b,_) -> Cfg_db.scan_cfg b) fns in *\)
   * Format.eprintf "total number of blocks is %d@." (List.length cfg);
   * (\* Format.eprintf "total number of toplevel functions is %d@." (List.length fns) *\)
   * (\* Format.eprintf "index of node_b is %d@." (H.find Id.idtbl "node_b");
   *  * Format.eprintf "index of tail_b is %d@." (H.find Id.idtbl "tail_b");
   *  * Format.eprintf "index of branching_b is %d@." (H.find Id.idtbl "branching_b"); *\)
   * Format.eprintf "---- emit code ----@.";
   * Emit2.output_cfg outchan livenow_tbl regtbl cfg *)
  
  

let lexbuf outchan l = (* �Хåե��򥳥�ѥ��뤷�ƥ����ͥ�ؽ��Ϥ��� (caml2html: main_lexbuf) *)
  Id.counter := 0;
  Typing.extenv := M.empty;
  let syntax = Parser.exp Lexer.token l in
  let syntax, _ = Typing.f syntax in
  (* Syntax.print_syntax syntax; *)
  let kNormal = Alpha.f (KNormal.f syntax) in
  let kNormal = iter !limit kNormal in
  let kNormal = ANormal.f (iter2 !limit2 kNormal) in
  (* Printf.printf "----ANormal----\n";
   * KNormal.print_kNormal kNormal; *)
  Emit.f outchan
    (RegAlloc.f
       (Simm.f
          (Virtual.f
             (Closure.f
                   kNormal))))

let string s = lexbuf stdout (Lexing.from_string s) (* ʸ����򥳥�ѥ��뤷��ɸ����Ϥ�ɽ������ (caml2html: main_string) *)

let compile_mode = ref 0 
let file f = (* �ե�����򥳥�ѥ��뤷�ƥե�����˽��Ϥ��� (caml2html: main_file) *)
  let inchan = open_in (f ^ ".ml") in
  let outchan = open_out (f ^ ".s") in
  if !compile_mode = 0 then
  try
    lexbuf outchan (Lexing.from_channel inchan);
    close_in inchan;
    close_out outchan;
  with e -> (close_in inchan; close_out outchan; raise e)
  else if !compile_mode = 1 then
    lexbuf2 outchan (Lexing.from_channel inchan)
  else if !compile_mode = 2 then
    Lra2.test_run ()
  else
    assert false

let () = (* �������饳��ѥ���μ¹Ԥ����Ϥ���� (caml2html: main_entry) *)
  let files = ref [] in
  Arg.parse
    [("-inline", Arg.Int(fun i -> Inline.threshold := i), "maximum size of functions inlined");
     ("-iter", Arg.Int(fun i -> limit := i), "maximum number of optimizations iterated");
     ("-iter2", Arg.Int(fun i -> limit2 := i),
      "maximum number of optimizations involving recursive functions iterated");
     ("-argmax", Arg.Int(fun i -> Lamlift.argsize_max := i),
      "maximum number of arguments functions can have after lambda lifting");
     ("-m", Arg.Unit(fun _ -> compile_mode := 1), "compile mode");
     ("-dfs", Arg.Unit(fun _ -> Cfg_db.scan_mode := 1), "scan mode: 0 -> bfs, 1 -> dfs");
     ("-t", Arg.Unit(fun _ -> compile_mode := 2), "run tests");
     ("-p", Arg.Unit(fun _ -> Cfg_db.print_mode := 1), "whether print blocks");
    ("-r", Arg.Unit(fun _ -> Cfg_db.is_reverse := 1), "scan in reverse direction")]
    (fun s -> files := !files @ [s])
    ("Mitou Min-Caml Compiler (C) Eijiro Sumii\n" ^
     Printf.sprintf "usage: %s [-inline m] [-iter n] ...filenames without \".ml\"..." Sys.argv.(0));
  List.iter
    (fun f -> ignore (file f))
    !files