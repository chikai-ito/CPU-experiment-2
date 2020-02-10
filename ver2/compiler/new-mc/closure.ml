open Enums
type closure = { entry : Id.l; actual_fv : Id.t list }
type t = (* �����������Ѵ���μ� (caml2html: closure_t) *)
  | Unit
  | Const of const
  (* | Int of int
   * | Float of float *)
  | Neg of Id.t
  | Itof of Id.t
  | In of Id.t
  | Fin of Id.t
  | Out of Id.t
  | Add of Id.t * Id.t
  | Sub of Id.t * Id.t
  | Mul of Id.t * Id.t
  | Div of Id.t * Id.t
  | FNeg of Id.t
  | Ftoi of Id.t
  | FSqrt of Id.t
  | Floor of Id.t
  | FAdd of Id.t * Id.t
  | FSub of Id.t * Id.t
  | FMul of Id.t * Id.t
  | FDiv of Id.t * Id.t
  | If of cmp * Id.t * Id.t * t * t
  | Let of (Id.t * Type.t) * t * t
  | Var of Id.t
  | MakeCls of (Id.t * Type.t) * closure * t
  | AppCls of Id.t * Id.t list
  | AppDir of Id.l * Id.t list
  | Tuple of Id.t list
  | LetTuple of (Id.t * Type.t) list * Id.t * t
  | Get of Id.t * Id.t
  | GetL of Id.l * Id.t
  | Put of Id.t * Id.t * Id.t
  | PutL of Id.l * Id.t * Id.t
  | ExtArray of Id.l
and const = Int of int | Float of float | Ptr of Id.l
type fundef = { name : Id.l * Type.t;
                args : (Id.t * Type.t) list;
                formal_fv : (Id.t * Type.t) list;
                body : t }
type prog = Prog of fundef list * t

let rec fv = function
  | Unit | Const _ | ExtArray(_) -> S.empty
  | Neg(x) | Itof(x) | In(x) | Fin(x) | Out(x) | GetL(_, x)
    | FNeg(x) | Ftoi(x) | Floor(x) | FSqrt(x) -> S.singleton x
  | Add(x, y) | Sub(x, y) | Mul(x, y) | Div(x, y) | PutL(_, x, y)
    | FAdd(x, y) | FSub(x, y) | FMul(x, y) | FDiv(x, y) | Get(x, y)
    -> S.of_list [x; y]
  | If(_,x,y,e1,e2) -> S.add x (S.add y (S.union (fv e1) (fv e2)))
  | Let((x, t), e1, e2) -> S.union (fv e1) (S.remove x (fv e2))
  | Var(x) -> S.singleton x
  | MakeCls((x, t), { entry = l; actual_fv = ys }, e)
    -> S.remove x (S.union (S.of_list ys) (fv e))
  | AppCls(x, ys) -> S.of_list (x :: ys)
  | AppDir(_, xs) | Tuple(xs) -> S.of_list xs
  | LetTuple(xts, y, e) -> S.add y (S.diff (fv e) (S.of_list (List.map fst xts)))
  | Put(x, y, z) -> S.of_list [x; y; z]

let toplevel : fundef list ref = ref []

let g_const = function
  | KNormal.Int(i) -> Int(i)
  | KNormal.Float(f) -> Float(f)
  | KNormal.Ptr(l) -> Ptr(l)

let rec g env known = function (* �����������Ѵ��롼�������� (caml2html: closure_g) *)
  | KNormal.Unit -> Unit
  | KNormal.Const(cns) -> Const(g_const cns)
  (* | KNormal.Int(i) -> Int(i)
   * | KNormal.Float(f) -> Float(f) *)
  | KNormal.Neg(x) -> Neg(x)
  | KNormal.Itof(x) -> Itof(x)
  | KNormal.In(x) -> In(x)
  | KNormal.Fin(x) -> Fin(x)
  | KNormal.Out(x) -> Out(x)                     
  | KNormal.Add(x, y) -> Add(x, y)
  | KNormal.Sub(x, y) -> Sub(x, y)
  | KNormal.Mul(x, y) -> Mul(x, y)
  | KNormal.Div(x, y) -> Div(x, y)
  | KNormal.FNeg(x) -> FNeg(x)
  | KNormal.Ftoi(x) -> Ftoi(x)
  | KNormal.Floor(x) -> Floor(x)
  | KNormal.FSqrt(x) -> FSqrt(x)
  | KNormal.FAdd(x, y) -> FAdd(x, y)
  | KNormal.FSub(x, y) -> FSub(x, y)
  | KNormal.FMul(x, y) -> FMul(x, y)
  | KNormal.FDiv(x, y) -> FDiv(x, y)
  | KNormal.If(cmp, x, y, e1, e2) ->
      If(cmp, x, y, g env known e1, g env known e2)
  | KNormal.Let((x, t), e1, e2)
    -> Let((x, t), g env known e1, g (M.add x t env) known e2)
  | KNormal.Var(x) -> Var(x)
  | KNormal.LetRec({ KNormal.name = (x, t); KNormal.args = yts; KNormal.body = e1 }, e2) -> (* �ؿ�����ξ�� (caml2html: closure_letrec) *)
      (* �ؿ����let rec x y1 ... yn = e1 in e2�ξ��ϡ�
         x�˼�ͳ�ѿ����ʤ�(closure��𤵤�direct�˸ƤӽФ���)
         �Ȳ��ꤷ��known���ɲä���e1�򥯥��������Ѵ����Ƥߤ� *)
      let toplevel_backup = !toplevel in
      let env' = M.add x t env in
      let known' = S.add x known in
      let e1' = g (M.add_list yts env') known' e1 in
      (* �����˼�ͳ�ѿ����ʤ��ä������Ѵ����e1'���ǧ���� *)
      (* ����: e1'��x���Ȥ��ѿ��Ȥ��ƽи��������closure��ɬ��!
         (thanks to nuevo-namasute and azounoman; test/cls-bug2.ml����) *)
      let zs = S.diff (fv e1') (S.of_list (List.map fst yts)) in
      let known', e1' =
        if S.is_empty zs then known', e1' else
          (* zs��empty�ǤϤʤ����Ǥ�e1'��x���Ȥ��ѿ��Ȥ��ƽи����Ƥ��ʤ�����
           *   lamba lifting�ˤ�äƼ�ͳ�ѿ����褹�� *)
        (* ���ܤ��ä������(toplevel����)���ᤷ�ơ������������Ѵ�����ľ�� *)
        (Format.eprintf "free variable(s) %s found in function %s@." (Id.pp_list (S.elements zs)) x;
         Format.eprintf "function %s cannot be directly applied in fact@." x;
         toplevel := toplevel_backup;
         let e1' = g (M.add_list yts env') known e1 in
         known, e1') in
      let zs = S.elements (S.diff (fv e1') (S.add x (S.of_list (List.map fst yts)))) in (* ��ͳ�ѿ��Υꥹ�� *)
      let zts = List.map (fun z -> (z, try M.find z env' with Not_found ->
                                         Format.eprintf "id %s was not found@." z; assert false)) zs in (* �����Ǽ�ͳ�ѿ�z�η����������˰���env��ɬ�� *)
      toplevel := { name = (Id.L(x), t); args = yts; formal_fv = zts; body = e1' } :: !toplevel; (* �ȥåץ�٥�ؿ����ɲ� *)
      let e2' = g env' known' e2 in
      if S.mem x (fv e2') then (* x���ѿ��Ȥ���e2'�˽и����뤫 *)
        MakeCls((x, t), { entry = Id.L(x); actual_fv = zs }, e2') (* �и����Ƥ����������ʤ� *)
      else
        (Format.eprintf "eliminating closure(s) %s@." x;
         e2') (* �и����ʤ����MakeCls���� *) 
  | KNormal.App(x, ys) when S.mem x known -> (* �ؿ�Ŭ�Ѥξ�� (caml2html: closure_app) *)
      Format.eprintf "directly applying %s@." x;
      AppDir(Id.L(x), ys)
  | KNormal.App(f, xs) -> AppCls(f, xs)
  | KNormal.Tuple(xs) -> Tuple(xs)
  | KNormal.LetTuple(xts, y, e) -> LetTuple(xts, y, g (M.add_list xts env) known e)
  | KNormal.Get(x, y) -> Get(x, y)
  | KNormal.GetL(l, x) -> GetL(l, x)
  | KNormal.Put(x, y, z) -> Put(x, y, z)
  | KNormal.PutL(l, x, y) -> PutL(l, x, y)
  | KNormal.ExtArray(x) -> ExtArray(Id.L(x))
  | KNormal.ExtFunApp(x, ys) -> AppDir(Id.L("min_caml_" ^ x), ys)

let f e =
  Format.eprintf "start Closure.f@.";
  toplevel := [];
  let e' = g M.empty S.empty e in
  Prog(List.rev !toplevel, e')