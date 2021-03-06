type 'a node =
    | One of 'a 
    | Many of 'a node list

let rec flatten list = match list with
    | [] -> []
    | One h :: t -> h :: (flatten t)
    | Many h :: t -> (flatten h) @ (flatten t);;
