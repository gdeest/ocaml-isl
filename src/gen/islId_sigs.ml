open Types

module type S = sig
    module Types : Types.SIG
    val dump : Types.id -> unit
    val get_name : Types.id -> string
end
