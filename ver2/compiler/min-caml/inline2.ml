open KNormal
   
let rec occur x = function
  | Unit -> false
  | Int(_) -> false
  | Float(_) -> false
  | Neg(y) ->  x = y
  | Itof(y) -> x = y
  | In(y) -> x = y
  | Fin(y) -> x = y
  | Out(y) -> x = y
  | Add(y,z) -> x = y || x = z
  | Sub(y,z) -> x = y || x = z
  | Mul(y,z) -> x = y || x = z
  | Div(y,z) -> x = y || x = z
  | FNeg(y) -> x = y
  | Ftoi(y) -> x = y
  | FSqrt(y) -> x = y
  | Floor(y) -> x = y
  | FAdd(y,z) -> x = y || x = z
  | FSub(y,z) -> x = y || x = z
  | FMul(y,z) -> x = y || x = z
  | FDiv(y,z) -> x = y || x = z
  | If(cmp,y,z,e1,e2) ->
     x = y || x = z ||
       occur x e1 || occur x e2
  | Let ((y,t),e1,e2) -> 
     (* terms are assumed to be alpha converted *)
     (* thus, bound variable y never equals x *)
     occur x e1 || occur x e2
  | Var(y) -> x = y
  | LetRec({ name = (y,t); args = zts; body = e1},e2) ->
     occur x e1 || occur x e2
  | App(y,zs) -> x = y || List.mem x zs
  | Tuple(ys) -> List.mem x ys
  | LetTuple(yts,z,e) -> x = z || occur x e
  | Get(y,z) -> x = y || x = z
  | Put(y,z,w) -> x = y || x = z || x = w
  | ExtArray(y) -> false
  | ExtFunApp(y,zs) -> List.mem x zs

let find x env = try M.find x env with Not_found -> x
                                                  
let rec subst env = function
  | Unit -> Unit
  | Int(i) -> Int(i)
  | Float(f) -> Float(f)
  | Neg(x) -> Neg(find x env)
  | Itof(x) -> Itof(find x env)
  | In(x) -> In(find x env)
  | Fin(x) -> Fin(find x env)
  | Out(x) -> Out(find x env)
  | Add(x,y) -> Add(find x env, find y env)
  | Sub(x,y) -> Sub(find x env, find y env)
  | Mul(x,y) -> Mul(find x env, find y env)
  | Div(x,y) -> Div(find x env, find y env)
  | FNeg(x) -> FNeg(find x env)
  | Ftoi(x) -> Ftoi(find x env)
  | FSqrt(x) -> FSqrt(find x env)
  | Floor(x) -> Floor(find x env)
  | FAdd(x,y) -> FAdd(find x env, find y env)
  | FSub(x,y) -> FSub(find x env, find y env)
  | FMul(x,y) -> FMul(find x env, find y env)
  | FDiv(x,y) -> FDiv(find x env, find y env)
  | If(cmp,x,y,e1,e2) ->
     let x, y = find x env, find y env in
     let e1, e2 = subst env e1, subst env e2 in
     If(cmp,x,y,e1,e2)
  | Let((x,t),e1,e2) ->
     (* terms are assumed to be alpha converted *)
     let e1, e2 = subst env e1, subst env e2 in
     Let((x,t),e1,e2)
  | Var(x) -> Var(find x env)
  | LetRec({ name = (x,t); args = yts; body = e1 }, e2) ->
     (* terms are assumed to be alpha converted *)
     let e1, e2 = subst env e1, subst env e2 in
     LetRec({ name = (x,t); args = yts; body = e1 }, e2)
  | App(x,ys) ->
     let x = find x env in
     let ys = List.map (fun x -> find x env) ys in
     App(x,ys)
  | Tuple(xs) -> Tuple(List.map (fun x -> find x env) xs)
  | LetTuple(xts,y,e) ->
     let y, e = find y env, subst env e in
     LetTuple(xts,y,e)
  | Get(x,y) -> Get(find x env, find y env)
  | Put(x,y,z) -> Put(find x env, find y env, find z env)
  | ExtArray(x) -> ExtArray(x)
  | ExtFunApp(x,ys) -> ExtFunApp(x, List.map (fun x -> find x env) ys)

let rec call_exists x = function
  | If(_,_,_,e1,e2) | Let(_,e1,e2) ->
     call_exists x e1 || call_exists x e2
  | LetRec({ name = (y,t); args = zts; body = e1 },e2) ->
     if call_exists x e2 then
       true
     else
       call_exists x e1 && call_exists y e2
  | App(y,_) -> x = y
  | LetTuple(_,_,e) -> call_exists x e
  | _ -> false
                     
(* check if a fundef is recursive *)
let rec is_recfun { name = (x,t); args = yts; body = e } =
  call_exists x e

let rec inline2 fnlist = function
  | If(cmp,x,y,e1,e2) -> If(cmp,x,y,inline2 fnlist e1,inline2 fnlist e2)
  | Let((x,t),e1,e2) -> Let((x,t),inline2 fnlist e1,inline2 fnlist e2)
  | LetRec(fd,e2) ->
     let (x,_) = fd.name in
     let fnlist =
       if not (is_recfun fd) then
         M.add x fd fnlist
       else
         fnlist in
     LetRec({ name = fd.name; args = fd.args; body = inline2 fnlist fd.body },
            inline2 fnlist e2)
  | App(x,ys) ->
     (try
        let { name = (x,t); args = yts; body = e } = M.find x fnlist in
        let e = Alpha.g (M.add_list2 (List.map fst yts) ys M.empty) e in
        e
      with
        Not_found -> App(x,ys))
  | LetTuple(xts,y,e) -> LetTuple(xts,y,inline2 fnlist e)
  | e -> e

let f e = inline2 M.empty e
