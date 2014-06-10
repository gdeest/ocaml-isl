open IslConstraint_Core

module Make (Ctx: IslCtx.SIG): IslConstraint_sigs.S with module Types := Types = struct
    module Types = Types

end
