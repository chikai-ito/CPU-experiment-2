let rec print_int x =
  let a = x / 100 in
  let b = (x - a * 100) / 10 in
  let c = (x - a * 100 - b * 10) in
  if a > 0 then (
    print_char (a + 48);
    print_char (b + 48);
    print_char (c + 48)
  ) else (
    if b > 0 then (
      print_char (b + 48);
      print_char (c + 48)
    ) else (
      print_char (c + 48)
    )
  )
in


let rec sum1 i n p =
  if i = n then
    ()
  else
    (print_int (i+p);
     print_char 10;
     sum1 (i+1) n p)
in

let rec sum2 i n =
  if i = n then
    ()
  else
    (print_int i;
     print_char 32;
     sum1 0 n 10;
     sum2 (i+1) n)
in

sum2 0 10
