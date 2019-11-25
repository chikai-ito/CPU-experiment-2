let rec sin x =
  let deg_max = 15 in
  let rec loop_sin x a u v n =
    if n >= deg_max then v
    else
      loop_sin x ((-.a) /. (float_of_int ((n + 1) * (n + 2))))
        (u *. x *. x) (v +. a *. u) (n + 2) in
  loop_sin x 1. x 0. 1
  
