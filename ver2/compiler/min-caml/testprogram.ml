let n = create_array 1 0
in
let rec loop i =
  if i >= 10 then
    n.(0)
  else
    loop (i+1)
in
loop 0
