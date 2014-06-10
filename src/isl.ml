let mk_context = IslCtx.create


module Make (Ctx: IslCtx.SIG) = struct
  module Types = Types
  module Aff = IslAff_In.Make (Ctx)
  module BasicMap = IslBasicMap.Make (Ctx)
  module BasicSet = IslBasicSet_In.Make (Ctx)
  module Constraint = IslConstraint_In.Make (Ctx)
  module Id = IslId_In.Make (Ctx)
  module LocalSpace = IslLocalSpace_In.Make (Ctx)
  module Map = IslMap_In.Make (Ctx)
  module Set = IslSet_In.Make (Ctx)
  module UnionMap = IslUnionMap_In.Make (Ctx)
  module UnionSet = IslUnionSet_In.Make (Ctx)
  module Value = IslValue_In.Make (Ctx)
end
