let rec kernel_sin x sgn =
  let y = -.(x *. x) in
  let a = 0.00019587841 *. x in
  let a = 0.008332824 *. x +. a *. y in
  let a = 0.16666668 *. x +. a *. y in
  let a = 1. *. x +. a *. y in
  a *. sgn
in
  
let rec kernel_cos x sgn =
  let y = -.(x *. x) in
  let a = 0.0013695068 in
  let a = 0.04166368 +. a *. y in
  let a = 0.5 +. a *. y in
  let a = 1. +. a *. y in
  a *. sgn
in

let pi = 3.141592653589793
in
     
let rec sin3 x sgn =
  if x <= (pi /. 4.) then
    kernel_sin x sgn
  else
    kernel_cos (pi/.2. -. x) sgn
in

let rec cos3 x sgn =
  if x <= (pi /. 4.) then
    kernel_cos x sgn
  else
    kernel_sin (pi/.2. -. x) sgn
in

let rec sin2 x sgn =
  if x >= (pi /. 2.) then
    sin3 (pi -. x) sgn
  else
    sin3 x sgn
in

let rec cos2 x sgn =
  if x >= (pi /. 2.) then
    cos3 (pi -. x) (-.sgn)
  else
    cos3 x sgn
in

let rec sin x =
  if x >= pi *. 2. then
    sin (x -. pi *. 2.)
  else if x < 0. then
    sin (x +. pi *. 2.)
  else if x >= pi then
    sin2 (x -. pi) (-.1.)
  else
    sin2 x 1.
in

let rec cos x =
  if x >= pi *. 2. then
    cos (x -. pi *. 2.)
  else if x < 0. then
    cos (x +. pi *. 2.)
  else if x >= pi then
    cos2 (x -. pi) (-.1.)
  else
    cos2 x 1.
in

let a = read_float () in
sin a
