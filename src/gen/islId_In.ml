open IslId_Core

module Make (Ctx: IslCtx.SIG): IslId_sigs.S with module Types := Types = struct
    module Types = Types

    let dump = dump Ctx.ctx
    let get_name = get_name Ctx.ctx
end
