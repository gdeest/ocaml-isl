open IslUnionSet_Core

module Make (Ctx: IslCtx.SIG): IslUnionSet_sigs.S with module Types := Types = struct
    module Types = Types

    let n_set = n_set Ctx.ctx
    let dump = dump Ctx.ctx
    let is_params = is_params Ctx.ctx
    let extract_set = extract_set Ctx.ctx
    let params = params Ctx.ctx
    let get_space = get_space Ctx.ctx
    let lex_ge_union_set = lex_ge_union_set Ctx.ctx
    let lex_gt_union_set = lex_gt_union_set Ctx.ctx
    let lex_le_union_set = lex_le_union_set Ctx.ctx
    let lex_lt_union_set = lex_lt_union_set Ctx.ctx
    let unwrap = unwrap Ctx.ctx
    let sample = sample Ctx.ctx
    let add_set = add_set Ctx.ctx
    let align_params = align_params Ctx.ctx
    let coefficients = coefficients Ctx.ctx
    let compute_divs = compute_divs Ctx.ctx
    let empty = empty Ctx.ctx
    let lift = lift Ctx.ctx
    let product = product Ctx.ctx
    let reset_user = reset_user Ctx.ctx
    let simple_hull = simple_hull Ctx.ctx
    let solutions = solutions Ctx.ctx
    let union = union Ctx.ctx
    let universe = universe Ctx.ctx
    let is_empty = is_empty Ctx.ctx
    let is_equal = is_equal Ctx.ctx
    let is_strict_subset = is_strict_subset Ctx.ctx
    let is_subset = is_subset Ctx.ctx
    let identity = identity Ctx.ctx
    let affine_hull = affine_hull Ctx.ctx
    let apply = apply Ctx.ctx
    let coalesce = coalesce Ctx.ctx
    let detect_equalities = detect_equalities Ctx.ctx
    let gist = gist Ctx.ctx
    let gist_params = gist_params Ctx.ctx
    let intersect = intersect Ctx.ctx
    let intersect_params = intersect_params Ctx.ctx
    let lexmax = lexmax Ctx.ctx
    let lexmin = lexmin Ctx.ctx
    let polyhedral_hull = polyhedral_hull Ctx.ctx
    let subtract = subtract Ctx.ctx
    let from_basic_set = from_basic_set Ctx.ctx
    let from_set = from_set Ctx.ctx
    let of_string = of_string Ctx.ctx
end
