let print_char x = print_char (char_of_int x)
in

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


let rec getx v = (let (x, y, z) = v in x) in
let rec gety v = (let (x, y, z) = v in y) in
let rec getz v = (let (x, y, z) = v in z) in
let rec inprod v1 v2 =
  getx v1 *. getx v2 +. gety v1 *. gety v2 +. getz v1 *. getz v2 in
print_int (truncate (1000000. *. inprod (1., 2., 3.) (4., 5., 6.)))
