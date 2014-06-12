type dim = Dim of (Types.dim_type * int * string)


module type SIG = sig
  include IslSpace_sigs.S
    
  val from_names : ?params:string list -> ?dims:string list -> unit -> Types.space * dim list * dim list
end

module Make (Ctx: IslCtx.SIG) : SIG with module Types := Types = struct
  include IslSpace_In.Make(Ctx)

  let from_names ?(params = []) ?(dims = []) () =
    let open List in
    let space = ref (set_alloc (length params) (length dims)) in
    let mk_dim dim_type i name =
      space := set_dim_name !space dim_type i name;
      Dim (dim_type, i, name) in
    let params = List.mapi (mk_dim DimParam) params and
    	dims = List.mapi (mk_dim DimSet) dims in
    (!space, params, dims)
end
