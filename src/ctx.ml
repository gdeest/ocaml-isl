open Ctypes
open Foreign

type t = unit ptr
let t : t typ = ptr void

let alloc = foreign "isl_ctx_alloc" (void @-> returning t)
let free = foreign "isl_ctx_free" (t @-> returning void)
let create () =
  let ret = alloc () in
  Gc.finalise free ret; ret
