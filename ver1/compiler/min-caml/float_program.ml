let rec f x y z =
  if x = 0 then y else
    f (x - 1) z (y +. z) in
f 10 1.1 2.1
