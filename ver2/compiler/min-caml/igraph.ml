open Enums

type liverange = Id.t
(* adj_tblには同じ型のLRしか存在しないことが保証されていなければならない *)
type inter_graph = { mutable size : int;
                     deg_tbl : (int * Type.t) H.t;
                     adj_tbl : (S.t * Type.t) H.t }

let create_graph n = { size = 0; deg_tbl = H.create n; adj_tbl = H.create n }
                 
let graph_copy : inter_graph -> inter_graph =
  fun graph -> { size = graph.size;
                 deg_tbl = H.copy graph.deg_tbl;
                 adj_tbl = H.copy graph.adj_tbl }
                 
let nodes_of_graph : inter_graph -> (liverange * Type.t) list =
  (* 頂点のリストを返す *)
  fun graph ->
  H.fold
  (fun node (_, ty) acc -> (node, ty) :: acc) graph.deg_tbl []
  
let deg_of_node : inter_graph -> liverange -> int * Type.t =
  fun graph node ->
  try H.find graph.deg_tbl node
  with Not_found -> assert false

let adjs_of_node : inter_graph -> liverange -> (S.t * Type.t) =
  fun graph node ->
  try H.find graph.adj_tbl node
  with Not_found ->
    Format.eprintf "%s is not on the table@." node;
    assert false


let print_set set =
  let list = S.elements set in
  List.iter (Printf.printf "%s, ") list;
  print_string "\n"

let print_graph graph =
  H.iter (fun x (s, t) ->
      Printf.printf "%s, %d : " x (fst (deg_of_node graph x));
      Type.print_type t;
      print_string " : ";
      print_set s) graph.adj_tbl

let reset_node : inter_graph -> liverange -> int -> unit =
  fun graph node deg ->
  let _, ty = deg_of_node graph node in
  H.replace graph.deg_tbl node (deg, ty)

let reset_adjs : inter_graph -> liverange -> S.t -> unit =
  fun graph node adjs ->
  let _, ty = adjs_of_node graph node in
  H.replace graph.adj_tbl node (adjs, ty)

let add_node : inter_graph -> liverange -> Type.t -> unit =
  fun graph node ty ->
  if H.mem graph.deg_tbl node then () (* すでにnodeがある場合は何もしない *)
  else
    (graph.size <- graph.size + 1;
     H.add graph.deg_tbl node (0, ty);
     H.add graph.adj_tbl node (S.empty, ty))

let incr_deg : inter_graph -> liverange -> unit =
  fun graph node ->
  try
    let d, _ = deg_of_node graph node in
    reset_node graph node (d + 1)
  with
    Not_found -> assert false

let decr_deg : inter_graph -> liverange -> unit =
  fun graph node ->
  try
    let d, _ = deg_of_node graph node in
    reset_node graph node (d - 1)
  with
    Not_found -> assert false

let addto_adj : inter_graph -> liverange -> liverange -> unit =
  (* node1をnode2のadj_tblに加える *)
  (* node2のdeg_tblをincrement *)
  fun graph node1 node2 ->
  let _, ty1 = adjs_of_node graph node1 in
  let adjs2, ty2 = adjs_of_node graph node2 in
  if not (S.mem node1 adjs2) then
    (assert (ty1 = ty2);
     reset_adjs graph node2 (S.add node1 adjs2);
     incr_deg graph node2 (* increase deg of node2 by 1 *))

let remvfrm_adj : inter_graph -> liverange -> liverange -> unit =
  (* ndoe1をnode2のadj_tblから削除 *)
  (* node2のdeg_tblをdecrement *)
  fun graph node1 node2 ->
  let _, ty1 = adjs_of_node graph node1 in
  let adjs2, ty2 = adjs_of_node graph node2 in
  assert (ty1 = ty2);
  reset_adjs graph node2 (S.remove node1 adjs2);
  decr_deg graph node2

let add_edge : inter_graph -> liverange * Type.t ->
               liverange * Type.t -> unit =
  fun graph (node1, ty1) (node2, ty2) ->
  assert (ty1 = ty2);
  if node1 <> node2 then (* 単純辺のみ加える．assertはしない *)
    (add_node graph node1 ty1; (* グラフにまだedgeがなければ加える *)
     add_node graph node2 ty2;
     addto_adj graph node1 node2;
     addto_adj graph node2 node1)

let delete_node : inter_graph -> liverange -> unit =
  fun graph node ->
  (* nodeがすでにグラフにあるかどうかの確認 *)
  assert (H.mem graph.deg_tbl node);
  let adjs, _ = adjs_of_node graph node in
  let adj_list = S.elements adjs in (* the list of nodes adjacent to "node" *)
  List.iter (remvfrm_adj graph node) adj_list;
  H.remove graph.deg_tbl node;
  H.remove graph.adj_tbl node;
  graph.size <- graph.size - 1

let search_colorable_node : inter_graph -> int -> int -> liverange * Type.t =
  fun graph imax fmax ->
  let nodelist = nodes_of_graph graph in
  List.find
    (fun (node, ty) ->
      let deg, _ = deg_of_node graph node in
      match ty with
      | Type.Float -> deg < fmax
      | _ -> deg < imax)
    nodelist

exception Not_colorable

let color_graph : inter_graph -> int -> int -> (liverange * Type.t) Stack.t =
  fun graph imax fmax ->
  let stack = Stack.create () in
  let dup_graph = graph_copy graph in
  Format.eprintf "ready to enter while loop of Igraph.color_graph@.";
  try
    (while dup_graph.size > 0 do
       (* print_string "---------------\n";
        * print_graph dup_graph;
        * print_string "---------------\n"; *)
       (* search_colorable_nodeからNot_found例外が出る *)
       let next_node, ty = search_colorable_node dup_graph imax fmax in
       (* Format.eprintf "node %s is colorable@." next_node; *)
       Stack.push (next_node, ty) stack;
       delete_node dup_graph next_node
     done);
    stack
  with
    Not_found -> raise Not_colorable
