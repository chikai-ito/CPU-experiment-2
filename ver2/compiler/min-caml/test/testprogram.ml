let rec g l =
  if l >= 0  then
    1
  else
    g (l - 1)
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
       let c = m in
       f (n-1) c
    else
      n + 20)
in
let y = read_int () in
let z = read_int () in
1 + f y z
