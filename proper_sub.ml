(* pred 0 = 0, pred y+1 = y*)
let rec pred n =
  match n with
  | 0 -> 0
  | n -> n - 1

(*
  mon x y = { x - y  when x >= y
            { 0      when x < y
*)
let rec proper_sub x y =
  match y with
  | 0 -> x
  | y -> pred (proper_sub x (pred y))

(*
  given:
  p1(x1, x2) = x1
  pred(y+1) = p1(I(y), pred(y))
  p2(x1, x2) = x2
  then:
  mon(x, y+1) = pred(p2(g(x, y), mon(x, y)))
*)

let () =
  Printf.printf "5 ∸ 3 = %d\n" (proper_sub 5 3);    (* 2 *)
  Printf.printf "3 ∸ 5 = %d\n" (proper_sub 3 5);    (* 0 *)
  Printf.printf "10 ∸ 4 = %d\n" (proper_sub 10 4);  (* 6 *)
  Printf.printf "2 ∸ 2 = %d\n" (proper_sub 2 2);    (* 0 *)
  Printf.printf "0 ∸ 5 = %d\n" (proper_sub 0 5)     (* 0 *)
