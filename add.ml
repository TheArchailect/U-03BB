(* succ x = x + 1  *)
let rec succ n = n + 1

(* add(x, y + 1) = succ(p2(g(x, y), add(x, y)))*)
let rec add x y =
  match y with
  | 0 -> x
  | y -> succ (add x (y - 1))

let () =
  Printf.printf "10 + 9 = %d\n" (add 10 9);
  Printf.printf "102 + 2 = %d\n" (add 102 2);
  Printf.printf "2 + 222 = %d\n" (add 2 222);
