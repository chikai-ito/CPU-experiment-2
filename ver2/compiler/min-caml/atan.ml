let pi = 3.141592653589793
let rec kernel_atan x sgn base =
  let y = -. x *. x in
  let a = 0.060035485 *. x in
  let a = 0.08976446 *. x +. a *. y in
  let a = 0.111111104 *. x +. a *. y in
  let a = 0.142857142 *. x +. a *. y in
  let a = 0.2 *. x +. a *. y in
  let a = 0.3333333 *. x +. a *. y in
  let a = x +. a *. y in
  (base +. a) *. sgn
  
let atan x =
  let x, sgn = if x >= 0. then x, 1. else (-.x), (-.1.) in
  if x < 0.4375 then
    kernel_atan x sgn 0.
  else if x < 2.4375 then
    kernel_atan ((x -. 1.)/.(x +. 1.)) sgn (pi/.4.)
  else
    kernel_atan (1./.x) (-.sgn) (-.pi/.2.)
