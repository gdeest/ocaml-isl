open IslAff_Core

module Make (Ctx: IslCtx.SIG): IslAff_sigs.S with module Types := Types = struct
    module Types = Types

    let dim = dim Ctx.ctx
    let dump = dump Ctx.ctx
    let is_cst = is_cst Ctx.ctx
    let is_nan = is_nan Ctx.ctx
    let plain_is_equal = plain_is_equal Ctx.ctx
    let plain_is_zero = plain_is_zero Ctx.ctx
    let get_domain_space = get_domain_space Ctx.ctx
    let get_space = get_space Ctx.ctx
    let ge_basic_set = ge_basic_set Ctx.ctx
    let le_basic_set = le_basic_set Ctx.ctx
    let neg_basic_set = neg_basic_set Ctx.ctx
    let zero_basic_set = zero_basic_set Ctx.ctx
    let get_coefficient_val = get_coefficient_val Ctx.ctx
    let get_constant_val = get_constant_val Ctx.ctx
    let get_denominator_val = get_denominator_val Ctx.ctx
    let add = add Ctx.ctx
    let add_coefficient_si = add_coefficient_si Ctx.ctx
    let add_coefficient_val = add_coefficient_val Ctx.ctx
    let add_constant_num_si = add_constant_num_si Ctx.ctx
    let add_constant_si = add_constant_si Ctx.ctx
    let add_constant_val = add_constant_val Ctx.ctx
    let align_params = align_params Ctx.ctx
    let ceil = ceil Ctx.ctx
    let div = div Ctx.ctx
    let floor = floor Ctx.ctx
    let get_div = get_div Ctx.ctx
    let gist = gist Ctx.ctx
    let gist_params = gist_params Ctx.ctx
    let mod_val = mod_val Ctx.ctx
    let mul = mul Ctx.ctx
    let nan_on_domain = nan_on_domain Ctx.ctx
    let neg = neg Ctx.ctx
    let project_domain_on_params = project_domain_on_params Ctx.ctx
    let pullback_aff = pullback_aff Ctx.ctx
    let of_string = of_string Ctx.ctx
    let scale_down_val = scale_down_val Ctx.ctx
    let scale_val = scale_val Ctx.ctx
    let set_coefficient_si = set_coefficient_si Ctx.ctx
    let set_coefficient_val = set_coefficient_val Ctx.ctx
    let set_constant_si = set_constant_si Ctx.ctx
    let set_constant_val = set_constant_val Ctx.ctx
    let set_tuple_id = set_tuple_id Ctx.ctx
    let sub = sub Ctx.ctx
    let val_on_domain = val_on_domain Ctx.ctx
    let zero_on_domain = zero_on_domain Ctx.ctx
    let get_domain_local_space = get_domain_local_space Ctx.ctx
    let get_local_space = get_local_space Ctx.ctx
end
