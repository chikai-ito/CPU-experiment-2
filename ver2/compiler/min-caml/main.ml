let limit = ref 25
let limit2 = ref 0

let rec iter n e = (* 最適化処理をくりかえす (caml2html: main_iter) *)
  Format.eprintf "iteration %d@." n;
  if n = 0 then e else
    let e' = Elim.f (ConstFold.f (Inline2.f (Assoc.f (Beta.f e)))) in
    if e = e' then e else
      iter (n - 1) e'

let rec iter2 n e = (* 最適化処理をくりかえす (caml2html: main_iter) *)
  Format.eprintf "iteration %d@." n;
  if n = 0 then e else
    let e' = Elim.f (ConstFold.f (Inline.f (Assoc.f (Beta.f e)))) in
    if e = e' then e else
      iter2 (n - 1) e'

let lexbuf2 l = (* バッファをコンパイルしてチャンネルへ出力する (caml2html: main_lexbuf) *)
  Id.counter := 0;
  Typing.extenv := M.empty;
  let syntax = Parser.exp Lexer.token l in
  let syntax = Typing.f syntax in
  (* Syntax.print_syntax syntax; *)
  let kNormal = Alpha.f (KNormal.f syntax) in
  let kNormal = iter !limit kNormal in
  let kNormal = ANormal.f (iter2 !limit2 kNormal) in
  let lNormal = Loop.f (LNormal.ktol kNormal) in
  let lNormal = Loop.f (Linline.f lNormal) in
  (* Printf.printf "----ANormal----\n";
   * KNormal.print_kNormal kNormal; *)
  let (_,fns,(b,_)) = Cfg.f (Virtual2.f (Closure2.f lNormal)) in
  let block_list = Cfg_db.scan_cfg b in
  (* Format.eprintf "----------@."; () *)
  (* let _ = List.map (fun (b,_) -> Cfg_db.scan_cfg b) fns in *)
  Format.eprintf "total number of blocks is %d@." (List.length block_list);
  (* Format.eprintf "total number of toplevel functions is %d@." (List.length fns) *)
  Format.eprintf "index of node_b is %d@." (H.find Id.idtbl "node_b");
  Format.eprintf "index of tail_b is %d@." (H.find Id.idtbl "tail_b");
  Format.eprintf "index of branching_b is %d@." (H.find Id.idtbl "branching_b")
  

let lexbuf outchan l = (* バッファをコンパイルしてチャンネルへ出力する (caml2html: main_lexbuf) *)
  Id.counter := 0;
  Typing.extenv := M.empty;
  let syntax = Parser.exp Lexer.token l in
  let syntax = Typing.f syntax in
  (* Syntax.print_syntax syntax; *)
  let kNormal = Alpha.f (KNormal.f syntax) in
  let kNormal = iter !limit kNormal in
  let kNormal = ANormal.f (iter2 !limit2 kNormal) in
  Printf.printf "----ANormal----\n";
  KNormal.print_kNormal kNormal;
  Emit.f outchan
    (RegAlloc.f
       (Simm.f
          (Virtual.f
             (Closure.f
                   kNormal))))

let string s = lexbuf stdout (Lexing.from_string s) (* 文字列をコンパイルして標準出力に表示する (caml2html: main_string) *)

let compile_mode = ref 0 
let file f = (* ファイルをコンパイルしてファイルに出力する (caml2html: main_file) *)
  let inchan = open_in (f ^ ".ml") in
  let outchan = open_out (f ^ ".s") in
  if !compile_mode = 0 then
  try
    lexbuf outchan (Lexing.from_channel inchan);
    close_in inchan;
    close_out outchan;
  with e -> (close_in inchan; close_out outchan; raise e)
  else if !compile_mode = 1 then
    lexbuf2 (Lexing.from_channel inchan)
  else
    assert false

let () = (* ここからコンパイラの実行が開始される (caml2html: main_entry) *)
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
     ("-p", Arg.Unit(fun _ -> Cfg_db.print_mode := 1), "whether print blocks")]
    (fun s -> files := !files @ [s])
    ("Mitou Min-Caml Compiler (C) Eijiro Sumii\n" ^
     Printf.sprintf "usage: %s [-inline m] [-iter n] ...filenames without \".ml\"..." Sys.argv.(0));
  List.iter
    (fun f -> ignore (file f))
    !files
