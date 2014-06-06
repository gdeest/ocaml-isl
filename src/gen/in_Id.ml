open Ctypes
open Foreign
open IslMemory

let id_get_ctx id = 
    let isl_id_get_ctx = foreign "isl_id_get_ctx" (Isl.id @-> returning Isl.ctx) in
    let ret = isl_id_get_ctx id in
    ret

let id_dump id = 
    let isl_id_dump = foreign "isl_id_dump" (Isl.id @-> returning void) in
    let ret = isl_id_dump id in
    ret

let id_get_name id = 
    let isl_id_get_name = foreign "isl_id_get_name" (Isl.id @-> returning string) in
    let ret = isl_id_get_name id in
    ret

