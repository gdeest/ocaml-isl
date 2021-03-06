open IslBasicSet_Core

module Make (Ctx: IslCtx.SIG): IslBasicSet_sigs.S with module Types := Types = struct
    module Types = Types

    let compare_at = compare_at Ctx.ctx
    let involves_dims = involves_dims Ctx.ctx
    let n_constraint = n_constraint Ctx.ctx
    let dim = dim Ctx.ctx
    let n_dim = n_dim Ctx.ctx
    let n_param = n_param Ctx.ctx
    let total_dim = total_dim Ctx.ctx
    let compute_divs = compute_divs Ctx.ctx
    let alloc = alloc Ctx.ctx
    let dup = dup Ctx.ctx
    let empty_like = empty_like Ctx.ctx
    let extend = extend Ctx.ctx
    let extend_constraints = extend_constraints Ctx.ctx
    let finalize = finalize Ctx.ctx
    let from_basic_map = from_basic_map Ctx.ctx
    let from_constraint = from_constraint Ctx.ctx
    let from_underlying_set = from_underlying_set Ctx.ctx
    let simplify = simplify Ctx.ctx
    let universe_like = universe_like Ctx.ctx
    let dump = dump Ctx.ctx
    let get_dim_name = get_dim_name Ctx.ctx
    let get_tuple_name = get_tuple_name Ctx.ctx
    let fast_is_empty = fast_is_empty Ctx.ctx
    let is_bounded = is_bounded Ctx.ctx
    let is_disjoint = is_disjoint Ctx.ctx
    let is_rational = is_rational Ctx.ctx
    let is_universe = is_universe Ctx.ctx
    let plain_is_empty = plain_is_empty Ctx.ctx
    let plain_is_equal = plain_is_equal Ctx.ctx
    let get_space = get_space Ctx.ctx
    let unwrap = unwrap Ctx.ctx
    let add = add Ctx.ctx
    let add_constraint = add_constraint Ctx.ctx
    let add_dims = add_dims Ctx.ctx
    let align_params = align_params Ctx.ctx
    let coefficients = coefficients Ctx.ctx
    let drop_constraint = drop_constraint Ctx.ctx
    let drop_constraints_involving_dims = drop_constraints_involving_dims Ctx.ctx
    let drop_constraints_not_involving_dims = drop_constraints_not_involving_dims Ctx.ctx
    let eliminate = eliminate Ctx.ctx
    let empty = empty Ctx.ctx
    let fix_si = fix_si Ctx.ctx
    let fix_val = fix_val Ctx.ctx
    let flat_product = flat_product Ctx.ctx
    let from_params = from_params Ctx.ctx
    let insert_dims = insert_dims Ctx.ctx
    let lift = lift Ctx.ctx
    let move_dims = move_dims Ctx.ctx
    let nat_universe = nat_universe Ctx.ctx
    let neg = neg Ctx.ctx
    let params = params Ctx.ctx
    let positive_orthant = positive_orthant Ctx.ctx
    let project_out = project_out Ctx.ctx
    let remove_dims = remove_dims Ctx.ctx
    let remove_divs = remove_divs Ctx.ctx
    let remove_divs_involving_dims = remove_divs_involving_dims Ctx.ctx
    let remove_redundancies = remove_redundancies Ctx.ctx
    let remove_unknown_divs = remove_unknown_divs Ctx.ctx
    let set_dim_name = set_dim_name Ctx.ctx
    let set_tuple_id = set_tuple_id Ctx.ctx
    let set_tuple_name = set_tuple_name Ctx.ctx
    let solutions = solutions Ctx.ctx
    let universe = universe Ctx.ctx
    let universe_like_set = universe_like_set Ctx.ctx
    let max_val = max_val Ctx.ctx
    let get_div = get_div Ctx.ctx
    let get_dim_id = get_dim_id Ctx.ctx
    let get_local_space = get_local_space Ctx.ctx
    let is_empty = is_empty Ctx.ctx
    let is_equal = is_equal Ctx.ctx
    let is_subset = is_subset Ctx.ctx
    let is_wrapping = is_wrapping Ctx.ctx
    let lexmax = lexmax Ctx.ctx
    let lexmin = lexmin Ctx.ctx
    let union = union Ctx.ctx
    let affine_hull = affine_hull Ctx.ctx
    let apply = apply Ctx.ctx
    let detect_equalities = detect_equalities Ctx.ctx
    let flatten = flatten Ctx.ctx
    let gist = gist Ctx.ctx
    let intersect = intersect Ctx.ctx
    let intersect_params = intersect_params Ctx.ctx
    let sample = sample Ctx.ctx
    let of_string = of_string Ctx.ctx
end
