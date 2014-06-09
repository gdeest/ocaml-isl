open Types
open Ctypes
open Foreign
open IslMemory
open Errors

let dump ctx id = 
    let isl_id_dump = foreign "isl_id_dump" (Types.id @-> returning void) in
    let ret = isl_id_dump id in
    check_for_errors ctx;
    ret

let get_name ctx id = 
    let isl_id_get_name = foreign "isl_id_get_name" (Types.id @-> returning string) in
    let ret = isl_id_get_name id in
    check_for_errors ctx;
    ret

