let rec fpow x y =
  if y = 0 then 1.0
  else x *. (fpow x (y - 1)) in
    let rec sin x =
      (1.0 /. 362880.0) *. (fpow x 9)
      -. (1.0 /. 5040.0) *. (fpow x 7)
      +. (1.0 /. 120.0) *. (fpow x 5)
      -. (1.0 /. 6.0) *. (fpow x 3)
      +. x in
    let rec cos x =
      (1.0 /. 40320.0) *. (fpow x 8) 
      -. (1.0 /. 720.0) *. (fpow x 6)
      +. (1.0 /. 24.0) *. (fpow x 4)
      -. (1.0 /. 2.0) *. (fpow x 2)
      +. 1.0 in
    let rec actan x =
      (1.0 /. 9.0) *. (fpow x 9)
      -. (1.0 /. 7.0) *. (fpow x 7)
      +. (1.0 /. 5.0) *. (fpow x 5)
      -. (1.0 /. 3.0) *. (fpow x 3)
      +. x in
    (sin 1.0) +. (cos 1.0)
    +. (actan 1.0)

                           
  
      
                               
    
    
