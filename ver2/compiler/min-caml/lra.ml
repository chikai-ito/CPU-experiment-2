(* customized version of Set *)

type lr_info = { mutable name : Id.t; mutable size : int; mutable set : S.t }

let new_lr_label _ = Id.genid "LR"

(* ir_i.setは等しくなければdisjointであることが保証される *)
let lr_info_union : lr_info -> lr_info -> lr_info * Id.t list =
  (* lr_info型の２つの値を受け取り，大きい方のlr_i1に２つを合成する *)
  (* 合成結果と更新が必要な変数のリストの組を返す *)
  fun lr_i1 lr_i2 ->
  if lr_i1 = lr_i2 then
    lr_i1, [] (* もともと同一ならunionの必要も更新の必要もない *)
  else
    (assert (S.is_empty (S.inter lr_i1.set lr_i2.set)); (* disjointかどうかを確認 *)
     assert (lr_i1.size >= lr_i2.size); (* 第一引数の.setのサイズの方が大きくなるように運用する *)
     lr_i1.size <- lr_i1.size + lr_i2.size;
     lr_i1.set <- S.union lr_i1.set lr_i2.set;
     lr_i1, (S.elements lr_i2.set))

let make_lr_tbl n =
  let lr_tbl : lr_info H.t = H.create n in
  lr_tbl

let add_lr_tbl lr_tbl x =
  try
    let _ = H.find lr_tbl x in () (* すでにあるなら足す必要はない *)
  with
    Not_found -> (* 新しく生存区間を作って表に加える *)
    let lr_i = { name = new_lr_label (); size = 1; set = S.singleton x } in
    H.add lr_tbl x lr_i 
      

let union_lr lr_tbl x y = (* xとyの生存区間をmergeする *)
  let lr_ix, lr_iy = (* この関数を呼ぶ前にadd_lr_tblをしておく *)
    (try
       (H.find lr_tbl x), (H.find lr_tbl y)
     with
       Not_found -> assert false) in
  let lr_i, mod_list =
    (if lr_ix.size >= lr_iy.size then
       lr_info_union lr_ix lr_iy
     else
       lr_info_union lr_iy lr_ix) in
  List.iter
    (fun y -> H.replace lr_tbl y lr_i) mod_list

(* デバッグ用の関数たち *)
let print_lr_info { name = lr; size = n; set = s } =
  Printf.printf "name of LR : %s\n" lr;
  Printf.printf "size : %d\n" n;
  print_string "members : ";
  List.iter
    (fun x -> Printf.printf "%s, " x) (S.elements s);
  print_string "\b\b\n"

let print_lr lr_tbl x =
  try
    let lr_ix = H.find lr_tbl x in
    print_string "--------\n";
    Printf.printf "id : %s\n" x;
    print_lr_info lr_ix;
    print_string "--------\n"
  with
    Not_found ->
    print_string "--------\n";
    Printf.printf "%s : not found \n" x;
    print_string "--------\n"

let test_run _ =
  let list = ["xx.0"; "y.1"; "z.5"; "x.1"] in
  let lr_tbl = make_lr_tbl 100 in
  List.iter (add_lr_tbl lr_tbl) list;
  union_lr lr_tbl "xx.0" "y.1";
  union_lr lr_tbl "y.1" "z.5";
  List.iter (print_lr lr_tbl) list
