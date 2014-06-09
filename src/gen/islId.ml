open In_IslId
module Make (Ctx: Sig_Context.S): Sig_IslId.S = struct
    module Types = Types

    let dump = dump Ctx.ctx
    let get_name = get_name Ctx.ctx
end
