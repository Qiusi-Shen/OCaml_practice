OCaml standard library has List.length but we ask that you reimplement it. Bonus for a tail recursive solution.

# (* This function is tail-recursive: it uses a constant amount of
     stack memory regardless of list size. *)
  let length list =
    let rec aux n = function
      | [] -> n
      | _::t -> aux (n+1) t
    in aux 0 list;;
val length : 'a list -> int = <fun>
# length [ "a" ; "b" ; "c"];;
- : int = 3
# length [];;
- : int = 0

let rec length list = match list with
    | [] -> 0
    | h::t -> 1 + length (t);;
