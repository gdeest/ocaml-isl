open Types

module type S = sig
    module Types : Sig_Types.S
    val n_map : Types.union_map -> int
    val dump : Types.union_map -> unit
    val plain_is_injective : Types.union_map -> bool
    val params : Types.union_map -> Types.set
    val get_space : Types.union_map -> Types.space
    val extract_map : Types.union_map -> Types.space -> Types.map
    val sample : Types.union_map -> Types.basic_map
    val add_map : Types.union_map -> Types.map -> Types.union_map
    val align_params : Types.union_map -> Types.space -> Types.union_map
    val compute_divs : Types.union_map -> Types.union_map
    val curry : Types.union_map -> Types.union_map
    val deltas_map : Types.union_map -> Types.union_map
    val domain_map : Types.union_map -> Types.union_map
    val domain_product : Types.union_map -> Types.union_map -> Types.union_map
    val empty : Types.space -> Types.union_map
    val fixed_power_val : Types.union_map -> Types.value -> Types.union_map
    val flat_range_product : Types.union_map -> Types.union_map -> Types.union_map
    val from_domain : Types.union_set -> Types.union_map
    val from_domain_and_range : Types.union_set -> Types.union_set -> Types.union_map
    val from_range : Types.union_set -> Types.union_map
    val lex_ge_union_map : Types.union_map -> Types.union_map -> Types.union_map
    val lex_gt_union_map : Types.union_map -> Types.union_map -> Types.union_map
    val lex_le_union_map : Types.union_map -> Types.union_map -> Types.union_map
    val lex_lt_union_map : Types.union_map -> Types.union_map -> Types.union_map
    val product : Types.union_map -> Types.union_map -> Types.union_map
    val range_map : Types.union_map -> Types.union_map
    val range_product : Types.union_map -> Types.union_map -> Types.union_map
    val reset_user : Types.union_map -> Types.union_map
    val simple_hull : Types.union_map -> Types.union_map
    val uncurry : Types.union_map -> Types.union_map
    val universe : Types.union_map -> Types.union_map
    val zip : Types.union_map -> Types.union_map
    val domain : Types.union_map -> Types.union_set
    val range : Types.union_map -> Types.union_set
    val wrap : Types.union_map -> Types.union_set
    val is_bijective : Types.union_map -> bool
    val is_empty : Types.union_map -> bool
    val is_equal : Types.union_map -> Types.union_map -> bool
    val is_injective : Types.union_map -> bool
    val is_single_valued : Types.union_map -> bool
    val is_strict_subset : Types.union_map -> Types.union_map -> bool
    val is_subset : Types.union_map -> Types.union_map -> bool
    val affine_hull : Types.union_map -> Types.union_map
    val apply_domain : Types.union_map -> Types.union_map -> Types.union_map
    val apply_range : Types.union_map -> Types.union_map -> Types.union_map
    val coalesce : Types.union_map -> Types.union_map
    val detect_equalities : Types.union_map -> Types.union_map
    val gist : Types.union_map -> Types.union_map -> Types.union_map
    val gist_domain : Types.union_map -> Types.union_set -> Types.union_map
    val gist_params : Types.union_map -> Types.set -> Types.union_map
    val gist_range : Types.union_map -> Types.union_set -> Types.union_map
    val intersect : Types.union_map -> Types.union_map -> Types.union_map
    val intersect_domain : Types.union_map -> Types.union_set -> Types.union_map
    val intersect_params : Types.union_map -> Types.set -> Types.union_map
    val intersect_range : Types.union_map -> Types.union_set -> Types.union_map
    val lexmax : Types.union_map -> Types.union_map
    val lexmin : Types.union_map -> Types.union_map
    val polyhedral_hull : Types.union_map -> Types.union_map
    val reverse : Types.union_map -> Types.union_map
    val subtract : Types.union_map -> Types.union_map -> Types.union_map
    val subtract_domain : Types.union_map -> Types.union_set -> Types.union_map
    val subtract_range : Types.union_map -> Types.union_set -> Types.union_map
    val union : Types.union_map -> Types.union_map -> Types.union_map
    val deltas : Types.union_map -> Types.union_set
    val from_basic_map : Types.basic_map -> Types.union_map
    val from_map : Types.map -> Types.union_map
    val of_string : string -> Types.union_map
end
