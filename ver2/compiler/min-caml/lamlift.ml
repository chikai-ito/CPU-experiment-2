(* The implementations of functions assume that
   all values of type Syntax.t are alpha-converted. *)

open Syntax

let addtyp x = (x, Type.gentyp ())
let find x env = try M.find x env with Not_found -> x

let rec subst env = function
  | Unit -> Unit
  | Bool(b) -> Bool(b)
  | Int(i) -> Int(i)
  | Float(f) -> Float(f)
  | Not(e) -> Not(subst env e)
  | Neg(e) -> Neg(subst env e)
  | Itof(e) -> Itof(subst env e)
  | In(e) -> In(subst env e)
  | Fin(e) -> Fin(subst env e)
  | Out(e) -> Out(subst env e)
  | Add(e1,e2) -> Add(subst env e1, subst env e2)
  | Sub(e1,e2) -> Sub(subst env e1, subst env e2)
  | Mul(e1,e2) -> Mul(subst env e1, subst env e2)
  | Div(e1,e2) -> Div(subst env e1, subst env e2)
  | FNeg(e) -> FNeg(subst env e)
  | FSqrt(e) -> FSqrt(subst env e)
  | Floor(e) -> Floor(subst env e)
  | Ftoi(e) -> Ftoi(subst env e)
  | FAdd(e1,e2) -> FAdd(subst env e1, subst env e2)
  | FSub(e1,e2) -> FSub(subst env e1, subst env e2)
  | FMul(e1,e2) -> FMul(subst env e1, subst env e2)
  | FDiv(e1,e2) -> FDiv(subst env e1, subst env e2)
  | Eq(e1,e2) -> Eq(subst env e1, subst env e2)
  | LE(e1,e2) -> LE(subst env e1, subst env e2)
  | If(e1,e2,e3) -> If(subst env e1, subst env e2, subst env e3)
  | Let((x,t),e1,e2) ->
     let e1' = subst env e1 in
     let e2' = subst (M.remove x env) e2 in
     Let((x,t),e1',e2')
  | Var(x) ->
     (try M.find x env with Not_found -> Var(x))
  | LetRec({ name = (x,t); args = yts; body = e1 },e2) ->
     let env = M.remove x env in
     let ys = List.map fst yts in
     let env' = List.fold_right M.remove ys env in
     let e1' = subst env e1 in
     let e2' = subst env' e2 in
     LetRec({ name = (x,t); args = yts; body = e1' },e2')
  | App(e,es) ->
     let e' = subst env e in
     let es' = List.map (subst env) es in
     App(e',es')
  | Tuple(es) -> Tuple(List.map (subst env) es)
  | LetTuple(xts,e1,e2) ->
     let e1' = subst env e1 in
     let xs = List.map fst xts in
     let env' = List.fold_right M.remove xs env in
     let e2' = subst env' e2 in
     LetTuple(xts,e1',e2')
  | Array(e1,e2) -> Array(subst env e1, subst env e2)
  | Get(e1,e2) -> Get(subst env e1, subst env e2)
  | Put(e1,e2,e3) -> Put(subst env e1, subst env e2, subst env e3)


let rec subst2 env = function
  | Unit -> Unit
  | Bool(b) -> Bool(b)
  | Int(i) -> Int(i)
  | Float(f) -> Float(f)
  | Not(e) -> Not(subst2 env e)
  | Neg(e) -> Neg(subst2 env e)
  | Itof(e) -> Itof(subst2 env e)
  | In(e) -> In(subst2 env e)
  | Fin(e) -> Fin(subst2 env e)
  | Out(e) -> Out(subst2 env e)
  | Add(e1,e2) -> Add(subst2 env e1, subst2 env e2)
  | Sub(e1,e2) -> Sub(subst2 env e1, subst2 env e2)
  | Mul(e1,e2) -> Mul(subst2 env e1, subst2 env e2)
  | Div(e1,e2) -> Div(subst2 env e1, subst2 env e2)
  | FNeg(e) -> FNeg(subst2 env e)
  | FSqrt(e) -> FSqrt(subst2 env e)
  | Floor(e) -> Floor(subst2 env e)
  | Ftoi(e) -> Ftoi(subst2 env e)
  | FAdd(e1,e2) -> FAdd(subst2 env e1, subst2 env e2)
  | FSub(e1,e2) -> FSub(subst2 env e1, subst2 env e2)
  | FMul(e1,e2) -> FMul(subst2 env e1, subst2 env e2)
  | FDiv(e1,e2) -> FDiv(subst2 env e1, subst2 env e2)
  | Eq(e1,e2) -> Eq(subst2 env e1, subst2 env e2)
  | LE(e1,e2) -> LE(subst2 env e1, subst2 env e2)
  | If(e1,e2,e3) -> If(subst2 env e1, subst2 env e2, subst2 env e3)
  | Let((x,t),e1,e2) ->
     let e1' = subst2 env e1 in
     let e2' = subst2 (M.remove x env) e2 in
     Let((x,t),e1',e2')
  | Var(x) -> Var(x)
  | LetRec({ name = (x,t); args = yts; body = e1 },e2) ->
     let env = M.remove x env in
     let ys = List.map fst yts in
     let env' = List.fold_right M.remove ys env in
     let e1' = subst2 env e1 in
     let e2' = subst2 env' e2 in
     LetRec({ name = (x,t); args = yts; body = e1' },e2')
  | App(Var(x),es) ->
     let es' = List.map (subst2 env) es in
     App((try M.find x env with Not_found -> Var(x)), es')
  | App(e,es) ->
     let e' = subst2 env e in
     let es' = List.map (subst2 env) es in
     App(e',es')
  | Tuple(es) -> Tuple(List.map (subst2 env) es)
  | LetTuple(xts,e1,e2) ->
     let e1' = subst2 env e1 in
     let xs = List.map fst xts in
     let env' = List.fold_right M.remove xs env in
     let e2' = subst2 env' e2 in
     LetTuple(xts,e1',e2')
  | Array(e1,e2) -> Array(subst2 env e1, subst2 env e2)
  | Get(e1,e2) -> Get(subst2 env e1, subst2 env e2)
  | Put(e1,e2,e3) -> Put(subst2 env e1, subst2 env e2, subst2 env e3)

let rec fv = function
  | Unit | Bool(_) | Int(_) | Float(_) -> S.empty
  | Not(e) | Neg(e) | Itof(e) | In(e) | Fin(e) | Out(e)
    | FNeg(e) | FSqrt(e) | Floor(e) | Ftoi(e) -> fv e
  | Add(e1,e2) | Sub(e1,e2) | Mul(e1,e2) | Div(e1,e2)
    | FAdd(e1,e2) | FSub(e1,e2) | FMul(e1,e2) | FDiv(e1,e2)
    | Eq(e1,e2) | LE(e1,e2) | Array(e1,e2) | Get(e1,e2) -> S.union (fv e1) (fv e2)
  | If(e1,e2,e3) | Put(e1,e2,e3) -> S.union (S.union (fv e1) (fv e2)) (fv e3)
  | Let((x,t),e1,e2) -> S.union (fv e1) (S.remove x (fv e2))                      
  | Var(x) -> S.singleton x
  | LetRec({ name = (x,t); args = yts; body = e1 }, e2) ->
     let s1 = S.diff (fv e1) (S.of_list (List.map fst yts)) in
     S.diff (S.union s1 (fv e2)) (S.singleton x)
  | App(e,es) ->
     let s1 = fv e in
     let s2 = List.fold_right (S.union) (List.map fv es) S.empty in
     S.union s1 s2
  | Tuple(es) ->
     List.fold_right (S.union) (List.map fv es) S.empty
  | LetTuple(xts,e1,e2) ->
     let s1 = fv e1 in
     let s2 = fv e2 in
     S.union s1 (S.diff s2 (S.of_list (List.map fst xts)))

let rec lam_lift tyenv fvenv = function
  | Unit -> Unit,[],[]
  | Bool(b) -> Bool(b),[],[]
  | Int(i) -> Int(i),[],[]
  | Float(f) -> Float(f),[],[]
  | Not(e) -> Not(e),[],[]
  | Neg(e) -> Neg(e),[],[]
  | Itof(e) -> Itof(e),[],[]
  | In(e) -> In(e),[],[]
  | Fin(e) -> Fin(e),[],[]
  | Out(e) -> Out(e),[],[]
  | Add(e1,e2) -> Add(e1,e2),[],[]
  | Sub(e1,e2) -> Sub(e1,e2),[],[]
  | Mul(e1,e2) -> Mul(e1,e2),[],[]
  | Div(e1,e2) -> Div(e1,e2),[],[]
  | FNeg(e) -> FNeg(e),[],[]
  | FSqrt(e) -> FSqrt(e),[],[]
  | Floor(e) -> Floor(e),[],[]
  | Ftoi(e) -> Ftoi(e),[],[]
  | FAdd(e1,e2) -> FAdd(e1,e2),[],[]
  | FSub(e1,e2) -> FSub(e1,e2),[],[]
  | FMul(e1,e2) -> FMul(e1,e2),[],[]
  | FDiv(e1,e2) -> FDiv(e1,e2),[],[]
  | Eq(e1,e2) -> Eq(e1,e2),[],[]
  | LE(e1,e2) -> LE(e1,e2),[],[]
  | If(e1,e2,e3) ->
     let e2', fnlist2, varlist2 = lam_lift tyenv fvenv e2 in
     let e3', fnlist3, varlist3 = lam_lift tyenv fvenv e3 in
     let varlist2' = List.map fst varlist2 in
     let varlist3' = List.map fst varlist3 in
     let e3' = subst
                 (M.add_list2 varlist3'
                    (List.map (fun x -> Var(x)) varlist2') M.empty) e3' in
     If(e1,e2',e3'), (fnlist2 @ fnlist3), varlist2
  | Let((x,t),e1,e2) ->
     let e2', fnlist2, varlist2 = lam_lift (M.add x t tyenv) fvenv e2 in
     Let((x,t),e1,e2'), fnlist2, varlist2
  | Var(x) ->
     (try
        let (zts,yts) = M.find x fvenv in
        let zs = List.map (fun (x,_) -> Var(x)) zts in
        let ys = List.map (fun (x,_) -> Var(x)) yts in
        if zs <> [] then
          App(Var(x),ys),[],yts
        else
          Var(x),[],[]
      with
        Not_found -> Var(x),[],[]) 
  | LetRec({ name = (x,t); args = yts; body = e1 },e2) ->
     let ys = List.map fst yts in
     let zs = S.elements (S.diff (fv e1) (S.of_list (x::ys))) in
     let zts = List.map (fun z -> (z, M.find z tyenv)) zs in
     let fvenv = M.add x (zts,yts) fvenv in
     let tyenv = M.add x t tyenv in
     let tyenv' = M.add_list yts tyenv in
     let e1' = subst2 (M.add x
                         (App(Var(x), List.map (fun x -> Var(x)) zs)) M.empty) e1 in
     let e2' = subst2 (M.add x
                         (App(Var(x), List.map (fun x -> Var(x)) zs)) M.empty) e2 in
     let e1', fnlist1, varlist1 = lam_lift tyenv' fvenv e1' in
     let e2', fnlist2, varlist2 = lam_lift tyenv fvenv e2' in
     let e1' = subst2 (M.add x
                         (App(Var(x), List.map (fun x -> Var(x)) zs)) M.empty) e1' in
     let e2' = subst2 (M.add x
                         (App(Var(x), List.map (fun x -> Var(x)) zs)) M.empty) e2' in
     let fndef = { name = (x,t); args = (zts @ yts @ varlist1); body = e1' } in
     e2', (fnlist1 @ [fndef] @ fnlist2), varlist2
  | App(Var(x),es) ->
     App(Var(x),es),[],[] 
  | App(e,es) ->
     let e', fnlist, varlist = lam_lift tyenv fvenv e in
     App(e',es), fnlist, varlist
  | Tuple(es) -> Tuple(es),[],[]
  | LetTuple(xts,e1,e2) ->
     let tyenv' = M.add_list xts tyenv in
     let e2', fnlist2, varlist2 = lam_lift tyenv' fvenv e2 in
     LetTuple(xts,e1,e2'), fnlist2, varlist2
  | Array(e1,e2) -> Array(e1, e2),[],[]
  | Get(e1,e2) -> Get(e1, e2),[],[]
  | Put(e1,e2,e3) -> Put(e1,e2,e3),[],[]

let rec flatten arglist = function
  | Unit -> Unit
  | Bool(b) -> Bool(b)
  | Int(i) -> Int(i)
  | Float(f) -> Float(f)
  | Not(e) -> Not(flatten [] e)
  | Neg(e) -> Neg(flatten [] e)
  | Itof(e) -> Itof(flatten [] e)
  | In(e) -> In(flatten [] e)
  | Fin(e) -> Fin(flatten [] e)
  | Out(e) -> Out(flatten [] e)
  | Add(e1,e2) -> Add(flatten [] e1,flatten [] e2)
  | Sub(e1,e2) -> Sub(flatten [] e1,flatten [] e2)
  | Mul(e1,e2) -> Mul(flatten [] e1,flatten [] e2)
  | Div(e1,e2) -> Div(flatten [] e1,flatten [] e2)
  | FNeg(e) -> FNeg(flatten [] e)
  | FSqrt(e) -> FSqrt(flatten [] e)
  | Floor(e) -> Floor(flatten [] e)
  | Ftoi(e) -> Ftoi(flatten [] e)
  | FAdd(e1,e2) -> FAdd(flatten [] e1,flatten [] e2)
  | FSub(e1,e2) -> FSub(flatten [] e1,flatten [] e2)
  | FMul(e1,e2) -> FMul(flatten [] e1,flatten [] e2)
  | FDiv(e1,e2) -> FDiv(flatten [] e1,flatten [] e2)
  | Eq(e1,e2) -> Eq(flatten [] e1,flatten [] e2)
  | LE(e1,e2) -> LE(flatten [] e1,flatten [] e2)
  | If(e1,e2,e3) ->
     let e1' = flatten [] e1 in
     let e2' = flatten [] e2 in
     let e3' = flatten [] e3 in
     If(e1',e2',e3')
  | Let ((x,t),e1,e2) ->
     Let((x,t),flatten [] e1, flatten [] e2)
  | Var(x) -> Var(x)
  | LetRec({ name = (x,t); args = yts; body = e1 },e2) ->
     let e1' = flatten [] e1 in
     let fndef = { name = (x,t); args = yts; body = e1' } in
     let e2' = flatten [] e2 in
     LetRec(fndef,e2')
  | App(Var(x),es) ->
     let es' = List.map (flatten []) es in
       App(Var(x), (es' @ arglist))
  | App(e,es) ->
     let es' = List.map (flatten []) es in
     flatten arglist (flatten es' e)
  | Tuple(es) ->
     let es' = List.map (flatten []) es in
     Tuple(es')
  | LetTuple(xts,e1,e2) ->
     let e1' = flatten [] e1 in
     let e2' = flatten [] e2 in
     LetTuple(xts,e1',e2')
  | Array(e1,e2) -> Array(flatten [] e1,flatten [] e2)
  | Get(e1,e2) -> Get(flatten [] e1,flatten [] e2)
  | Put(e1,e2,e3) -> Put(flatten [] e1,flatten [] e2,flatten [] e3)

let g e =
  let e', fnlist, _ = lam_lift M.empty M.empty e in
  List.fold_right (fun x y -> LetRec(x,y)) fnlist e'

let f e = flatten [] (g e)
