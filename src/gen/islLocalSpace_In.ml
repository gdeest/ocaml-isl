open IslLocalSpace_Core

module Make (Ctx: IslCtx.SIG): IslLocalSpace_sigs.S with module Types := Types = struct
    module Types = Types

    let dim = dim Ctx.ctx
    let dump = dump Ctx.ctx
    let get_dim_name = get_dim_name Ctx.ctx
    let has_dim_id = has_dim_id Ctx.ctx
    let has_dim_name = has_dim_name Ctx.ctx
    let is_equal = is_equal Ctx.ctx
    let is_set = is_set Ctx.ctx
    let get_space = get_space Ctx.ctx
    let lifting = lifting Ctx.ctx
    let get_div = get_div Ctx.ctx
    let get_dim_id = get_dim_id Ctx.ctx
    let add_dims = add_dims Ctx.ctx
    let domain = domain Ctx.ctx
    let drop_dims = drop_dims Ctx.ctx
    let flatten_domain = flatten_domain Ctx.ctx
    let flatten_range = flatten_range Ctx.ctx
    let from_domain = from_domain Ctx.ctx
    let from_space = from_space Ctx.ctx
    let insert_dims = insert_dims Ctx.ctx
    let intersect = intersect Ctx.ctx
    let range = range Ctx.ctx
    let set_dim_id = set_dim_id Ctx.ctx
    let set_dim_name = set_dim_name Ctx.ctx
    let set_tuple_id = set_tuple_id Ctx.ctx
end
