let rec kernel_sin x sgn =
  let y = -.(x *. x) in
  let a = 0.00019587841 *. x in
  let a = 0.008332824 *. x +. a *. y in
  let a = 0.16666668 *. x +. a *. y in
  let a = 1. *. x +. a *. y in
  a *. sgn

  
let rec kernel_cos x sgn =
  let y = -.(x *. x) in
  let a = 0.0013695068 in
  let a = 0.04166368 +. a *. y in
  let a = 0.5 +. a *. y in
  let a = 1. +. a *. y in
  a *. sgn


let pi = 3.141592653589793
       
let rec sin3 x sgn =
  if x <= (pi /. 4.) then
    kernel_sin x sgn
  else
    kernel_cos (pi/.2. -. x) sgn

let rec cos3 x sgn =
  if x <= (pi /. 4.) then
    kernel_cos x sgn
  else
    kernel_sin (pi/.2. -. x) sgn

let rec sin2 x sgn =
  if x >= (pi /. 2.) then
    sin3 (pi -. x) sgn
  else
    sin3 x sgn

let rec cos2 x sgn =
  if x >= (pi /. 2.) then
    cos3 (pi -. x) (-.sgn)
  else
    cos3 x sgn
       
let rec sin x =
  if x >= pi *. 2. then
    sin (x -. pi *. 2.)
  else if x < 0. then
    sin (x +. pi *. 2.)
  else if x >= pi then
    sin2 (x -. pi) (-.1.)
  else
    sin2 x 1.

let rec cos x =
  if x >= pi *. 2. then
    cos (x -. pi *. 2.)
  else if x < 0. then
    cos (x +. pi *. 2.)
  else if x >= pi then
    cos2 (x -. pi) (-.1.)
  else
    cos2 x 1.

(* >>> 1 / math.factorial(10)
 * 2.755731922398589e-07
 * >>> 1 / math.factorial(8)
 * 2.48015873015873e-05
 * >>> 1 / math.factorial(6)
 * 0.001388888888888889
 * >>> 1 / math.factorial(4)
 * 0.041666666666666664
 * >>> 1 / math.factorial(2)
 * 0.5 *)


(* >>> 1 / math.factorial(11)
 * 2.505210838544172e-08
 * >>> 1 / math.factorial(9)
 * 2.7557319223985893e-06
 * >>> 1 / math.factorial(7)
 * 0.0001984126984126984
 * >>> 1 / math.factorial(5)
 * 0.008333333333333333
 * >>> 1 / math.factorial(3)
 * 0.16666666666666666
 * >>> 1 / math.factorial(1)
 * 1.0 *)
