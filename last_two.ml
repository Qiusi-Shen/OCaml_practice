Find the last but one (last and penultimate) elements of a list. (easy)

# last_two [ "a" ; "b" ; "c" ; "d" ];;
- : (string * string) option = Some ("c", "d")
# last_two [ "a" ];;
- : (string * string) option = None

let rec last_two = function
  | [] -> None
  | [x] -> None
  | a::b::[] -> Some (a, b)
  | a::b -> last_two b;;
  
val last_two : 'a list -> ('a * 'a) option = <fun>
