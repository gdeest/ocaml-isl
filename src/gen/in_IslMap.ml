open Types
open Ctypes
open Foreign
open IslMemory
open Errors

let find_dim_by_id ctx map typ id = 
    let isl_map_find_dim_by_id = foreign "isl_map_find_dim_by_id" (Types.map @-> dim_type @-> Types.id @-> returning int) in
    let ret = isl_map_find_dim_by_id map typ id in
    check_for_errors ctx;
    ret

let find_dim_by_name ctx map typ name = 
    let isl_map_find_dim_by_name = foreign "isl_map_find_dim_by_name" (Types.map @-> dim_type @-> string @-> returning int) in
    let ret = isl_map_find_dim_by_name map typ name in
    check_for_errors ctx;
    ret

let dup ctx map = 
    let isl_map_dup = foreign "isl_map_dup" (Types.map @-> returning Types.map) in
    let ret = isl_map_dup map in
    check_for_errors ctx;
    ret

let empty_like ctx model = 
    let isl_map_empty_like = foreign "isl_map_empty_like" (Types.map @-> returning Types.map) in
    let ret = isl_map_empty_like model in
    check_for_errors ctx;
    ret

let empty_like_basic_map ctx model = 
    let isl_map_empty_like_basic_map = foreign "isl_map_empty_like_basic_map" (Types.basic_map @-> returning Types.map) in
    let ret = isl_map_empty_like_basic_map model in
    check_for_errors ctx;
    ret

let finalize ctx map = 
    let isl_map_finalize = foreign "isl_map_finalize" (Types.map @-> returning Types.map) in
    let ret = isl_map_finalize map in
    check_for_errors ctx;
    ret

let identity_like ctx model = 
    let isl_map_identity_like = foreign "isl_map_identity_like" (Types.map @-> returning Types.map) in
    let ret = isl_map_identity_like model in
    check_for_errors ctx;
    ret

let identity_like_basic_map ctx model = 
    let isl_map_identity_like_basic_map = foreign "isl_map_identity_like_basic_map" (Types.basic_map @-> returning Types.map) in
    let ret = isl_map_identity_like_basic_map model in
    check_for_errors ctx;
    ret

let neg ctx map = 
    let isl_map_neg = foreign "isl_map_neg" (Types.map @-> returning Types.map) in
    let ret = isl_map_neg map in
    check_for_errors ctx;
    ret

let sum ctx map1 map2 = 
    let isl_map_sum = foreign "isl_map_sum" (Types.map @-> Types.map @-> returning Types.map) in
    let ret = isl_map_sum map1 map2 in
    check_for_errors ctx;
    ret

let union_disjoint ctx map1 map2 = 
    let isl_map_union_disjoint = foreign "isl_map_union_disjoint" (Types.map @-> Types.map @-> returning Types.map) in
    let ret = isl_map_union_disjoint map1 map2 in
    check_for_errors ctx;
    ret

let copy_basic_map ctx map = 
    let isl_map_copy_basic_map = foreign "isl_map_copy_basic_map" (Types.map @-> returning Types.basic_map) in
    let ret = isl_map_copy_basic_map map in
    check_for_errors ctx;
    ret

let dump ctx map = 
    let isl_map_dump = foreign "isl_map_dump" (Types.map @-> returning void) in
    let ret = isl_map_dump map in
    check_for_errors ctx;
    ret

let get_tuple_name ctx map typ = 
    let isl_map_get_tuple_name = foreign "isl_map_get_tuple_name" (Types.map @-> dim_type @-> returning string) in
    let ret = isl_map_get_tuple_name map typ in
    check_for_errors ctx;
    ret

let can_curry ctx map = 
    let isl_map_can_curry = foreign "isl_map_can_curry" (Types.map @-> returning bool) in
    let ret = isl_map_can_curry map in
    check_for_errors ctx;
    ret

let can_uncurry ctx map = 
    let isl_map_can_uncurry = foreign "isl_map_can_uncurry" (Types.map @-> returning bool) in
    let ret = isl_map_can_uncurry map in
    check_for_errors ctx;
    ret

let can_zip ctx map = 
    let isl_map_can_zip = foreign "isl_map_can_zip" (Types.map @-> returning bool) in
    let ret = isl_map_can_zip map in
    check_for_errors ctx;
    ret

let domain_is_wrapping ctx map = 
    let isl_map_domain_is_wrapping = foreign "isl_map_domain_is_wrapping" (Types.map @-> returning bool) in
    let ret = isl_map_domain_is_wrapping map in
    check_for_errors ctx;
    ret

let fast_is_empty ctx map = 
    let isl_map_fast_is_empty = foreign "isl_map_fast_is_empty" (Types.map @-> returning bool) in
    let ret = isl_map_fast_is_empty map in
    check_for_errors ctx;
    ret

let fast_is_equal ctx map1 map2 = 
    let isl_map_fast_is_equal = foreign "isl_map_fast_is_equal" (Types.map @-> Types.map @-> returning bool) in
    let ret = isl_map_fast_is_equal map1 map2 in
    check_for_errors ctx;
    ret

let has_equal_space ctx map1 map2 = 
    let isl_map_has_equal_space = foreign "isl_map_has_equal_space" (Types.map @-> Types.map @-> returning bool) in
    let ret = isl_map_has_equal_space map1 map2 in
    check_for_errors ctx;
    ret

let has_tuple_id ctx map typ = 
    let isl_map_has_tuple_id = foreign "isl_map_has_tuple_id" (Types.map @-> dim_type @-> returning bool) in
    let ret = isl_map_has_tuple_id map typ in
    check_for_errors ctx;
    ret

let has_tuple_name ctx map typ = 
    let isl_map_has_tuple_name = foreign "isl_map_has_tuple_name" (Types.map @-> dim_type @-> returning bool) in
    let ret = isl_map_has_tuple_name map typ in
    check_for_errors ctx;
    ret

let is_translation ctx map = 
    let isl_map_is_translation = foreign "isl_map_is_translation" (Types.map @-> returning bool) in
    let ret = isl_map_is_translation map in
    check_for_errors ctx;
    ret

let plain_is_empty ctx map = 
    let isl_map_plain_is_empty = foreign "isl_map_plain_is_empty" (Types.map @-> returning bool) in
    let ret = isl_map_plain_is_empty map in
    check_for_errors ctx;
    ret

let plain_is_equal ctx map1 map2 = 
    let isl_map_plain_is_equal = foreign "isl_map_plain_is_equal" (Types.map @-> Types.map @-> returning bool) in
    let ret = isl_map_plain_is_equal map1 map2 in
    check_for_errors ctx;
    ret

let plain_is_injective ctx map = 
    let isl_map_plain_is_injective = foreign "isl_map_plain_is_injective" (Types.map @-> returning bool) in
    let ret = isl_map_plain_is_injective map in
    check_for_errors ctx;
    ret

let plain_is_single_valued ctx map = 
    let isl_map_plain_is_single_valued = foreign "isl_map_plain_is_single_valued" (Types.map @-> returning bool) in
    let ret = isl_map_plain_is_single_valued map in
    check_for_errors ctx;
    ret

let plain_is_universe ctx map = 
    let isl_map_plain_is_universe = foreign "isl_map_plain_is_universe" (Types.map @-> returning bool) in
    let ret = isl_map_plain_is_universe map in
    check_for_errors ctx;
    ret

let range_is_wrapping ctx map = 
    let isl_map_range_is_wrapping = foreign "isl_map_range_is_wrapping" (Types.map @-> returning bool) in
    let ret = isl_map_range_is_wrapping map in
    check_for_errors ctx;
    ret

let domain ctx bmap = 
    let bmap = map_copy bmap in
    let isl_map_domain = foreign "isl_map_domain" (Types.map @-> returning Types.set) in
    let ret = isl_map_domain bmap in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let params ctx map = 
    let map = map_copy map in
    let isl_map_params = foreign "isl_map_params" (Types.map @-> returning Types.set) in
    let ret = isl_map_params map in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let range ctx map = 
    let map = map_copy map in
    let isl_map_range = foreign "isl_map_range" (Types.map @-> returning Types.set) in
    let ret = isl_map_range map in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let wrap ctx map = 
    let map = map_copy map in
    let isl_map_wrap = foreign "isl_map_wrap" (Types.map @-> returning Types.set) in
    let ret = isl_map_wrap map in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let get_space ctx map = 
    let isl_map_get_space = foreign "isl_map_get_space" (Types.map @-> returning Types.space) in
    let ret = isl_map_get_space map in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let add_basic_map ctx map bmap = 
    let map = map_copy map in
    let bmap = basic_map_copy bmap in
    let isl_map_add_basic_map = foreign "isl_map_add_basic_map" (Types.map @-> Types.basic_map @-> returning Types.map) in
    let ret = isl_map_add_basic_map map bmap in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let align_divs ctx map = 
    let map = map_copy map in
    let isl_map_align_divs = foreign "isl_map_align_divs" (Types.map @-> returning Types.map) in
    let ret = isl_map_align_divs map in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let align_params ctx map model = 
    let map = map_copy map in
    let model = space_copy model in
    let isl_map_align_params = foreign "isl_map_align_params" (Types.map @-> Types.space @-> returning Types.map) in
    let ret = isl_map_align_params map model in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let compute_divs ctx map = 
    let map = map_copy map in
    let isl_map_compute_divs = foreign "isl_map_compute_divs" (Types.map @-> returning Types.map) in
    let ret = isl_map_compute_divs map in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let curry ctx map = 
    let map = map_copy map in
    let isl_map_curry = foreign "isl_map_curry" (Types.map @-> returning Types.map) in
    let ret = isl_map_curry map in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let deltas_map ctx map = 
    let map = map_copy map in
    let isl_map_deltas_map = foreign "isl_map_deltas_map" (Types.map @-> returning Types.map) in
    let ret = isl_map_deltas_map map in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let domain_map ctx map = 
    let map = map_copy map in
    let isl_map_domain_map = foreign "isl_map_domain_map" (Types.map @-> returning Types.map) in
    let ret = isl_map_domain_map map in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let domain_product ctx map1 map2 = 
    let map1 = map_copy map1 in
    let map2 = map_copy map2 in
    let isl_map_domain_product = foreign "isl_map_domain_product" (Types.map @-> Types.map @-> returning Types.map) in
    let ret = isl_map_domain_product map1 map2 in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let drop_basic_map ctx map bmap = 
    let map = map_copy map in
    let isl_map_drop_basic_map = foreign "isl_map_drop_basic_map" (Types.map @-> Types.basic_map @-> returning Types.map) in
    let ret = isl_map_drop_basic_map map bmap in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let empty ctx dim = 
    let dim = space_copy dim in
    let isl_map_empty = foreign "isl_map_empty" (Types.space @-> returning Types.map) in
    let ret = isl_map_empty dim in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let equate ctx map type1 pos1 type2 pos2 = 
    let map = map_copy map in
    let isl_map_equate = foreign "isl_map_equate" (Types.map @-> dim_type @-> int @-> dim_type @-> int @-> returning Types.map) in
    let ret = isl_map_equate map type1 pos1 type2 pos2 in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let fixed_power_val ctx map exp = 
    let map = map_copy map in
    let exp = val_copy exp in
    let isl_map_fixed_power_val = foreign "isl_map_fixed_power_val" (Types.map @-> Types.value @-> returning Types.map) in
    let ret = isl_map_fixed_power_val map exp in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let flat_domain_product ctx map1 map2 = 
    let map1 = map_copy map1 in
    let map2 = map_copy map2 in
    let isl_map_flat_domain_product = foreign "isl_map_flat_domain_product" (Types.map @-> Types.map @-> returning Types.map) in
    let ret = isl_map_flat_domain_product map1 map2 in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let flat_product ctx map1 map2 = 
    let map1 = map_copy map1 in
    let map2 = map_copy map2 in
    let isl_map_flat_product = foreign "isl_map_flat_product" (Types.map @-> Types.map @-> returning Types.map) in
    let ret = isl_map_flat_product map1 map2 in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let flat_range_product ctx map1 map2 = 
    let map1 = map_copy map1 in
    let map2 = map_copy map2 in
    let isl_map_flat_range_product = foreign "isl_map_flat_range_product" (Types.map @-> Types.map @-> returning Types.map) in
    let ret = isl_map_flat_range_product map1 map2 in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let floordiv_val ctx map d = 
    let map = map_copy map in
    let d = val_copy d in
    let isl_map_floordiv_val = foreign "isl_map_floordiv_val" (Types.map @-> Types.value @-> returning Types.map) in
    let ret = isl_map_floordiv_val map d in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let from_aff ctx aff = 
    let aff = aff_copy aff in
    let isl_map_from_aff = foreign "isl_map_from_aff" (Types.aff @-> returning Types.map) in
    let ret = isl_map_from_aff aff in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let from_domain ctx set = 
    let set = set_copy set in
    let isl_map_from_domain = foreign "isl_map_from_domain" (Types.set @-> returning Types.map) in
    let ret = isl_map_from_domain set in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let from_domain_and_range ctx domain range = 
    let domain = set_copy domain in
    let range = set_copy range in
    let isl_map_from_domain_and_range = foreign "isl_map_from_domain_and_range" (Types.set @-> Types.set @-> returning Types.map) in
    let ret = isl_map_from_domain_and_range domain range in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let from_range ctx set = 
    let set = set_copy set in
    let isl_map_from_range = foreign "isl_map_from_range" (Types.set @-> returning Types.map) in
    let ret = isl_map_from_range set in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let from_set ctx set dim = 
    let set = set_copy set in
    let dim = space_copy dim in
    let isl_map_from_set = foreign "isl_map_from_set" (Types.set @-> Types.space @-> returning Types.map) in
    let ret = isl_map_from_set set dim in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let from_union_map ctx umap = 
    let umap = union_map_copy umap in
    let isl_map_from_union_map = foreign "isl_map_from_union_map" (Types.union_map @-> returning Types.map) in
    let ret = isl_map_from_union_map umap in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let gist_basic_map ctx map context = 
    let map = map_copy map in
    let context = basic_map_copy context in
    let isl_map_gist_basic_map = foreign "isl_map_gist_basic_map" (Types.map @-> Types.basic_map @-> returning Types.map) in
    let ret = isl_map_gist_basic_map map context in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let gist_params ctx map context = 
    let map = map_copy map in
    let context = set_copy context in
    let isl_map_gist_params = foreign "isl_map_gist_params" (Types.map @-> Types.set @-> returning Types.map) in
    let ret = isl_map_gist_params map context in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let gist_range ctx map context = 
    let map = map_copy map in
    let context = set_copy context in
    let isl_map_gist_range = foreign "isl_map_gist_range" (Types.map @-> Types.set @-> returning Types.map) in
    let ret = isl_map_gist_range map context in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let identity ctx dim = 
    let dim = space_copy dim in
    let isl_map_identity = foreign "isl_map_identity" (Types.space @-> returning Types.map) in
    let ret = isl_map_identity dim in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let lex_ge ctx set_dim = 
    let set_dim = space_copy set_dim in
    let isl_map_lex_ge = foreign "isl_map_lex_ge" (Types.space @-> returning Types.map) in
    let ret = isl_map_lex_ge set_dim in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let lex_ge_map ctx map1 map2 = 
    let map1 = map_copy map1 in
    let map2 = map_copy map2 in
    let isl_map_lex_ge_map = foreign "isl_map_lex_ge_map" (Types.map @-> Types.map @-> returning Types.map) in
    let ret = isl_map_lex_ge_map map1 map2 in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let lex_gt ctx set_dim = 
    let set_dim = space_copy set_dim in
    let isl_map_lex_gt = foreign "isl_map_lex_gt" (Types.space @-> returning Types.map) in
    let ret = isl_map_lex_gt set_dim in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let lex_gt_map ctx map1 map2 = 
    let map1 = map_copy map1 in
    let map2 = map_copy map2 in
    let isl_map_lex_gt_map = foreign "isl_map_lex_gt_map" (Types.map @-> Types.map @-> returning Types.map) in
    let ret = isl_map_lex_gt_map map1 map2 in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let lex_le ctx set_dim = 
    let set_dim = space_copy set_dim in
    let isl_map_lex_le = foreign "isl_map_lex_le" (Types.space @-> returning Types.map) in
    let ret = isl_map_lex_le set_dim in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let lex_le_map ctx map1 map2 = 
    let map1 = map_copy map1 in
    let map2 = map_copy map2 in
    let isl_map_lex_le_map = foreign "isl_map_lex_le_map" (Types.map @-> Types.map @-> returning Types.map) in
    let ret = isl_map_lex_le_map map1 map2 in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let lex_lt ctx set_dim = 
    let set_dim = space_copy set_dim in
    let isl_map_lex_lt = foreign "isl_map_lex_lt" (Types.space @-> returning Types.map) in
    let ret = isl_map_lex_lt set_dim in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let lex_lt_map ctx map1 map2 = 
    let map1 = map_copy map1 in
    let map2 = map_copy map2 in
    let isl_map_lex_lt_map = foreign "isl_map_lex_lt_map" (Types.map @-> Types.map @-> returning Types.map) in
    let ret = isl_map_lex_lt_map map1 map2 in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let make_disjoint ctx map = 
    let map = map_copy map in
    let isl_map_make_disjoint = foreign "isl_map_make_disjoint" (Types.map @-> returning Types.map) in
    let ret = isl_map_make_disjoint map in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let nat_universe ctx dim = 
    let dim = space_copy dim in
    let isl_map_nat_universe = foreign "isl_map_nat_universe" (Types.space @-> returning Types.map) in
    let ret = isl_map_nat_universe dim in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let oppose ctx map type1 pos1 type2 pos2 = 
    let map = map_copy map in
    let isl_map_oppose = foreign "isl_map_oppose" (Types.map @-> dim_type @-> int @-> dim_type @-> int @-> returning Types.map) in
    let ret = isl_map_oppose map type1 pos1 type2 pos2 in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let order_ge ctx map type1 pos1 type2 pos2 = 
    let map = map_copy map in
    let isl_map_order_ge = foreign "isl_map_order_ge" (Types.map @-> dim_type @-> int @-> dim_type @-> int @-> returning Types.map) in
    let ret = isl_map_order_ge map type1 pos1 type2 pos2 in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let order_gt ctx map type1 pos1 type2 pos2 = 
    let map = map_copy map in
    let isl_map_order_gt = foreign "isl_map_order_gt" (Types.map @-> dim_type @-> int @-> dim_type @-> int @-> returning Types.map) in
    let ret = isl_map_order_gt map type1 pos1 type2 pos2 in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let order_le ctx map type1 pos1 type2 pos2 = 
    let map = map_copy map in
    let isl_map_order_le = foreign "isl_map_order_le" (Types.map @-> dim_type @-> int @-> dim_type @-> int @-> returning Types.map) in
    let ret = isl_map_order_le map type1 pos1 type2 pos2 in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let order_lt ctx map type1 pos1 type2 pos2 = 
    let map = map_copy map in
    let isl_map_order_lt = foreign "isl_map_order_lt" (Types.map @-> dim_type @-> int @-> dim_type @-> int @-> returning Types.map) in
    let ret = isl_map_order_lt map type1 pos1 type2 pos2 in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let product ctx map1 map2 = 
    let map1 = map_copy map1 in
    let map2 = map_copy map2 in
    let isl_map_product = foreign "isl_map_product" (Types.map @-> Types.map @-> returning Types.map) in
    let ret = isl_map_product map1 map2 in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let range_factor_domain ctx map = 
    let map = map_copy map in
    let isl_map_range_factor_domain = foreign "isl_map_range_factor_domain" (Types.map @-> returning Types.map) in
    let ret = isl_map_range_factor_domain map in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let range_factor_range ctx map = 
    let map = map_copy map in
    let isl_map_range_factor_range = foreign "isl_map_range_factor_range" (Types.map @-> returning Types.map) in
    let ret = isl_map_range_factor_range map in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let range_map ctx map = 
    let map = map_copy map in
    let isl_map_range_map = foreign "isl_map_range_map" (Types.map @-> returning Types.map) in
    let ret = isl_map_range_map map in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let range_product ctx map1 map2 = 
    let map1 = map_copy map1 in
    let map2 = map_copy map2 in
    let isl_map_range_product = foreign "isl_map_range_product" (Types.map @-> Types.map @-> returning Types.map) in
    let ret = isl_map_range_product map1 map2 in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let remove_divs ctx map = 
    let map = map_copy map in
    let isl_map_remove_divs = foreign "isl_map_remove_divs" (Types.map @-> returning Types.map) in
    let ret = isl_map_remove_divs map in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let remove_redundancies ctx map = 
    let map = map_copy map in
    let isl_map_remove_redundancies = foreign "isl_map_remove_redundancies" (Types.map @-> returning Types.map) in
    let ret = isl_map_remove_redundancies map in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let remove_unknown_divs ctx map = 
    let map = map_copy map in
    let isl_map_remove_unknown_divs = foreign "isl_map_remove_unknown_divs" (Types.map @-> returning Types.map) in
    let ret = isl_map_remove_unknown_divs map in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let reset_tuple_id ctx map typ = 
    let map = map_copy map in
    let isl_map_reset_tuple_id = foreign "isl_map_reset_tuple_id" (Types.map @-> dim_type @-> returning Types.map) in
    let ret = isl_map_reset_tuple_id map typ in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let reset_user ctx map = 
    let map = map_copy map in
    let isl_map_reset_user = foreign "isl_map_reset_user" (Types.map @-> returning Types.map) in
    let ret = isl_map_reset_user map in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let set_tuple_id ctx map typ id = 
    let map = map_copy map in
    let id = id_copy id in
    let isl_map_set_tuple_id = foreign "isl_map_set_tuple_id" (Types.map @-> dim_type @-> Types.id @-> returning Types.map) in
    let ret = isl_map_set_tuple_id map typ id in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let set_tuple_name ctx map typ s = 
    let map = map_copy map in
    let isl_map_set_tuple_name = foreign "isl_map_set_tuple_name" (Types.map @-> dim_type @-> string @-> returning Types.map) in
    let ret = isl_map_set_tuple_name map typ s in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let subtract_domain ctx map dom = 
    let map = map_copy map in
    let dom = set_copy dom in
    let isl_map_subtract_domain = foreign "isl_map_subtract_domain" (Types.map @-> Types.set @-> returning Types.map) in
    let ret = isl_map_subtract_domain map dom in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let subtract_range ctx map dom = 
    let map = map_copy map in
    let dom = set_copy dom in
    let isl_map_subtract_range = foreign "isl_map_subtract_range" (Types.map @-> Types.set @-> returning Types.map) in
    let ret = isl_map_subtract_range map dom in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let uncurry ctx map = 
    let map = map_copy map in
    let isl_map_uncurry = foreign "isl_map_uncurry" (Types.map @-> returning Types.map) in
    let ret = isl_map_uncurry map in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let universe ctx dim = 
    let dim = space_copy dim in
    let isl_map_universe = foreign "isl_map_universe" (Types.space @-> returning Types.map) in
    let ret = isl_map_universe dim in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let zip ctx map = 
    let map = map_copy map in
    let isl_map_zip = foreign "isl_map_zip" (Types.map @-> returning Types.map) in
    let ret = isl_map_zip map in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let convex_hull ctx map = 
    let map = map_copy map in
    let isl_map_convex_hull = foreign "isl_map_convex_hull" (Types.map @-> returning Types.basic_map) in
    let ret = isl_map_convex_hull map in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let simple_hull ctx map = 
    let map = map_copy map in
    let isl_map_simple_hull = foreign "isl_map_simple_hull" (Types.map @-> returning Types.basic_map) in
    let ret = isl_map_simple_hull map in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let unshifted_simple_hull ctx map = 
    let map = map_copy map in
    let isl_map_unshifted_simple_hull = foreign "isl_map_unshifted_simple_hull" (Types.map @-> returning Types.basic_map) in
    let ret = isl_map_unshifted_simple_hull map in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let get_tuple_id ctx map typ = 
    let isl_map_get_tuple_id = foreign "isl_map_get_tuple_id" (Types.map @-> dim_type @-> returning Types.id) in
    let ret = isl_map_get_tuple_id map typ in
    check_for_errors ctx;
    Gc.finalise id_free ret;
    ret

let is_bijective ctx map = 
    let isl_map_is_bijective = foreign "isl_map_is_bijective" (Types.map @-> returning bool) in
    let ret = isl_map_is_bijective map in
    check_for_errors ctx;
    ret

let is_disjoint ctx map1 map2 = 
    let isl_map_is_disjoint = foreign "isl_map_is_disjoint" (Types.map @-> Types.map @-> returning bool) in
    let ret = isl_map_is_disjoint map1 map2 in
    check_for_errors ctx;
    ret

let is_empty ctx map = 
    let isl_map_is_empty = foreign "isl_map_is_empty" (Types.map @-> returning bool) in
    let ret = isl_map_is_empty map in
    check_for_errors ctx;
    ret

let is_equal ctx map1 map2 = 
    let isl_map_is_equal = foreign "isl_map_is_equal" (Types.map @-> Types.map @-> returning bool) in
    let ret = isl_map_is_equal map1 map2 in
    check_for_errors ctx;
    ret

let is_injective ctx map = 
    let isl_map_is_injective = foreign "isl_map_is_injective" (Types.map @-> returning bool) in
    let ret = isl_map_is_injective map in
    check_for_errors ctx;
    ret

let is_single_valued ctx map = 
    let isl_map_is_single_valued = foreign "isl_map_is_single_valued" (Types.map @-> returning bool) in
    let ret = isl_map_is_single_valued map in
    check_for_errors ctx;
    ret

let is_strict_subset ctx map1 map2 = 
    let isl_map_is_strict_subset = foreign "isl_map_is_strict_subset" (Types.map @-> Types.map @-> returning bool) in
    let ret = isl_map_is_strict_subset map1 map2 in
    check_for_errors ctx;
    ret

let is_subset ctx map1 map2 = 
    let isl_map_is_subset = foreign "isl_map_is_subset" (Types.map @-> Types.map @-> returning bool) in
    let ret = isl_map_is_subset map1 map2 in
    check_for_errors ctx;
    ret

let deltas ctx map = 
    let map = map_copy map in
    let isl_map_deltas = foreign "isl_map_deltas" (Types.map @-> returning Types.set) in
    let ret = isl_map_deltas map in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let apply_domain ctx map1 map2 = 
    let map1 = map_copy map1 in
    let map2 = map_copy map2 in
    let isl_map_apply_domain = foreign "isl_map_apply_domain" (Types.map @-> Types.map @-> returning Types.map) in
    let ret = isl_map_apply_domain map1 map2 in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let apply_range ctx map1 map2 = 
    let map1 = map_copy map1 in
    let map2 = map_copy map2 in
    let isl_map_apply_range = foreign "isl_map_apply_range" (Types.map @-> Types.map @-> returning Types.map) in
    let ret = isl_map_apply_range map1 map2 in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let coalesce ctx map = 
    let map = map_copy map in
    let isl_map_coalesce = foreign "isl_map_coalesce" (Types.map @-> returning Types.map) in
    let ret = isl_map_coalesce map in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let complement ctx map = 
    let map = map_copy map in
    let isl_map_complement = foreign "isl_map_complement" (Types.map @-> returning Types.map) in
    let ret = isl_map_complement map in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let detect_equalities ctx map = 
    let map = map_copy map in
    let isl_map_detect_equalities = foreign "isl_map_detect_equalities" (Types.map @-> returning Types.map) in
    let ret = isl_map_detect_equalities map in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let flatten ctx map = 
    let map = map_copy map in
    let isl_map_flatten = foreign "isl_map_flatten" (Types.map @-> returning Types.map) in
    let ret = isl_map_flatten map in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let flatten_domain ctx map = 
    let map = map_copy map in
    let isl_map_flatten_domain = foreign "isl_map_flatten_domain" (Types.map @-> returning Types.map) in
    let ret = isl_map_flatten_domain map in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let flatten_range ctx map = 
    let map = map_copy map in
    let isl_map_flatten_range = foreign "isl_map_flatten_range" (Types.map @-> returning Types.map) in
    let ret = isl_map_flatten_range map in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let gist ctx map context = 
    let map = map_copy map in
    let context = map_copy context in
    let isl_map_gist = foreign "isl_map_gist" (Types.map @-> Types.map @-> returning Types.map) in
    let ret = isl_map_gist map context in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let gist_domain ctx map context = 
    let map = map_copy map in
    let context = set_copy context in
    let isl_map_gist_domain = foreign "isl_map_gist_domain" (Types.map @-> Types.set @-> returning Types.map) in
    let ret = isl_map_gist_domain map context in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let intersect ctx map1 map2 = 
    let map1 = map_copy map1 in
    let map2 = map_copy map2 in
    let isl_map_intersect = foreign "isl_map_intersect" (Types.map @-> Types.map @-> returning Types.map) in
    let ret = isl_map_intersect map1 map2 in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let intersect_domain ctx map set = 
    let map = map_copy map in
    let set = set_copy set in
    let isl_map_intersect_domain = foreign "isl_map_intersect_domain" (Types.map @-> Types.set @-> returning Types.map) in
    let ret = isl_map_intersect_domain map set in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let intersect_params ctx map params = 
    let map = map_copy map in
    let params = set_copy params in
    let isl_map_intersect_params = foreign "isl_map_intersect_params" (Types.map @-> Types.set @-> returning Types.map) in
    let ret = isl_map_intersect_params map params in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let intersect_range ctx map set = 
    let map = map_copy map in
    let set = set_copy set in
    let isl_map_intersect_range = foreign "isl_map_intersect_range" (Types.map @-> Types.set @-> returning Types.map) in
    let ret = isl_map_intersect_range map set in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let lexmax ctx map = 
    let map = map_copy map in
    let isl_map_lexmax = foreign "isl_map_lexmax" (Types.map @-> returning Types.map) in
    let ret = isl_map_lexmax map in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let lexmin ctx map = 
    let map = map_copy map in
    let isl_map_lexmin = foreign "isl_map_lexmin" (Types.map @-> returning Types.map) in
    let ret = isl_map_lexmin map in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let reverse ctx map = 
    let map = map_copy map in
    let isl_map_reverse = foreign "isl_map_reverse" (Types.map @-> returning Types.map) in
    let ret = isl_map_reverse map in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let subtract ctx map1 map2 = 
    let map1 = map_copy map1 in
    let map2 = map_copy map2 in
    let isl_map_subtract = foreign "isl_map_subtract" (Types.map @-> Types.map @-> returning Types.map) in
    let ret = isl_map_subtract map1 map2 in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let union ctx map1 map2 = 
    let map1 = map_copy map1 in
    let map2 = map_copy map2 in
    let isl_map_union = foreign "isl_map_union" (Types.map @-> Types.map @-> returning Types.map) in
    let ret = isl_map_union map1 map2 in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let affine_hull ctx map = 
    let map = map_copy map in
    let isl_map_affine_hull = foreign "isl_map_affine_hull" (Types.map @-> returning Types.basic_map) in
    let ret = isl_map_affine_hull map in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let polyhedral_hull ctx map = 
    let map = map_copy map in
    let isl_map_polyhedral_hull = foreign "isl_map_polyhedral_hull" (Types.map @-> returning Types.basic_map) in
    let ret = isl_map_polyhedral_hull map in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let sample ctx map = 
    let map = map_copy map in
    let isl_map_sample = foreign "isl_map_sample" (Types.map @-> returning Types.basic_map) in
    let ret = isl_map_sample map in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let from_basic_map ctx bmap = 
    let bmap = basic_map_copy bmap in
    let isl_map_from_basic_map = foreign "isl_map_from_basic_map" (Types.basic_map @-> returning Types.map) in
    let ret = isl_map_from_basic_map bmap in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let of_string ctx str = 
    let isl_map_read_from_str = foreign "isl_map_read_from_str" (Ctx.t @-> string @-> returning Types.map) in
    let ret = isl_map_read_from_str ctx str in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

