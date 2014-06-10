open Unsigned
open Types

module type S = sig
    module Types : Types.SIG
    val dim : Types.aff -> dim_type -> int
    val involves_dims : Types.aff -> dim_type -> int -> int -> int
    val dump : Types.aff -> unit
    val get_dim_name : Types.aff -> dim_type -> int -> string
    val is_cst : Types.aff -> bool
    val is_nan : Types.aff -> bool
    val plain_is_equal : Types.aff -> Types.aff -> bool
    val plain_is_zero : Types.aff -> bool
    val get_domain_space : Types.aff -> Types.space
    val get_space : Types.aff -> Types.space
    val ge_basic_set : Types.aff -> Types.aff -> Types.basic_set
    val le_basic_set : Types.aff -> Types.aff -> Types.basic_set
    val neg_basic_set : Types.aff -> Types.basic_set
    val zero_basic_set : Types.aff -> Types.basic_set
    val get_coefficient_val : Types.aff -> dim_type -> int -> Types.value
    val get_constant_val : Types.aff -> Types.value
    val get_denominator_val : Types.aff -> Types.value
    val add : Types.aff -> Types.aff -> Types.aff
    val add_coefficient_si : Types.aff -> dim_type -> int -> int -> Types.aff
    val add_coefficient_val : Types.aff -> dim_type -> int -> Types.value -> Types.aff
    val add_constant_num_si : Types.aff -> int -> Types.aff
    val add_constant_si : Types.aff -> int -> Types.aff
    val add_constant_val : Types.aff -> Types.value -> Types.aff
    val add_dims : Types.aff -> dim_type -> int -> Types.aff
    val align_params : Types.aff -> Types.space -> Types.aff
    val ceil : Types.aff -> Types.aff
    val div : Types.aff -> Types.aff -> Types.aff
    val drop_dims : Types.aff -> dim_type -> int -> int -> Types.aff
    val floor : Types.aff -> Types.aff
    val get_div : Types.aff -> int -> Types.aff
    val gist : Types.aff -> Types.set -> Types.aff
    val gist_params : Types.aff -> Types.set -> Types.aff
    val insert_dims : Types.aff -> dim_type -> int -> int -> Types.aff
    val mod_val : Types.aff -> Types.value -> Types.aff
    val move_dims : Types.aff -> dim_type -> int -> dim_type -> int -> int -> Types.aff
    val mul : Types.aff -> Types.aff -> Types.aff
    val nan_on_domain : Types.local_space -> Types.aff
    val neg : Types.aff -> Types.aff
    val project_domain_on_params : Types.aff -> Types.aff
    val pullback_aff : Types.aff -> Types.aff -> Types.aff
    val of_string : string -> Types.aff
    val scale_down_ui : Types.aff -> int -> Types.aff
    val scale_down_val : Types.aff -> Types.value -> Types.aff
    val scale_val : Types.aff -> Types.value -> Types.aff
    val set_coefficient_si : Types.aff -> dim_type -> int -> int -> Types.aff
    val set_coefficient_val : Types.aff -> dim_type -> int -> Types.value -> Types.aff
    val set_constant_si : Types.aff -> int -> Types.aff
    val set_constant_val : Types.aff -> Types.value -> Types.aff
    val set_dim_id : Types.aff -> dim_type -> int -> Types.id -> Types.aff
    val set_dim_name : Types.aff -> dim_type -> int -> string -> Types.aff
    val set_tuple_id : Types.aff -> dim_type -> Types.id -> Types.aff
    val sub : Types.aff -> Types.aff -> Types.aff
    val val_on_domain : Types.local_space -> Types.value -> Types.aff
    val var_on_domain : Types.local_space -> dim_type -> int -> Types.aff
    val zero_on_domain : Types.local_space -> Types.aff
    val get_domain_local_space : Types.aff -> Types.local_space
    val get_local_space : Types.aff -> Types.local_space
end
