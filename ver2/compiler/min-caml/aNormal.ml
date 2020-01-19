open KNormal

(* a_normal returns the base term of the input and
 * the list of definitions before it
 * in deflist, the outermost definition is in the tail *)
let rec a_normal = function
  (* | Unit -> Unit, []
   * | Int(x) -> Int(x), []
   * | Float(x) -> Float(x), []
   * | Neg(x) -> Neg(x), []
   * | Itof(x) -> Itof(x), []
   * | In(x) -> In(x), []
   * | Fin(x) -> Fin(x), []
   * | Out(x) -> Out(x), []
   * | Add(x,y) -> Add(x,y), []
   * | Sub(x,y) -> Sub(x,y), []
   * | Mul(x,y) -> Mul(x,y), []
   * | Div(x,y) -> Div(x,y), []
   * | FNeg(x) -> FNeg(x), []
   * | Ftoi(x) -> Ftoi(x), []
   * | FSqrt(x) -> FSqrt(x), []
   * | Floor(x) -> Floor(x), []
   * | FAdd(x,y) -> FAdd(x,y), []
   * | FSub(x,y) -> FSub(x,y), []
   * | FMul(x,y) -> FMul(x,y), []
   * | FDiv(x,y) -> FDiv(x,y), [] *)
  (* | IfEq(x,y,e1,e2) ->
   *    let e1, dflist1 = a_normal e1 in
   *    let e2, dflist2 = a_normal e2 in
   *    let e1' = List.fold_left
   *                (fun n ((x,t),m) -> Let((x,t),m,n)) e1 dflist1 in
   *    let e2' = List.fold_left
   *                (fun n ((x,t),m) -> Let((x,t),m,n)) e2 dflist2 in
   *    IfEq(x,y,e1',e2'), []
   * | IfLE(x,y,e1,e2) ->
   *    let e1, dflist1 = a_normal e1 in
   *    let e2, dflist2 = a_normal e2 in
   *    let e1' = List.fold_left
   *                (fun n ((x,t),m) -> Let((x,t),m,n)) e1 dflist1 in
   *    let e2' = List.fold_left
   *                (fun n ((x,t),m) -> Let((x,t),m,n)) e2 dflist2 in
   *    IfLE(x,y,e1',e2'), []
   * | IfLt(x,y,e1,e2) ->
   *    let e1, dflist1 = a_normal e1 in
   *    let e2, dflist2 = a_normal e2 in
   *    let e1' = List.fold_left
   *                (fun n ((x,t),m) -> Let((x,t),m,n)) e1 dflist1 in
   *    let e2' = List.fold_left
   *                (fun n ((x,t),m) -> Let((x,t),m,n)) e2 dflist2 in
   *    IfLt(x,y,e1',e2'), [] *)
  | If(cmp,x,y,e1,e2) ->
     let e1, dflist1 = a_normal e1 in
     let e2, dflist2 = a_normal e2 in
     let e1' = List.fold_left
                 (fun n ((x,t),m) -> Let((x,t),m,n)) e1 dflist1 in
     let e2' = List.fold_left
                 (fun n ((x,t),m) -> Let((x,t),m,n)) e2 dflist2 in
     If(cmp,x,y,e1',e2'), []
  | Let((x,t),e1,e2) ->
     let e1', dflist1 = a_normal e1 in
     let e2', dflist2 = a_normal e2 in
     e2', (dflist2 @ (((x,t),e1')::dflist1))
  (* | Var(x) -> Var(x), [] *)
  | LetRec({ name = (x,t); args = yts; body = e1 },e2) ->
     let e1, dflist1 = a_normal e1 in
     let e2, dflist2 = a_normal e2 in
     let e1' = List.fold_left
                 (fun n ((x,t),m) -> Let((x,t),m,n)) e1 dflist1 in
     let e2' = List.fold_left
                 (fun n ((x,t),m) -> Let((x,t),m,n)) e2 dflist2 in
     LetRec({ name = (x,t); args = yts; body = e1' },e2'), []
  (* | App(x,ys) -> App(x,ys), []
   * | Tuple(xs) -> Tuple(xs), [] *)
  | LetTuple(xts,y,e) ->
     let e, dflist = a_normal e in
     let e' = List.fold_left
                (fun n ((x,t),m) -> Let((x,t),m,n)) e dflist in
     LetTuple(xts,y,e'), []
  (* | Get(x,y) -> Get(x,y), []
   * | Put(x,y,z) -> Put(x,y,z), []
   * | ExtArray(x) -> ExtArray(x), []
   * | ExtFunApp(x,ys) -> ExtFunApp(x,ys), [] *)
  | e -> e, []


let f e =
  let e, dflist = a_normal e in
  List.fold_left
    (fun n ((x,t),m) -> Let((x,t),m,n)) e dflist 
