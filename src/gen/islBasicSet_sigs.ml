open Types

module type S = sig
    module Types : Types.SIG
    val compare_at : Types.basic_set -> Types.basic_set -> int -> int
    val n_constraint : Types.basic_set -> int
    val compute_divs : Types.basic_set -> Types.set
    val dup : Types.basic_set -> Types.basic_set
    val empty_like : Types.basic_set -> Types.basic_set
    val finalize : Types.basic_set -> Types.basic_set
    val from_basic_map : Types.basic_map -> Types.basic_set
    val from_underlying_set : Types.basic_set -> Types.basic_set -> Types.basic_set
    val simplify : Types.basic_set -> Types.basic_set
    val universe_like : Types.basic_set -> Types.basic_set
    val dump : Types.basic_set -> unit
    val get_tuple_name : Types.basic_set -> string
    val fast_is_empty : Types.basic_set -> bool
    val is_bounded : Types.basic_set -> bool
    val is_disjoint : Types.basic_set -> Types.basic_set -> bool
    val is_rational : Types.basic_set -> bool
    val is_universe : Types.basic_set -> bool
    val plain_is_empty : Types.basic_set -> bool
    val plain_is_equal : Types.basic_set -> Types.basic_set -> bool
    val get_space : Types.basic_set -> Types.space
    val unwrap : Types.basic_set -> Types.basic_map
    val align_params : Types.basic_set -> Types.space -> Types.basic_set
    val coefficients : Types.basic_set -> Types.basic_set
    val empty : Types.space -> Types.basic_set
    val flat_product : Types.basic_set -> Types.basic_set -> Types.basic_set
    val from_params : Types.basic_set -> Types.basic_set
    val lift : Types.basic_set -> Types.basic_set
    val nat_universe : Types.space -> Types.basic_set
    val neg : Types.basic_set -> Types.basic_set
    val params : Types.basic_set -> Types.basic_set
    val positive_orthant : Types.space -> Types.basic_set
    val remove_divs : Types.basic_set -> Types.basic_set
    val remove_redundancies : Types.basic_set -> Types.basic_set
    val remove_unknown_divs : Types.basic_set -> Types.basic_set
    val set_tuple_id : Types.basic_set -> Types.id -> Types.basic_set
    val set_tuple_name : Types.basic_set -> string -> Types.basic_set
    val solutions : Types.basic_set -> Types.basic_set
    val universe : Types.space -> Types.basic_set
    val universe_like_set : Types.set -> Types.basic_set
    val max_val : Types.basic_set -> Types.aff -> Types.value
    val get_div : Types.basic_set -> int -> Types.aff
    val get_local_space : Types.basic_set -> Types.local_space
    val is_empty : Types.basic_set -> bool
    val is_equal : Types.basic_set -> Types.basic_set -> bool
    val is_subset : Types.basic_set -> Types.basic_set -> bool
    val is_wrapping : Types.basic_set -> bool
    val lexmax : Types.basic_set -> Types.set
    val lexmin : Types.basic_set -> Types.set
    val union : Types.basic_set -> Types.basic_set -> Types.set
    val affine_hull : Types.basic_set -> Types.basic_set
    val apply : Types.basic_set -> Types.basic_map -> Types.basic_set
    val detect_equalities : Types.basic_set -> Types.basic_set
    val flatten : Types.basic_set -> Types.basic_set
    val gist : Types.basic_set -> Types.basic_set -> Types.basic_set
    val intersect : Types.basic_set -> Types.basic_set -> Types.basic_set
    val intersect_params : Types.basic_set -> Types.basic_set -> Types.basic_set
    val sample : Types.basic_set -> Types.basic_set
    val of_string : string -> Types.basic_set
end
