open kNormal

type cond = UptoE of Id.t | DowntoE of Id.t | Upto of Id.t | Downto of Id.t
type loopinfo = { idx : Id.t;  bound : Id.t;
                  funname : Id.t; args = Id.t list; step : int }

let detect_loop1 args defs = function
  | IfLE(x,y,e1,e2) ->
     match detect_loop args defs with
     | None -> None
     | Some 
     if List.mem args then
       Some (x, UptoE(y))
     else if List.mem args then
       Some (y, Downto(x))
  | _ -> None


let detect_loop2 info consts next_ids = function
  | IfEq(x,y,e1,e2) ->
     detect_loop2 info consts next_ids e1 &&
       detect_loop2 info consts next_ids e2
  | IfLE(x,y,e1,e2) ->
     detect_loop2 info consts next_ids e1 &&
       detect_loop2 info consts next_ids e2
  | IfLt(x,y,e1,e2) ->
     detect_loop2 info consts next_ids e1 &&
       detect_loop2 info consts next_ids e2
  | Let((x,t),Int(i),e2) ->
     if x = info.idx || x = info.bound then
       false
     else 
       let consts = if i = 1 then M.add x 1 consts else consts in
       detect_loop2 info consts next_ids e2
  | Let((x,t),Neg(y),e2) ->
     if x = info.idx || x = info.bound then
       false
     else
       (try
          let d = M.find y consts in
          let consts = M.add x (-d) consts in
          detect_loop2 info consts next_ids e2
        with
          Not_found -> detect_loop2 info consts next_ids e2)
  | Let((x,t),Add(y,z),e2) ->
     if x = info.idx || x = info.bound then
       false
     else if info.idx = y || info.idx = z then
       (* let z be the one in {y,z} which's not info.idx *)
       let z = if info.idx = z then y else z in
       (try
          let d = M.find z consts in
          if d = info.step then
            let next_ids = S.add x next_ids in
            detect_loop2 info consts next_ids e2
          else
            detect_loop2 info consts next_ids e2
        with
          Not_found -> detect_loop2 info consts next_ids e2)
     else
       detect_loop2 info consts next_ids e2
  | Let((x,t),Sub(y,z),e2) ->
     if x = info.idx || x = info.bound then
       false
     else if info.idx = y then
       (try
          let d = M.find z consts in
          if (-d) = info.step then
            let next_ids = S.add x next_ids in
            detect_loop2 info consts next_ids e2
          else
            detect_loop2 info consts next_ids e2
        with
          Not_found -> detect_loop2 info consts next_ids e2)
     else
       detect_loop2 info consts next_ids e2
  | Let((x,t),e1,e2) ->
     if x = info.idx || x = info.bound then
       false
     else if occur info.funname e1 then
       false
     else
       detect_loop2 info consts next_ids e2
  | LetTuple((xts,y,e)) ->
     let xs = List.map fst xts in
     if List.mem info.idx xs || List.mem info.bound xs then
       false
     else
       detect_loop2 info consts next_ids e
  | App(x,ys) ->
     if x = info.funname then
       let zip = List.fold_left2 (fun a b c -> (b,c)::a) [] info.args ys in
       if S.mem (List.assoc info.idx zip) next_ids then
         true
       else
         false
     else
       false
  | e -> false
