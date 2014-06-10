open Unsigned
open Types

module type S = sig
    module Types : Types.SIG
    val dim : Types.constrnt -> dim_type -> int
    val involves_dims : Types.constrnt -> dim_type -> int -> int -> int
    val dump : Types.constrnt -> unit
    val get_dim_name : Types.constrnt -> dim_type -> int -> string
    val cow : Types.constrnt -> Types.constrnt
    val negate : Types.constrnt -> Types.constrnt
    val is_div_constraint : Types.constrnt -> bool
    val is_equal : Types.constrnt -> Types.constrnt -> bool
    val is_equality : Types.constrnt -> bool
    val is_lower_bound : Types.constrnt -> dim_type -> int -> bool
    val is_upper_bound : Types.constrnt -> dim_type -> int -> bool
    val get_space : Types.constrnt -> Types.space
    val get_coefficient_val : Types.constrnt -> dim_type -> int -> Types.value
    val get_constant_val : Types.constrnt -> Types.value
    val get_aff : Types.constrnt -> Types.aff
    val get_bound : Types.constrnt -> dim_type -> int -> Types.aff
    val get_div : Types.constrnt -> int -> Types.aff
    val get_local_space : Types.constrnt -> Types.local_space
    val set_coefficient_si : Types.constrnt -> dim_type -> int -> int -> Types.constrnt
    val set_coefficient_val : Types.constrnt -> dim_type -> int -> Types.value -> Types.constrnt
    val set_constant_si : Types.constrnt -> int -> Types.constrnt
    val set_constant_val : Types.constrnt -> Types.value -> Types.constrnt
end
