open Unsigned
open Types

module type S = sig
    module Types : Types.SIG
    val dim : Types.local_space -> dim_type -> int
    val dump : Types.local_space -> unit
    val get_dim_name : Types.local_space -> dim_type -> int -> string
    val has_dim_id : Types.local_space -> dim_type -> int -> bool
    val has_dim_name : Types.local_space -> dim_type -> int -> bool
    val is_equal : Types.local_space -> Types.local_space -> bool
    val is_set : Types.local_space -> bool
    val get_space : Types.local_space -> Types.space
    val lifting : Types.local_space -> Types.basic_map
    val get_div : Types.local_space -> int -> Types.aff
    val get_dim_id : Types.local_space -> dim_type -> int -> Types.id
    val add_dims : Types.local_space -> dim_type -> int -> Types.local_space
    val domain : Types.local_space -> Types.local_space
    val drop_dims : Types.local_space -> dim_type -> int -> int -> Types.local_space
    val flatten_domain : Types.local_space -> Types.local_space
    val flatten_range : Types.local_space -> Types.local_space
    val from_domain : Types.local_space -> Types.local_space
    val from_space : Types.space -> Types.local_space
    val insert_dims : Types.local_space -> dim_type -> int -> int -> Types.local_space
    val intersect : Types.local_space -> Types.local_space -> Types.local_space
    val range : Types.local_space -> Types.local_space
    val set_dim_id : Types.local_space -> dim_type -> int -> Types.id -> Types.local_space
    val set_dim_name : Types.local_space -> dim_type -> int -> string -> Types.local_space
    val set_tuple_id : Types.local_space -> dim_type -> Types.id -> Types.local_space
end
