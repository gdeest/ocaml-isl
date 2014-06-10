open Unsigned
open Types

module type S = sig
    module Types : Types.SIG
    val involves_dims : Types.basic_map -> dim_type -> int -> int -> int
    val dim : Types.basic_map -> dim_type -> int
    val n_div : Types.basic_map -> int
    val n_in : Types.basic_map -> int
    val n_out : Types.basic_map -> int
    val n_param : Types.basic_map -> int
    val total_dim : Types.basic_map -> int
    val alloc : int -> int -> int -> int -> int -> int -> Types.basic_map
    val empty_like : Types.basic_map -> Types.basic_map
    val empty_like_map : Types.map -> Types.basic_map
    val extend : Types.basic_map -> int -> int -> int -> int -> int -> int -> Types.basic_map
    val extend_constraints : Types.basic_map -> int -> int -> Types.basic_map
    val finalize : Types.basic_map -> Types.basic_map
    val identity_like : Types.basic_map -> Types.basic_map
    val neg : Types.basic_map -> Types.basic_map
    val simplify : Types.basic_map -> Types.basic_map
    val sum : Types.basic_map -> Types.basic_map -> Types.basic_map
    val dump : Types.basic_map -> unit
    val get_dim_name : Types.basic_map -> dim_type -> int -> string
    val get_tuple_name : Types.basic_map -> dim_type -> string
    val can_curry : Types.basic_map -> bool
    val can_uncurry : Types.basic_map -> bool
    val can_zip : Types.basic_map -> bool
    val fast_is_empty : Types.basic_map -> bool
    val has_dim_id : Types.basic_map -> dim_type -> int -> bool
    val image_is_bounded : Types.basic_map -> bool
    val is_disjoint : Types.basic_map -> Types.basic_map -> bool
    val is_rational : Types.basic_map -> bool
    val is_single_valued : Types.basic_map -> bool
    val is_strict_subset : Types.basic_map -> Types.basic_map -> bool
    val is_universe : Types.basic_map -> bool
    val plain_is_empty : Types.basic_map -> bool
    val get_space : Types.basic_map -> Types.space
    val compute_divs : Types.basic_map -> Types.map
    val add : Types.basic_map -> dim_type -> int -> Types.basic_map
    val add_constraint : Types.basic_map -> Types.constrnt -> Types.basic_map
    val align_params : Types.basic_map -> Types.space -> Types.basic_map
    val curry : Types.basic_map -> Types.basic_map
    val deltas_map : Types.basic_map -> Types.basic_map
    val domain_map : Types.basic_map -> Types.basic_map
    val domain_product : Types.basic_map -> Types.basic_map -> Types.basic_map
    val drop_constraints_involving_dims : Types.basic_map -> dim_type -> int -> int -> Types.basic_map
    val eliminate : Types.basic_map -> dim_type -> int -> int -> Types.basic_map
    val empty : Types.space -> Types.basic_map
    val equal : Types.space -> int -> Types.basic_map
    val equate : Types.basic_map -> dim_type -> int -> dim_type -> int -> Types.basic_map
    val fix_si : Types.basic_map -> dim_type -> int -> int -> Types.basic_map
    val fix_val : Types.basic_map -> dim_type -> int -> Types.value -> Types.basic_map
    val flat_product : Types.basic_map -> Types.basic_map -> Types.basic_map
    val flat_range_product : Types.basic_map -> Types.basic_map -> Types.basic_map
    val from_aff : Types.aff -> Types.basic_map
    val from_basic_set : Types.basic_set -> Types.space -> Types.basic_map
    val from_constraint : Types.constrnt -> Types.basic_map
    val from_domain : Types.basic_set -> Types.basic_map
    val from_domain_and_range : Types.basic_set -> Types.basic_set -> Types.basic_map
    val from_range : Types.basic_set -> Types.basic_map
    val identity : Types.space -> Types.basic_map
    val insert_dims : Types.basic_map -> dim_type -> int -> int -> Types.basic_map
    val less_at : Types.space -> int -> Types.basic_map
    val lower_bound_si : Types.basic_map -> dim_type -> int -> int -> Types.basic_map
    val more_at : Types.space -> int -> Types.basic_map
    val move_dims : Types.basic_map -> dim_type -> int -> dim_type -> int -> int -> Types.basic_map
    val nat_universe : Types.space -> Types.basic_map
    val order_ge : Types.basic_map -> dim_type -> int -> dim_type -> int -> Types.basic_map
    val order_gt : Types.basic_map -> dim_type -> int -> dim_type -> int -> Types.basic_map
    val product : Types.basic_map -> Types.basic_map -> Types.basic_map
    val project_out : Types.basic_map -> dim_type -> int -> int -> Types.basic_map
    val range_map : Types.basic_map -> Types.basic_map
    val range_product : Types.basic_map -> Types.basic_map -> Types.basic_map
    val remove_dims : Types.basic_map -> dim_type -> int -> int -> Types.basic_map
    val remove_divs : Types.basic_map -> Types.basic_map
    val remove_divs_involving_dims : Types.basic_map -> dim_type -> int -> int -> Types.basic_map
    val remove_redundancies : Types.basic_map -> Types.basic_map
    val set_dim_name : Types.basic_map -> dim_type -> int -> string -> Types.basic_map
    val set_tuple_id : Types.basic_map -> dim_type -> Types.id -> Types.basic_map
    val set_tuple_name : Types.basic_map -> dim_type -> string -> Types.basic_map
    val uncurry : Types.basic_map -> Types.basic_map
    val universe : Types.space -> Types.basic_map
    val universe_like : Types.basic_map -> Types.basic_map
    val upper_bound_si : Types.basic_map -> dim_type -> int -> int -> Types.basic_map
    val zip : Types.basic_map -> Types.basic_map
    val domain : Types.basic_map -> Types.basic_set
    val range : Types.basic_map -> Types.basic_set
    val wrap : Types.basic_map -> Types.basic_set
    val plain_get_val_if_fixed : Types.basic_map -> dim_type -> int -> Types.value
    val get_div : Types.basic_map -> int -> Types.aff
    val get_local_space : Types.basic_map -> Types.local_space
    val is_empty : Types.basic_map -> bool
    val is_equal : Types.basic_map -> Types.basic_map -> bool
    val is_subset : Types.basic_map -> Types.basic_map -> bool
    val lexmax : Types.basic_map -> Types.map
    val lexmin : Types.basic_map -> Types.map
    val union : Types.basic_map -> Types.basic_map -> Types.map
    val affine_hull : Types.basic_map -> Types.basic_map
    val apply_domain : Types.basic_map -> Types.basic_map -> Types.basic_map
    val apply_range : Types.basic_map -> Types.basic_map -> Types.basic_map
    val detect_equalities : Types.basic_map -> Types.basic_map
    val flatten : Types.basic_map -> Types.basic_map
    val flatten_domain : Types.basic_map -> Types.basic_map
    val flatten_range : Types.basic_map -> Types.basic_map
    val gist : Types.basic_map -> Types.basic_map -> Types.basic_map
    val intersect : Types.basic_map -> Types.basic_map -> Types.basic_map
    val intersect_domain : Types.basic_map -> Types.basic_set -> Types.basic_map
    val intersect_range : Types.basic_map -> Types.basic_set -> Types.basic_map
    val reverse : Types.basic_map -> Types.basic_map
    val sample : Types.basic_map -> Types.basic_map
    val deltas : Types.basic_map -> Types.basic_set
    val of_string : string -> Types.basic_map
end
