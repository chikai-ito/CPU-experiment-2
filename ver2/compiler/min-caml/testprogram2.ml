let a = 3 in
    let b = 1 in
    let rec f x =
      if x > 0 then
        let rec g c = c + a in g
      else
        let rec h d = d + b in h
    in
    (f 5) 8
