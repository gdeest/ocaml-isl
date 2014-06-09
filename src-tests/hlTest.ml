module Ctx : Sig_Context.S = struct
  let ctx = Ctx.create ()
end

module IIsl = Isl.Make (Ctx)

(* open IIsl *)

(* let set1 = Set.of_string "{ [x, y] : x >= 1 and x <= 5 and y >= 1 }" *)
(* let set2 = Set.of_string "{ [x, y] : x >= 0 and x <= 4 and y >= 0 and y <= 3 + x }" *)

(* let set3 = Set.union set1 set2 *)
(* let empty = BasicSet.empty (Set.get_space set1) *)

(* let _ = *)
(*   let open Set in *)
(*   print_endline @@ to_string set1; *)
(*   print_endline @@ to_string set2; *)
(*   print_endline @@ to_string @@ of_basic_set @@ convex_hull set1 *)

