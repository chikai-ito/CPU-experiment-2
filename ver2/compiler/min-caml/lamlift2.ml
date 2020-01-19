open Lamlift
   
let rec lam_lift2 fnenv = function
  (* eliminate partial applications *)
  | Unit -> Unit
  | Bool(b) -> Bool(b)
  | Int(i) -> Int(i)
  | Float(f) -> Float(f)
  | Not(e) ->
     let e', ztss = lam_lift2 fnenv e in
     Not(e'), ztss
  | Neg(e) ->
     let e', ztss = lam_lift2 fnenv e in
     Neg(e'), ztss
  | Itof(e) ->
     let e', ztss = lam_lift2 fnenv e in
     Itof(e'), ztss
  | In(e) ->
     let e', ztss = lam_lift2 fnenv e in
     In(e')
  | Fin(e) ->
     let e', ztss = lam_lift2 fnenv e in
     Fin(e')
  | Out(e) ->
     let e', ztss = lam_lift2 fnenv e in
     Out(e')
  | Add(e1,e2) ->
     let e1', ztss1 = lam_lift2 fnenv e1 in
     let e2', ztss2 = lam_lift2 fnenv e2 in
     Add(e1', e2'), (ztss1 @ ztss2)
  | Sub(e1,e2) ->
     let e1', ztss1 = lam_lift2 fnenv e1 in
     let e2', ztss2 = lam_lift2 fnenv e2 in
     Sub(e1', e2'), (ztss1 @ ztss2)
  | Mul(e1,e2) ->
     let e1', ztss1 = lam_lift2 fnenv e1 in
     let e2', ztss2 = lam_lift2 fnenv e2 in
     Mul(e1', e2'), (ztss1 @ ztss2)
  | Div(e1,e2) ->
     let e1', ztss1 = lam_lift2 fnenv e1 in
     let e2', ztss2 = lam_lift2 fnenv e2 in
     Div(e1', e2'), (ztss1 @ ztss2)
  | FNeg(e) ->
     let e', ztss = lam_lift2 fnenv e in
     FNeg(e'), ztss
  | FSqrt(e) ->
     let e', ztss = lam_lift2 fnenv e in
     FSqrt(e'), ztss
  | Floor(e) ->
     let e', ztss = lam_lift2 fnenv e in
     Floor(e'), ztss
  | Ftoi(e) ->
     let e', ztss = lam_lift2 fnenv e in
     Ftoi(e'), ztss
  | FAdd(e1,e2) ->
     let e1', ztss1 = lam_lift2 fnenv e1 in
     let e2', ztss2 = lam_lift2 fnenv e2 in
     FAdd(e1', e2'), (ztss1 @ ztss2)
  | FSub(e1,e2) ->
     let e1', ztss1 = lam_lift2 fnenv e1 in
     let e2', ztss2 = lam_lift2 fnenv e2 in
     FSub(e1', e2'), (ztss1 @ ztss2)
  | FMul(e1,e2) ->
     let e1', ztss1 = lam_lift2 fnenv e1 in
     let e2', ztss2 = lam_lift2 fnenv e2 in
     FMul(e1', e2'), (ztss1 @ ztss2)
  | FDiv(e1,e2) ->
     let e1', ztss1 = lam_lift2 fnenv e1 in
     let e2', ztss2 = lam_lift2 fnenv e2 in
     FDiv(e1', e2'), (ztss1 @ ztss2)
  | Eq(e1,e2) ->
     let e1', ztss1 = lam_lift2 fnenv e1 in
     let e2', ztss2 = lam_lift2 fnenv e2 in
     Eq(e1', e2'), (ztss1 @ ztss2)
  | LE(e1,e2) ->
     let e1', ztss1 = lam_lift2 fnenv e1 in
     let e2', ztss2 = lam_lift2 fnenv e2 in
     LE(e1', e2'), (ztss1 @ ztss2)
  | If(e1,e2,e3) ->
     let e1', ztss1 = lam_lift2 fnenv e1 in
     let e2', ztss2 = lam_lift2 fnenv e2 in
     let e3', ztss3 = lam_lift2 fnenv e3 in
     If(e1', e2', e3'), (ztss1 @ ztss2 @ ztss3)
  | Let((x,t),e1,e2) ->
     let e1', ztss1 = lam_lift2 fnenv in
     let e2', ztss2 = lam_lift2 (M.remove x fnenv) e2 in
     Let((x,t),e1',e2'), ztss1 @ 
  | Var(x) -> Var(x)
  | LetRec({ name = (x,t); args = yts; body = e1 },e2) ->
     let fnenv = M.add x { name = (x,t); args = yts; body = e1 } fnenv in
     let e1', zts = lam_lift2 fnenv' e1 in
     let fndef = { name = (x,t); args = (yts@zts); body = e1' } in
     let fnenv' = M.add x fndef fnenv in
     LetRec(fndef, lam_lift2 fnenv' e2)
  | App(e,es) ->
     let e', zts = lam_lift2 fnenv e in
     
