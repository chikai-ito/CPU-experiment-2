let x = read_float () in
    let pi = 3.14 in
    if x > pi then 1 else
      if x < (-.pi) then 2 else 3

(* let rec fpow x y =
 *   let rec loop_fpow x w y n =
 *     if n = y then w
 *     else
 *       loop_fpow x (w *. x) y (n + 1) in
 *   loop_fpow x 1. y 0  
 *     in
 *     let rec sin x =
 *       let pi = 3.141593 in
 *       if x > pi then
 *         -. sin (x -. pi)
 *       else if x < (-. pi) then
 *         -. sin (x +. pi)
 *       else
 *         -. (1. /. 39916800.) *. (fpow x 11)
 *         +. (1. /. 362880.) *. (fpow x 9)
 *         -. (1. /. 5040.) *. (fpow x 7)
 *         +. (1. /. 120.) *. (fpow x 5)
 *         -. (1. /. 6.) *. (fpow x 3)
 *         +. x
 *     in
 *     sin 3. *)
