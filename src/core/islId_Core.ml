open Types
open Ctypes
open Foreign
open IslMemory
open IslErrors

let isl_id_dump = foreign "isl_id_dump" (Types.id @-> returning void)
let dump ctx id = 
    let ret = isl_id_dump id in
    check_for_errors ctx;
    ret

let isl_id_get_name = foreign "isl_id_get_name" (Types.id @-> returning string)
let get_name ctx id = 
    let ret = isl_id_get_name id in
    check_for_errors ctx;
    ret

