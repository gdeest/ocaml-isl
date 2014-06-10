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
  (* Create the constraint: 2x + 5y >= *)
  let constrnt = Constraint.inequality_alloc local_space in
  let constrnt = Constraint.set_coefficient_si constrnt DimSet 0 2 in
  let constrnt = Constraint.set_coefficient_si constrnt DimSet 1 5 in
  (* Add that constraint to the universe. *)
  let univ = Set.universe space in
  Set.add_constraint univ constrnt

let _ = print_endline @@ Set.to_string set
  
  
    
