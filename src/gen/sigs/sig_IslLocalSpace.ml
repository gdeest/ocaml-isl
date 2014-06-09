open Types

module type S = sig
    module Types : Sig_Types.S
    val dim : Types.local_space -> dim_type -> int
    val dump : Types.local_space -> unit
    val is_equal : Types.local_space -> Types.local_space -> bool
    val is_set : Types.local_space -> bool
    val get_space : Types.local_space -> Types.space
    val lifting : Types.local_space -> Types.basic_map
    val get_div : Types.local_space -> int -> Types.aff
    val domain : Types.local_space -> Types.local_space
    val flatten_domain : Types.local_space -> Types.local_space
    val flatten_range : Types.local_space -> Types.local_space
    val from_domain : Types.local_space -> Types.local_space
    val from_space : Types.space -> Types.local_space
    val intersect : Types.local_space -> Types.local_space -> Types.local_space
    val range : Types.local_space -> Types.local_space
    val set_tuple_id : Types.local_space -> dim_type -> Types.id -> Types.local_space
end
