(* functions for debugging CFG *)
open Enums
open Cfg
open Id
open Type

let newline _ = Printf.printf "\n"
let arrow _ = Printf.printf " <- "
let colon _ = Printf.printf " : "
let space _ = Printf.printf " "
let print_op op ids =
  arrow ();
  print_string op;
  print_string "(";
  List.iter (fun id -> Printf.printf "%s, " id) ids;
  Printf.printf "\b\b";
  print_string ")"
let print_xt (x,t) =
  print_id x;
  colon ()
  (* print_type t *)
let print_instr = function
  | Phi(xt, yls) ->
     let yls = List.concat (List.map (fun (y, L(l)) -> [y ^ " : " ^ l]) yls) in
     print_xt xt; print_op "Phi" yls; newline ()
  | Nop -> Printf.printf "Nop\n"
  | Set(xt, i) -> print_xt xt; print_op "Set" []; Printf.printf "\bt(";
                  print_int i; print_string ")"; newline ()
  | SetL(xt, L(l)) -> print_xt xt; print_op "SetL" [l]; newline ()
  | Mov(xt, y) -> print_xt xt; print_op "Mov" [y]; newline ()
  | Neg(xt, y) -> print_xt xt; print_op "Neg" [y]; newline ()
  | Itof(xt, y) -> print_xt xt; print_op "Itof" [y]; newline ()
  | In(xt, y) -> print_xt xt; print_op "In" [y]; newline ()
  | Fin(xt, y) -> print_xt xt; print_op "Fin" [y]; newline ()
  | Out(xt, y) -> print_xt xt; print_op "Out" [y]; newline ()
  | AddI(xt, y, i) -> print_xt xt; print_op "Add" [y];
                      space (); print_int i; newline ()
  | Add(xt, y, z) -> print_xt xt; print_op "Add" [y;z]; newline ()
  | Sub(xt, y, z) -> print_xt xt; print_op "Sub" [y;z]; newline ()
  | Mul(xt, y, z) -> print_xt xt; print_op "Mul" [y;z]; newline ()
  | Div(xt, y, z) -> print_xt xt; print_op "Div" [y;z]; newline ()
  | SLL(xt, y, z) -> print_xt xt; print_op "SLL" [y;z]; newline ()
  | SLLI(xt, y, i) -> print_xt xt; print_op "SLLI" [y]; Printf.printf "\b, %d)\n" i;
  | Ld(xt, _, y, Asm2.V(z)) -> print_xt xt; print_op "Ld" [y;z]; newline ()
  | Ld(xt, _, y, Asm2.C(i)) -> print_xt xt; print_op "Ld" [y];
                               space (); print_int i; newline ()
  | St(xt, _, y, z, Asm2.V(w)) -> print_xt xt; print_op "St" [y;z;w]; newline ()
  | St(xt, _, y, z, Asm2.C(i)) -> print_xt xt; print_op "St" [y;z];
                                  space (); print_int i; newline ()
  | FMov(xt, y) -> print_xt xt; print_op "FMov" [y]; newline ()
  | Ftoi(xt, y) -> print_xt xt; print_op "Ftoi" [y]; newline ()
  | FNeg(xt, y) -> print_xt xt; print_op "FNeg" [y]; newline ()
  | Floor(xt, y) -> print_xt xt; print_op "Floor" [y]; newline ()
  | FSqrt(xt, y) -> print_xt xt; print_op "FSqrt" [y]; newline ()
  | FAdd(xt, y, z) -> print_xt xt; print_op "FAdd" [y;z]; newline ()
  | FSub(xt, y, z) -> print_xt xt; print_op "FSub" [y;z]; newline ()
  | FMul(xt, y, z) -> print_xt xt; print_op "FMul" [y;z]; newline ()
  | FDiv(xt, y, z) -> print_xt xt; print_op "FDiv" [y;z]; newline ()
  | LdF(xt, _, y, Asm2.V(z)) -> print_xt xt; print_op "LdF" [y;z]; newline ()
  | LdF(xt, _, y, Asm2.C(i)) -> print_xt xt; print_op "LdF" [y];
                                space (); print_int i; newline ()
  | StF(xt, _, y, z, Asm2.V(w)) -> print_xt xt; print_op "StF" [y;z;w]; newline ()
  | StF(xt, _, y, z, Asm2.C(i)) -> print_xt xt; print_op "StF" [y;z];
                                   space (); print_int i; newline ()
  | Subst(x, y) -> Printf.printf "Subst %s <- %s\n" x y
  | CallCls(xt, f, ys, zs) -> print_xt xt;
                              print_op "CallCls" (((f ^ ";")::"int:"::ys) @ ("\b\b; float:"::zs)); newline ()
  | CallDir(xt, L(l), ys, zs) -> print_xt xt;
                                 print_op "CallDir" (((l ^ ";")::"int:"::ys) @ ("\b\b; float:"::zs)); newline ()
  | Entry(xs,ys) -> Printf.printf "Entry";
                    List.iter (fun x -> Printf.printf "%s, " x) ((" int:"::xs) @  ("\b\b; float:"::ys)); newline ()
  | Return(xt) -> Printf.printf "Return"; space (); print_xt xt; newline ()
  | Save(x,y) -> Printf.printf "Save(%s, %s)\n" x y
  | Restore(x) -> Printf.printf "Restore(%s)\n" x

let indent _ = print_string "  "
let print_code code = List.iter (fun instr -> indent(); print_instr instr) code
let print_prev prs =
  if prs = [] then
    Printf.printf "None\n"
  else
    (List.iter (fun b -> let L(l) = b.label in
                         Printf.printf "%s, " l) prs; newline ())
let print_branch : compare_t -> unit =
  fun { op = (t, cmp); args = (x,y) } ->
  if t = Type.Float then print_string "F";
  print_cmp cmp; Printf.printf "(%s, %s)\n" x y
let print_next : next_t -> unit = function
  | Brc(cmpr, b1, b2) -> print_branch cmpr;
                         Printf.printf "to %s, %s\n" (let L(l) = !b1.label in l) (let L(l) = !b2.label in l)
  | Cnfl(b) -> Printf.printf "to %s\n" (let L(l) = !b.label in l)
  | Back(L(l), b) -> Printf.printf "Jump %s\n" l; Printf.printf "to %s\n" (let L(l) = !b.label in l)
  | End -> Printf.printf "End\n"
let print_block block =
  Printf.printf "---- block ----\n";
  Printf.printf "Label : %s\n" (let L(l) = block.label in l);
  Printf.printf "Prev : ";
  print_prev block.prev;
  Printf.printf "Code :\n";
  print_code block.code;
  Printf.printf "Flow : ";
  print_next block.next;
  Printf.printf "----- end -----\n"

let print_mode = ref 0
let is_visited tbl block =
  let L(l) = block.label in
  try
    H.find tbl l
  with
    Not_found -> H.add tbl l true; false
                 
let check_next color_tbl next =
  let is_not_visited x = not (is_visited color_tbl x) in
  match next with
  | Brc(_, b1, b2) -> List.filter is_not_visited [!b1; !b2]
  | Cnfl(b) -> List.filter is_not_visited [!b]
  | Back(_, b) -> List.filter is_not_visited [!b]
  | End -> []
let rec bfs queue color_tbl acc =
  if Queue.is_empty queue then
    acc
  else
    let b = Queue.pop queue in
    (if !print_mode = 1 then
       print_block b);
    let bs = check_next color_tbl b.next in
    List.iter (fun x -> Queue.push x queue) bs;
    bfs queue color_tbl (bs @ acc)

let rec dfs stack color_tbl acc =
  if Stack.is_empty stack then
    acc
  else
    let b = Stack.pop stack in
    (if !print_mode = 1 then
       print_block b);
    let bs = check_next color_tbl b.next in
    List.iter (fun x -> Stack.push x stack) bs;
    dfs stack color_tbl (bs @ acc)

let scan_mode = ref 0
let scan_cfg block = (* 幅優先的にCFGを探索してブロックのリストを返す *)
  let color_tbl = H.create 50000 in
  if !scan_mode = 0 then
    let queue = Queue.create () in
    Queue.push block queue;
    let L(l) = block.label in
    H.add color_tbl l true;
    bfs queue color_tbl [block]
  else if !scan_mode = 1 then
    let stack = Stack.create () in
    Stack.push block stack;
    let L(l) = block.label in
    H.add color_tbl l true;
    dfs stack color_tbl [block]
  else
    assert false
  
