ocaml-isl
=========

OCaml bindings for the Integer Set Library (v0.13).

## Status
These bindings should be considered pre-alpha quality. As of now, they only offer a very thin layer over a fraction of ISL features. Bugs should be expected, and the API is likely to change to provide higher-level abstractions. Missing features will be added over time, as I either find a way to generate them automatically or take the time to write the bindings myself.

## Examples

### Basic usage:
```ocaml
(* Create a new module with a unique context. *)
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
  print_endline @@ to_string Set.(intersect set empty_set);
```

Output:

```
{ [x, y] : x >= 1 and x <= 5 and y >= 1 }
{ [x, y] : 1 = 0 }
```
