open KNormal

let find x env = try M.find x env with Not_found -> x (* �ִ��Τ���δؿ� (caml2html: beta_find) *)

let rec g env = function (* �´���롼�������� (caml2html: beta_g) *)
  | Unit -> Unit
  | Const(cns) -> Const(cns)
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
  | If(cmp, x, y, e1, e2) -> If(cmp, find x env, find y env, g env e1, g env e2)
  | Let((x, t), e1, e2) -> (* let�Φ´��� (caml2html: beta_let) *)
      (match g env e1 with
      | Var(y) ->
          Format.eprintf "beta-reducing %s = %s@." x y;
          g (M.add x y env) e2
      | e1' ->
          let e2' = g env e2 in
          Let((x, t), e1', e2'))
  | LetRec({ name = xt; args = yts; body = e1 }, e2) ->
      LetRec({ name = xt; args = yts; body = g env e1 }, g env e2)
  | Var(x) -> Var(find x env) (* �ѿ����ִ� (caml2html: beta_var) *)
  | Tuple(xs) -> Tuple(List.map (fun x -> find x env) xs)
  | LetTuple(xts, y, e) -> LetTuple(xts, find y env, g env e)
  | Get(x, y) -> Get(find x env, find y env)
  | GetL(l, x) -> GetL(l, find x env)
  | Put(x, y, z) -> Put(find x env, find y env, find z env)
  | PutL(l, x, y) -> PutL(l, find x env, find y env)
  | App(g, xs) -> App(find g env, List.map (fun x -> find x env) xs)
  | ExtArray(x) -> ExtArray(x)
  | ExtFunApp(x, ys) -> ExtFunApp(x, List.map (fun y -> find y env) ys)

let f = g M.empty