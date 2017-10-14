Find the k'th element of a list. (easy)

# at 3 [ "a" ; "b"; "c"; "d"; "e" ];;
- : string option = Some "c"
# at 3 [ "a" ];;
- : string option = None

# List.nth [ "a" ; "b"; "c"; "d"; "e" ] 2;;
- : string = "c"
# List.nth [ "a" ] 2;;
Exception: Failure "nth".

let rec at k = function
  | [] -> None
  | h::t-> if k=1 then Some h else at (k-1) t;;

val at : int -> 'a list -> 'a option = <fun>
  
