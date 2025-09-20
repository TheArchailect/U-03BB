(* succ x = x + 1  *)
let rec succ n = n + 1

(* add(x, y + 1) = succ(p2(g(x, y), add(x, y)))*)
let rec add x y =
  match y with
  | 0 -> x
  | y -> succ (add x (y - 1))

(* mult(x, 0) = 0 = I(x) *)
(*
  mult(x, y + 1)
  = mult(x, y) + x
  = h(g(x, y), mult(x, y))
  = add(p1(x, y), mult(x, y))
*)

let rec mult x y =
  match y with
  | 0 -> 0
  | y -> add x (mult x (y - 1))

(* fact(x) = x! *)
(* fact(0) = 1 *)
(* fact(x + 1) = mult(fact(x), x + 1) *)
let rec fact x =
  match x with
  | 0 -> 1
  | x -> mult x (fact (x - 1))

let () =
  Printf.printf "0! = %d\n" (fact 0);
  Printf.printf "2! = %d\n" (fact 2);
  Printf.printf "4! = %d\n" (fact 4);
  Printf.printf "6! = %d\n" (fact 6)
