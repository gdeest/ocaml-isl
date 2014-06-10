open Types

module type S = sig
    module Types : Types.SIG
    val find_dim_by_id : Types.set -> dim_type -> Types.id -> int
    val find_dim_by_name : Types.set -> dim_type -> string -> int
    val follows_at : Types.set -> Types.set -> int -> int
    val n_basic_set : Types.set -> int
    val plain_cmp : Types.set -> Types.set -> int
    val size : Types.set -> int
    val drop_basic_set : Types.set -> Types.basic_set -> Types.set
    val dup : Types.set -> Types.set
    val empty_like : Types.set -> Types.set
    val finalize : Types.set -> Types.set
    val from_map : Types.map -> Types.set
    val from_underlying_set : Types.set -> Types.basic_set -> Types.set
    val to_underlying_set : Types.set -> Types.set
    val union_disjoint : Types.set -> Types.set -> Types.set
    val bounded_simple_hull : Types.set -> Types.basic_set
    val copy_basic_set : Types.set -> Types.basic_set
    val dump : Types.set -> unit
    val get_tuple_name : Types.set -> string
    val fast_is_disjoint : Types.set -> Types.set -> bool
    val fast_is_empty : Types.set -> bool
    val fast_is_equal : Types.set -> Types.set -> bool
    val fast_is_universe : Types.set -> bool
    val has_equal_space : Types.set -> Types.set -> bool
    val has_tuple_id : Types.set -> bool
    val has_tuple_name : Types.set -> bool
    val is_bounded : Types.set -> bool
    val is_box : Types.set -> bool
    val is_params : Types.set -> bool
    val is_singleton : Types.set -> bool
    val plain_is_disjoint : Types.set -> Types.set -> bool
    val plain_is_empty : Types.set -> bool
    val plain_is_equal : Types.set -> Types.set -> bool
    val plain_is_universe : Types.set -> bool
    val add_basic_set : Types.set -> Types.basic_set -> Types.set
    val align_divs : Types.set -> Types.set
    val align_params : Types.set -> Types.space -> Types.set
    val compute_divs : Types.set -> Types.set
    val empty : Types.space -> Types.set
    val equate : Types.set -> dim_type -> int -> dim_type -> int -> Types.set
    val flat_product : Types.set -> Types.set -> Types.set
    val from_params : Types.set -> Types.set
    val from_union_set : Types.union_set -> Types.set
    val gist_basic_set : Types.set -> Types.basic_set -> Types.set
    val gist_params : Types.set -> Types.set -> Types.set
    val lift : Types.set -> Types.set
    val make_disjoint : Types.set -> Types.set
    val nat_universe : Types.space -> Types.set
    val neg : Types.set -> Types.set
    val params : Types.set -> Types.set
    val product : Types.set -> Types.set -> Types.set
    val recession_cone : Types.set -> Types.set
    val remove_divs : Types.set -> Types.set
    val remove_redundancies : Types.set -> Types.set
    val remove_unknown_divs : Types.set -> Types.set
    val reset_space : Types.set -> Types.space -> Types.set
    val reset_tuple_id : Types.set -> Types.set
    val reset_user : Types.set -> Types.set
    val set_tuple_id : Types.set -> Types.id -> Types.set
    val set_tuple_name : Types.set -> string -> Types.set
    val sum : Types.set -> Types.set -> Types.set
    val universe : Types.space -> Types.set
    val universe_like : Types.set -> Types.set
    val get_space : Types.set -> Types.space
    val flatten_map : Types.set -> Types.map
    val lex_ge_set : Types.set -> Types.set -> Types.map
    val lex_gt_set : Types.set -> Types.set -> Types.map
    val lex_le_set : Types.set -> Types.set -> Types.map
    val lex_lt_set : Types.set -> Types.set -> Types.map
    val lifting : Types.set -> Types.map
    val unwrap : Types.set -> Types.map
    val coefficients : Types.set -> Types.basic_set
    val convex_hull : Types.set -> Types.basic_set
    val simple_hull : Types.set -> Types.basic_set
    val solutions : Types.set -> Types.basic_set
    val unshifted_simple_hull : Types.set -> Types.basic_set
    val count_val : Types.set -> Types.value
    val max_val : Types.set -> Types.aff -> Types.value
    val min_val : Types.set -> Types.aff -> Types.value
    val get_tuple_id : Types.set -> Types.id
    val to_string : Types.set -> string
    val is_disjoint : Types.set -> Types.set -> bool
    val is_empty : Types.set -> bool
    val is_equal : Types.set -> Types.set -> bool
    val is_strict_subset : Types.set -> Types.set -> bool
    val is_subset : Types.set -> Types.set -> bool
    val is_wrapping : Types.set -> bool
    val apply : Types.set -> Types.map -> Types.set
    val coalesce : Types.set -> Types.set
    val complement : Types.set -> Types.set
    val detect_equalities : Types.set -> Types.set
    val flatten : Types.set -> Types.set
    val gist : Types.set -> Types.set -> Types.set
    val intersect : Types.set -> Types.set -> Types.set
    val intersect_params : Types.set -> Types.set -> Types.set
    val lexmax : Types.set -> Types.set
    val lexmin : Types.set -> Types.set
    val subtract : Types.set -> Types.set -> Types.set
    val union : Types.set -> Types.set -> Types.set
    val identity : Types.set -> Types.map
    val affine_hull : Types.set -> Types.basic_set
    val polyhedral_hull : Types.set -> Types.basic_set
    val sample : Types.set -> Types.basic_set
    val from_basic_set : Types.basic_set -> Types.set
    val of_string : string -> Types.set
end
