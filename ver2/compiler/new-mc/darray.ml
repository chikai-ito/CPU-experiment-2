(* KNormal.t型の値中のdata arrayを集める *)
(* これは他の最適化と異なり，一回で十分 *)
(* KNormal.tの値はalpha変換されていることを仮定する *)

(* let find x env = try M.find x env with Not_found -> Var(x) *)

(* collect data arrays in DAG like order *)
let data = ref []

let label_of_array : darray -> Id.t = function
  | CArr(Id.L(l), _, _) -> l
  | AArr(Id.L(l), _, _) -> l

let is_create_array l =
  l = "create_array" || l = "create_float_array"

(* 変数がcreate_array以外の関数中で引数として使用されているかどうかを返す *)
(* 関数に適用される変数は命令メモリとデータメモリのオフセットの関係からd_arrayにできない *)
let used_as_arg x = function
  | If(_, _, _, e1, e2) | Let(_, e1, e2)
    | LetRec({ body = e1 }, e2) -> used_as_arg x e1 || used_as_arg x e2
  | LetTuple(_, _, e) -> used_as_arg x e
  | App(_, ys) -> List.mem x ys
  | ExtFunApp(l, ys) when not (is_create_array l) -> List.mem x ys

let rec g env = function
  | If(cmp, x, y, e1, e2) ->
     If(cmp, x, y, g env e1, g env e2)
  | Let((x, t), e1, e2) ->
     let e1' = g env e1 in
     (match e1' with
      | Const _ as cns -> (* ここはconstFoldみたいなことをしている *)
         let env' = M.add x cns env in
         Let((x, t), e1', g env' e2)
      | DArray (a) ->
         if used_as_arg x e2 then
           Let((x, t), e1, g env e2)
         else (* この場合はxをdata arrayにできる *)
           data := a :: data; (* dataに登録 *)
           let env' = M.add x (DArray(a)) env in
           Let((x, t), e1', g env' e2)
      | _ ->
         Let((x, t), e1', g env e2))
  | Var(x) -> (try M.find x env with Not_found -> Var(x))
  | LetRec({ name = xt; args = yts; body = e1 }, e2) ->
     LetRec({ name = xt; args = yts; body = g env e1 }, g env e2)
  (* 関数が配列や定数になることはないので環境を更新する必要はない *)
  | App(x, ys) when x = "create_array" && List.length ys = 2 ->
     (match ys with
      | [z; w] ->
         (try
            let new_da = 
              (match M.find z env with
               | Const(Int(i)) ->
                  (match M.find w env with
                   | Const _ as cns ->
                      CArr(Id.L(Id.genid "d_array"), i, cns)
                   | DArray _ as da ->
                      AArr(Id.L(Id.genid "d_array"), i, da)))) in
            DArray(new_da)
          with
            Not_found -> App(x, ys))
      | _ -> assert false)
  | LetTuple(xts, y, e) -> LetTuple(xts, y, g env e)
  (* 型チェックを通っているので，このyが配列や定数になることはない *)
  | Get(x, y) when M.mem x env ->
     (match M.find x env with
      | DArray(CArr(l, _, _)) -> DGet(l, y)
      | DArray(AArr(l, _, _)) -> DGet(l, y)
      | _ -> assert false (* 型チェックを通っているので，xがConstになることはない *))
  | Put(x, y, z) when M.mem x env ->
     (match M.find x env with
      | DArray(CArr(l, _, _)) -> DPut(l, y, z)
      | DArray(AArr(l, _, _)) -> DPut(l, y, z)
      | _ -> assert false)
  | e -> e
       
let f e =
  let e = g M.empty e in
  e, List.rev !data
