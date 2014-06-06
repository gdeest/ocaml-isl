open Ctypes
open Foreign
open IslMemory

let space_find_dim_by_id dim typ id = 
    let isl_space_find_dim_by_id = foreign "isl_space_find_dim_by_id" (Isl.space @-> Isl.dim_type @-> Isl.id @-> returning int) in
    let ret = isl_space_find_dim_by_id dim typ id in
    ret

let space_find_dim_by_name space typ name = 
    let isl_space_find_dim_by_name = foreign "isl_space_find_dim_by_name" (Isl.space @-> Isl.dim_type @-> string @-> returning int) in
    let ret = isl_space_find_dim_by_name space typ name in
    ret

let space_get_ctx dim = 
    let isl_space_get_ctx = foreign "isl_space_get_ctx" (Isl.space @-> returning Isl.ctx) in
    let ret = isl_space_get_ctx dim in
    ret

let space_dump dim = 
    let isl_space_dump = foreign "isl_space_dump" (Isl.space @-> returning void) in
    let ret = isl_space_dump dim in
    ret

let space_get_tuple_name dim typ = 
    let isl_space_get_tuple_name = foreign "isl_space_get_tuple_name" (Isl.space @-> Isl.dim_type @-> returning string) in
    let ret = isl_space_get_tuple_name dim typ in
    ret

let space_can_curry space = 
    let isl_space_can_curry = foreign "isl_space_can_curry" (Isl.space @-> returning Isl.bool) in
    let ret = isl_space_can_curry space in
    ret

let space_can_uncurry space = 
    let isl_space_can_uncurry = foreign "isl_space_can_uncurry" (Isl.space @-> returning Isl.bool) in
    let ret = isl_space_can_uncurry space in
    ret

let space_can_zip dim = 
    let isl_space_can_zip = foreign "isl_space_can_zip" (Isl.space @-> returning Isl.bool) in
    let ret = isl_space_can_zip dim in
    ret

let space_compatible dim1 dim2 = 
    let isl_space_compatible = foreign "isl_space_compatible" (Isl.space @-> Isl.space @-> returning Isl.bool) in
    let ret = isl_space_compatible dim1 dim2 in
    ret

let space_domain_is_wrapping space = 
    let isl_space_domain_is_wrapping = foreign "isl_space_domain_is_wrapping" (Isl.space @-> returning Isl.bool) in
    let ret = isl_space_domain_is_wrapping space in
    ret

let space_has_tuple_id dim typ = 
    let isl_space_has_tuple_id = foreign "isl_space_has_tuple_id" (Isl.space @-> Isl.dim_type @-> returning Isl.bool) in
    let ret = isl_space_has_tuple_id dim typ in
    ret

let space_has_tuple_name space typ = 
    let isl_space_has_tuple_name = foreign "isl_space_has_tuple_name" (Isl.space @-> Isl.dim_type @-> returning Isl.bool) in
    let ret = isl_space_has_tuple_name space typ in
    ret

let space_is_domain space1 space2 = 
    let isl_space_is_domain = foreign "isl_space_is_domain" (Isl.space @-> Isl.space @-> returning Isl.bool) in
    let ret = isl_space_is_domain space1 space2 in
    ret

let space_is_equal space1 space2 = 
    let isl_space_is_equal = foreign "isl_space_is_equal" (Isl.space @-> Isl.space @-> returning Isl.bool) in
    let ret = isl_space_is_equal space1 space2 in
    ret

let space_is_map space = 
    let isl_space_is_map = foreign "isl_space_is_map" (Isl.space @-> returning Isl.bool) in
    let ret = isl_space_is_map space in
    ret

let space_is_params space = 
    let isl_space_is_params = foreign "isl_space_is_params" (Isl.space @-> returning Isl.bool) in
    let ret = isl_space_is_params space in
    ret

let space_is_range space1 space2 = 
    let isl_space_is_range = foreign "isl_space_is_range" (Isl.space @-> Isl.space @-> returning Isl.bool) in
    let ret = isl_space_is_range space1 space2 in
    ret

let space_is_set space = 
    let isl_space_is_set = foreign "isl_space_is_set" (Isl.space @-> returning Isl.bool) in
    let ret = isl_space_is_set space in
    ret

let space_is_wrapping dim = 
    let isl_space_is_wrapping = foreign "isl_space_is_wrapping" (Isl.space @-> returning Isl.bool) in
    let ret = isl_space_is_wrapping dim in
    ret

let space_match dim1 dim1_type dim2 dim2_type = 
    let isl_space_match = foreign "isl_space_match" (Isl.space @-> Isl.dim_type @-> Isl.space @-> Isl.dim_type @-> returning Isl.bool) in
    let ret = isl_space_match dim1 dim1_type dim2 dim2_type in
    ret

let space_range_is_wrapping space = 
    let isl_space_range_is_wrapping = foreign "isl_space_range_is_wrapping" (Isl.space @-> returning Isl.bool) in
    let ret = isl_space_range_is_wrapping space in
    ret

let space_tuple_match dim1 dim1_type dim2 dim2_type = 
    let isl_space_tuple_match = foreign "isl_space_tuple_match" (Isl.space @-> Isl.dim_type @-> Isl.space @-> Isl.dim_type @-> returning Isl.bool) in
    let ret = isl_space_tuple_match dim1 dim1_type dim2 dim2_type in
    ret

let space_align_params dim1 dim2 = 
    let dim1 = space_copy dim1 in
    let dim2 = space_copy dim2 in
    let isl_space_align_params = foreign "isl_space_align_params" (Isl.space @-> Isl.space @-> returning Isl.space) in
    let ret = isl_space_align_params dim1 dim2 in
    Gc.finalise space_free ret;
    ret

let space_curry space = 
    let space = space_copy space in
    let isl_space_curry = foreign "isl_space_curry" (Isl.space @-> returning Isl.space) in
    let ret = isl_space_curry space in
    Gc.finalise space_free ret;
    ret

let space_domain dim = 
    let dim = space_copy dim in
    let isl_space_domain = foreign "isl_space_domain" (Isl.space @-> returning Isl.space) in
    let ret = isl_space_domain dim in
    Gc.finalise space_free ret;
    ret

let space_domain_factor_domain space = 
    let space = space_copy space in
    let isl_space_domain_factor_domain = foreign "isl_space_domain_factor_domain" (Isl.space @-> returning Isl.space) in
    let ret = isl_space_domain_factor_domain space in
    Gc.finalise space_free ret;
    ret

let space_domain_map space = 
    let space = space_copy space in
    let isl_space_domain_map = foreign "isl_space_domain_map" (Isl.space @-> returning Isl.space) in
    let ret = isl_space_domain_map space in
    Gc.finalise space_free ret;
    ret

let space_domain_product left right = 
    let left = space_copy left in
    let right = space_copy right in
    let isl_space_domain_product = foreign "isl_space_domain_product" (Isl.space @-> Isl.space @-> returning Isl.space) in
    let ret = isl_space_domain_product left right in
    Gc.finalise space_free ret;
    ret

let space_from_domain dim = 
    let dim = space_copy dim in
    let isl_space_from_domain = foreign "isl_space_from_domain" (Isl.space @-> returning Isl.space) in
    let ret = isl_space_from_domain dim in
    Gc.finalise space_free ret;
    ret

let space_from_range dim = 
    let dim = space_copy dim in
    let isl_space_from_range = foreign "isl_space_from_range" (Isl.space @-> returning Isl.space) in
    let ret = isl_space_from_range dim in
    Gc.finalise space_free ret;
    ret

let space_join left right = 
    let left = space_copy left in
    let right = space_copy right in
    let isl_space_join = foreign "isl_space_join" (Isl.space @-> Isl.space @-> returning Isl.space) in
    let ret = isl_space_join left right in
    Gc.finalise space_free ret;
    ret

let space_map_from_domain_and_range domain range = 
    let domain = space_copy domain in
    let range = space_copy range in
    let isl_space_map_from_domain_and_range = foreign "isl_space_map_from_domain_and_range" (Isl.space @-> Isl.space @-> returning Isl.space) in
    let ret = isl_space_map_from_domain_and_range domain range in
    Gc.finalise space_free ret;
    ret

let space_map_from_set dim = 
    let dim = space_copy dim in
    let isl_space_map_from_set = foreign "isl_space_map_from_set" (Isl.space @-> returning Isl.space) in
    let ret = isl_space_map_from_set dim in
    Gc.finalise space_free ret;
    ret

let space_params space = 
    let space = space_copy space in
    let isl_space_params = foreign "isl_space_params" (Isl.space @-> returning Isl.space) in
    let ret = isl_space_params space in
    Gc.finalise space_free ret;
    ret

let space_product left right = 
    let left = space_copy left in
    let right = space_copy right in
    let isl_space_product = foreign "isl_space_product" (Isl.space @-> Isl.space @-> returning Isl.space) in
    let ret = isl_space_product left right in
    Gc.finalise space_free ret;
    ret

let space_range dim = 
    let dim = space_copy dim in
    let isl_space_range = foreign "isl_space_range" (Isl.space @-> returning Isl.space) in
    let ret = isl_space_range dim in
    Gc.finalise space_free ret;
    ret

let space_range_factor_domain space = 
    let space = space_copy space in
    let isl_space_range_factor_domain = foreign "isl_space_range_factor_domain" (Isl.space @-> returning Isl.space) in
    let ret = isl_space_range_factor_domain space in
    Gc.finalise space_free ret;
    ret

let space_range_factor_range space = 
    let space = space_copy space in
    let isl_space_range_factor_range = foreign "isl_space_range_factor_range" (Isl.space @-> returning Isl.space) in
    let ret = isl_space_range_factor_range space in
    Gc.finalise space_free ret;
    ret

let space_range_map space = 
    let space = space_copy space in
    let isl_space_range_map = foreign "isl_space_range_map" (Isl.space @-> returning Isl.space) in
    let ret = isl_space_range_map space in
    Gc.finalise space_free ret;
    ret

let space_range_product left right = 
    let left = space_copy left in
    let right = space_copy right in
    let isl_space_range_product = foreign "isl_space_range_product" (Isl.space @-> Isl.space @-> returning Isl.space) in
    let ret = isl_space_range_product left right in
    Gc.finalise space_free ret;
    ret

let space_reset_tuple_id dim typ = 
    let dim = space_copy dim in
    let isl_space_reset_tuple_id = foreign "isl_space_reset_tuple_id" (Isl.space @-> Isl.dim_type @-> returning Isl.space) in
    let ret = isl_space_reset_tuple_id dim typ in
    Gc.finalise space_free ret;
    ret

let space_reset_user space = 
    let space = space_copy space in
    let isl_space_reset_user = foreign "isl_space_reset_user" (Isl.space @-> returning Isl.space) in
    let ret = isl_space_reset_user space in
    Gc.finalise space_free ret;
    ret

let space_reverse dim = 
    let dim = space_copy dim in
    let isl_space_reverse = foreign "isl_space_reverse" (Isl.space @-> returning Isl.space) in
    let ret = isl_space_reverse dim in
    Gc.finalise space_free ret;
    ret

let space_set_from_params space = 
    let space = space_copy space in
    let isl_space_set_from_params = foreign "isl_space_set_from_params" (Isl.space @-> returning Isl.space) in
    let ret = isl_space_set_from_params space in
    Gc.finalise space_free ret;
    ret

let space_set_tuple_id dim typ id = 
    let dim = space_copy dim in
    let id = id_copy id in
    let isl_space_set_tuple_id = foreign "isl_space_set_tuple_id" (Isl.space @-> Isl.dim_type @-> Isl.id @-> returning Isl.space) in
    let ret = isl_space_set_tuple_id dim typ id in
    Gc.finalise space_free ret;
    ret

let space_set_tuple_name dim typ s = 
    let dim = space_copy dim in
    let isl_space_set_tuple_name = foreign "isl_space_set_tuple_name" (Isl.space @-> Isl.dim_type @-> string @-> returning Isl.space) in
    let ret = isl_space_set_tuple_name dim typ s in
    Gc.finalise space_free ret;
    ret

let space_uncurry space = 
    let space = space_copy space in
    let isl_space_uncurry = foreign "isl_space_uncurry" (Isl.space @-> returning Isl.space) in
    let ret = isl_space_uncurry space in
    Gc.finalise space_free ret;
    ret

let space_unwrap dim = 
    let dim = space_copy dim in
    let isl_space_unwrap = foreign "isl_space_unwrap" (Isl.space @-> returning Isl.space) in
    let ret = isl_space_unwrap dim in
    Gc.finalise space_free ret;
    ret

let space_wrap dim = 
    let dim = space_copy dim in
    let isl_space_wrap = foreign "isl_space_wrap" (Isl.space @-> returning Isl.space) in
    let ret = isl_space_wrap dim in
    Gc.finalise space_free ret;
    ret

let space_zip dim = 
    let dim = space_copy dim in
    let isl_space_zip = foreign "isl_space_zip" (Isl.space @-> returning Isl.space) in
    let ret = isl_space_zip dim in
    Gc.finalise space_free ret;
    ret

let space_get_tuple_id dim typ = 
    let isl_space_get_tuple_id = foreign "isl_space_get_tuple_id" (Isl.space @-> Isl.dim_type @-> returning Isl.id) in
    let ret = isl_space_get_tuple_id dim typ in
    Gc.finalise id_free ret;
    ret

