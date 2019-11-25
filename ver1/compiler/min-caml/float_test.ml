let rec print_int x =
      let a = x / 100 in
      let b = (x - a * 100) / 10 in
      let c = (x - a * 100 - b * 10) in
      if a > 0 then (
        print_char (a + 48)
      ) else ();
      if b > 0 then (
        print_char (b + 48)
      ) else ();
      print_char (c + 48)
    in

let rec calc opcode x y =
  if opcode = 0 then (
      print_int (int_of_float (x +. y))
  ) else ();
  if opcode = 1 then (
      print_int (int_of_float (x -. y))
  ) else ();
  if opcode = 2 then (
      print_int (int_of_float (x *. y))
  ) else ();
  if opcode = 3 then (
      print_int (int_of_float (x /. y))
  ) else ();
  if opcode > 3 then (
      print_int (int_of_float (x *. (float_of_int opcode)))
  ) else ();
  print_int 0 in

let a = 24.6 in
let b = 3.14 in
let c = 278.9 in
let d = 30000.3 in
let e = 15 in
calc 0 a c;
calc 1 c b;
calc 2 a b;
calc 3 d a;
calc 15 c c