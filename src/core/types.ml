open Ctypes
open Unsigned

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
  type constrnt
  type id
end

type ctx = unit ptr
let ctx : ctx typ = ptr void

type space = unit ptr
let space : space typ = ptr void

type set = unit ptr
let set : set typ = ptr void

type basic_set = unit ptr
let basic_set : basic_set typ = ptr void

type union_set = unit ptr
let union_set : union_set typ = ptr void

type map = unit ptr
let map : map typ = ptr void

type basic_map = unit ptr
let basic_map : basic_map typ = ptr void

type union_map = unit ptr
let union_map : union_map typ = ptr void

type aff = unit ptr
let aff : aff typ = ptr void

type value = unit ptr
let value : value typ = ptr void

type local_space = unit ptr
let local_space : local_space typ = ptr void

type constrnt = unit ptr
let constrnt : constrnt typ = ptr void

type id = unit ptr
let id : id typ = ptr void

(* let uint : int typ = view ~read:(UInt.to_int) ~write:(UInt.of_int) Unsigned.uint *)

type dim_type = DimCst | DimParam | DimIn | DimOut | DimSet | DimDiv | DimAll

type unsigned_int = int
let unsigned_int = view ~read:(Unsigned.UInt.to_int) ~write:(Unsigned.UInt.of_int) uint

let int_of_dim_type = function
  | DimCst -> 0
  | DimParam -> 1
  | DimIn -> 2
  | DimOut -> 3
  | DimSet -> 3
  | DimDiv -> 4
  | DimAll -> 5
    
let dim_type_of_int = function
  | 0 -> DimCst
  | 1 -> DimParam
  | 2 -> DimIn
  | 3 -> DimSet
  | 4 -> DimDiv
  | 5 -> DimAll
  | _ -> raise (Invalid_argument "Invalid dim type")

let dim_type = view ~read:dim_type_of_int ~write:int_of_dim_type int;;

let bool = view ~read:((<>)0) ~write:(fun b -> compare b false) int;;

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

