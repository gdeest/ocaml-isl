open Ctypes
open Foreign
open IslMemory

let ctx_aborted ctx = 
    let isl_ctx_aborted = foreign "isl_ctx_aborted" (Isl.ctx @-> returning int) in
    let ret = isl_ctx_aborted ctx in
    ret

let ctx_alloc  = 
    let isl_ctx_alloc = foreign "isl_ctx_alloc" (void @-> returning Isl.ctx) in
    let ret = isl_ctx_alloc  in
    ret

let ctx_abort ctx = 
    let isl_ctx_abort = foreign "isl_ctx_abort" (Isl.ctx @-> returning void) in
    let ret = isl_ctx_abort ctx in
    ret

let ctx_deref ctx = 
    let isl_ctx_deref = foreign "isl_ctx_deref" (Isl.ctx @-> returning void) in
    let ret = isl_ctx_deref ctx in
    ret

let ctx_ref ctx = 
    let isl_ctx_ref = foreign "isl_ctx_ref" (Isl.ctx @-> returning void) in
    let ret = isl_ctx_ref ctx in
    ret

let ctx_reset_error ctx = 
    let isl_ctx_reset_error = foreign "isl_ctx_reset_error" (Isl.ctx @-> returning void) in
    let ret = isl_ctx_reset_error ctx in
    ret

let ctx_reset_operations ctx = 
    let isl_ctx_reset_operations = foreign "isl_ctx_reset_operations" (Isl.ctx @-> returning void) in
    let ret = isl_ctx_reset_operations ctx in
    ret

let ctx_resume ctx = 
    let isl_ctx_resume = foreign "isl_ctx_resume" (Isl.ctx @-> returning void) in
    let ret = isl_ctx_resume ctx in
    ret

