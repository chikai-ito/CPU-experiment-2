open KNormal
open Enums

let rec g ivals fvals env = function
  | Let((x, t), Const(Int(i)), e) when List.mem_assoc i ivals ->
     let env' = M.add x (List.assoc i ivals) env in
     Alpha.subst env' e
  | Let((x, t), Const(Int(i)), e) ->
     Let((x, t), Const(Int(i)), g ((i, x) :: ivals) fvals env e)
  | Let((x, t), Const(Float(d)), e) when List.mem_assoc d fvals ->
     let env' = M.add x (List.assoc d fvals) env in
     Alpha.subst env' e
  | Let((x, t), Const(Float(d)), e) ->
     Let((x, t), Const(Float(d)), g ivals ((d, x) :: fvals) env e)
  | Let(xt, e1, e2) ->
     Let(xt, g ivals fvals env e1, g ivals fvals env e2)
  | If(cmp, x, y, e1, e2) ->
     If(cmp, x, y, g ivals fvals env e1, g ivals fvals env e2)
  | LetRec({ name = xt; args = yts; body = e1 }, e2) ->
     LetRec({ name = xt; args = yts; body = g [] [] M.empty e1 }, g ivals fvals env e2)
  | LetTuple(xts, y, e) -> LetTuple(xts, y, g ivals fvals env e)
  | Loop(l, xts, ys, e) -> Loop(l, xts, ys, g ivals fvals env e)
  | e -> e

let f = g [] [] M.empty
