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
        (pint_int a.(i);
         print_char 10;
         loop1 (i+1))
    in
    loop 0;
    loop1 0
