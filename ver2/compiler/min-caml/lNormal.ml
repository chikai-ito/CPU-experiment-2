(* JumpにSubstの機能を持たせたほうがいいと思ったので，そう変更した *)

open Enums
type t = 
  (* loop を明示的に含む中間表現 *)
  (* KNormal.t から返還される *)
  (* Closure.t に綺麗につなぐため，内容はほぼKNormal.tと同一 *)
  | Unit
  | Int of int
  | Float of float
  | Neg of Id.t
  | Itof of Id.t
  | In of Id.t
  | Fin of Id.t
  | Out of Id.t
  | Add of Id.t * Id.t
  | Sub of Id.t * Id.t
  | Mul of Id.t * Id.t
  | Div of Id.t * Id.t
  | FNeg of Id.t
  | Ftoi of Id.t
  | FSqrt of Id.t
  | Floor of Id.t
  | FAdd of Id.t * Id.t
  | FSub of Id.t * Id.t
  | FMul of Id.t * Id.t
  | FDiv of Id.t * Id.t
  | If of cmp * Id.t * Id.t * t * t
  | Let of (Id.t * Type.t) * t * t
  | Var of Id.t
  | LetRec of fundef * t
  | App of Id.t * Id.t list
  | Tuple of Id.t list
  | LetTuple of (Id.t * Type.t) list * Id.t * t
  | Get of Id.t * Id.t
  | Put of Id.t * Id.t * Id.t
  (* Loopの取り扱いはひとまずIfに準じることにする *)
  (* 型の情報は必要ないはず *)
  | Loop of Id.l * t (* ループはコードと番地の組として表現 *)
  (* | Subst of Id.t * Id.t * t (\* ループ構造のための変数の上書きに必要 *\)
   * | Jump of Id.l (\* ジャンプ命令 *\) *)
  | Jump of (Id.t * Id.t) list * Id.l (* 上のJumpとSubstを合わせた *)
  | ExtArray of Id.t
  | ExtFunApp of Id.t * Id.t list
and fundef = { name : Id.t * Type.t; args : (Id.t * Type.t) list; body : t }

(* KNormal.tをLNormal.tに変換するための関数 *)
(* 正直クソ無駄．こういう時のためのinheritanceなのか *)
(* 勉強だと思って書いた *)
let rec ktol = function
  | KNormal.Unit -> Unit
  | KNormal.Int(i) -> Int(i)
  | KNormal.Float(f) -> Float(f)
  | KNormal.Neg(x) -> Neg(x)
  | KNormal.Itof(x) -> Itof(x)
  | KNormal.In(x) -> In(x)
  | KNormal.Fin(x) -> Fin(x)
  | KNormal.Out(x) -> Out(x)
  | KNormal.Add(x,y) -> Add(x,y)
  | KNormal.Sub(x,y) -> Sub(x,y)
  | KNormal.Mul(x,y) -> Mul(x,y)
  | KNormal.Div(x,y) -> Div(x,y)
  | KNormal.FNeg(x) -> FNeg(x)
  | KNormal.Ftoi(x) -> Ftoi(x)
  | KNormal.FSqrt(x) -> FSqrt(x)
  | KNormal.Floor(x) -> Floor(x)
  | KNormal.FAdd(x,y) -> FAdd(x,y)
  | KNormal.FSub(x,y) -> FSub(x,y)
  | KNormal.FMul(x,y) -> FMul(x,y)
  | KNormal.FDiv(x,y) -> FDiv(x,y)
  | KNormal.If(cmp,x,y,e1,e2) -> If(cmp,x,y,ktol e1,ktol e2)
  | KNormal.Let(xt,e1,e2) -> Let(xt,ktol e1,ktol e2)
  | KNormal.Var(x) -> Var(x)
  | KNormal.LetRec({ name = xt; args = yts; body = e1 }, e2) ->
     LetRec({ name = xt; args = yts; body = ktol e1 }, ktol e2)
  | KNormal.App(x,ys) -> App(x,ys)
  | KNormal.Tuple(xs) -> Tuple(xs)
  | KNormal.LetTuple(xts,y,e) -> LetTuple(xts,y,ktol e)
  | KNormal.Get(x,y) -> Get(x,y)
  | KNormal.Put(x,y,z) -> Put(x,y,z)
  | KNormal.ExtArray(x) -> ExtArray(x)
  | KNormal.ExtFunApp(x,ys) -> ExtFunApp(x,ys)

(* ループのインライン化に使う，Alpha.gを丸パクリした *)
let find x env = try M.find x env with Not_found -> x
let rec subst env lenv = function
  | Unit -> Unit
  | Int(i) -> Int(i)
  | Float(f) -> Float(f)
  | Neg(x) -> Neg(find x env)
  | Itof(x) -> Itof(find x env)
  | In(x) -> In(find x env)
  | Fin(x) -> Fin(find x env)
  | Out(x) -> Out(find x env)
  | Add(x, y) -> Add(find x env, find y env)
  | Sub(x, y) -> Sub(find x env, find y env)
  | Mul(x, y) -> Mul(find x env, find y env)
  | Div(x, y) -> Div(find x env, find y env)
  | FNeg(x) -> FNeg(find x env)
  | Ftoi(x) -> Ftoi(find x env)
  | FSqrt(x) -> FSqrt(find x env)
  | Floor(x) -> Floor(find x env)
  | FAdd(x, y) -> FAdd(find x env, find y env)
  | FSub(x, y) -> FSub(find x env, find y env)
  | FMul(x, y) -> FMul(find x env, find y env)
  | FDiv(x, y) -> FDiv(find x env, find y env)
  | If(cmp, x, y, e1, e2) -> If(cmp, find x env, find y env, subst env lenv e1, subst env lenv e2)
  | Let((x, t), e1, e2) -> (* letのα変換 (caml2html: alpha_let) *)
     let x' = Id.genid x in
     Let((x', t), subst env lenv e1, subst (M.add x x' env) lenv e2)
  | Var(x) -> Var(find x env)
  | LetRec({ name = (x, t); args = yts; body = e1 }, e2) -> (* let recのα変換 (caml2html: alpha_letrec) *)
     let env = M.add x (Id.genid x) env in
     let ys = List.map fst yts in
     let env' = M.add_list2 ys (List.map Id.genid ys) env in
     LetRec({ name = (find x env, t);
              args = List.map (fun (y, t) -> (find y env', t)) yts;
              body = subst env' lenv e1 },
            subst env lenv e2)
  | App(x, ys) -> App(find x env, List.map (fun y -> find y env) ys)
  | Tuple(xs) -> Tuple(List.map (fun x -> find x env) xs)
  | LetTuple(xts, y, e) -> (* LetTupleのα変換 (caml2html: alpha_lettuple) *)
     let xs = List.map fst xts in
     let env' = M.add_list2 xs (List.map Id.genid xs) env in
     LetTuple(List.map (fun (x, t) -> (find x env', t)) xts,
              find y env,
              subst env' lenv e)
  | Get(x, y) -> Get(find x env, find y env)
  | Put(x, y, z) -> Put(find x env, find y env, find z env)
  | Loop(L(x),e) ->
     let x' = Id.genid x in
     Loop(L(x'), subst env (M.add x x' lenv) e)
  (* | Subst(x,y,e) -> Subst(find x env, find y env, subst env lenv e)
   * | Jump(L(x)) -> Jump(L(find lenv x)) *)
  | Jump(yzs, L(x)) -> (* 上の２つの操作を合併 *)
     let yzs' = List.map (fun (y,z) -> (find y env, find z env)) yzs in
     Jump(yzs', L(find x lenv))
  | ExtArray(x) -> ExtArray(x)
  | ExtFunApp(x, ys) -> ExtFunApp(x, List.map (fun y -> find y env) ys)

