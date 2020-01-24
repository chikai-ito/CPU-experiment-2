(* 末尾呼び出しの再帰関数をループに変換する *)
(* 大域レジスタ割り当てを実行しやすくする *)
(* expressions are assumed to be properly alpha converted *)
open Enums
open LNormal

(* ループの中には関数呼び出し，つまりAppが無いという条件を仮定する *)
(* さらにループ中には関数定義も存在しないと仮定する *)

(* 自分自身を末尾再帰呼び出しする関数が考慮の対象となる *)
let rec tail_call_exists x = function
  | If(_,_,_,e1,e2) -> tail_call_exists x e1 || tail_call_exists x e2
  | Let(_,_,e2) -> tail_call_exists x e2
  | App(y,_) -> x = y 
  | LetTuple(_,_,e) -> tail_call_exists x e
  | _ -> false

let rec no_calls = function
  | If(_,_,_,e1,e2) | Let(_,e1,e2) -> no_calls e1 && no_calls e2
  | LetRec(fn, e2) -> no_calls fn.body && no_calls e2
  | App(_) -> false
  | LetTuple(_,_,e) -> no_calls e
  | _ -> true (* ループの中には関数呼び出しがないから，Loop(_,e)のeは追う必要がない．Subst(_,_,e)も同様 *)

(* function x is convertible to a loop when, in its body,
 * there's no fundefs 
 * & no function calls which aren't tail_calls of itself *)
let rec convertible x = function
  | If(_,_,_,e1,e2) -> convertible x e1 && convertible x e2
  | Let(_,e1,e2) -> no_calls e1 (* 非末尾呼び出しの非存在 *) && convertible x e2 
  | LetRec(_) -> false (* 関数定義は一発アウト *)
  | App(y,_) -> x = y (* 末尾でも呼び出しは自分自身のみしか許されない *)
  | LetTuple(_,_,e) -> convertible x e
  | _ -> true (* ループの中に関数定義も呼び出しもない．no_calls中に同様の注意 *)

(* convert a convertible function body into a loop *)
(* i.e., replace App(x,zs) with a jump back to the starting point *)
(* i.e., insertion of Jump in the place where App was *)
(* l = fundef.name, ys = List.map fst fundef.args *)
let rec loop_conv l ys = function
  | If(cmp,x,y,e1,e2) -> If(cmp,x,y, loop_conv l ys e1,loop_conv l ys e2)
  | Let(xt,e1,e2) -> Let(xt, e1, loop_conv l ys e2) (* e1中には呼び出しはない *)
  | LetRec(_) -> failwith "LNormal.loop_conv: inconvertible expression: fundef is detected"
  | App(x,zs) -> (* メイン *)
     assert (x = l); (* 無いとは思うけど一応 *) (* considering only convertible functions *)
     (* let ys = List.map fst fn.args in *)
     (* List.fold_right2
      *   (fun y z e -> Subst(y,z,e)) ys zs (Jump(L(fn.name))) (\* 変数を上書きしてジャンプ *\) *)
     let yzs = List.fold_right2 (fun y z acc -> (y,z)::acc) ys zs [] in
     Jump(yzs,L(l))
  | LetTuple(xts,y,e) -> LetTuple(xts,y, loop_conv l ys e)
  | e -> e (* Loop, Substはよい *)

(* 関数呼び出しの部分にループを埋める *)
(* やっていることはほぼインライン化 *)
(* loopはループ化したfn *)
(* i.e., loop = Loop(L(fn.name), loop_conv fn fn.body) *)
let rec loop_inline loop e =
  let l, zs =
    (match loop with
     | Loop(L(l),yts,zs,body) -> l, zs
     | _ -> assert false) in
  match e with
  | If(cmp,x,y,e1,e2) -> If(cmp,x,y, loop_inline loop e1, loop_inline loop e2)
  | Let(xt,e1,e2) -> Let(xt, loop_inline loop e1, loop_inline loop e2)
  | LetRec({ name = xt; args = yts; body = e1 }, e2) ->
     LetRec({ name = xt; args = yts; body = loop_inline loop e1 }, loop_inline loop e2)
  | App(x,ys) when x = l -> (* メイン *) (* ラベルlとzsを外側で指定する必要性 *)
     (* Letの挿入に対応する操作はsubstがやってくれるようになった *)
     (* let ys' = List.map Id.genid ys in
      * let yts' = List.fold_right2 (\* Letの挿入のために変数の型情報が必要 *\)
      *         (fun y t acc -> (y,t)::acc) ys' (List.map snd fn.args) [] in *)
     let env = M.add_list2 zs ys M.empty in
       (* M.add_list2 (List.map fst fn.args) ys' M.empty in *)
     let lenv = M.add l (Id.genid l) M.empty in (* ループを埋め込む度にラベルを新しくしてラベルの一意性を保証 *)
     (* (match loop with 
      *             | Loop(L(l), _) -> assert (x = l); M.add l (Id.genid l) M.empty
      *             | _ -> assert false) in *)
     (* let e = subst env lenv loop in (\* LNormal.subst *\) *)
     subst env lenv loop
     (* ysを新しい変数ys'にLet束縛する *)
     (* ys'はループ中で代入されるので，こうしておかないとysのスコープがループ以降に続かない *)
  (* List.fold_right2 (fun yt y m -> Let(yt,Var(y),m)) yts' ys e *)
  | LetTuple(xts,y,e) -> LetTuple(xts,y, loop_inline loop e)
  | e -> e

(* ループ化可能な関数を発見してループにする *)
(* 内側から順にループ化していく *)
let rec f = function
  | If(cmp,x,y,e1,e2) -> If(cmp,x,y, f e1, f e2)
  | Let(xt,e1,e2) -> Let(xt, f e1, f e2)
  | LetRec({ name = (x,t); args = yts; body = e1 }, e2) ->
     if tail_call_exists x e1 && convertible x e1 then (* もともとループ化可能な関数の場合 *)
       (Format.eprintf "convert function %s into a loop@." x;
        let ys' = List.map (fun (y,t) -> Id.genid y) yts in (* 変数束縛のためのプレースホルダ *)
        let loop = Loop(L(x), yts, ys', loop_conv x (List.map fst yts) e1) in
        f (loop_inline loop e2))
     else
       (let e1' = f e1 in
        if tail_call_exists x e1 && convertible x e1 then
          ((* 内側をループ化するとループ化できるようになる可能性がある *)
           Format.eprintf "convert function %s into a loop@." x;
           let ys' = List.map (fun (y,t) -> Id.genid y) yts in (* 変数束縛のためのプレースホルダ *)
           let loop = Loop(L(x), yts, ys', loop_conv x (List.map fst yts) e1') in
           f (loop_inline loop e2))
        else
          ((* 内側をループ化してもループ化不能のとき *)
           LetRec({ name = (x,t); args = yts; body = e1' }, f e2)))
  | LetTuple(xts,y,e) -> LetTuple(xts,y, f e)
  | e -> e (* ループ内には関数定義はない *)
