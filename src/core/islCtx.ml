open Ctypes
open Foreign
open Types

let alloc = foreign "isl_ctx_alloc" (void @-> returning ctx)
let free = foreign "isl_ctx_free" (ctx @-> returning void)
let create () =
  let ret = alloc () in
  Gc.finalise free ret; ret

module type SIG = sig
  val ctx : ctx
end
