open IslSet
open IslUnionSet

let ctx = IslCtx.ctx_alloc ()

let set1 = set_read_from_str ctx
  "{ [x, y] : x >= 1 and x <= 5 and y >= 1 and y <= 5 }"


let set2 = set_read_from_str ctx
  "{ [x, y] : x >= 0 and x <= 4 and y >= 0 and y <= 3 + x }"

let set3 = set_union set1 set2
let empty = basic_set_empty (set_get_space set1)

let _ =
  print_endline (set_to_str set1);
  print_endline (set_to_str set2);
  print_endline (set_to_str (set_from_basic_set(set_convex_hull set3)))
  
let uset1 = union_set_read_from_str ctx
  "[N] -> {[i,j,k]: i<=j+k; [i,j]: 2i>j-3}"

(* let _ =  *)
(*   print_endline "Each set in the map: "; *)
(*   union_set_foreach_set uset1 (fun set -> print_endline (set_to_str set)); *)
(*   print_endline "Should print the same as the above: "; *)
(*   let set_strs = union_set_map uset1 set_to_str in *)
(*   List.iter print_endline set_strs; *)
(*   print_endline "Again: "; *)
(*   List.iter print_endline (List.map set_to_str (to_list uset1)) *)

