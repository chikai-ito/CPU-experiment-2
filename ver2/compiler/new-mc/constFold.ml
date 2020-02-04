(* DArrayの中身でconstFoldするのは絶対にダメ *)

open KNormal
open Enums

let memi x env =
  try (match M.find x env with Const(Int(_)) -> true | _ -> false)
  with Not_found -> false
let memf x env =
  try (match M.find x env with Const(Float(_)) -> true | _ -> false)
  with Not_found -> false
let memt x env =
  try (match M.find x env with Const(Tuple(_)) -> true | _ -> false)
  with Not_found -> false

let findi x env = (match M.find x env with Const(Int(i)) -> i | _ -> raise Not_found)
let findf x env = (match M.find x env with Const(Float(f)) -> f | _ -> raise Not_found)
let findt x env = (match M.find x env with Tuple(ys) -> ys | _ -> raise Not_found)

let cmp_fold cmp x y e1 e2 =
  match cmp with
  | Eq -> if x = y then e1 else e2
  | NE -> if x = y then e2 else e1
  | LE -> if x <= y then e1 else e2
  | Lt -> if x < y then e1 else e2

let rec g env = function (* 定数畳み込みルーチン本体 (caml2html: constfold_g) *)
  | Var(x) when memi x env -> Int(findi x env)
  | Var(x) when memf x env -> Float(findf x env) 
  | Var(x) when memt x env -> Tuple(findt x env)
  | Neg(x) when memi x env -> Int(-(findi x env))
  | Add(x, y) when memi x env && memi y env -> Int(findi x env + findi y env) (* 足し算のケース (caml2html: constfold_add) *)
  | Sub(x, y) when memi x env && memi y env -> Int(findi x env - findi y env)
  | Mul(x, y) when memi x env && memi y env -> Int(findi x env * findi y env)
  | Div(x, y) when memi x env && memi y env -> Int(findi x env / findi y env)
  | FNeg(x) when memf x env -> Float(-.(findf x env))
  | FAdd(x, y) when memf x env && memf y env -> Float(findf x env +. findf y env)
  | FSub(x, y) when memf x env && memf y env -> Float(findf x env -. findf y env)
  | FMul(x, y) when memf x env && memf y env -> Float(findf x env *. findf y env)
  | FDiv(x, y) when memf x env && memf y env -> Float(findf x env /. findf y env)
  | If(cmp,x,y,e1,e2) when memi x env && memi y env ->
     let valx = findi x env in
     let valy = findi y env in
     cmp_fold cmp valx valy (g env e1) (g env e2)
  | If(cmp,x,y,e1,e2) when memf x env && memf y env ->
     let valx = findf x env in
     let valy = findf y env in
     cmp_fold cmp valx valy (g env e1) (g env e2)
  | If(cmp,x,y,e1,e2) -> If(cmp,x,y, g env e1, g env e2)
  | Let((x, t), e1, e2) -> (* letのケース (caml2html: constfold_let) *)
      let e1' = g env e1 in
      let e2' = g (M.add x e1' env) e2 in
      Let((x, t), e1', e2')
  | LetRec({ name = x; args = ys; body = e1 }, e2) ->
      LetRec({ name = x; args = ys; body = g env e1 }, g env e2)
  | LetTuple(xts, y, e) when memt y env ->
     (* これは要するに無駄なロード命令をなくすということ *)
      List.fold_left2
        (fun e' xt z -> Let(xt, Var(z), e'))
        (g env e)
        xts
        (findt y env)
  | LetTuple(xts, y, e) -> LetTuple(xts, y, g env e)
  | e -> e

let f = g M.empty
