module IIsl = Isl.Make (struct 
  let ctx = Isl.mk_context () 
end)

open IIsl

let bset = BasicSet.of_string "{ [x, y] : x >= 1 and x <= 5 and y >= 1 }"
let bmap = BasicMap.(intersect_domain (of_string "{ [x, y] -> [i, j] }") bset)

let set = Set.from_basic_set bset
let empty_set = Set.(empty @@ get_space set)

let _ =
  let open Set in
  print_endline @@ to_string set;
  print_endline @@ to_string Set.(intersect set empty_set)

