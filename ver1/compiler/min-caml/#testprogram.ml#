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
    let size = 100 in
    let a = create_array size 3 in
    let rec loop i =
      if i >= size then
        ()
      else
        (a.(i) <- i;
         loop (i+1))
    in
    let rec loop1 i =
      if i >= size then
        ()
      else
        (print_int a.(i);
         print_char 10;
         loop1 (i+1))
    in
    loop 0;
    loop1 0

