open Ctypes
open Foreign
open IslMemory

let local_space_dim ls typ = 
    let isl_local_space_dim = foreign "isl_local_space_dim" (Isl.local_space @-> Isl.dim_type @-> returning int) in
    let ret = isl_local_space_dim ls typ in
    ret

let local_space_get_ctx ls = 
    let isl_local_space_get_ctx = foreign "isl_local_space_get_ctx" (Isl.local_space @-> returning Isl.ctx) in
    let ret = isl_local_space_get_ctx ls in
    ret

let local_space_dump ls = 
    let isl_local_space_dump = foreign "isl_local_space_dump" (Isl.local_space @-> returning void) in
    let ret = isl_local_space_dump ls in
    ret

let local_space_is_equal ls1 ls2 = 
    let isl_local_space_is_equal = foreign "isl_local_space_is_equal" (Isl.local_space @-> Isl.local_space @-> returning Isl.bool) in
    let ret = isl_local_space_is_equal ls1 ls2 in
    ret

let local_space_is_set ls = 
    let isl_local_space_is_set = foreign "isl_local_space_is_set" (Isl.local_space @-> returning Isl.bool) in
    let ret = isl_local_space_is_set ls in
    ret

let local_space_get_space ls = 
    let isl_local_space_get_space = foreign "isl_local_space_get_space" (Isl.local_space @-> returning Isl.space) in
    let ret = isl_local_space_get_space ls in
    Gc.finalise space_free ret;
    ret

let local_space_lifting ls = 
    let ls = local_space_copy ls in
    let isl_local_space_lifting = foreign "isl_local_space_lifting" (Isl.local_space @-> returning Isl.basic_map) in
    let ret = isl_local_space_lifting ls in
    Gc.finalise basic_map_free ret;
    ret

let local_space_get_div ls pos = 
    let isl_local_space_get_div = foreign "isl_local_space_get_div" (Isl.local_space @-> int @-> returning Isl.aff) in
    let ret = isl_local_space_get_div ls pos in
    Gc.finalise aff_free ret;
    ret

let local_space_domain ls = 
    let ls = local_space_copy ls in
    let isl_local_space_domain = foreign "isl_local_space_domain" (Isl.local_space @-> returning Isl.local_space) in
    let ret = isl_local_space_domain ls in
    Gc.finalise local_space_free ret;
    ret

let local_space_flatten_domain ls = 
    let ls = local_space_copy ls in
    let isl_local_space_flatten_domain = foreign "isl_local_space_flatten_domain" (Isl.local_space @-> returning Isl.local_space) in
    let ret = isl_local_space_flatten_domain ls in
    Gc.finalise local_space_free ret;
    ret

let local_space_flatten_range ls = 
    let ls = local_space_copy ls in
    let isl_local_space_flatten_range = foreign "isl_local_space_flatten_range" (Isl.local_space @-> returning Isl.local_space) in
    let ret = isl_local_space_flatten_range ls in
    Gc.finalise local_space_free ret;
    ret

let local_space_from_domain ls = 
    let ls = local_space_copy ls in
    let isl_local_space_from_domain = foreign "isl_local_space_from_domain" (Isl.local_space @-> returning Isl.local_space) in
    let ret = isl_local_space_from_domain ls in
    Gc.finalise local_space_free ret;
    ret

let local_space_from_space dim = 
    let dim = space_copy dim in
    let isl_local_space_from_space = foreign "isl_local_space_from_space" (Isl.space @-> returning Isl.local_space) in
    let ret = isl_local_space_from_space dim in
    Gc.finalise local_space_free ret;
    ret

let local_space_intersect ls1 ls2 = 
    let ls1 = local_space_copy ls1 in
    let ls2 = local_space_copy ls2 in
    let isl_local_space_intersect = foreign "isl_local_space_intersect" (Isl.local_space @-> Isl.local_space @-> returning Isl.local_space) in
    let ret = isl_local_space_intersect ls1 ls2 in
    Gc.finalise local_space_free ret;
    ret

let local_space_range ls = 
    let ls = local_space_copy ls in
    let isl_local_space_range = foreign "isl_local_space_range" (Isl.local_space @-> returning Isl.local_space) in
    let ret = isl_local_space_range ls in
    Gc.finalise local_space_free ret;
    ret

let local_space_set_tuple_id ls typ id = 
    let ls = local_space_copy ls in
    let id = id_copy id in
    let isl_local_space_set_tuple_id = foreign "isl_local_space_set_tuple_id" (Isl.local_space @-> Isl.dim_type @-> Isl.id @-> returning Isl.local_space) in
    let ret = isl_local_space_set_tuple_id ls typ id in
    Gc.finalise local_space_free ret;
    ret

