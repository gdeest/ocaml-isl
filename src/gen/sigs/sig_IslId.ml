open Types

module type S = sig
    module Types : Sig_Types.S
    val dump : Types.id -> unit
    val get_name : Types.id -> string
end
