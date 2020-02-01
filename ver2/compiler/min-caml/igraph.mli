open Enums
open Lra

type liverange = Id.t
type inter_graph = { mutable size : int;
                     deg_tbl : (int * Type.t) H.t;
                     adj_tbl : (S.t * Type.t) H.t }
val print_graph : inter_graph -> unit
                 
val create_graph : int -> inter_graph

val graph_copy : inter_graph -> inter_graph
                 
val nodes_of_graph : inter_graph -> (liverange * Type.t) list
  
val deg_of_node : inter_graph -> liverange -> (int * Type.t)

val adjs_of_node : inter_graph -> liverange -> (S.t * Type.t)

val add_node : inter_graph -> liverange -> Type.t -> unit

val add_edge : inter_graph -> (liverange * Type.t) -> (liverange * Type.t) -> unit

val delete_node : inter_graph -> liverange -> unit

exception Not_colorable

val color_graph : inter_graph -> int -> int -> (liverange * Type.t) Stack.t
