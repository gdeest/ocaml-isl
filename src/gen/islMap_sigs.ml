open Types

module type S = sig
    module Types : Types.SIG
    val find_dim_by_id : Types.map -> dim_type -> Types.id -> int
    val find_dim_by_name : Types.map -> dim_type -> string -> int
    val dup : Types.map -> Types.map
    val empty_like : Types.map -> Types.map
    val empty_like_basic_map : Types.basic_map -> Types.map
    val finalize : Types.map -> Types.map
    val identity_like : Types.map -> Types.map
    val identity_like_basic_map : Types.basic_map -> Types.map
    val neg : Types.map -> Types.map
    val sum : Types.map -> Types.map -> Types.map
    val union_disjoint : Types.map -> Types.map -> Types.map
    val copy_basic_map : Types.map -> Types.basic_map
    val dump : Types.map -> unit
    val get_tuple_name : Types.map -> dim_type -> string
    val can_curry : Types.map -> bool
    val can_uncurry : Types.map -> bool
    val can_zip : Types.map -> bool
    val domain_is_wrapping : Types.map -> bool
    val fast_is_empty : Types.map -> bool
    val fast_is_equal : Types.map -> Types.map -> bool
    val has_equal_space : Types.map -> Types.map -> bool
    val has_tuple_id : Types.map -> dim_type -> bool
    val has_tuple_name : Types.map -> dim_type -> bool
    val is_translation : Types.map -> bool
    val plain_is_empty : Types.map -> bool
    val plain_is_equal : Types.map -> Types.map -> bool
    val plain_is_injective : Types.map -> bool
    val plain_is_single_valued : Types.map -> bool
    val plain_is_universe : Types.map -> bool
    val range_is_wrapping : Types.map -> bool
    val domain : Types.map -> Types.set
    val params : Types.map -> Types.set
    val range : Types.map -> Types.set
    val wrap : Types.map -> Types.set
    val get_space : Types.map -> Types.space
    val add_basic_map : Types.map -> Types.basic_map -> Types.map
    val align_divs : Types.map -> Types.map
    val align_params : Types.map -> Types.space -> Types.map
    val compute_divs : Types.map -> Types.map
    val curry : Types.map -> Types.map
    val deltas_map : Types.map -> Types.map
    val domain_map : Types.map -> Types.map
    val domain_product : Types.map -> Types.map -> Types.map
    val drop_basic_map : Types.map -> Types.basic_map -> Types.map
    val empty : Types.space -> Types.map
    val equate : Types.map -> dim_type -> int -> dim_type -> int -> Types.map
    val fixed_power_val : Types.map -> Types.value -> Types.map
    val flat_domain_product : Types.map -> Types.map -> Types.map
    val flat_product : Types.map -> Types.map -> Types.map
    val flat_range_product : Types.map -> Types.map -> Types.map
    val floordiv_val : Types.map -> Types.value -> Types.map
    val from_aff : Types.aff -> Types.map
    val from_domain : Types.set -> Types.map
    val from_domain_and_range : Types.set -> Types.set -> Types.map
    val from_range : Types.set -> Types.map
    val from_set : Types.set -> Types.space -> Types.map
    val from_union_map : Types.union_map -> Types.map
    val gist_basic_map : Types.map -> Types.basic_map -> Types.map
    val gist_params : Types.map -> Types.set -> Types.map
    val gist_range : Types.map -> Types.set -> Types.map
    val identity : Types.space -> Types.map
    val lex_ge : Types.space -> Types.map
    val lex_ge_map : Types.map -> Types.map -> Types.map
    val lex_gt : Types.space -> Types.map
    val lex_gt_map : Types.map -> Types.map -> Types.map
    val lex_le : Types.space -> Types.map
    val lex_le_map : Types.map -> Types.map -> Types.map
    val lex_lt : Types.space -> Types.map
    val lex_lt_map : Types.map -> Types.map -> Types.map
    val make_disjoint : Types.map -> Types.map
    val nat_universe : Types.space -> Types.map
    val oppose : Types.map -> dim_type -> int -> dim_type -> int -> Types.map
    val order_ge : Types.map -> dim_type -> int -> dim_type -> int -> Types.map
    val order_gt : Types.map -> dim_type -> int -> dim_type -> int -> Types.map
    val order_le : Types.map -> dim_type -> int -> dim_type -> int -> Types.map
    val order_lt : Types.map -> dim_type -> int -> dim_type -> int -> Types.map
    val product : Types.map -> Types.map -> Types.map
    val range_factor_domain : Types.map -> Types.map
    val range_factor_range : Types.map -> Types.map
    val range_map : Types.map -> Types.map
    val range_product : Types.map -> Types.map -> Types.map
    val remove_divs : Types.map -> Types.map
    val remove_redundancies : Types.map -> Types.map
    val remove_unknown_divs : Types.map -> Types.map
    val reset_tuple_id : Types.map -> dim_type -> Types.map
    val reset_user : Types.map -> Types.map
    val set_tuple_id : Types.map -> dim_type -> Types.id -> Types.map
    val set_tuple_name : Types.map -> dim_type -> string -> Types.map
    val subtract_domain : Types.map -> Types.set -> Types.map
    val subtract_range : Types.map -> Types.set -> Types.map
    val uncurry : Types.map -> Types.map
    val universe : Types.space -> Types.map
    val zip : Types.map -> Types.map
    val convex_hull : Types.map -> Types.basic_map
    val simple_hull : Types.map -> Types.basic_map
    val unshifted_simple_hull : Types.map -> Types.basic_map
    val get_tuple_id : Types.map -> dim_type -> Types.id
    val is_bijective : Types.map -> bool
    val is_disjoint : Types.map -> Types.map -> bool
    val is_empty : Types.map -> bool
    val is_equal : Types.map -> Types.map -> bool
    val is_injective : Types.map -> bool
    val is_single_valued : Types.map -> bool
    val is_strict_subset : Types.map -> Types.map -> bool
    val is_subset : Types.map -> Types.map -> bool
    val deltas : Types.map -> Types.set
    val apply_domain : Types.map -> Types.map -> Types.map
    val apply_range : Types.map -> Types.map -> Types.map
    val coalesce : Types.map -> Types.map
    val complement : Types.map -> Types.map
    val detect_equalities : Types.map -> Types.map
    val flatten : Types.map -> Types.map
    val flatten_domain : Types.map -> Types.map
    val flatten_range : Types.map -> Types.map
    val gist : Types.map -> Types.map -> Types.map
    val gist_domain : Types.map -> Types.set -> Types.map
    val intersect : Types.map -> Types.map -> Types.map
    val intersect_domain : Types.map -> Types.set -> Types.map
    val intersect_params : Types.map -> Types.set -> Types.map
    val intersect_range : Types.map -> Types.set -> Types.map
    val lexmax : Types.map -> Types.map
    val lexmin : Types.map -> Types.map
    val reverse : Types.map -> Types.map
    val subtract : Types.map -> Types.map -> Types.map
    val union : Types.map -> Types.map -> Types.map
    val affine_hull : Types.map -> Types.basic_map
    val polyhedral_hull : Types.map -> Types.basic_map
    val sample : Types.map -> Types.basic_map
    val from_basic_map : Types.basic_map -> Types.map
    val of_string : string -> Types.map
end
