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

let () =
  Printf.printf "2 * 6 = %d\n" (mult 2 6);
  Printf.printf "55 * 4 = %d\n" (mult 55 4);
  Printf.printf "7 * 3 = %d\n" (mult 7 3);
