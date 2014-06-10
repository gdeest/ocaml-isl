open Types

module type S = sig
    module Types : Types.SIG
    val n_set : Types.union_set -> int
    val dump : Types.union_set -> unit
    val is_params : Types.union_set -> bool
    val extract_set : Types.union_set -> Types.space -> Types.set
    val params : Types.union_set -> Types.set
    val get_space : Types.union_set -> Types.space
    val lex_ge_union_set : Types.union_set -> Types.union_set -> Types.union_map
    val lex_gt_union_set : Types.union_set -> Types.union_set -> Types.union_map
    val lex_le_union_set : Types.union_set -> Types.union_set -> Types.union_map
    val lex_lt_union_set : Types.union_set -> Types.union_set -> Types.union_map
    val unwrap : Types.union_set -> Types.union_map
    val sample : Types.union_set -> Types.basic_set
    val add_set : Types.union_set -> Types.set -> Types.union_set
    val align_params : Types.union_set -> Types.space -> Types.union_set
    val coefficients : Types.union_set -> Types.union_set
    val compute_divs : Types.union_set -> Types.union_set
    val empty : Types.space -> Types.union_set
    val lift : Types.union_set -> Types.union_set
    val product : Types.union_set -> Types.union_set -> Types.union_set
    val reset_user : Types.union_set -> Types.union_set
    val simple_hull : Types.union_set -> Types.union_set
    val solutions : Types.union_set -> Types.union_set
    val union : Types.union_set -> Types.union_set -> Types.union_set
    val universe : Types.union_set -> Types.union_set
    val is_empty : Types.union_set -> bool
    val is_equal : Types.union_set -> Types.union_set -> bool
    val is_strict_subset : Types.union_set -> Types.union_set -> bool
    val is_subset : Types.union_set -> Types.union_set -> bool
    val identity : Types.union_set -> Types.union_map
    val affine_hull : Types.union_set -> Types.union_set
    val apply : Types.union_set -> Types.union_map -> Types.union_set
    val coalesce : Types.union_set -> Types.union_set
    val detect_equalities : Types.union_set -> Types.union_set
    val gist : Types.union_set -> Types.union_set -> Types.union_set
    val gist_params : Types.union_set -> Types.set -> Types.union_set
    val intersect : Types.union_set -> Types.union_set -> Types.union_set
    val intersect_params : Types.union_set -> Types.set -> Types.union_set
    val lexmax : Types.union_set -> Types.union_set
    val lexmin : Types.union_set -> Types.union_set
    val polyhedral_hull : Types.union_set -> Types.union_set
    val subtract : Types.union_set -> Types.union_set -> Types.union_set
    val from_basic_set : Types.basic_set -> Types.union_set
    val from_set : Types.set -> Types.union_set
    val of_string : string -> Types.union_set
end
