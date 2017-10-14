OCaml standard library has List.rev but we ask that you reimplement it.

let rec rev list = match list with
  | [] -> []
  | h::t -> (rev t) @ h;;
