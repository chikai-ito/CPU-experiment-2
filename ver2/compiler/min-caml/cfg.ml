open Enums
(* type id_or_imm = V of Id.t | C of int *)
(* type data_t = I of int | F of float *)
type code_t = instr list (* 単純命令のリストとしてブロック中の命令列を表現 *)
and instr = (* 単純命令の表現するデータ型 x <- op(xs) の形 *)
  | Phi of (Id.t * Type.t) * Id.t list
  | Nop
  | Set of (Id.t * Type.t) * int
  | SetL of (Id.t * Type.t) * Id.l
  | Mov of (Id.t * Type.t) * Id.t
  | Neg of (Id.t * Type.t) * Id.t
  | Itof of (Id.t * Type.t) * Id.t
  | In of (Id.t * Type.t) * Id.t
  | Fin of (Id.t * Type.t) * Id.t
  | Out of (Id.t * Type.t) * Id.t
  | AddI of (Id.t * Type.t) * Id.t * int
  | Add of (Id.t * Type.t) * Id.t * Id.t
  | Sub of (Id.t * Type.t) * Id.t * Id.t
  | Mul of (Id.t * Type.t) * Id.t * Id.t
  | Div of (Id.t * Type.t) * Id.t * Id.t
  | SLL of (Id.t * Type.t) * Id.t * Id.t
  | SLLI of (Id.t * Type.t) * Id.t * int
  | Ld of (Id.t * Type.t) * mem * Id.t * Asm2.id_or_imm (* Ld(x,y,id/imm) = x <- y + id/imm << 2 *)
  | St of (Id.t * Type.t) * mem * Id.t * Id.t * Asm2.id_or_imm
  | FMov of (Id.t * Type.t) * Id.t
  | Ftoi of (Id.t * Type.t) * Id.t
  | FNeg of (Id.t * Type.t) * Id.t
  | Floor of (Id.t * Type.t) * Id.t
  | FSqrt of (Id.t * Type.t) * Id.t
  | FAdd of (Id.t * Type.t) * Id.t * Id.t
  | FSub of (Id.t * Type.t) * Id.t * Id.t
  | FMul of (Id.t * Type.t) * Id.t * Id.t
  | FDiv of (Id.t * Type.t) * Id.t * Id.t
  | LdF of (Id.t * Type.t) * mem * Id.t * Asm2.id_or_imm (* Ld(x,y,id/imm) = x <- y + id/imm << 2 *)
  | StF of (Id.t * Type.t) * mem * Id.t * Id.t * Asm2.id_or_imm
  | Subst of Id.t * Id.t (* loop backの手前の代入命令 *)
  | CallCls of (Id.t * Type.t) * Id.t * Id.t list * Id.t list
  | CallDir of (Id.t * Type.t) * Id.l * Id.t list * Id.t list
  | Entry of Id.t list * Id.t list (* 関数のentry point; int_arg_list, float_arg_list *)
  | Return of (Id.t * Type.t) (* プログラムの答えを返す命令; ルーチンの最後につく *)
  | Save of Id.t * Id.t (* regname * ident *)
  | Restore of Id.t
type block = { mutable label : Id.l; mutable code : code_t;
               mutable prev : (block ref) list; mutable next : next_t}
and next_t = Brc of compare_t * block ref * block ref (* branch *)
           | Cnfl of block ref (* convolution *)
           | Back of Id.l * back_info (* label, self ref, succ ref *)
           | End (* end of the flow *)
and compare_t = { op : Type.t * cmp; args : Id.t * Id.t } (* 比較分岐演算の種類と引数の情報をもつデータ型 *)
and back_info = { self : block ref; succ : block ref }

let nontail_simple_instr xt = function
  | Asm2.Nop -> Nop
  | Asm2.Set(i) -> Set(xt,i)
  | Asm2.SetL(l) -> SetL(xt,l)
  | Asm2.Mov(y) -> Mov(xt,y)
  | Asm2.Neg(y) -> Neg(xt,y)
  | Asm2.Itof(y) -> Itof(xt,y)
  | Asm2.In(y) -> In(xt,y)
  | Asm2.Fin(y) -> Fin(xt,y)
  | Asm2.Out(y) -> Out(xt,y)
  | Asm2.AddI(y,i) -> AddI(xt,y,i)
  | Asm2.Add(y,z) -> Add(xt,y,z)
  | Asm2.Sub(y,z) -> Sub(xt,y,z)
  | Asm2.Mul(y,z) -> Mul(xt,y,z)
  | Asm2.Div(y,z) -> Div(xt,y,z)
  | Asm2.SLL(y,z) -> SLL(xt,y,z)
  | Asm2.SLLI(y,i) -> SLLI(xt,y,i)
  | Asm2.Ld(mem, y, z') -> Ld(xt,mem,y,z') 
  | Asm2.St(mem, y, z, w') -> St(xt,mem,y,z,w')
  | Asm2.FMov(y) -> FMov(xt,y)
  | Asm2.Ftoi(y) -> Ftoi(xt,y)
  | Asm2.FNeg(y) -> FNeg(xt,y)
  | Asm2.Floor(y) -> Floor(xt,y)
  | Asm2.FSqrt(y) -> FSqrt(xt,y)
  | Asm2.FAdd(y,z) -> FAdd(xt,y,z)
  | Asm2.FSub(y,z) -> FSub(xt,y,z)
  | Asm2.FMul(y,z) -> FMul(xt,y,z)
  | Asm2.FDiv(y,z) -> FDiv(xt,y,z)
  | Asm2.LdF(mem, y, z') -> LdF(xt,mem,y,z')
  | Asm2.StF(mem, y, z, w') -> StF(xt,mem,y,z,w')
  | Asm2.CallCls(y,zs,ws) -> CallCls(xt,y,zs,ws)
  | Asm2.CallDir(l,ys,zs) -> CallDir(xt,l,ys,zs)
  | _ -> assert false (* If, Loop are not simple & Jump isn't tail_instr *)

type is_back_t = Id.l option
let tail_simple_instr xt = function (* nontail_simple_instrと異なり, 返り値はinstr list型 *)
  | Asm2.Jump(yzs, l) ->
     (List.fold_right (fun (y,z) acc -> (Subst(y,z)) :: acc) yzs []), Some(l)
  | e -> [nontail_simple_instr xt e], None

let dummy_block = { label = L("0"); code = []; prev = []; next = End } (*  領域を確保するためのダミーブロック *)

let flow_classify : next_t list -> (next_t list * next_t list) =
  fun flows -> (* cnfl, back に分解 *)
  List.fold_left
    (fun (x,y) flw -> match flw with
                    | Cnfl(_) -> (flw :: x, y) (* Cnflは第一要素のリストに追加 *)
                    | Back(_) -> (x, flw :: y) (* Backは第二要素 *)
                    | _ -> assert false) ([],[]) flows

let join_flows : (block ref) list -> block -> unit =
  (* prsにnext_blockを代入 *)
  (* i.e., prsにnext_blockを繋ぐ *)
  (* これはmake_cfgのスーパールーチンの役目 *)
  fun prs next_b -> List.iter (fun bref -> bref := next_b) prs

let join_back_flows : next_t list -> block -> unit =
  (* backsをループの先頭ブロックであるloop_bに繋ぐ *)
  fun backs loop_b ->
  let L(l) = loop_b.label in
  List.iter (* backsとloop_bを繋ぐ *)
    (function
     | Back(L(l'), back_i) when l = l' ->
       back_i.succ := loop_b; loop_b.prev <- back_i.self :: loop_b.prev
     | _ -> assert false (* これには他のループへのbackが上がってきた場合も含まれる *)) backs

let make_branching_block prs ty cmp x y = (* 分岐の起点となるbranching blockを新しく生成して *)
  (* それとprsを双方向に繋ぎ, 分岐先2つへの参照とともに返す *)
  let c = [Nop] in
  let l = Id.genid "branching_b" in
  let b_l = ref dummy_block in
  let b_r = ref dummy_block in
  let compr = { op = (ty, cmp); args = (x,y) } in
  let sc = Brc(compr, b_l, b_r) in (* nextはdummyで取るしかない *)
  (* refを実行する度に領域が新しく確保されるから，上の２つのdummy_blockはaliasしてないはず! *)
  (* nextを繋ぐのはsuper routineの責任 *)
  let new_b = {label = L(l); code = c; prev = prs; next = sc} in (* 新しいブロックを作成 *)
  (* 上で，new_b -> prsは繋いだ *)
  join_flows prs new_b; (* ここで, prs -> new_bを繋ぐ *)
  new_b, [b_l; b_r]  (* new_bと2つの分岐先への参照を返す *)
                
(* prs : (block ref) list *)
let rec make_cfg : (block ref) list -> (Id.t * Type.t) -> Asm2.t -> (block * next_t list) =
  (* Asm2.t型の値からcfgを構成し, １つの入口ブロックと出口フロー(next_t型)のリストを返す *)
  (* 出口フローとして帰ってくるのはCnflとBackのみ. それ以外はassertする *)
  fun prs xt ->
  function (* xt is the variable to which the anser of a code should be bound *)
  | Asm2.Let(yt, ((Asm2.If _ | Asm2.FIf _) as exp), e) ->
     let new_b, bts = if_routine prs yt exp in
     let cnfls, backs = flow_classify bts in 
     assert (backs = []);
     let prs' = (* Ifの分岐の末端全てはconfl; c.f.１つ上の注意 *)
       List.map (function Cnfl(bref) -> bref | _ -> assert false) cnfls in
     let _, bts' = make_cfg prs' xt e in
     new_b, bts' (* 入口ブロックはnew_b, 出口フローはeの出口フローのbts' *)
  | Asm2.Let(yt, (Asm2.Loop _ as exp) ,e) ->
     let bh, bts = loop_routine prs yt exp in
     let cnfls, backs = flow_classify bts in (* ループのbodyから戻ってくるback flowは全てここで吸収して良い *)
     (* 他のループのbackが帰ってくることがないことを保証したループ化を行なっている *)
     join_back_flows backs bh;
     let prs' = (* conflsは下のブロックに繋ぐ *)
       List.map (function Cnfl(bref) -> bref | _ -> assert false) cnfls in
     let _, bts' = make_cfg prs' xt e in
     bh, bts'
  | Asm2.Let(yt, exp, e) -> (* expは非末尾の単純命令である *)
     let instr = nontail_simple_instr yt exp in
     let bh, bts = make_cfg prs xt e in
     bh.code <- instr :: bh.code; (* codeの先頭に単純命令を追加する *)
     bh, bts
  | Asm2.Ans((Asm2.If _ | Asm2.FIf _) as exp) ->
     if_routine prs xt exp 
  | Asm2.Ans(Asm2.Loop _ as exp) ->
     let bh, bts = loop_routine prs xt exp in
     let cnfls, backs = flow_classify bts in
     join_back_flows backs bh;
     bh, cnfls
  | Asm2.Ans(exp) -> (* 末尾の単純命令の時 *)
     let c, is_back = tail_simple_instr xt exp in
     let l = Id.genid "tail_b" in
     let sc = (match is_back with (* 末尾命令がJumpの時はラベルへのBack *)
               | Some(l) -> Back(l, { self = ref dummy_block; succ = ref dummy_block })
               | None -> Cnfl(ref dummy_block)) in
     let new_b = { label = L(l); code = c; prev = prs; next = sc } in
     (match new_b.next with
      | Back(_, b_i) -> b_i.self := new_b (* loop backの時は自身への参照を格納 *)
      | _ -> ());
     List.iter (fun bref -> bref := new_b) prs;
     new_b, [sc]   
and if_routine prs yt exp =
  let ty = (match exp with If _ -> Type.Int | FIf _ -> Type.Float | _ -> assert false) in
  (match exp with
   | Asm2.If(cmp,z,w,e1,e2) | Asm2.FIf(cmp,z,w,e1,e2) ->
      let new_b, new_prs = make_branching_block prs ty cmp z w in (* あとでphi関数を挿入するブロック *)
      let _, bt1s = make_cfg new_prs yt e1 in (* 答えを束縛する変数はyt *)
      let _, bt2s = make_cfg new_prs yt e2 in (* bt1s/bt2s : next_t list *)
      (* このIfはの答えは末尾ではないので, 下のbacksは空になるはず *)
      new_b, (bt1s @ bt2s)
   | _ -> assert false)
and loop_routine prs yt exp =
  (match exp with
   | Asm2.Loop(L(l), zts, ws, e') -> (* ループのラベルlをそのままブロックのラベルにすれば良い *)
      let bh, bts = make_cfg prs yt e' in (* 式eをcfgに変換した時の入口ブロックは１つであることが保証される *)
      let c = (List.fold_right2 (* bhのcodeの先頭に変数の代入文を挿入する *)
                 (fun zt w acc -> (Mov(zt,w))::acc) zts ws bh.code) in
      bh.label <- L(l); (* bhのラベルをループのラベルにする *)
      bh.code <- c;
      bh, bts
   | _ -> assert false)


let e_to_cfg l xt int_args float_args e =
  let c = [Entry(int_args, float_args)] in
  let b = ref dummy_block in
  let entry = { label = l; code = c; prev = []; next = Cnfl(b) } in
  let _, bts = make_cfg [b] xt e in
  let cnfls, backs = flow_classify bts in 
  assert (backs = []); (* entry pointまでループバックが上がってくることはない *)
  let prs =
    List.map (function Cnfl(bref) -> bref | _ -> assert false) cnfls in
  let return = { label = L(Id.genid "return_point"); code = [Return(xt)];
                 prev = prs; next = End } in
  join_flows prs return;
  entry, return

let f (Asm2.Prog(data, fundefs, e)) =
  let fn_cfgs = List.map (fun fn ->
                    let ret_v = Id.genid "ret_val" in
                    e_to_cfg fn.Asm2.name (ret_v, fn.ret)
                      fn.Asm2.args fn.Asm2.fargs fn.Asm2.body) fundefs in
  let l = Id.L(Id.genid "entry_point") in
  let xt = (Id.gentmp Type.Unit, Type.Unit) in
  let main_cfg = e_to_cfg l xt [] [] e in
  (data, fn_cfgs, main_cfg)
