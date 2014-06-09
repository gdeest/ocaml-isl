open In_IslId
module Make (Ctx: Sig_Context.S): Sig_IslId.S with module Types = Types = struct
    module Types = Types

    let dump = dump Ctx.ctx
    let get_name = get_name Ctx.ctx
end
