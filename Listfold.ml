let rec fold_left (f : 'a -> 'b ->'a) (acc : 'a) (l : 'b list): 'a =
  match l with
    [] -> acc
  | x :: xs -> fold_left f (f acc x) xs
  
let rec fold_right (f : 'a -> 'b -> 'b) (l : 'a list) (acc : 'b) : 'b =
  match l with
    [] -> acc
  | x :: xs -> f x (List.fold_right f xs acc)

let sum = List.fold_left (+) 0
let concat = List.fold_left (^) ""

let length l = List.fold_left (fun a _ -> a + 1) 0 l
let rev l = List.fold_left (fun a x -> x :: a) [] l
let map f l = List.fold_right (fun x a -> (f x) :: a) l []
let app f l = List.fold_left (fun _ x -> f x) () l
let filter f l =
  List.fold_right (fun x a -> if f x then x :: a else a) l []
