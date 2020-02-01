open Enums
(* type id_or_imm = V of Id.t | C of int *)
(* type data_t = I of int | F of float *)
type code_t = instr list (* 単純命令のリストとしてブロック中の命令列を表現 *)
and instr = { instr_id : Id.t; op : op_t}
and op_t = (* 単純命令の表現するデータ型 x <- op(xs) の形 *)
  | Phi of (Id.t * Type.t) * (Id.t * Id.l) list
  | Nop
  | Set of (Id.t * Type.t) * int
  | SetL of (Id.t * Type.t) * Id.l
  | Mov of (Id.t * Type.t) * Id.t
  | Neg of (Id.t * Type.t) * Id.t
  | Itof of (Id.t * Type.t) * Id.t
  | In of (Id.t * Type.t)
  | Fin of (Id.t * Type.t) * Id.t
  | Out of Id.t
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
  | CallCls of (Id.t * Type.t) * Id.t * Id.t list * Id.t list
  | CallDir of (Id.t * Type.t) * Id.l * Id.t list * Id.t list
  | Entry of Id.t list * Id.t list (* 関数のentry point; int_arg_list, float_arg_list *)
  | Return of (Id.t * Type.t) (* プログラムの答えを返す命令; ルーチンの最後につく *)
  | Save of Id.t * Id.t (* regname * ident *)
  | Restore of Id.t

let new_iid _ = Id.genid "I" (* generate new instruction id *)
let new_instr operation = { instr_id = new_iid (); op = operation }
             
type block = { mutable label : Id.l; mutable code : code_t;
               mutable prev : block list; mutable next : next_t}
and next_t = Brc of compare_t * block ref * block ref (* branch *)
           | Cnfl of block ref (* confluence *)
           | Loop of block ref (* entering into loop *)
           | Back of Id.l * block ref (* loop back *)
           | End (* end of the flow *)
and compare_t = { branch : Type.t * cmp; args : Id.t * Id.t } (* 比較分岐演算の種類と引数の情報をもつデータ型 *)

let label_of_block block =
  let L(l) = block.label in l

let next_blocks block =
  match block.next with
  | Brc (_, br1, br2) -> [!br1; !br2]
  | Cnfl (br) -> [!br]
  | Loop (br) -> [!br]
  | Back (_, br) -> [!br]
  | End -> []

let nontail_simple_instr xt = function
  | Asm2.Nop -> new_instr Nop
  | Asm2.Set(i) -> new_instr (Set(xt,i))
  | Asm2.SetL(l) -> new_instr (SetL(xt,l))
  | Asm2.Mov(y) -> new_instr (Mov(xt,y))
  | Asm2.Neg(y) -> new_instr (Neg(xt,y))
  | Asm2.Itof(y) -> new_instr (Itof(xt,y))
  | Asm2.In(y) -> new_instr (In(xt))
  | Asm2.Fin(y) -> new_instr (Fin(xt,y))
  | Asm2.Out(y) -> new_instr (Out(y))
  | Asm2.AddI(y,i) -> new_instr (AddI(xt,y,i))
  | Asm2.Add(y,z) -> new_instr (Add(xt,y,z))
  | Asm2.Sub(y,z) -> new_instr (Sub(xt,y,z))
  | Asm2.Mul(y,z) -> new_instr (Mul(xt,y,z))
  | Asm2.Div(y,z) -> new_instr (Div(xt,y,z))
  | Asm2.SLL(y,z) -> new_instr (SLL(xt,y,z))
  | Asm2.SLLI(y,i) -> new_instr (SLLI(xt,y,i))
  | Asm2.Ld(mem, y, z') -> new_instr (Ld(xt,mem,y,z'))
  | Asm2.St(mem, y, z, w') -> new_instr (St(xt,mem,y,z,w'))
  | Asm2.FMov(y) -> new_instr (FMov(xt,y))
  | Asm2.Ftoi(y) -> new_instr (Ftoi(xt,y))
  | Asm2.FNeg(y) -> new_instr (FNeg(xt,y))
  | Asm2.Floor(y) -> new_instr (Floor(xt,y))
  | Asm2.FSqrt(y) -> new_instr (FSqrt(xt,y))
  | Asm2.FAdd(y,z) -> new_instr (FAdd(xt,y,z))
  | Asm2.FSub(y,z) -> new_instr (FSub(xt,y,z))
  | Asm2.FMul(y,z) -> new_instr (FMul(xt,y,z))
  | Asm2.FDiv(y,z) -> new_instr (FDiv(xt,y,z))
  | Asm2.LdF(mem, y, z') -> new_instr (LdF(xt,mem,y,z'))
  | Asm2.StF(mem, y, z, w') -> new_instr (StF(xt,mem,y,z,w'))
  | Asm2.CallCls(y,zs,ws) -> new_instr (CallCls(xt,y,zs,ws))
  | Asm2.CallDir(l,ys,zs) -> new_instr (CallDir(xt,l,ys,zs))
  | _ -> assert false (* If, Loop are not simple & Jump isn't tail_instr *)

type vars_t = (Id.t * (Id.t * Id.l) list) list (* refleshする前の変数名とrefleshした変数名とラベルの組 *)
type flow_t = { b : block; bref : block ref; vars : vars_t }
(* type flow_t = block * block ref (\* make_cfg等の関数の返り値のためのデータ型 *\) *)

let dummy_block = { label = L("0"); code = []; prev = []; next = End } (*  領域を確保するためのダミーブロック *)
            
(* 末尾の単純命令が束縛変数の名前変えを担当する *)
(* 末尾はブロックを生成する *)
let tail_simple_exp_to_flow : (Id.t * Type.t) -> Asm2.exp -> flow_t =
  fun (x, t) ->
  function (* nontail_simple_instrと異なり, 返り値はinstr list型 *)
  | Asm2.Jump(yzs, l) ->
     let l' = Id.genid "tail_b" in
     let new_vars = List.fold_right (fun (y, z) acc -> (y, [(z, Id.L(l'))]) :: acc) yzs [] in
     let new_bref = ref dummy_block in
     let new_b = {label = Id.L(l'); code = []; prev = []; next = Back(l, new_bref) } in
     { b = new_b; bref = new_bref; vars = new_vars }
  | e ->
     let x' = Id.genid x in (* ここで末端の束縛変数をrenamesする -> 合流の時にphiで繋ぐ *)
     let l = Id.genid "tail_b" in
     let new_vars = [(x, [(x', Id.L(l))])] in (* rename前, rename後 *)
     let new_bref = ref dummy_block in
     let instr = nontail_simple_instr (x', t) e in
     let new_b = { label = Id.L(l); code = [instr]; prev = []; next = Cnfl(new_bref) } in
     { b = new_b; bref = new_bref; vars = new_vars }

let minimize_phi = function (* phi命令の引数を必要最小限にする *)
  | Phi((x, t), yls) ->
     let yls' =  List.find_all (fun (y, _) -> y <> x) yls in
     (match yls' with
      | [] -> [] (* 流れのない時はphi命令を削除 *)
      | [(y, _)] -> [new_instr (Mov((x, t), y))] (* phiの引数が１つしかないということは上からの代入文 *)
      | _ -> [new_instr (Phi((x, t), yls'))])
  | _ -> assert false
    
let phi_cnfl_if : (Id.t * Type.t) -> vars_t -> code_t =
  fun (x,t) vars ->
  match vars with
  | [(y, yls)] when x = y -> minimize_phi (Phi((x, t), yls))
  | _ -> assert false

let phi_back_loop : (Id.t * Type.t) list -> Id.t list -> vars_t -> Id.l -> code_t =
  (* labelは上からの流れ *)
  fun xts ys vars label ->
  List.iter2 (fun (x, _) (z, _) -> assert (x = z)) xts vars;
  let yls = List.map (fun y -> (y, label)) ys in
  let vars = List.map2 (fun yl (z, zls) -> (z, yl :: zls)) yls vars in
  let phis = List.map2 (fun xt (_, zls) -> Phi(xt, zls)) xts vars in
  List.concat (List.map minimize_phi phis)
       

let flow_classify : flow_t list -> (flow_t list * flow_t list) =
  fun flws -> (* cnfl, back に分解 *)
  List.fold_left
    (fun (x,y) flw -> match (flw.b).next with
                    | Cnfl _ -> (flw :: x, y) (* Cnflは第一要素のリストに追加 *)
                    | Back _ -> (x, flw :: y) (* Backは第二要素 *)
                    | _ -> assert false) ([],[]) flws  
  
let join_flows : flow_t list -> block -> unit =
  (* i.e., prsとnext_blockを繋ぐ *)
  (* これはmake_cfgのbase caseの役目 *)
  fun prs next_b ->
  List.iter (fun flw ->
      match (flw.b).next with
      | Brc _ | Cnfl _ | Loop _ ->
         flw.bref := next_b; next_b.prev <- flw.b :: next_b.prev
      | _ -> assert false) prs

let join_back_flows : flow_t list -> block -> unit =
  (* backsをループの先頭ブロックであるloop_bに繋ぐ *)
  fun backs loop_b ->
  let L(l) = loop_b.label in
  List.iter (* backsとloop_bを繋ぐ *)
    (fun flw ->
      match (flw.b).next with
      | Back(L(l'), _) when l = l' ->
         flw.bref := loop_b; loop_b.prev <- flw.b :: loop_b.prev
      | _ -> assert false) backs (* これには他のループへのbackが上がってきた場合も含まれる *)  

let collect_cnfl_vars cnfl vars =
  let x, xls = (match vars with
                | [(x, xls)] -> x, xls
                | _ -> assert false) in
  let vars = match (cnfl.b).next with Cnfl _ -> cnfl.vars | _ -> assert false in
  match vars with
  | [(y, yls)] when x = y -> [(x, yls @ xls)]
  | _ -> assert false
  
let cnfl_return_vars : flow_t list -> vars_t =
  function
  | flw :: cnfls ->
     let vars = flw.vars in
     List.fold_right collect_cnfl_vars cnfls vars
  | _ -> assert false

let collect_back_vars back acc =
  let vars = match (back.b).next with Back _ -> back.vars | _ -> assert false in
  List.map2
    (fun (x, lxs) (y, lys) ->
      if x = y then (x, lxs @ lys)
      else assert false) acc vars

let back_return_vars : flow_t list -> vars_t =
  fun backs ->
  match backs with
  | flw :: backs ->
     List.fold_right (fun flw acc -> collect_back_vars flw acc) backs flw.vars
  | _ -> assert false

let make_block_toloop prs = (* ループの手前に挿入するブロックを新しく生成する *)
  let c = [] in
  let l = Id.genid "node_b" in
  let bref = ref dummy_block in
  let sc = Loop(bref) in
  let new_b = { label = L(l); code = c; prev = []; next = sc } in
  join_flows prs new_b;
  new_b, bref
  
let make_branching_block prs ty cmp x y = (* 分岐の起点となるbranching blockを新しく生成して *)
  (* それとprsを双方向に繋ぎ, 分岐先2つへの参照とともに返す *)
  let c = [] in
  let l = Id.genid "branching_b" in
  let b_l = ref dummy_block in
  let b_r = ref dummy_block in
  let compr = { branch = (ty, cmp); args = (x,y) } in
  let sc = Brc(compr, b_l, b_r) in (* nextはdummyで取るしかない *)
  (* refを実行する度に領域が新しく確保されるから，上の２つのdummy_blockはaliasしてないはず! *)
  (* nextを繋ぐのはsuper routineの責任 *)
  let new_b = {label = L(l); code = c; prev = []; next = sc} in (* 新しいブロックを作成 *)
  (* 上で，new_b -> prsは繋いだ *)
  join_flows prs new_b; (* ここで, prs -> new_bを繋ぐ *)
  new_b, (b_l, b_r)  (* new_bと2つの分岐先への参照を返す *)

let rec make_cfg : flow_t list -> (Id.t * Type.t) -> Asm2.t -> (block * flow_t list) =
  (* prsは出口ブロックと出口ブロッックの下に繋ぐブロックへの参照の組みのリスト*)
  (* Asm2.t型の値からcfgを構成し, １つの入口ブロックと出口フロー(next_t型)のリストを返す *)
  (* 出口フローとして帰ってくるのはCnflとBackのみ. それ以外はassertする *)
  fun prs xt ->
  function (* xt is the variable to which the anser of a code should be bound *)
  | Asm2.Let(yt, ((Asm2.If _ | Asm2.FIf _) as exp), e) ->
     let new_b, bts = if_routine prs yt exp in
     let cnfls, backs = flow_classify bts in
     assert (backs = []);
     (* Ifの分岐の末端全てはconfl; c.f.１つ上の注意 *)
     let bh, bts' = make_cfg cnfls xt e in (* ここで帰ってきたbhの先頭にphi関数を挿入する *)
     (* phi関数を挿入するブロックはcnflsを繋いだブロック. つまりbh *)
     let vars = cnfl_return_vars cnfls in
     let phi = phi_cnfl_if yt vars in
     bh.code <- phi @ bh.code;
     new_b, bts' (* 入口ブロックはnew_b, 出口フローはeの出口フローのbts' *)
  | Asm2.Let(yt, (Asm2.Loop _ as exp) ,e) ->
     let bh, bts = loop_routine prs yt exp in
     let cnfls, backs = flow_classify bts in
     assert (backs = []); (* 上がってくるbacksは全てloop_routine内で処理しているはずである *)
     (* 他のループのbackが帰ってくることがないことを保証したループ化を行なっている *)
     (* join_back_flows backs bh; *)
     let bh', bts' = make_cfg cnfls xt e in
     let vars = cnfl_return_vars cnfls in
     let phi = phi_cnfl_if yt vars in
     bh'.code <- phi @ bh'.code;
     bh, bts'
  | Asm2.Let(yt, exp, e) -> (* expは非末尾の単純命令である *)
     let instr = nontail_simple_instr yt exp in (* nontail_simpa_instrは変数のrefleshの必要はない *)
     let bh, bts = make_cfg prs xt e in
     bh.code <- instr :: bh.code; (* codeの先頭に単純命令を追加する *)
     bh, bts
  | Asm2.Ans((Asm2.If _ | Asm2.FIf _) as exp) ->
     if_routine prs xt exp 
  | Asm2.Ans(Asm2.Loop _ as exp) ->
     let bh, bts = loop_routine prs xt exp in
     let cnfls, backs = flow_classify bts in
     assert (backs = []);
     (* join_back_flows backs bh; *)
     bh, cnfls
  | Asm2.Ans(exp) -> (* 末尾の単純命令の時 *) (* これがbase case *)
     let flw = tail_simple_exp_to_flow xt exp in (* flw.b = new_b *)
     join_flows prs flw.b; (* 新しいブロックとprsを繋ぐ *)
     flw.b, [flw]
and if_routine prs yt exp =
  let ty = (match exp with If _ -> Type.Int | FIf _ -> Type.Float | _ -> assert false) in
  (match exp with
   | Asm2.If(cmp,z,w,e1,e2) | Asm2.FIf(cmp,z,w,e1,e2) ->
      let new_b, (b_l, b_r) = make_branching_block prs ty cmp z w in (* あとでphi関数を挿入するブロック *)
      let flw_l = { b = new_b; bref = b_l; vars = [] } in
      let flw_r = { b = new_b; bref = b_r; vars = [] } in
      let _, bt1s = make_cfg [flw_l] yt e1 in (* 答えを束縛する変数はyt *)
      let _, bt2s = make_cfg [flw_r] yt e2 in (* bt1s/bt2s : next_t list *)
      new_b, (bt1s @ bt2s)
   | _ -> assert false)
and loop_routine prs yt exp =
  (match exp with
   | Asm2.Loop(L(l), zts, ws, e') -> (* ループのラベルlをそのままブロックのラベルにすれば良い *)
      let new_b, new_bref = make_block_toloop prs in (* ループの前に挿入する新しいブロック *)
      let flw = { b = new_b; bref = new_bref; vars = [] } in
      let bh, bts = make_cfg [flw] yt e' in (* bhはループの入口ブロック. ここにphi関数を挿入 *)
      let cnfls, backs = flow_classify bts in
      let vars = back_return_vars backs in (* 上がってきた代入をphiでbhに吸収 *)
      let phis = phi_back_loop zts ws vars new_b.label in (* new_b.labelは上からの流れのラベル *)
      (* let L(l') = bh.label in
       * Format.eprintf "changed label %s to %s@." l' l; *)
      bh.label <- L(l); (* bhのラベルをループのラベルにする *)
      bh.code <- phis @ bh.code;
      join_back_flows backs bh; (* backsをbhに繋ぐ *)
      new_b, cnfls
   | _ -> assert false)


(* cfg_db.ml中の関数をcfg用に再定義 *)
let is_visited tbl block =
  (* すでに訪れた頂点ならtrueを返し, そうでなければ表にtrueを書き込んでfalseを返す *)
  let l = label_of_block block in
  try
    H.find tbl l
  with
    Not_found -> H.add tbl l true; false

let check_next color_tbl block =
  let is_not_visited x = not (is_visited color_tbl x) in
  List.filter is_not_visited (next_blocks block)

let rec bfs queue color_tbl acc =
  if Queue.is_empty queue then
    List.rev acc (* 訪問した順番に直したリストを返す *)
  else
    let b = Queue.pop queue in
    let bs = check_next color_tbl b in
    List.iter (fun x -> Queue.push x queue) bs;
    bfs queue color_tbl (bs @ acc)
  
let scan_cfg entry ret =
  let color_tbl = H.create 50000 in
  let queue = Queue.create () in
  Queue.push entry queue;
  let l = label_of_block entry in
  H.add color_tbl l true;
  bfs queue color_tbl [entry]
(* ---- from cfg_db.ml ---- *)


let e_to_cfg l xt int_args float_args e =
  let c = [new_instr (Entry(int_args, float_args))] in
  let new_bref = ref dummy_block in
  let entry = { label = l; code = c; prev = []; next = Cnfl(new_bref) } in
  let flw = { b = entry; bref = new_bref; vars = [] } in
  let _, bts = make_cfg [flw] xt e in
  let cnfls, backs = flow_classify bts in 
  assert (backs = []); (* entry pointまでループバックが上がってくることはない *)
  let vars = cnfl_return_vars cnfls in
  let phi = phi_cnfl_if xt vars in
  let return = { label = L(Id.genid "return_point");
                 code = phi @ [new_instr (Return(xt))];
                 prev = [];
                 next = End } in
  join_flows cnfls return;
  scan_cfg entry return

let g = List.map (* 関数をcfgに変換する *)
          (fun fn ->
            let ret_v = Id.genid "ret_val" in
            e_to_cfg fn.Asm2.name (ret_v, fn.ret)
              fn.Asm2.args fn.Asm2.fargs fn.Asm2.body)

let f (Asm2.Prog(data, fundefs, e)) =
  let fn_cfgs = g fundefs in
  let l = Id.L(Id.genid "entry_point") in
  let xt = (Id.gentmp Type.Unit, Type.Unit) in
  let main_cfg = e_to_cfg l xt [] [] e in
  (data, fn_cfgs, main_cfg)
