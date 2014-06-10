open Types

module type S = sig
    module Types : Types.SIG
    val sgn : Types.value -> int
    val dump : Types.value -> unit
    val eq : Types.value -> Types.value -> bool
    val ge : Types.value -> Types.value -> bool
    val gt : Types.value -> Types.value -> bool
    val is_divisible_by : Types.value -> Types.value -> bool
    val is_infty : Types.value -> bool
    val is_int : Types.value -> bool
    val is_nan : Types.value -> bool
    val is_neg : Types.value -> bool
    val is_neginfty : Types.value -> bool
    val is_negone : Types.value -> bool
    val is_nonneg : Types.value -> bool
    val is_nonpos : Types.value -> bool
    val is_one : Types.value -> bool
    val is_pos : Types.value -> bool
    val is_rat : Types.value -> bool
    val is_zero : Types.value -> bool
    val le : Types.value -> Types.value -> bool
    val lt : Types.value -> Types.value -> bool
    val ne : Types.value -> Types.value -> bool
    val two_exp : Types.value -> Types.value
    val abs : Types.value -> Types.value
    val add : Types.value -> Types.value -> Types.value
    val ceil : Types.value -> Types.value
    val div : Types.value -> Types.value -> Types.value
    val floor : Types.value -> Types.value
    val gcd : Types.value -> Types.value -> Types.value
    val infty : Types.value
    val max : Types.value -> Types.value -> Types.value
    val min : Types.value -> Types.value -> Types.value
    val modulo : Types.value -> Types.value -> Types.value
    val mul : Types.value -> Types.value -> Types.value
    val nan : Types.value
    val neg : Types.value -> Types.value
    val neginfty : Types.value
    val negone : Types.value
    val one : Types.value
    val of_string : string -> Types.value
    val sub : Types.value -> Types.value -> Types.value
    val trunc : Types.value -> Types.value
    val zero : Types.value
    val to_string : Types.value -> string
end
