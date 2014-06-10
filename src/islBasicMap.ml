module type SIG = sig
  include IslBasicMap_sigs.S
end

module Make (Ctx: IslCtx.SIG) : SIG with module Types := Types = struct
  include IslBasicMap_In.Make (Ctx)
end
