let rec g x y =
  let rec f a = a + 2 in
  3 + (f x) in
(g 5 7) + (g 8 9) + (g 13 17)
