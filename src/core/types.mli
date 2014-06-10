open Ctypes

module type SIG = sig
  type space
  type set
  type basic_set
  type union_set
  type map
  type basic_map
  type union_map
  type aff
  type value
  type local_space
  type id
end

type ctx
val ctx : ctx typ

type space
val space : space typ

type set
val set : set typ

type basic_set
val basic_set : basic_set typ

type union_set
val union_set : union_set typ

type map
val map : map typ

type basic_map
val basic_map : basic_map typ

type union_map
val union_map : union_map typ

type aff
val aff : aff typ

type value
val value : value typ

type local_space
val local_space : local_space typ

type id
val id : id typ

type dim_type = DimCst | DimParam | DimIn | DimOut | DimSet | DimDiv | DimAll

val int_of_dim_type : dim_type -> int
val dim_type_of_int : int -> dim_type

val dim_type : dim_type typ
val bool : bool typ

type isl_error = 
  | IslErrorNone
  | IslErrorAbort 
  | IslErrorAlloc 
  | IslErrorUnknown
  | IslErrorInternal
  | IslErrorInvalid 
  | IslErrorQuota
  | IslErrorUnsupported

exception Isl_exception of isl_error

