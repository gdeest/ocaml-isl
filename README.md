ocaml-isl
=========

OCaml bindings for the Integer Set Library (v0.13).

## Status
These bindings should be considered pre-alpha quality. As of now, they only offer a very thin layer over a fraction of ISL features. Bugs should be expected, and the API is likely to change to provide higher-level abstractions. Missing features will be added over time, as I either find a way to generate them automatically or take the time to write the bindings myself.

## Examples

### Using strings:
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

### Using the low-level API to create a set:

```ocaml
	

    module IIsl = Isl.Make(struct
      let ctx = Isl.mk_context ()
    end)
     
    open IIsl
     
    let set =
      (* Create a space [x,y] with 0 parameter and 2 dimensions *)
      let space = Space.set_alloc 0 2 in
      let space = Space.set_dim_name space DimSet 0 "x" in
      let space = Space.set_dim_name space DimSet 1 "y" in
      let local_space = LocalSpace.from_space space in
      (* Create the constraint: 2x + 5y >= 0 *)
      let constrnt = Constraint.inequality_alloc local_space in
      let constrnt = Constraint.set_coefficient_si constrnt DimSet 0 2 in
      let constrnt = Constraint.set_coefficient_si constrnt DimSet 1 5 in
      (* Add that constraint to the universe. *)
      let univ = Set.universe space in
      Set.add_constraint univ constrnt
     
    let _ = print_endline @@ Set.to_string set
```

Output:

```
{ [x, y] : 5y >= -2x }
```