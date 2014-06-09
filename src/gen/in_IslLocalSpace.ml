open Types
open Ctypes
open Foreign
open IslMemory
open Errors

let dim ctx ls typ = 
    let isl_local_space_dim = foreign "isl_local_space_dim" (Types.local_space @-> dim_type @-> returning int) in
    let ret = isl_local_space_dim ls typ in
    check_for_errors ctx;
    ret

let dump ctx ls = 
    let isl_local_space_dump = foreign "isl_local_space_dump" (Types.local_space @-> returning void) in
    let ret = isl_local_space_dump ls in
    check_for_errors ctx;
    ret

let is_equal ctx ls1 ls2 = 
    let isl_local_space_is_equal = foreign "isl_local_space_is_equal" (Types.local_space @-> Types.local_space @-> returning bool) in
    let ret = isl_local_space_is_equal ls1 ls2 in
    check_for_errors ctx;
    ret

let is_set ctx ls = 
    let isl_local_space_is_set = foreign "isl_local_space_is_set" (Types.local_space @-> returning bool) in
    let ret = isl_local_space_is_set ls in
    check_for_errors ctx;
    ret

let get_space ctx ls = 
    let isl_local_space_get_space = foreign "isl_local_space_get_space" (Types.local_space @-> returning Types.space) in
    let ret = isl_local_space_get_space ls in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let lifting ctx ls = 
    let ls = local_space_copy ls in
    let isl_local_space_lifting = foreign "isl_local_space_lifting" (Types.local_space @-> returning Types.basic_map) in
    let ret = isl_local_space_lifting ls in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let get_div ctx ls pos = 
    let isl_local_space_get_div = foreign "isl_local_space_get_div" (Types.local_space @-> int @-> returning Types.aff) in
    let ret = isl_local_space_get_div ls pos in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let domain ctx ls = 
    let ls = local_space_copy ls in
    let isl_local_space_domain = foreign "isl_local_space_domain" (Types.local_space @-> returning Types.local_space) in
    let ret = isl_local_space_domain ls in
    check_for_errors ctx;
    Gc.finalise local_space_free ret;
    ret

let flatten_domain ctx ls = 
    let ls = local_space_copy ls in
    let isl_local_space_flatten_domain = foreign "isl_local_space_flatten_domain" (Types.local_space @-> returning Types.local_space) in
    let ret = isl_local_space_flatten_domain ls in
    check_for_errors ctx;
    Gc.finalise local_space_free ret;
    ret

let flatten_range ctx ls = 
    let ls = local_space_copy ls in
    let isl_local_space_flatten_range = foreign "isl_local_space_flatten_range" (Types.local_space @-> returning Types.local_space) in
    let ret = isl_local_space_flatten_range ls in
    check_for_errors ctx;
    Gc.finalise local_space_free ret;
    ret

let from_domain ctx ls = 
    let ls = local_space_copy ls in
    let isl_local_space_from_domain = foreign "isl_local_space_from_domain" (Types.local_space @-> returning Types.local_space) in
    let ret = isl_local_space_from_domain ls in
    check_for_errors ctx;
    Gc.finalise local_space_free ret;
    ret

let from_space ctx dim = 
    let dim = space_copy dim in
    let isl_local_space_from_space = foreign "isl_local_space_from_space" (Types.space @-> returning Types.local_space) in
    let ret = isl_local_space_from_space dim in
    check_for_errors ctx;
    Gc.finalise local_space_free ret;
    ret

let intersect ctx ls1 ls2 = 
    let ls1 = local_space_copy ls1 in
    let ls2 = local_space_copy ls2 in
    let isl_local_space_intersect = foreign "isl_local_space_intersect" (Types.local_space @-> Types.local_space @-> returning Types.local_space) in
    let ret = isl_local_space_intersect ls1 ls2 in
    check_for_errors ctx;
    Gc.finalise local_space_free ret;
    ret

let range ctx ls = 
    let ls = local_space_copy ls in
    let isl_local_space_range = foreign "isl_local_space_range" (Types.local_space @-> returning Types.local_space) in
    let ret = isl_local_space_range ls in
    check_for_errors ctx;
    Gc.finalise local_space_free ret;
    ret

let set_tuple_id ctx ls typ id = 
    let ls = local_space_copy ls in
    let id = id_copy id in
    let isl_local_space_set_tuple_id = foreign "isl_local_space_set_tuple_id" (Types.local_space @-> dim_type @-> Types.id @-> returning Types.local_space) in
    let ret = isl_local_space_set_tuple_id ls typ id in
    check_for_errors ctx;
    Gc.finalise local_space_free ret;
    ret

