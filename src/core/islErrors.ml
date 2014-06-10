open Ctypes
open Foreign
open Types


let isl_ctx_last_error = foreign "isl_ctx_last_error"
    (ctx @-> returning int)
let isl_ctx_reset_error = foreign "isl_ctx_reset_error"
    (ctx @-> returning void)

let check_for_errors ctx = 
  let error_code = isl_ctx_last_error ctx in
  isl_ctx_reset_error ctx;
  match error_code with
  | 0 -> ()
  | 1 -> raise @@ Isl_exception IslErrorAbort
  | 2 -> raise @@ Isl_exception IslErrorAlloc
  | 3 -> raise @@ Isl_exception IslErrorUnknown
  | 4 -> raise @@ Isl_exception IslErrorInternal
  | 5 -> raise @@ Isl_exception IslErrorInvalid
  | 6 -> raise @@ Isl_exception IslErrorQuota
  | 7 -> raise @@ Isl_exception IslErrorUnsupported
  | _ -> raise @@ Isl_exception IslErrorUnknown

