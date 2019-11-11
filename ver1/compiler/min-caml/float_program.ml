let rec f x =
  let a = read_float () in
  (a /. 6.0) *. x *. x *. x in
    if 1. < (f 1.5) then f 1.5 else 4.
