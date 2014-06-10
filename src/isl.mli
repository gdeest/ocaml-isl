val mk_context : unit -> Types.ctx

module Make : 
  functor (Ctx: IslCtx.SIG) -> sig
    module Types : Types.SIG
    module Aff : (IslAff_sigs.S with module Types := Types)
    module Space : (IslSpace_sigs.S with module Types := Types)
    module BasicMap : (IslBasicMap.SIG with module Types := Types)
    module BasicSet : (IslBasicSet_sigs.S with module Types := Types)
    module Constraint : (IslConstraint_sigs.S with module Types := Types)
    module Id : (IslId_sigs.S with module Types := Types)
    module LocalSpace : (IslLocalSpace_sigs.S with module Types := Types)
    module Map : (IslMap_sigs.S with module Types := Types)
    module Set : (IslSet_sigs.S with module Types := Types)
    module UnionMap : (IslUnionMap_sigs.S with module Types := Types)
    module UnionSet : (IslUnionSet_sigs.S with module Types := Types)
    module Value : (IslValue_sigs.S with module Types := Types)
  end
