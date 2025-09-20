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

(* exp(0, y) = 1 *)
(* exp(x + 1, y) = mult(exp(x, y), y) *)
let rec exp x y =
  match x with
  | 0 -> 1
  | x -> mult (exp (x - 1) y) y

let () =
  Printf.printf "0^5 = %d\n" (exp 0 5);
  Printf.printf "2^4 = %d\n" (exp 2 4);
  Printf.printf "1^5 = %d\n" (exp 1 5);
