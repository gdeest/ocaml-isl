open Types
open Ctypes
open Foreign
open IslMemory
open IslErrors
open Unsigned

let isl_space_find_dim_by_id = foreign "isl_space_find_dim_by_id" (Types.space @-> dim_type @-> Types.id @-> returning int)
let find_dim_by_id ctx dim typ id = 
    let ret = isl_space_find_dim_by_id dim typ id in
    check_for_errors ctx;
    ret

let isl_space_find_dim_by_name = foreign "isl_space_find_dim_by_name" (Types.space @-> dim_type @-> string @-> returning int)
let find_dim_by_name ctx space typ name = 
    let ret = isl_space_find_dim_by_name space typ name in
    check_for_errors ctx;
    ret

let isl_space_dim = foreign "isl_space_dim" (Types.space @-> dim_type @-> returning unsigned_int)
let dim ctx dim typ = 
    let ret = isl_space_dim dim typ in
    check_for_errors ctx;
    ret

let isl_space_dump = foreign "isl_space_dump" (Types.space @-> returning void)
let dump ctx dim = 
    let ret = isl_space_dump dim in
    check_for_errors ctx;
    ret

let isl_space_get_tuple_name = foreign "isl_space_get_tuple_name" (Types.space @-> dim_type @-> returning string)
let get_tuple_name ctx dim typ = 
    let ret = isl_space_get_tuple_name dim typ in
    check_for_errors ctx;
    ret

let isl_space_can_curry = foreign "isl_space_can_curry" (Types.space @-> returning bool)
let can_curry ctx space = 
    let ret = isl_space_can_curry space in
    check_for_errors ctx;
    ret

let isl_space_can_uncurry = foreign "isl_space_can_uncurry" (Types.space @-> returning bool)
let can_uncurry ctx space = 
    let ret = isl_space_can_uncurry space in
    check_for_errors ctx;
    ret

let isl_space_can_zip = foreign "isl_space_can_zip" (Types.space @-> returning bool)
let can_zip ctx dim = 
    let ret = isl_space_can_zip dim in
    check_for_errors ctx;
    ret

let isl_space_compatible = foreign "isl_space_compatible" (Types.space @-> Types.space @-> returning bool)
let compatible ctx dim1 dim2 = 
    let ret = isl_space_compatible dim1 dim2 in
    check_for_errors ctx;
    ret

let isl_space_domain_is_wrapping = foreign "isl_space_domain_is_wrapping" (Types.space @-> returning bool)
let domain_is_wrapping ctx space = 
    let ret = isl_space_domain_is_wrapping space in
    check_for_errors ctx;
    ret

let isl_space_has_dim_id = foreign "isl_space_has_dim_id" (Types.space @-> dim_type @-> unsigned_int @-> returning bool)
let has_dim_id ctx dim typ pos = 
    let ret = isl_space_has_dim_id dim typ pos in
    check_for_errors ctx;
    ret

let isl_space_has_dim_name = foreign "isl_space_has_dim_name" (Types.space @-> dim_type @-> unsigned_int @-> returning bool)
let has_dim_name ctx space typ pos = 
    let ret = isl_space_has_dim_name space typ pos in
    check_for_errors ctx;
    ret

let isl_space_has_tuple_id = foreign "isl_space_has_tuple_id" (Types.space @-> dim_type @-> returning bool)
let has_tuple_id ctx dim typ = 
    let ret = isl_space_has_tuple_id dim typ in
    check_for_errors ctx;
    ret

let isl_space_has_tuple_name = foreign "isl_space_has_tuple_name" (Types.space @-> dim_type @-> returning bool)
let has_tuple_name ctx space typ = 
    let ret = isl_space_has_tuple_name space typ in
    check_for_errors ctx;
    ret

let isl_space_is_domain = foreign "isl_space_is_domain" (Types.space @-> Types.space @-> returning bool)
let is_domain ctx space1 space2 = 
    let ret = isl_space_is_domain space1 space2 in
    check_for_errors ctx;
    ret

let isl_space_is_equal = foreign "isl_space_is_equal" (Types.space @-> Types.space @-> returning bool)
let is_equal ctx space1 space2 = 
    let ret = isl_space_is_equal space1 space2 in
    check_for_errors ctx;
    ret

let isl_space_is_map = foreign "isl_space_is_map" (Types.space @-> returning bool)
let is_map ctx space = 
    let ret = isl_space_is_map space in
    check_for_errors ctx;
    ret

let isl_space_is_params = foreign "isl_space_is_params" (Types.space @-> returning bool)
let is_params ctx space = 
    let ret = isl_space_is_params space in
    check_for_errors ctx;
    ret

let isl_space_is_range = foreign "isl_space_is_range" (Types.space @-> Types.space @-> returning bool)
let is_range ctx space1 space2 = 
    let ret = isl_space_is_range space1 space2 in
    check_for_errors ctx;
    ret

let isl_space_is_set = foreign "isl_space_is_set" (Types.space @-> returning bool)
let is_set ctx space = 
    let ret = isl_space_is_set space in
    check_for_errors ctx;
    ret

let isl_space_is_wrapping = foreign "isl_space_is_wrapping" (Types.space @-> returning bool)
let is_wrapping ctx dim = 
    let ret = isl_space_is_wrapping dim in
    check_for_errors ctx;
    ret

let isl_space_match = foreign "isl_space_match" (Types.space @-> dim_type @-> Types.space @-> dim_type @-> returning bool)
let match_ ctx dim1 dim1_type dim2 dim2_type = 
    let ret = isl_space_match dim1 dim1_type dim2 dim2_type in
    check_for_errors ctx;
    ret

let isl_space_range_is_wrapping = foreign "isl_space_range_is_wrapping" (Types.space @-> returning bool)
let range_is_wrapping ctx space = 
    let ret = isl_space_range_is_wrapping space in
    check_for_errors ctx;
    ret

let isl_space_tuple_match = foreign "isl_space_tuple_match" (Types.space @-> dim_type @-> Types.space @-> dim_type @-> returning bool)
let tuple_match ctx dim1 dim1_type dim2 dim2_type = 
    let ret = isl_space_tuple_match dim1 dim1_type dim2 dim2_type in
    check_for_errors ctx;
    ret

let isl_space_add_dims = foreign "isl_space_add_dims" (Types.space @-> dim_type @-> unsigned_int @-> returning Types.space)
let add_dims ctx dim typ n = 
    let dim = space_copy dim in
    let ret = isl_space_add_dims dim typ n in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_space_align_params = foreign "isl_space_align_params" (Types.space @-> Types.space @-> returning Types.space)
let align_params ctx dim1 dim2 = 
    let dim1 = space_copy dim1 in
    let dim2 = space_copy dim2 in
    let ret = isl_space_align_params dim1 dim2 in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_space_alloc = foreign "isl_space_alloc" (Types.ctx @-> unsigned_int @-> unsigned_int @-> unsigned_int @-> returning Types.space)
let alloc ctx nparam n_in n_out = 
    let ret = isl_space_alloc ctx nparam n_in n_out in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_space_curry = foreign "isl_space_curry" (Types.space @-> returning Types.space)
let curry ctx space = 
    let space = space_copy space in
    let ret = isl_space_curry space in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_space_domain = foreign "isl_space_domain" (Types.space @-> returning Types.space)
let domain ctx dim = 
    let dim = space_copy dim in
    let ret = isl_space_domain dim in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_space_domain_factor_domain = foreign "isl_space_domain_factor_domain" (Types.space @-> returning Types.space)
let domain_factor_domain ctx space = 
    let space = space_copy space in
    let ret = isl_space_domain_factor_domain space in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_space_domain_map = foreign "isl_space_domain_map" (Types.space @-> returning Types.space)
let domain_map ctx space = 
    let space = space_copy space in
    let ret = isl_space_domain_map space in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_space_domain_product = foreign "isl_space_domain_product" (Types.space @-> Types.space @-> returning Types.space)
let domain_product ctx left right = 
    let left = space_copy left in
    let right = space_copy right in
    let ret = isl_space_domain_product left right in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_space_drop_dims = foreign "isl_space_drop_dims" (Types.space @-> dim_type @-> unsigned_int @-> unsigned_int @-> returning Types.space)
let drop_dims ctx dim typ first num = 
    let dim = space_copy dim in
    let ret = isl_space_drop_dims dim typ first num in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_space_drop_inputs = foreign "isl_space_drop_inputs" (Types.space @-> unsigned_int @-> unsigned_int @-> returning Types.space)
let drop_inputs ctx dim first n = 
    let dim = space_copy dim in
    let ret = isl_space_drop_inputs dim first n in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_space_drop_outputs = foreign "isl_space_drop_outputs" (Types.space @-> unsigned_int @-> unsigned_int @-> returning Types.space)
let drop_outputs ctx dim first n = 
    let dim = space_copy dim in
    let ret = isl_space_drop_outputs dim first n in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_space_extend = foreign "isl_space_extend" (Types.space @-> unsigned_int @-> unsigned_int @-> unsigned_int @-> returning Types.space)
let extend ctx dim nparam n_in n_out = 
    let dim = space_copy dim in
    let ret = isl_space_extend dim nparam n_in n_out in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_space_from_domain = foreign "isl_space_from_domain" (Types.space @-> returning Types.space)
let from_domain ctx dim = 
    let dim = space_copy dim in
    let ret = isl_space_from_domain dim in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_space_from_range = foreign "isl_space_from_range" (Types.space @-> returning Types.space)
let from_range ctx dim = 
    let dim = space_copy dim in
    let ret = isl_space_from_range dim in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_space_insert_dims = foreign "isl_space_insert_dims" (Types.space @-> dim_type @-> unsigned_int @-> unsigned_int @-> returning Types.space)
let insert_dims ctx dim typ pos n = 
    let dim = space_copy dim in
    let ret = isl_space_insert_dims dim typ pos n in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_space_join = foreign "isl_space_join" (Types.space @-> Types.space @-> returning Types.space)
let join ctx left right = 
    let left = space_copy left in
    let right = space_copy right in
    let ret = isl_space_join left right in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_space_map_from_domain_and_range = foreign "isl_space_map_from_domain_and_range" (Types.space @-> Types.space @-> returning Types.space)
let map_from_domain_and_range ctx domain range = 
    let domain = space_copy domain in
    let range = space_copy range in
    let ret = isl_space_map_from_domain_and_range domain range in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_space_map_from_set = foreign "isl_space_map_from_set" (Types.space @-> returning Types.space)
let map_from_set ctx dim = 
    let dim = space_copy dim in
    let ret = isl_space_map_from_set dim in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_space_move_dims = foreign "isl_space_move_dims" (Types.space @-> dim_type @-> unsigned_int @-> dim_type @-> unsigned_int @-> unsigned_int @-> returning Types.space)
let move_dims ctx dim dst_type dst_pos src_type src_pos n = 
    let dim = space_copy dim in
    let ret = isl_space_move_dims dim dst_type dst_pos src_type src_pos n in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_space_params = foreign "isl_space_params" (Types.space @-> returning Types.space)
let params ctx space = 
    let space = space_copy space in
    let ret = isl_space_params space in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_space_params_alloc = foreign "isl_space_params_alloc" (Types.ctx @-> unsigned_int @-> returning Types.space)
let params_alloc ctx nparam = 
    let ret = isl_space_params_alloc ctx nparam in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_space_product = foreign "isl_space_product" (Types.space @-> Types.space @-> returning Types.space)
let product ctx left right = 
    let left = space_copy left in
    let right = space_copy right in
    let ret = isl_space_product left right in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_space_range = foreign "isl_space_range" (Types.space @-> returning Types.space)
let range ctx dim = 
    let dim = space_copy dim in
    let ret = isl_space_range dim in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_space_range_factor_domain = foreign "isl_space_range_factor_domain" (Types.space @-> returning Types.space)
let range_factor_domain ctx space = 
    let space = space_copy space in
    let ret = isl_space_range_factor_domain space in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_space_range_factor_range = foreign "isl_space_range_factor_range" (Types.space @-> returning Types.space)
let range_factor_range ctx space = 
    let space = space_copy space in
    let ret = isl_space_range_factor_range space in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_space_range_map = foreign "isl_space_range_map" (Types.space @-> returning Types.space)
let range_map ctx space = 
    let space = space_copy space in
    let ret = isl_space_range_map space in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_space_range_product = foreign "isl_space_range_product" (Types.space @-> Types.space @-> returning Types.space)
let range_product ctx left right = 
    let left = space_copy left in
    let right = space_copy right in
    let ret = isl_space_range_product left right in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_space_reset_tuple_id = foreign "isl_space_reset_tuple_id" (Types.space @-> dim_type @-> returning Types.space)
let reset_tuple_id ctx dim typ = 
    let dim = space_copy dim in
    let ret = isl_space_reset_tuple_id dim typ in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_space_reset_user = foreign "isl_space_reset_user" (Types.space @-> returning Types.space)
let reset_user ctx space = 
    let space = space_copy space in
    let ret = isl_space_reset_user space in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_space_reverse = foreign "isl_space_reverse" (Types.space @-> returning Types.space)
let reverse ctx dim = 
    let dim = space_copy dim in
    let ret = isl_space_reverse dim in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_space_set_alloc = foreign "isl_space_set_alloc" (Types.ctx @-> unsigned_int @-> unsigned_int @-> returning Types.space)
let set_alloc ctx nparam dim = 
    let ret = isl_space_set_alloc ctx nparam dim in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_space_set_dim_id = foreign "isl_space_set_dim_id" (Types.space @-> dim_type @-> unsigned_int @-> Types.id @-> returning Types.space)
let set_dim_id ctx dim typ pos id = 
    let dim = space_copy dim in
    let id = id_copy id in
    let ret = isl_space_set_dim_id dim typ pos id in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_space_set_dim_name = foreign "isl_space_set_dim_name" (Types.space @-> dim_type @-> unsigned_int @-> string @-> returning Types.space)
let set_dim_name ctx dim typ pos name = 
    let dim = space_copy dim in
    let ret = isl_space_set_dim_name dim typ pos name in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_space_set_from_params = foreign "isl_space_set_from_params" (Types.space @-> returning Types.space)
let set_from_params ctx space = 
    let space = space_copy space in
    let ret = isl_space_set_from_params space in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_space_set_tuple_id = foreign "isl_space_set_tuple_id" (Types.space @-> dim_type @-> Types.id @-> returning Types.space)
let set_tuple_id ctx dim typ id = 
    let dim = space_copy dim in
    let id = id_copy id in
    let ret = isl_space_set_tuple_id dim typ id in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_space_set_tuple_name = foreign "isl_space_set_tuple_name" (Types.space @-> dim_type @-> string @-> returning Types.space)
let set_tuple_name ctx dim typ s = 
    let dim = space_copy dim in
    let ret = isl_space_set_tuple_name dim typ s in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_space_uncurry = foreign "isl_space_uncurry" (Types.space @-> returning Types.space)
let uncurry ctx space = 
    let space = space_copy space in
    let ret = isl_space_uncurry space in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_space_unwrap = foreign "isl_space_unwrap" (Types.space @-> returning Types.space)
let unwrap ctx dim = 
    let dim = space_copy dim in
    let ret = isl_space_unwrap dim in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_space_wrap = foreign "isl_space_wrap" (Types.space @-> returning Types.space)
let wrap ctx dim = 
    let dim = space_copy dim in
    let ret = isl_space_wrap dim in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_space_zip = foreign "isl_space_zip" (Types.space @-> returning Types.space)
let zip ctx dim = 
    let dim = space_copy dim in
    let ret = isl_space_zip dim in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_space_get_dim_id = foreign "isl_space_get_dim_id" (Types.space @-> dim_type @-> unsigned_int @-> returning Types.id)
let get_dim_id ctx dim typ pos = 
    let ret = isl_space_get_dim_id dim typ pos in
    check_for_errors ctx;
    Gc.finalise id_free ret;
    ret

let isl_space_get_tuple_id = foreign "isl_space_get_tuple_id" (Types.space @-> dim_type @-> returning Types.id)
let get_tuple_id ctx dim typ = 
    let ret = isl_space_get_tuple_id dim typ in
    check_for_errors ctx;
    Gc.finalise id_free ret;
    ret

let isl_space_get_dim_name = foreign "isl_space_get_dim_name" (Types.space @-> dim_type @-> unsigned_int @-> returning string)
let get_dim_name ctx dim typ pos = 
    let ret = isl_space_get_dim_name dim typ pos in
    check_for_errors ctx;
    ret

