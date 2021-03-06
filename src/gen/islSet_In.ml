open IslSet_Core

module Make (Ctx: IslCtx.SIG): IslSet_sigs.S with module Types := Types = struct
    module Types = Types

    let find_dim_by_id = find_dim_by_id Ctx.ctx
    let find_dim_by_name = find_dim_by_name Ctx.ctx
    let follows_at = follows_at Ctx.ctx
    let involves_dims = involves_dims Ctx.ctx
    let n_basic_set = n_basic_set Ctx.ctx
    let plain_cmp = plain_cmp Ctx.ctx
    let size = size Ctx.ctx
    let dim = dim Ctx.ctx
    let n_dim = n_dim Ctx.ctx
    let n_param = n_param Ctx.ctx
    let alloc = alloc Ctx.ctx
    let drop_basic_set = drop_basic_set Ctx.ctx
    let dup = dup Ctx.ctx
    let eliminate_dims = eliminate_dims Ctx.ctx
    let empty_like = empty_like Ctx.ctx
    let extend = extend Ctx.ctx
    let finalize = finalize Ctx.ctx
    let fix_dim_si = fix_dim_si Ctx.ctx
    let from_map = from_map Ctx.ctx
    let from_underlying_set = from_underlying_set Ctx.ctx
    let to_underlying_set = to_underlying_set Ctx.ctx
    let union_disjoint = union_disjoint Ctx.ctx
    let bounded_simple_hull = bounded_simple_hull Ctx.ctx
    let copy_basic_set = copy_basic_set Ctx.ctx
    let dump = dump Ctx.ctx
    let get_dim_name = get_dim_name Ctx.ctx
    let get_tuple_name = get_tuple_name Ctx.ctx
    let dim_has_any_lower_bound = dim_has_any_lower_bound Ctx.ctx
    let dim_has_any_upper_bound = dim_has_any_upper_bound Ctx.ctx
    let dim_has_lower_bound = dim_has_lower_bound Ctx.ctx
    let dim_has_upper_bound = dim_has_upper_bound Ctx.ctx
    let dim_is_bounded = dim_is_bounded Ctx.ctx
    let dim_is_unique = dim_is_unique Ctx.ctx
    let fast_is_disjoint = fast_is_disjoint Ctx.ctx
    let fast_is_empty = fast_is_empty Ctx.ctx
    let fast_is_equal = fast_is_equal Ctx.ctx
    let fast_is_universe = fast_is_universe Ctx.ctx
    let has_dim_id = has_dim_id Ctx.ctx
    let has_dim_name = has_dim_name Ctx.ctx
    let has_equal_space = has_equal_space Ctx.ctx
    let has_tuple_id = has_tuple_id Ctx.ctx
    let has_tuple_name = has_tuple_name Ctx.ctx
    let is_bounded = is_bounded Ctx.ctx
    let is_box = is_box Ctx.ctx
    let is_params = is_params Ctx.ctx
    let is_singleton = is_singleton Ctx.ctx
    let plain_is_disjoint = plain_is_disjoint Ctx.ctx
    let plain_is_empty = plain_is_empty Ctx.ctx
    let plain_is_equal = plain_is_equal Ctx.ctx
    let plain_is_universe = plain_is_universe Ctx.ctx
    let add_basic_set = add_basic_set Ctx.ctx
    let add_constraint = add_constraint Ctx.ctx
    let add_dims = add_dims Ctx.ctx
    let align_divs = align_divs Ctx.ctx
    let align_params = align_params Ctx.ctx
    let compute_divs = compute_divs Ctx.ctx
    let drop_constraints_involving_dims = drop_constraints_involving_dims Ctx.ctx
    let eliminate = eliminate Ctx.ctx
    let empty = empty Ctx.ctx
    let equate = equate Ctx.ctx
    let fix_si = fix_si Ctx.ctx
    let fix_val = fix_val Ctx.ctx
    let flat_product = flat_product Ctx.ctx
    let from_params = from_params Ctx.ctx
    let from_union_set = from_union_set Ctx.ctx
    let gist_basic_set = gist_basic_set Ctx.ctx
    let gist_params = gist_params Ctx.ctx
    let insert_dims = insert_dims Ctx.ctx
    let lift = lift Ctx.ctx
    let lower_bound_si = lower_bound_si Ctx.ctx
    let lower_bound_val = lower_bound_val Ctx.ctx
    let make_disjoint = make_disjoint Ctx.ctx
    let move_dims = move_dims Ctx.ctx
    let nat_universe = nat_universe Ctx.ctx
    let neg = neg Ctx.ctx
    let params = params Ctx.ctx
    let product = product Ctx.ctx
    let project_out = project_out Ctx.ctx
    let recession_cone = recession_cone Ctx.ctx
    let remove_dims = remove_dims Ctx.ctx
    let remove_divs = remove_divs Ctx.ctx
    let remove_divs_involving_dims = remove_divs_involving_dims Ctx.ctx
    let remove_redundancies = remove_redundancies Ctx.ctx
    let remove_unknown_divs = remove_unknown_divs Ctx.ctx
    let reset_space = reset_space Ctx.ctx
    let reset_tuple_id = reset_tuple_id Ctx.ctx
    let reset_user = reset_user Ctx.ctx
    let set_dim_id = set_dim_id Ctx.ctx
    let set_dim_name = set_dim_name Ctx.ctx
    let set_tuple_id = set_tuple_id Ctx.ctx
    let set_tuple_name = set_tuple_name Ctx.ctx
    let split_dims = split_dims Ctx.ctx
    let sum = sum Ctx.ctx
    let universe = universe Ctx.ctx
    let universe_like = universe_like Ctx.ctx
    let upper_bound_si = upper_bound_si Ctx.ctx
    let upper_bound_val = upper_bound_val Ctx.ctx
    let get_space = get_space Ctx.ctx
    let flatten_map = flatten_map Ctx.ctx
    let lex_ge_set = lex_ge_set Ctx.ctx
    let lex_gt_set = lex_gt_set Ctx.ctx
    let lex_le_set = lex_le_set Ctx.ctx
    let lex_lt_set = lex_lt_set Ctx.ctx
    let lifting = lifting Ctx.ctx
    let unwrap = unwrap Ctx.ctx
    let coefficients = coefficients Ctx.ctx
    let convex_hull = convex_hull Ctx.ctx
    let simple_hull = simple_hull Ctx.ctx
    let solutions = solutions Ctx.ctx
    let unshifted_simple_hull = unshifted_simple_hull Ctx.ctx
    let count_val = count_val Ctx.ctx
    let max_val = max_val Ctx.ctx
    let min_val = min_val Ctx.ctx
    let plain_get_val_if_fixed = plain_get_val_if_fixed Ctx.ctx
    let get_dim_id = get_dim_id Ctx.ctx
    let get_tuple_id = get_tuple_id Ctx.ctx
    let to_string = to_string Ctx.ctx
    let is_disjoint = is_disjoint Ctx.ctx
    let is_empty = is_empty Ctx.ctx
    let is_equal = is_equal Ctx.ctx
    let is_strict_subset = is_strict_subset Ctx.ctx
    let is_subset = is_subset Ctx.ctx
    let is_wrapping = is_wrapping Ctx.ctx
    let apply = apply Ctx.ctx
    let coalesce = coalesce Ctx.ctx
    let complement = complement Ctx.ctx
    let detect_equalities = detect_equalities Ctx.ctx
    let flatten = flatten Ctx.ctx
    let gist = gist Ctx.ctx
    let intersect = intersect Ctx.ctx
    let intersect_params = intersect_params Ctx.ctx
    let lexmax = lexmax Ctx.ctx
    let lexmin = lexmin Ctx.ctx
    let subtract = subtract Ctx.ctx
    let union = union Ctx.ctx
    let identity = identity Ctx.ctx
    let affine_hull = affine_hull Ctx.ctx
    let polyhedral_hull = polyhedral_hull Ctx.ctx
    let sample = sample Ctx.ctx
    let from_basic_set = from_basic_set Ctx.ctx
    let of_string = of_string Ctx.ctx
end
