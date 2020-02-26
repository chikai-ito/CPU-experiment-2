(* customized version of Set *)

module S =
  Set.Make
    (struct
      type t = Id.t
      let compare = compare
    end)
include S

let of_list l = List.fold_left (fun s e -> add e s) empty l
let print_set s = (List.iter (fun x -> Printf.printf "%s, " x) (S.elements s));
                  print_string "\n"
let print x s =
  let s = S.elements s in
  Format.eprintf "%s : @." x;
  List.iter (fun x -> Format.eprintf "%s, @." x) s;
  
