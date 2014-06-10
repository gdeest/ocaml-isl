let mk_context = IslCtx.create

module Make (Ctx: IslCtx.SIG) = struct
  module Types = Types
  module Aff = IslAff.Make (Ctx)
  module BasicMap = IslBasicMap.Make (Ctx)
  module BasicSet = IslBasicSet.Make (Ctx)
  module Constraint = IslConstraint.Make (Ctx)
  module Id = IslId.Make (Ctx)
  module LocalSpace = IslLocalSpace.Make (Ctx)
  module Map = IslMap.Make (Ctx)
  module Set = IslSet.Make (Ctx)
  module UnionMap = IslUnionMap.Make (Ctx)
  module UnionSet = IslUnionSet.Make (Ctx)
  module Value = IslValue.Make (Ctx)
end
