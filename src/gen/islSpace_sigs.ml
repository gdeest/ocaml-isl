open Unsigned
open Types

module type S = sig
    module Types : Types.SIG
    val find_dim_by_id : Types.space -> dim_type -> Types.id -> int
    val find_dim_by_name : Types.space -> dim_type -> string -> int
    val dim : Types.space -> dim_type -> int
    val dump : Types.space -> unit
    val get_tuple_name : Types.space -> dim_type -> string
    val can_curry : Types.space -> bool
    val can_uncurry : Types.space -> bool
    val can_zip : Types.space -> bool
    val compatible : Types.space -> Types.space -> bool
    val domain_is_wrapping : Types.space -> bool
    val has_dim_id : Types.space -> dim_type -> int -> bool
    val has_dim_name : Types.space -> dim_type -> int -> bool
    val has_tuple_id : Types.space -> dim_type -> bool
    val has_tuple_name : Types.space -> dim_type -> bool
    val is_domain : Types.space -> Types.space -> bool
    val is_equal : Types.space -> Types.space -> bool
    val is_map : Types.space -> bool
    val is_params : Types.space -> bool
    val is_range : Types.space -> Types.space -> bool
    val is_set : Types.space -> bool
    val is_wrapping : Types.space -> bool
    val match_ : Types.space -> dim_type -> Types.space -> dim_type -> bool
    val range_is_wrapping : Types.space -> bool
    val tuple_match : Types.space -> dim_type -> Types.space -> dim_type -> bool
    val add_dims : Types.space -> dim_type -> int -> Types.space
    val align_params : Types.space -> Types.space -> Types.space
    val alloc : int -> int -> int -> Types.space
    val curry : Types.space -> Types.space
    val domain : Types.space -> Types.space
    val domain_factor_domain : Types.space -> Types.space
    val domain_map : Types.space -> Types.space
    val domain_product : Types.space -> Types.space -> Types.space
    val drop_dims : Types.space -> dim_type -> int -> int -> Types.space
    val drop_inputs : Types.space -> int -> int -> Types.space
    val drop_outputs : Types.space -> int -> int -> Types.space
    val extend : Types.space -> int -> int -> int -> Types.space
    val from_domain : Types.space -> Types.space
    val from_range : Types.space -> Types.space
    val insert_dims : Types.space -> dim_type -> int -> int -> Types.space
    val join : Types.space -> Types.space -> Types.space
    val map_from_domain_and_range : Types.space -> Types.space -> Types.space
    val map_from_set : Types.space -> Types.space
    val move_dims : Types.space -> dim_type -> int -> dim_type -> int -> int -> Types.space
    val params : Types.space -> Types.space
    val params_alloc : int -> Types.space
    val product : Types.space -> Types.space -> Types.space
    val range : Types.space -> Types.space
    val range_factor_domain : Types.space -> Types.space
    val range_factor_range : Types.space -> Types.space
    val range_map : Types.space -> Types.space
    val range_product : Types.space -> Types.space -> Types.space
    val reset_tuple_id : Types.space -> dim_type -> Types.space
    val reset_user : Types.space -> Types.space
    val reverse : Types.space -> Types.space
    val set_alloc : int -> int -> Types.space
    val set_dim_id : Types.space -> dim_type -> int -> Types.id -> Types.space
    val set_dim_name : Types.space -> dim_type -> int -> string -> Types.space
    val set_from_params : Types.space -> Types.space
    val set_tuple_id : Types.space -> dim_type -> Types.id -> Types.space
    val set_tuple_name : Types.space -> dim_type -> string -> Types.space
    val uncurry : Types.space -> Types.space
    val unwrap : Types.space -> Types.space
    val wrap : Types.space -> Types.space
    val zip : Types.space -> Types.space
    val get_dim_id : Types.space -> dim_type -> int -> Types.id
    val get_tuple_id : Types.space -> dim_type -> Types.id
    val get_dim_name : Types.space -> dim_type -> int -> string
end
