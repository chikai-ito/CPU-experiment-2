let x = create_array 1 1
in
let rec h q =
  if q > 0 then q + h (q - 1) else 1
in
let rec g nn =
  if nn >= 0  then
    x.(0) + 9
  else
    g (nn - 1)
in
let rec f n m =
  if n = 0 then
    let a = 
      (if m = 0 then
        10
      else
        m + 5)
    in g a
  else
    (if n = 0 then 
      f (n-1) (m-1)
    else
      n + 20)
in
let y = read_int () in
let z = read_int () in
1 + f y z + h 3
