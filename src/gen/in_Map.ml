open Ctypes
open Foreign
open IslMemory

let map_find_dim_by_id map typ id = 
    let isl_map_find_dim_by_id = foreign "isl_map_find_dim_by_id" (Isl.map @-> Isl.dim_type @-> Isl.id @-> returning int) in
    let ret = isl_map_find_dim_by_id map typ id in
    ret

let map_find_dim_by_name map typ name = 
    let isl_map_find_dim_by_name = foreign "isl_map_find_dim_by_name" (Isl.map @-> Isl.dim_type @-> string @-> returning int) in
    let ret = isl_map_find_dim_by_name map typ name in
    ret

let set_from_map map = 
    let isl_set_from_map = foreign "isl_set_from_map" (Isl.map @-> returning Isl.set) in
    let ret = isl_set_from_map map in
    ret

let map_dup map = 
    let isl_map_dup = foreign "isl_map_dup" (Isl.map @-> returning Isl.map) in
    let ret = isl_map_dup map in
    ret

let map_empty_like model = 
    let isl_map_empty_like = foreign "isl_map_empty_like" (Isl.map @-> returning Isl.map) in
    let ret = isl_map_empty_like model in
    ret

let map_empty_like_basic_map model = 
    let isl_map_empty_like_basic_map = foreign "isl_map_empty_like_basic_map" (Isl.basic_map @-> returning Isl.map) in
    let ret = isl_map_empty_like_basic_map model in
    ret

let map_finalize map = 
    let isl_map_finalize = foreign "isl_map_finalize" (Isl.map @-> returning Isl.map) in
    let ret = isl_map_finalize map in
    ret

let map_identity_like model = 
    let isl_map_identity_like = foreign "isl_map_identity_like" (Isl.map @-> returning Isl.map) in
    let ret = isl_map_identity_like model in
    ret

let map_identity_like_basic_map model = 
    let isl_map_identity_like_basic_map = foreign "isl_map_identity_like_basic_map" (Isl.basic_map @-> returning Isl.map) in
    let ret = isl_map_identity_like_basic_map model in
    ret

let map_neg map = 
    let isl_map_neg = foreign "isl_map_neg" (Isl.map @-> returning Isl.map) in
    let ret = isl_map_neg map in
    ret

let map_sum map1 map2 = 
    let isl_map_sum = foreign "isl_map_sum" (Isl.map @-> Isl.map @-> returning Isl.map) in
    let ret = isl_map_sum map1 map2 in
    ret

let map_union_disjoint map1 map2 = 
    let isl_map_union_disjoint = foreign "isl_map_union_disjoint" (Isl.map @-> Isl.map @-> returning Isl.map) in
    let ret = isl_map_union_disjoint map1 map2 in
    ret

let basic_map_empty_like model = 
    let isl_basic_map_empty_like = foreign "isl_basic_map_empty_like" (Isl.basic_map @-> returning Isl.basic_map) in
    let ret = isl_basic_map_empty_like model in
    ret

let basic_map_empty_like_map model = 
    let isl_basic_map_empty_like_map = foreign "isl_basic_map_empty_like_map" (Isl.map @-> returning Isl.basic_map) in
    let ret = isl_basic_map_empty_like_map model in
    ret

let basic_map_finalize bmap = 
    let isl_basic_map_finalize = foreign "isl_basic_map_finalize" (Isl.basic_map @-> returning Isl.basic_map) in
    let ret = isl_basic_map_finalize bmap in
    ret

let basic_map_identity_like model = 
    let isl_basic_map_identity_like = foreign "isl_basic_map_identity_like" (Isl.basic_map @-> returning Isl.basic_map) in
    let ret = isl_basic_map_identity_like model in
    ret

let basic_map_neg bmap = 
    let isl_basic_map_neg = foreign "isl_basic_map_neg" (Isl.basic_map @-> returning Isl.basic_map) in
    let ret = isl_basic_map_neg bmap in
    ret

let basic_map_simplify bmap = 
    let isl_basic_map_simplify = foreign "isl_basic_map_simplify" (Isl.basic_map @-> returning Isl.basic_map) in
    let ret = isl_basic_map_simplify bmap in
    ret

let basic_map_sum bmap1 bmap2 = 
    let isl_basic_map_sum = foreign "isl_basic_map_sum" (Isl.basic_map @-> Isl.basic_map @-> returning Isl.basic_map) in
    let ret = isl_basic_map_sum bmap1 bmap2 in
    ret

let map_copy_basic_map map = 
    let isl_map_copy_basic_map = foreign "isl_map_copy_basic_map" (Isl.map @-> returning Isl.basic_map) in
    let ret = isl_map_copy_basic_map map in
    ret

let basic_set_from_basic_map bmap = 
    let isl_basic_set_from_basic_map = foreign "isl_basic_set_from_basic_map" (Isl.basic_map @-> returning Isl.basic_set) in
    let ret = isl_basic_set_from_basic_map bmap in
    ret

let basic_map_get_ctx bmap = 
    let isl_basic_map_get_ctx = foreign "isl_basic_map_get_ctx" (Isl.basic_map @-> returning Isl.ctx) in
    let ret = isl_basic_map_get_ctx bmap in
    ret

let map_get_ctx map = 
    let isl_map_get_ctx = foreign "isl_map_get_ctx" (Isl.map @-> returning Isl.ctx) in
    let ret = isl_map_get_ctx map in
    ret

let basic_map_dump bmap = 
    let isl_basic_map_dump = foreign "isl_basic_map_dump" (Isl.basic_map @-> returning void) in
    let ret = isl_basic_map_dump bmap in
    ret

let map_dump map = 
    let isl_map_dump = foreign "isl_map_dump" (Isl.map @-> returning void) in
    let ret = isl_map_dump map in
    ret

let basic_map_get_tuple_name bmap typ = 
    let isl_basic_map_get_tuple_name = foreign "isl_basic_map_get_tuple_name" (Isl.basic_map @-> Isl.dim_type @-> returning string) in
    let ret = isl_basic_map_get_tuple_name bmap typ in
    ret

let map_get_tuple_name map typ = 
    let isl_map_get_tuple_name = foreign "isl_map_get_tuple_name" (Isl.map @-> Isl.dim_type @-> returning string) in
    let ret = isl_map_get_tuple_name map typ in
    ret

let basic_map_can_curry bmap = 
    let isl_basic_map_can_curry = foreign "isl_basic_map_can_curry" (Isl.basic_map @-> returning Isl.bool) in
    let ret = isl_basic_map_can_curry bmap in
    ret

let basic_map_can_uncurry bmap = 
    let isl_basic_map_can_uncurry = foreign "isl_basic_map_can_uncurry" (Isl.basic_map @-> returning Isl.bool) in
    let ret = isl_basic_map_can_uncurry bmap in
    ret

let basic_map_can_zip bmap = 
    let isl_basic_map_can_zip = foreign "isl_basic_map_can_zip" (Isl.basic_map @-> returning Isl.bool) in
    let ret = isl_basic_map_can_zip bmap in
    ret

let basic_map_fast_is_empty bmap = 
    let isl_basic_map_fast_is_empty = foreign "isl_basic_map_fast_is_empty" (Isl.basic_map @-> returning Isl.bool) in
    let ret = isl_basic_map_fast_is_empty bmap in
    ret

let basic_map_image_is_bounded bmap = 
    let isl_basic_map_image_is_bounded = foreign "isl_basic_map_image_is_bounded" (Isl.basic_map @-> returning Isl.bool) in
    let ret = isl_basic_map_image_is_bounded bmap in
    ret

let basic_map_is_disjoint bmap1 bmap2 = 
    let isl_basic_map_is_disjoint = foreign "isl_basic_map_is_disjoint" (Isl.basic_map @-> Isl.basic_map @-> returning Isl.bool) in
    let ret = isl_basic_map_is_disjoint bmap1 bmap2 in
    ret

let basic_map_is_rational bmap = 
    let isl_basic_map_is_rational = foreign "isl_basic_map_is_rational" (Isl.basic_map @-> returning Isl.bool) in
    let ret = isl_basic_map_is_rational bmap in
    ret

let basic_map_is_single_valued bmap = 
    let isl_basic_map_is_single_valued = foreign "isl_basic_map_is_single_valued" (Isl.basic_map @-> returning Isl.bool) in
    let ret = isl_basic_map_is_single_valued bmap in
    ret

let basic_map_is_strict_subset bmap1 bmap2 = 
    let isl_basic_map_is_strict_subset = foreign "isl_basic_map_is_strict_subset" (Isl.basic_map @-> Isl.basic_map @-> returning Isl.bool) in
    let ret = isl_basic_map_is_strict_subset bmap1 bmap2 in
    ret

let basic_map_is_universe bmap = 
    let isl_basic_map_is_universe = foreign "isl_basic_map_is_universe" (Isl.basic_map @-> returning Isl.bool) in
    let ret = isl_basic_map_is_universe bmap in
    ret

let basic_map_plain_is_empty bmap = 
    let isl_basic_map_plain_is_empty = foreign "isl_basic_map_plain_is_empty" (Isl.basic_map @-> returning Isl.bool) in
    let ret = isl_basic_map_plain_is_empty bmap in
    ret

let map_can_curry map = 
    let isl_map_can_curry = foreign "isl_map_can_curry" (Isl.map @-> returning Isl.bool) in
    let ret = isl_map_can_curry map in
    ret

let map_can_uncurry map = 
    let isl_map_can_uncurry = foreign "isl_map_can_uncurry" (Isl.map @-> returning Isl.bool) in
    let ret = isl_map_can_uncurry map in
    ret

let map_can_zip map = 
    let isl_map_can_zip = foreign "isl_map_can_zip" (Isl.map @-> returning Isl.bool) in
    let ret = isl_map_can_zip map in
    ret

let map_domain_is_wrapping map = 
    let isl_map_domain_is_wrapping = foreign "isl_map_domain_is_wrapping" (Isl.map @-> returning Isl.bool) in
    let ret = isl_map_domain_is_wrapping map in
    ret

let map_fast_is_empty map = 
    let isl_map_fast_is_empty = foreign "isl_map_fast_is_empty" (Isl.map @-> returning Isl.bool) in
    let ret = isl_map_fast_is_empty map in
    ret

let map_fast_is_equal map1 map2 = 
    let isl_map_fast_is_equal = foreign "isl_map_fast_is_equal" (Isl.map @-> Isl.map @-> returning Isl.bool) in
    let ret = isl_map_fast_is_equal map1 map2 in
    ret

let map_has_equal_space map1 map2 = 
    let isl_map_has_equal_space = foreign "isl_map_has_equal_space" (Isl.map @-> Isl.map @-> returning Isl.bool) in
    let ret = isl_map_has_equal_space map1 map2 in
    ret

let map_has_tuple_id map typ = 
    let isl_map_has_tuple_id = foreign "isl_map_has_tuple_id" (Isl.map @-> Isl.dim_type @-> returning Isl.bool) in
    let ret = isl_map_has_tuple_id map typ in
    ret

let map_has_tuple_name map typ = 
    let isl_map_has_tuple_name = foreign "isl_map_has_tuple_name" (Isl.map @-> Isl.dim_type @-> returning Isl.bool) in
    let ret = isl_map_has_tuple_name map typ in
    ret

let map_is_translation map = 
    let isl_map_is_translation = foreign "isl_map_is_translation" (Isl.map @-> returning Isl.bool) in
    let ret = isl_map_is_translation map in
    ret

let map_plain_is_empty map = 
    let isl_map_plain_is_empty = foreign "isl_map_plain_is_empty" (Isl.map @-> returning Isl.bool) in
    let ret = isl_map_plain_is_empty map in
    ret

let map_plain_is_equal map1 map2 = 
    let isl_map_plain_is_equal = foreign "isl_map_plain_is_equal" (Isl.map @-> Isl.map @-> returning Isl.bool) in
    let ret = isl_map_plain_is_equal map1 map2 in
    ret

let map_plain_is_injective map = 
    let isl_map_plain_is_injective = foreign "isl_map_plain_is_injective" (Isl.map @-> returning Isl.bool) in
    let ret = isl_map_plain_is_injective map in
    ret

let map_plain_is_single_valued map = 
    let isl_map_plain_is_single_valued = foreign "isl_map_plain_is_single_valued" (Isl.map @-> returning Isl.bool) in
    let ret = isl_map_plain_is_single_valued map in
    ret

let map_plain_is_universe map = 
    let isl_map_plain_is_universe = foreign "isl_map_plain_is_universe" (Isl.map @-> returning Isl.bool) in
    let ret = isl_map_plain_is_universe map in
    ret

let map_range_is_wrapping map = 
    let isl_map_range_is_wrapping = foreign "isl_map_range_is_wrapping" (Isl.map @-> returning Isl.bool) in
    let ret = isl_map_range_is_wrapping map in
    ret

let map_domain bmap = 
    let bmap = map_copy bmap in
    let isl_map_domain = foreign "isl_map_domain" (Isl.map @-> returning Isl.set) in
    let ret = isl_map_domain bmap in
    Gc.finalise set_free ret;
    ret

let map_params map = 
    let map = map_copy map in
    let isl_map_params = foreign "isl_map_params" (Isl.map @-> returning Isl.set) in
    let ret = isl_map_params map in
    Gc.finalise set_free ret;
    ret

let map_range map = 
    let map = map_copy map in
    let isl_map_range = foreign "isl_map_range" (Isl.map @-> returning Isl.set) in
    let ret = isl_map_range map in
    Gc.finalise set_free ret;
    ret

let map_wrap map = 
    let map = map_copy map in
    let isl_map_wrap = foreign "isl_map_wrap" (Isl.map @-> returning Isl.set) in
    let ret = isl_map_wrap map in
    Gc.finalise set_free ret;
    ret

let basic_map_get_space bmap = 
    let isl_basic_map_get_space = foreign "isl_basic_map_get_space" (Isl.basic_map @-> returning Isl.space) in
    let ret = isl_basic_map_get_space bmap in
    Gc.finalise space_free ret;
    ret

let map_get_space map = 
    let isl_map_get_space = foreign "isl_map_get_space" (Isl.map @-> returning Isl.space) in
    let ret = isl_map_get_space map in
    Gc.finalise space_free ret;
    ret

let basic_map_compute_divs bmap = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_compute_divs = foreign "isl_basic_map_compute_divs" (Isl.basic_map @-> returning Isl.map) in
    let ret = isl_basic_map_compute_divs bmap in
    Gc.finalise map_free ret;
    ret

let map_add_basic_map map bmap = 
    let map = map_copy map in
    let bmap = basic_map_copy bmap in
    let isl_map_add_basic_map = foreign "isl_map_add_basic_map" (Isl.map @-> Isl.basic_map @-> returning Isl.map) in
    let ret = isl_map_add_basic_map map bmap in
    Gc.finalise map_free ret;
    ret

let map_align_divs map = 
    let map = map_copy map in
    let isl_map_align_divs = foreign "isl_map_align_divs" (Isl.map @-> returning Isl.map) in
    let ret = isl_map_align_divs map in
    Gc.finalise map_free ret;
    ret

let map_align_params map model = 
    let map = map_copy map in
    let model = space_copy model in
    let isl_map_align_params = foreign "isl_map_align_params" (Isl.map @-> Isl.space @-> returning Isl.map) in
    let ret = isl_map_align_params map model in
    Gc.finalise map_free ret;
    ret

let map_compute_divs map = 
    let map = map_copy map in
    let isl_map_compute_divs = foreign "isl_map_compute_divs" (Isl.map @-> returning Isl.map) in
    let ret = isl_map_compute_divs map in
    Gc.finalise map_free ret;
    ret

let map_curry map = 
    let map = map_copy map in
    let isl_map_curry = foreign "isl_map_curry" (Isl.map @-> returning Isl.map) in
    let ret = isl_map_curry map in
    Gc.finalise map_free ret;
    ret

let map_deltas_map map = 
    let map = map_copy map in
    let isl_map_deltas_map = foreign "isl_map_deltas_map" (Isl.map @-> returning Isl.map) in
    let ret = isl_map_deltas_map map in
    Gc.finalise map_free ret;
    ret

let map_domain_map map = 
    let map = map_copy map in
    let isl_map_domain_map = foreign "isl_map_domain_map" (Isl.map @-> returning Isl.map) in
    let ret = isl_map_domain_map map in
    Gc.finalise map_free ret;
    ret

let map_domain_product map1 map2 = 
    let map1 = map_copy map1 in
    let map2 = map_copy map2 in
    let isl_map_domain_product = foreign "isl_map_domain_product" (Isl.map @-> Isl.map @-> returning Isl.map) in
    let ret = isl_map_domain_product map1 map2 in
    Gc.finalise map_free ret;
    ret

let map_drop_basic_map map bmap = 
    let map = map_copy map in
    let isl_map_drop_basic_map = foreign "isl_map_drop_basic_map" (Isl.map @-> Isl.basic_map @-> returning Isl.map) in
    let ret = isl_map_drop_basic_map map bmap in
    Gc.finalise map_free ret;
    ret

let map_empty dim = 
    let dim = space_copy dim in
    let isl_map_empty = foreign "isl_map_empty" (Isl.space @-> returning Isl.map) in
    let ret = isl_map_empty dim in
    Gc.finalise map_free ret;
    ret

let map_equate map type1 pos1 type2 pos2 = 
    let map = map_copy map in
    let isl_map_equate = foreign "isl_map_equate" (Isl.map @-> Isl.dim_type @-> int @-> Isl.dim_type @-> int @-> returning Isl.map) in
    let ret = isl_map_equate map type1 pos1 type2 pos2 in
    Gc.finalise map_free ret;
    ret

let map_fixed_power_val map exp = 
    let map = map_copy map in
    let exp = val_copy exp in
    let isl_map_fixed_power_val = foreign "isl_map_fixed_power_val" (Isl.map @-> Isl.value @-> returning Isl.map) in
    let ret = isl_map_fixed_power_val map exp in
    Gc.finalise map_free ret;
    ret

let map_flat_domain_product map1 map2 = 
    let map1 = map_copy map1 in
    let map2 = map_copy map2 in
    let isl_map_flat_domain_product = foreign "isl_map_flat_domain_product" (Isl.map @-> Isl.map @-> returning Isl.map) in
    let ret = isl_map_flat_domain_product map1 map2 in
    Gc.finalise map_free ret;
    ret

let map_flat_product map1 map2 = 
    let map1 = map_copy map1 in
    let map2 = map_copy map2 in
    let isl_map_flat_product = foreign "isl_map_flat_product" (Isl.map @-> Isl.map @-> returning Isl.map) in
    let ret = isl_map_flat_product map1 map2 in
    Gc.finalise map_free ret;
    ret

let map_flat_range_product map1 map2 = 
    let map1 = map_copy map1 in
    let map2 = map_copy map2 in
    let isl_map_flat_range_product = foreign "isl_map_flat_range_product" (Isl.map @-> Isl.map @-> returning Isl.map) in
    let ret = isl_map_flat_range_product map1 map2 in
    Gc.finalise map_free ret;
    ret

let map_floordiv_val map d = 
    let map = map_copy map in
    let d = val_copy d in
    let isl_map_floordiv_val = foreign "isl_map_floordiv_val" (Isl.map @-> Isl.value @-> returning Isl.map) in
    let ret = isl_map_floordiv_val map d in
    Gc.finalise map_free ret;
    ret

let map_from_aff aff = 
    let aff = aff_copy aff in
    let isl_map_from_aff = foreign "isl_map_from_aff" (Isl.aff @-> returning Isl.map) in
    let ret = isl_map_from_aff aff in
    Gc.finalise map_free ret;
    ret

let map_from_domain set = 
    let set = set_copy set in
    let isl_map_from_domain = foreign "isl_map_from_domain" (Isl.set @-> returning Isl.map) in
    let ret = isl_map_from_domain set in
    Gc.finalise map_free ret;
    ret

let map_from_domain_and_range domain range = 
    let domain = set_copy domain in
    let range = set_copy range in
    let isl_map_from_domain_and_range = foreign "isl_map_from_domain_and_range" (Isl.set @-> Isl.set @-> returning Isl.map) in
    let ret = isl_map_from_domain_and_range domain range in
    Gc.finalise map_free ret;
    ret

let map_from_range set = 
    let set = set_copy set in
    let isl_map_from_range = foreign "isl_map_from_range" (Isl.set @-> returning Isl.map) in
    let ret = isl_map_from_range set in
    Gc.finalise map_free ret;
    ret

let map_from_set set dim = 
    let set = set_copy set in
    let dim = space_copy dim in
    let isl_map_from_set = foreign "isl_map_from_set" (Isl.set @-> Isl.space @-> returning Isl.map) in
    let ret = isl_map_from_set set dim in
    Gc.finalise map_free ret;
    ret

let map_gist_basic_map map context = 
    let map = map_copy map in
    let context = basic_map_copy context in
    let isl_map_gist_basic_map = foreign "isl_map_gist_basic_map" (Isl.map @-> Isl.basic_map @-> returning Isl.map) in
    let ret = isl_map_gist_basic_map map context in
    Gc.finalise map_free ret;
    ret

let map_gist_params map context = 
    let map = map_copy map in
    let context = set_copy context in
    let isl_map_gist_params = foreign "isl_map_gist_params" (Isl.map @-> Isl.set @-> returning Isl.map) in
    let ret = isl_map_gist_params map context in
    Gc.finalise map_free ret;
    ret

let map_gist_range map context = 
    let map = map_copy map in
    let context = set_copy context in
    let isl_map_gist_range = foreign "isl_map_gist_range" (Isl.map @-> Isl.set @-> returning Isl.map) in
    let ret = isl_map_gist_range map context in
    Gc.finalise map_free ret;
    ret

let map_identity dim = 
    let dim = space_copy dim in
    let isl_map_identity = foreign "isl_map_identity" (Isl.space @-> returning Isl.map) in
    let ret = isl_map_identity dim in
    Gc.finalise map_free ret;
    ret

let map_lex_ge set_dim = 
    let set_dim = space_copy set_dim in
    let isl_map_lex_ge = foreign "isl_map_lex_ge" (Isl.space @-> returning Isl.map) in
    let ret = isl_map_lex_ge set_dim in
    Gc.finalise map_free ret;
    ret

let map_lex_ge_map map1 map2 = 
    let map1 = map_copy map1 in
    let map2 = map_copy map2 in
    let isl_map_lex_ge_map = foreign "isl_map_lex_ge_map" (Isl.map @-> Isl.map @-> returning Isl.map) in
    let ret = isl_map_lex_ge_map map1 map2 in
    Gc.finalise map_free ret;
    ret

let map_lex_gt set_dim = 
    let set_dim = space_copy set_dim in
    let isl_map_lex_gt = foreign "isl_map_lex_gt" (Isl.space @-> returning Isl.map) in
    let ret = isl_map_lex_gt set_dim in
    Gc.finalise map_free ret;
    ret

let map_lex_gt_map map1 map2 = 
    let map1 = map_copy map1 in
    let map2 = map_copy map2 in
    let isl_map_lex_gt_map = foreign "isl_map_lex_gt_map" (Isl.map @-> Isl.map @-> returning Isl.map) in
    let ret = isl_map_lex_gt_map map1 map2 in
    Gc.finalise map_free ret;
    ret

let map_lex_le set_dim = 
    let set_dim = space_copy set_dim in
    let isl_map_lex_le = foreign "isl_map_lex_le" (Isl.space @-> returning Isl.map) in
    let ret = isl_map_lex_le set_dim in
    Gc.finalise map_free ret;
    ret

let map_lex_le_map map1 map2 = 
    let map1 = map_copy map1 in
    let map2 = map_copy map2 in
    let isl_map_lex_le_map = foreign "isl_map_lex_le_map" (Isl.map @-> Isl.map @-> returning Isl.map) in
    let ret = isl_map_lex_le_map map1 map2 in
    Gc.finalise map_free ret;
    ret

let map_lex_lt set_dim = 
    let set_dim = space_copy set_dim in
    let isl_map_lex_lt = foreign "isl_map_lex_lt" (Isl.space @-> returning Isl.map) in
    let ret = isl_map_lex_lt set_dim in
    Gc.finalise map_free ret;
    ret

let map_lex_lt_map map1 map2 = 
    let map1 = map_copy map1 in
    let map2 = map_copy map2 in
    let isl_map_lex_lt_map = foreign "isl_map_lex_lt_map" (Isl.map @-> Isl.map @-> returning Isl.map) in
    let ret = isl_map_lex_lt_map map1 map2 in
    Gc.finalise map_free ret;
    ret

let map_make_disjoint map = 
    let map = map_copy map in
    let isl_map_make_disjoint = foreign "isl_map_make_disjoint" (Isl.map @-> returning Isl.map) in
    let ret = isl_map_make_disjoint map in
    Gc.finalise map_free ret;
    ret

let map_nat_universe dim = 
    let dim = space_copy dim in
    let isl_map_nat_universe = foreign "isl_map_nat_universe" (Isl.space @-> returning Isl.map) in
    let ret = isl_map_nat_universe dim in
    Gc.finalise map_free ret;
    ret

let map_oppose map type1 pos1 type2 pos2 = 
    let map = map_copy map in
    let isl_map_oppose = foreign "isl_map_oppose" (Isl.map @-> Isl.dim_type @-> int @-> Isl.dim_type @-> int @-> returning Isl.map) in
    let ret = isl_map_oppose map type1 pos1 type2 pos2 in
    Gc.finalise map_free ret;
    ret

let map_order_ge map type1 pos1 type2 pos2 = 
    let map = map_copy map in
    let isl_map_order_ge = foreign "isl_map_order_ge" (Isl.map @-> Isl.dim_type @-> int @-> Isl.dim_type @-> int @-> returning Isl.map) in
    let ret = isl_map_order_ge map type1 pos1 type2 pos2 in
    Gc.finalise map_free ret;
    ret

let map_order_gt map type1 pos1 type2 pos2 = 
    let map = map_copy map in
    let isl_map_order_gt = foreign "isl_map_order_gt" (Isl.map @-> Isl.dim_type @-> int @-> Isl.dim_type @-> int @-> returning Isl.map) in
    let ret = isl_map_order_gt map type1 pos1 type2 pos2 in
    Gc.finalise map_free ret;
    ret

let map_order_le map type1 pos1 type2 pos2 = 
    let map = map_copy map in
    let isl_map_order_le = foreign "isl_map_order_le" (Isl.map @-> Isl.dim_type @-> int @-> Isl.dim_type @-> int @-> returning Isl.map) in
    let ret = isl_map_order_le map type1 pos1 type2 pos2 in
    Gc.finalise map_free ret;
    ret

let map_order_lt map type1 pos1 type2 pos2 = 
    let map = map_copy map in
    let isl_map_order_lt = foreign "isl_map_order_lt" (Isl.map @-> Isl.dim_type @-> int @-> Isl.dim_type @-> int @-> returning Isl.map) in
    let ret = isl_map_order_lt map type1 pos1 type2 pos2 in
    Gc.finalise map_free ret;
    ret

let map_product map1 map2 = 
    let map1 = map_copy map1 in
    let map2 = map_copy map2 in
    let isl_map_product = foreign "isl_map_product" (Isl.map @-> Isl.map @-> returning Isl.map) in
    let ret = isl_map_product map1 map2 in
    Gc.finalise map_free ret;
    ret

let map_range_factor_domain map = 
    let map = map_copy map in
    let isl_map_range_factor_domain = foreign "isl_map_range_factor_domain" (Isl.map @-> returning Isl.map) in
    let ret = isl_map_range_factor_domain map in
    Gc.finalise map_free ret;
    ret

let map_range_factor_range map = 
    let map = map_copy map in
    let isl_map_range_factor_range = foreign "isl_map_range_factor_range" (Isl.map @-> returning Isl.map) in
    let ret = isl_map_range_factor_range map in
    Gc.finalise map_free ret;
    ret

let map_range_map map = 
    let map = map_copy map in
    let isl_map_range_map = foreign "isl_map_range_map" (Isl.map @-> returning Isl.map) in
    let ret = isl_map_range_map map in
    Gc.finalise map_free ret;
    ret

let map_range_product map1 map2 = 
    let map1 = map_copy map1 in
    let map2 = map_copy map2 in
    let isl_map_range_product = foreign "isl_map_range_product" (Isl.map @-> Isl.map @-> returning Isl.map) in
    let ret = isl_map_range_product map1 map2 in
    Gc.finalise map_free ret;
    ret

let map_remove_divs map = 
    let map = map_copy map in
    let isl_map_remove_divs = foreign "isl_map_remove_divs" (Isl.map @-> returning Isl.map) in
    let ret = isl_map_remove_divs map in
    Gc.finalise map_free ret;
    ret

let map_remove_redundancies map = 
    let map = map_copy map in
    let isl_map_remove_redundancies = foreign "isl_map_remove_redundancies" (Isl.map @-> returning Isl.map) in
    let ret = isl_map_remove_redundancies map in
    Gc.finalise map_free ret;
    ret

let map_remove_unknown_divs map = 
    let map = map_copy map in
    let isl_map_remove_unknown_divs = foreign "isl_map_remove_unknown_divs" (Isl.map @-> returning Isl.map) in
    let ret = isl_map_remove_unknown_divs map in
    Gc.finalise map_free ret;
    ret

let map_reset_tuple_id map typ = 
    let map = map_copy map in
    let isl_map_reset_tuple_id = foreign "isl_map_reset_tuple_id" (Isl.map @-> Isl.dim_type @-> returning Isl.map) in
    let ret = isl_map_reset_tuple_id map typ in
    Gc.finalise map_free ret;
    ret

let map_reset_user map = 
    let map = map_copy map in
    let isl_map_reset_user = foreign "isl_map_reset_user" (Isl.map @-> returning Isl.map) in
    let ret = isl_map_reset_user map in
    Gc.finalise map_free ret;
    ret

let map_set_tuple_id map typ id = 
    let map = map_copy map in
    let id = id_copy id in
    let isl_map_set_tuple_id = foreign "isl_map_set_tuple_id" (Isl.map @-> Isl.dim_type @-> Isl.id @-> returning Isl.map) in
    let ret = isl_map_set_tuple_id map typ id in
    Gc.finalise map_free ret;
    ret

let map_set_tuple_name map typ s = 
    let map = map_copy map in
    let isl_map_set_tuple_name = foreign "isl_map_set_tuple_name" (Isl.map @-> Isl.dim_type @-> string @-> returning Isl.map) in
    let ret = isl_map_set_tuple_name map typ s in
    Gc.finalise map_free ret;
    ret

let map_subtract_domain map dom = 
    let map = map_copy map in
    let dom = set_copy dom in
    let isl_map_subtract_domain = foreign "isl_map_subtract_domain" (Isl.map @-> Isl.set @-> returning Isl.map) in
    let ret = isl_map_subtract_domain map dom in
    Gc.finalise map_free ret;
    ret

let map_subtract_range map dom = 
    let map = map_copy map in
    let dom = set_copy dom in
    let isl_map_subtract_range = foreign "isl_map_subtract_range" (Isl.map @-> Isl.set @-> returning Isl.map) in
    let ret = isl_map_subtract_range map dom in
    Gc.finalise map_free ret;
    ret

let map_uncurry map = 
    let map = map_copy map in
    let isl_map_uncurry = foreign "isl_map_uncurry" (Isl.map @-> returning Isl.map) in
    let ret = isl_map_uncurry map in
    Gc.finalise map_free ret;
    ret

let map_universe dim = 
    let dim = space_copy dim in
    let isl_map_universe = foreign "isl_map_universe" (Isl.space @-> returning Isl.map) in
    let ret = isl_map_universe dim in
    Gc.finalise map_free ret;
    ret

let map_zip map = 
    let map = map_copy map in
    let isl_map_zip = foreign "isl_map_zip" (Isl.map @-> returning Isl.map) in
    let ret = isl_map_zip map in
    Gc.finalise map_free ret;
    ret

let set_flatten_map set = 
    let set = set_copy set in
    let isl_set_flatten_map = foreign "isl_set_flatten_map" (Isl.set @-> returning Isl.map) in
    let ret = isl_set_flatten_map set in
    Gc.finalise map_free ret;
    ret

let set_lifting set = 
    let set = set_copy set in
    let isl_set_lifting = foreign "isl_set_lifting" (Isl.set @-> returning Isl.map) in
    let ret = isl_set_lifting set in
    Gc.finalise map_free ret;
    ret

let set_unwrap set = 
    let set = set_copy set in
    let isl_set_unwrap = foreign "isl_set_unwrap" (Isl.set @-> returning Isl.map) in
    let ret = isl_set_unwrap set in
    Gc.finalise map_free ret;
    ret

let basic_map_align_params bmap model = 
    let bmap = basic_map_copy bmap in
    let model = space_copy model in
    let isl_basic_map_align_params = foreign "isl_basic_map_align_params" (Isl.basic_map @-> Isl.space @-> returning Isl.basic_map) in
    let ret = isl_basic_map_align_params bmap model in
    Gc.finalise basic_map_free ret;
    ret

let basic_map_curry bmap = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_curry = foreign "isl_basic_map_curry" (Isl.basic_map @-> returning Isl.basic_map) in
    let ret = isl_basic_map_curry bmap in
    Gc.finalise basic_map_free ret;
    ret

let basic_map_deltas_map bmap = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_deltas_map = foreign "isl_basic_map_deltas_map" (Isl.basic_map @-> returning Isl.basic_map) in
    let ret = isl_basic_map_deltas_map bmap in
    Gc.finalise basic_map_free ret;
    ret

let basic_map_domain_map bmap = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_domain_map = foreign "isl_basic_map_domain_map" (Isl.basic_map @-> returning Isl.basic_map) in
    let ret = isl_basic_map_domain_map bmap in
    Gc.finalise basic_map_free ret;
    ret

let basic_map_domain_product bmap1 bmap2 = 
    let bmap1 = basic_map_copy bmap1 in
    let bmap2 = basic_map_copy bmap2 in
    let isl_basic_map_domain_product = foreign "isl_basic_map_domain_product" (Isl.basic_map @-> Isl.basic_map @-> returning Isl.basic_map) in
    let ret = isl_basic_map_domain_product bmap1 bmap2 in
    Gc.finalise basic_map_free ret;
    ret

let basic_map_empty dim = 
    let dim = space_copy dim in
    let isl_basic_map_empty = foreign "isl_basic_map_empty" (Isl.space @-> returning Isl.basic_map) in
    let ret = isl_basic_map_empty dim in
    Gc.finalise basic_map_free ret;
    ret

let basic_map_equate bmap type1 pos1 type2 pos2 = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_equate = foreign "isl_basic_map_equate" (Isl.basic_map @-> Isl.dim_type @-> int @-> Isl.dim_type @-> int @-> returning Isl.basic_map) in
    let ret = isl_basic_map_equate bmap type1 pos1 type2 pos2 in
    Gc.finalise basic_map_free ret;
    ret

let basic_map_flat_product bmap1 bmap2 = 
    let bmap1 = basic_map_copy bmap1 in
    let bmap2 = basic_map_copy bmap2 in
    let isl_basic_map_flat_product = foreign "isl_basic_map_flat_product" (Isl.basic_map @-> Isl.basic_map @-> returning Isl.basic_map) in
    let ret = isl_basic_map_flat_product bmap1 bmap2 in
    Gc.finalise basic_map_free ret;
    ret

let basic_map_flat_range_product bmap1 bmap2 = 
    let bmap1 = basic_map_copy bmap1 in
    let bmap2 = basic_map_copy bmap2 in
    let isl_basic_map_flat_range_product = foreign "isl_basic_map_flat_range_product" (Isl.basic_map @-> Isl.basic_map @-> returning Isl.basic_map) in
    let ret = isl_basic_map_flat_range_product bmap1 bmap2 in
    Gc.finalise basic_map_free ret;
    ret

let basic_map_from_aff aff = 
    let aff = aff_copy aff in
    let isl_basic_map_from_aff = foreign "isl_basic_map_from_aff" (Isl.aff @-> returning Isl.basic_map) in
    let ret = isl_basic_map_from_aff aff in
    Gc.finalise basic_map_free ret;
    ret

let basic_map_from_basic_set bset dim = 
    let bset = basic_set_copy bset in
    let dim = space_copy dim in
    let isl_basic_map_from_basic_set = foreign "isl_basic_map_from_basic_set" (Isl.basic_set @-> Isl.space @-> returning Isl.basic_map) in
    let ret = isl_basic_map_from_basic_set bset dim in
    Gc.finalise basic_map_free ret;
    ret

let basic_map_from_domain bset = 
    let bset = basic_set_copy bset in
    let isl_basic_map_from_domain = foreign "isl_basic_map_from_domain" (Isl.basic_set @-> returning Isl.basic_map) in
    let ret = isl_basic_map_from_domain bset in
    Gc.finalise basic_map_free ret;
    ret

let basic_map_from_domain_and_range domain range = 
    let domain = basic_set_copy domain in
    let range = basic_set_copy range in
    let isl_basic_map_from_domain_and_range = foreign "isl_basic_map_from_domain_and_range" (Isl.basic_set @-> Isl.basic_set @-> returning Isl.basic_map) in
    let ret = isl_basic_map_from_domain_and_range domain range in
    Gc.finalise basic_map_free ret;
    ret

let basic_map_from_range bset = 
    let bset = basic_set_copy bset in
    let isl_basic_map_from_range = foreign "isl_basic_map_from_range" (Isl.basic_set @-> returning Isl.basic_map) in
    let ret = isl_basic_map_from_range bset in
    Gc.finalise basic_map_free ret;
    ret

let basic_map_identity dim = 
    let dim = space_copy dim in
    let isl_basic_map_identity = foreign "isl_basic_map_identity" (Isl.space @-> returning Isl.basic_map) in
    let ret = isl_basic_map_identity dim in
    Gc.finalise basic_map_free ret;
    ret

let basic_map_nat_universe dim = 
    let dim = space_copy dim in
    let isl_basic_map_nat_universe = foreign "isl_basic_map_nat_universe" (Isl.space @-> returning Isl.basic_map) in
    let ret = isl_basic_map_nat_universe dim in
    Gc.finalise basic_map_free ret;
    ret

let basic_map_order_ge bmap type1 pos1 type2 pos2 = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_order_ge = foreign "isl_basic_map_order_ge" (Isl.basic_map @-> Isl.dim_type @-> int @-> Isl.dim_type @-> int @-> returning Isl.basic_map) in
    let ret = isl_basic_map_order_ge bmap type1 pos1 type2 pos2 in
    Gc.finalise basic_map_free ret;
    ret

let basic_map_order_gt bmap type1 pos1 type2 pos2 = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_order_gt = foreign "isl_basic_map_order_gt" (Isl.basic_map @-> Isl.dim_type @-> int @-> Isl.dim_type @-> int @-> returning Isl.basic_map) in
    let ret = isl_basic_map_order_gt bmap type1 pos1 type2 pos2 in
    Gc.finalise basic_map_free ret;
    ret

let basic_map_product bmap1 bmap2 = 
    let bmap1 = basic_map_copy bmap1 in
    let bmap2 = basic_map_copy bmap2 in
    let isl_basic_map_product = foreign "isl_basic_map_product" (Isl.basic_map @-> Isl.basic_map @-> returning Isl.basic_map) in
    let ret = isl_basic_map_product bmap1 bmap2 in
    Gc.finalise basic_map_free ret;
    ret

let basic_map_range_map bmap = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_range_map = foreign "isl_basic_map_range_map" (Isl.basic_map @-> returning Isl.basic_map) in
    let ret = isl_basic_map_range_map bmap in
    Gc.finalise basic_map_free ret;
    ret

let basic_map_range_product bmap1 bmap2 = 
    let bmap1 = basic_map_copy bmap1 in
    let bmap2 = basic_map_copy bmap2 in
    let isl_basic_map_range_product = foreign "isl_basic_map_range_product" (Isl.basic_map @-> Isl.basic_map @-> returning Isl.basic_map) in
    let ret = isl_basic_map_range_product bmap1 bmap2 in
    Gc.finalise basic_map_free ret;
    ret

let basic_map_remove_divs bmap = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_remove_divs = foreign "isl_basic_map_remove_divs" (Isl.basic_map @-> returning Isl.basic_map) in
    let ret = isl_basic_map_remove_divs bmap in
    Gc.finalise basic_map_free ret;
    ret

let basic_map_remove_redundancies bmap = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_remove_redundancies = foreign "isl_basic_map_remove_redundancies" (Isl.basic_map @-> returning Isl.basic_map) in
    let ret = isl_basic_map_remove_redundancies bmap in
    Gc.finalise basic_map_free ret;
    ret

let basic_map_set_tuple_id bmap typ id = 
    let bmap = basic_map_copy bmap in
    let id = id_copy id in
    let isl_basic_map_set_tuple_id = foreign "isl_basic_map_set_tuple_id" (Isl.basic_map @-> Isl.dim_type @-> Isl.id @-> returning Isl.basic_map) in
    let ret = isl_basic_map_set_tuple_id bmap typ id in
    Gc.finalise basic_map_free ret;
    ret

let basic_map_set_tuple_name bmap typ s = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_set_tuple_name = foreign "isl_basic_map_set_tuple_name" (Isl.basic_map @-> Isl.dim_type @-> string @-> returning Isl.basic_map) in
    let ret = isl_basic_map_set_tuple_name bmap typ s in
    Gc.finalise basic_map_free ret;
    ret

let basic_map_uncurry bmap = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_uncurry = foreign "isl_basic_map_uncurry" (Isl.basic_map @-> returning Isl.basic_map) in
    let ret = isl_basic_map_uncurry bmap in
    Gc.finalise basic_map_free ret;
    ret

let basic_map_universe dim = 
    let dim = space_copy dim in
    let isl_basic_map_universe = foreign "isl_basic_map_universe" (Isl.space @-> returning Isl.basic_map) in
    let ret = isl_basic_map_universe dim in
    Gc.finalise basic_map_free ret;
    ret

let basic_map_universe_like bmap = 
    let isl_basic_map_universe_like = foreign "isl_basic_map_universe_like" (Isl.basic_map @-> returning Isl.basic_map) in
    let ret = isl_basic_map_universe_like bmap in
    Gc.finalise basic_map_free ret;
    ret

let basic_map_zip bmap = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_zip = foreign "isl_basic_map_zip" (Isl.basic_map @-> returning Isl.basic_map) in
    let ret = isl_basic_map_zip bmap in
    Gc.finalise basic_map_free ret;
    ret

let basic_set_unwrap bset = 
    let bset = basic_set_copy bset in
    let isl_basic_set_unwrap = foreign "isl_basic_set_unwrap" (Isl.basic_set @-> returning Isl.basic_map) in
    let ret = isl_basic_set_unwrap bset in
    Gc.finalise basic_map_free ret;
    ret

let map_convex_hull map = 
    let map = map_copy map in
    let isl_map_convex_hull = foreign "isl_map_convex_hull" (Isl.map @-> returning Isl.basic_map) in
    let ret = isl_map_convex_hull map in
    Gc.finalise basic_map_free ret;
    ret

let map_simple_hull map = 
    let map = map_copy map in
    let isl_map_simple_hull = foreign "isl_map_simple_hull" (Isl.map @-> returning Isl.basic_map) in
    let ret = isl_map_simple_hull map in
    Gc.finalise basic_map_free ret;
    ret

let map_unshifted_simple_hull map = 
    let map = map_copy map in
    let isl_map_unshifted_simple_hull = foreign "isl_map_unshifted_simple_hull" (Isl.map @-> returning Isl.basic_map) in
    let ret = isl_map_unshifted_simple_hull map in
    Gc.finalise basic_map_free ret;
    ret

let basic_map_domain bmap = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_domain = foreign "isl_basic_map_domain" (Isl.basic_map @-> returning Isl.basic_set) in
    let ret = isl_basic_map_domain bmap in
    Gc.finalise basic_set_free ret;
    ret

let basic_map_range bmap = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_range = foreign "isl_basic_map_range" (Isl.basic_map @-> returning Isl.basic_set) in
    let ret = isl_basic_map_range bmap in
    Gc.finalise basic_set_free ret;
    ret

let basic_map_wrap bmap = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_wrap = foreign "isl_basic_map_wrap" (Isl.basic_map @-> returning Isl.basic_set) in
    let ret = isl_basic_map_wrap bmap in
    Gc.finalise basic_set_free ret;
    ret

let basic_map_get_div bmap pos = 
    let isl_basic_map_get_div = foreign "isl_basic_map_get_div" (Isl.basic_map @-> int @-> returning Isl.aff) in
    let ret = isl_basic_map_get_div bmap pos in
    Gc.finalise aff_free ret;
    ret

let map_get_tuple_id map typ = 
    let isl_map_get_tuple_id = foreign "isl_map_get_tuple_id" (Isl.map @-> Isl.dim_type @-> returning Isl.id) in
    let ret = isl_map_get_tuple_id map typ in
    Gc.finalise id_free ret;
    ret

let basic_map_get_local_space bmap = 
    let isl_basic_map_get_local_space = foreign "isl_basic_map_get_local_space" (Isl.basic_map @-> returning Isl.local_space) in
    let ret = isl_basic_map_get_local_space bmap in
    Gc.finalise local_space_free ret;
    ret

let basic_map_is_empty bmap = 
    let isl_basic_map_is_empty = foreign "isl_basic_map_is_empty" (Isl.basic_map @-> returning Isl.bool) in
    let ret = isl_basic_map_is_empty bmap in
    ret

let basic_map_is_equal bmap1 bmap2 = 
    let isl_basic_map_is_equal = foreign "isl_basic_map_is_equal" (Isl.basic_map @-> Isl.basic_map @-> returning Isl.bool) in
    let ret = isl_basic_map_is_equal bmap1 bmap2 in
    ret

let basic_map_is_subset bmap1 bmap2 = 
    let isl_basic_map_is_subset = foreign "isl_basic_map_is_subset" (Isl.basic_map @-> Isl.basic_map @-> returning Isl.bool) in
    let ret = isl_basic_map_is_subset bmap1 bmap2 in
    ret

let basic_set_is_wrapping bset = 
    let isl_basic_set_is_wrapping = foreign "isl_basic_set_is_wrapping" (Isl.basic_set @-> returning Isl.bool) in
    let ret = isl_basic_set_is_wrapping bset in
    ret

let map_is_bijective map = 
    let isl_map_is_bijective = foreign "isl_map_is_bijective" (Isl.map @-> returning Isl.bool) in
    let ret = isl_map_is_bijective map in
    ret

let map_is_disjoint map1 map2 = 
    let isl_map_is_disjoint = foreign "isl_map_is_disjoint" (Isl.map @-> Isl.map @-> returning Isl.bool) in
    let ret = isl_map_is_disjoint map1 map2 in
    ret

let map_is_empty map = 
    let isl_map_is_empty = foreign "isl_map_is_empty" (Isl.map @-> returning Isl.bool) in
    let ret = isl_map_is_empty map in
    ret

let map_is_equal map1 map2 = 
    let isl_map_is_equal = foreign "isl_map_is_equal" (Isl.map @-> Isl.map @-> returning Isl.bool) in
    let ret = isl_map_is_equal map1 map2 in
    ret

let map_is_injective map = 
    let isl_map_is_injective = foreign "isl_map_is_injective" (Isl.map @-> returning Isl.bool) in
    let ret = isl_map_is_injective map in
    ret

let map_is_single_valued map = 
    let isl_map_is_single_valued = foreign "isl_map_is_single_valued" (Isl.map @-> returning Isl.bool) in
    let ret = isl_map_is_single_valued map in
    ret

let map_is_strict_subset map1 map2 = 
    let isl_map_is_strict_subset = foreign "isl_map_is_strict_subset" (Isl.map @-> Isl.map @-> returning Isl.bool) in
    let ret = isl_map_is_strict_subset map1 map2 in
    ret

let map_is_subset map1 map2 = 
    let isl_map_is_subset = foreign "isl_map_is_subset" (Isl.map @-> Isl.map @-> returning Isl.bool) in
    let ret = isl_map_is_subset map1 map2 in
    ret

let set_is_wrapping set = 
    let isl_set_is_wrapping = foreign "isl_set_is_wrapping" (Isl.set @-> returning Isl.bool) in
    let ret = isl_set_is_wrapping set in
    ret

let map_deltas map = 
    let map = map_copy map in
    let isl_map_deltas = foreign "isl_map_deltas" (Isl.map @-> returning Isl.set) in
    let ret = isl_map_deltas map in
    Gc.finalise set_free ret;
    ret

let set_flatten set = 
    let set = set_copy set in
    let isl_set_flatten = foreign "isl_set_flatten" (Isl.set @-> returning Isl.set) in
    let ret = isl_set_flatten set in
    Gc.finalise set_free ret;
    ret

let basic_map_lexmax bmap = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_lexmax = foreign "isl_basic_map_lexmax" (Isl.basic_map @-> returning Isl.map) in
    let ret = isl_basic_map_lexmax bmap in
    Gc.finalise map_free ret;
    ret

let basic_map_lexmin bmap = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_lexmin = foreign "isl_basic_map_lexmin" (Isl.basic_map @-> returning Isl.map) in
    let ret = isl_basic_map_lexmin bmap in
    Gc.finalise map_free ret;
    ret

let basic_map_union bmap1 bmap2 = 
    let bmap1 = basic_map_copy bmap1 in
    let bmap2 = basic_map_copy bmap2 in
    let isl_basic_map_union = foreign "isl_basic_map_union" (Isl.basic_map @-> Isl.basic_map @-> returning Isl.map) in
    let ret = isl_basic_map_union bmap1 bmap2 in
    Gc.finalise map_free ret;
    ret

let map_apply_domain map1 map2 = 
    let map1 = map_copy map1 in
    let map2 = map_copy map2 in
    let isl_map_apply_domain = foreign "isl_map_apply_domain" (Isl.map @-> Isl.map @-> returning Isl.map) in
    let ret = isl_map_apply_domain map1 map2 in
    Gc.finalise map_free ret;
    ret

let map_apply_range map1 map2 = 
    let map1 = map_copy map1 in
    let map2 = map_copy map2 in
    let isl_map_apply_range = foreign "isl_map_apply_range" (Isl.map @-> Isl.map @-> returning Isl.map) in
    let ret = isl_map_apply_range map1 map2 in
    Gc.finalise map_free ret;
    ret

let map_coalesce map = 
    let map = map_copy map in
    let isl_map_coalesce = foreign "isl_map_coalesce" (Isl.map @-> returning Isl.map) in
    let ret = isl_map_coalesce map in
    Gc.finalise map_free ret;
    ret

let map_complement map = 
    let map = map_copy map in
    let isl_map_complement = foreign "isl_map_complement" (Isl.map @-> returning Isl.map) in
    let ret = isl_map_complement map in
    Gc.finalise map_free ret;
    ret

let map_detect_equalities map = 
    let map = map_copy map in
    let isl_map_detect_equalities = foreign "isl_map_detect_equalities" (Isl.map @-> returning Isl.map) in
    let ret = isl_map_detect_equalities map in
    Gc.finalise map_free ret;
    ret

let map_flatten map = 
    let map = map_copy map in
    let isl_map_flatten = foreign "isl_map_flatten" (Isl.map @-> returning Isl.map) in
    let ret = isl_map_flatten map in
    Gc.finalise map_free ret;
    ret

let map_flatten_domain map = 
    let map = map_copy map in
    let isl_map_flatten_domain = foreign "isl_map_flatten_domain" (Isl.map @-> returning Isl.map) in
    let ret = isl_map_flatten_domain map in
    Gc.finalise map_free ret;
    ret

let map_flatten_range map = 
    let map = map_copy map in
    let isl_map_flatten_range = foreign "isl_map_flatten_range" (Isl.map @-> returning Isl.map) in
    let ret = isl_map_flatten_range map in
    Gc.finalise map_free ret;
    ret

let map_gist map context = 
    let map = map_copy map in
    let context = map_copy context in
    let isl_map_gist = foreign "isl_map_gist" (Isl.map @-> Isl.map @-> returning Isl.map) in
    let ret = isl_map_gist map context in
    Gc.finalise map_free ret;
    ret

let map_gist_domain map context = 
    let map = map_copy map in
    let context = set_copy context in
    let isl_map_gist_domain = foreign "isl_map_gist_domain" (Isl.map @-> Isl.set @-> returning Isl.map) in
    let ret = isl_map_gist_domain map context in
    Gc.finalise map_free ret;
    ret

let map_intersect map1 map2 = 
    let map1 = map_copy map1 in
    let map2 = map_copy map2 in
    let isl_map_intersect = foreign "isl_map_intersect" (Isl.map @-> Isl.map @-> returning Isl.map) in
    let ret = isl_map_intersect map1 map2 in
    Gc.finalise map_free ret;
    ret

let map_intersect_domain map set = 
    let map = map_copy map in
    let set = set_copy set in
    let isl_map_intersect_domain = foreign "isl_map_intersect_domain" (Isl.map @-> Isl.set @-> returning Isl.map) in
    let ret = isl_map_intersect_domain map set in
    Gc.finalise map_free ret;
    ret

let map_intersect_params map params = 
    let map = map_copy map in
    let params = set_copy params in
    let isl_map_intersect_params = foreign "isl_map_intersect_params" (Isl.map @-> Isl.set @-> returning Isl.map) in
    let ret = isl_map_intersect_params map params in
    Gc.finalise map_free ret;
    ret

let map_intersect_range map set = 
    let map = map_copy map in
    let set = set_copy set in
    let isl_map_intersect_range = foreign "isl_map_intersect_range" (Isl.map @-> Isl.set @-> returning Isl.map) in
    let ret = isl_map_intersect_range map set in
    Gc.finalise map_free ret;
    ret

let map_lexmax map = 
    let map = map_copy map in
    let isl_map_lexmax = foreign "isl_map_lexmax" (Isl.map @-> returning Isl.map) in
    let ret = isl_map_lexmax map in
    Gc.finalise map_free ret;
    ret

let map_lexmin map = 
    let map = map_copy map in
    let isl_map_lexmin = foreign "isl_map_lexmin" (Isl.map @-> returning Isl.map) in
    let ret = isl_map_lexmin map in
    Gc.finalise map_free ret;
    ret

let map_reverse map = 
    let map = map_copy map in
    let isl_map_reverse = foreign "isl_map_reverse" (Isl.map @-> returning Isl.map) in
    let ret = isl_map_reverse map in
    Gc.finalise map_free ret;
    ret

let map_subtract map1 map2 = 
    let map1 = map_copy map1 in
    let map2 = map_copy map2 in
    let isl_map_subtract = foreign "isl_map_subtract" (Isl.map @-> Isl.map @-> returning Isl.map) in
    let ret = isl_map_subtract map1 map2 in
    Gc.finalise map_free ret;
    ret

let map_union map1 map2 = 
    let map1 = map_copy map1 in
    let map2 = map_copy map2 in
    let isl_map_union = foreign "isl_map_union" (Isl.map @-> Isl.map @-> returning Isl.map) in
    let ret = isl_map_union map1 map2 in
    Gc.finalise map_free ret;
    ret

let set_identity set = 
    let set = set_copy set in
    let isl_set_identity = foreign "isl_set_identity" (Isl.set @-> returning Isl.map) in
    let ret = isl_set_identity set in
    Gc.finalise map_free ret;
    ret

let basic_map_affine_hull bmap = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_affine_hull = foreign "isl_basic_map_affine_hull" (Isl.basic_map @-> returning Isl.basic_map) in
    let ret = isl_basic_map_affine_hull bmap in
    Gc.finalise basic_map_free ret;
    ret

let basic_map_apply_domain bmap1 bmap2 = 
    let bmap1 = basic_map_copy bmap1 in
    let bmap2 = basic_map_copy bmap2 in
    let isl_basic_map_apply_domain = foreign "isl_basic_map_apply_domain" (Isl.basic_map @-> Isl.basic_map @-> returning Isl.basic_map) in
    let ret = isl_basic_map_apply_domain bmap1 bmap2 in
    Gc.finalise basic_map_free ret;
    ret

let basic_map_apply_range bmap1 bmap2 = 
    let bmap1 = basic_map_copy bmap1 in
    let bmap2 = basic_map_copy bmap2 in
    let isl_basic_map_apply_range = foreign "isl_basic_map_apply_range" (Isl.basic_map @-> Isl.basic_map @-> returning Isl.basic_map) in
    let ret = isl_basic_map_apply_range bmap1 bmap2 in
    Gc.finalise basic_map_free ret;
    ret

let basic_map_detect_equalities bmap = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_detect_equalities = foreign "isl_basic_map_detect_equalities" (Isl.basic_map @-> returning Isl.basic_map) in
    let ret = isl_basic_map_detect_equalities bmap in
    Gc.finalise basic_map_free ret;
    ret

let basic_map_flatten bmap = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_flatten = foreign "isl_basic_map_flatten" (Isl.basic_map @-> returning Isl.basic_map) in
    let ret = isl_basic_map_flatten bmap in
    Gc.finalise basic_map_free ret;
    ret

let basic_map_flatten_domain bmap = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_flatten_domain = foreign "isl_basic_map_flatten_domain" (Isl.basic_map @-> returning Isl.basic_map) in
    let ret = isl_basic_map_flatten_domain bmap in
    Gc.finalise basic_map_free ret;
    ret

let basic_map_flatten_range bmap = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_flatten_range = foreign "isl_basic_map_flatten_range" (Isl.basic_map @-> returning Isl.basic_map) in
    let ret = isl_basic_map_flatten_range bmap in
    Gc.finalise basic_map_free ret;
    ret

let basic_map_gist bmap context = 
    let bmap = basic_map_copy bmap in
    let context = basic_map_copy context in
    let isl_basic_map_gist = foreign "isl_basic_map_gist" (Isl.basic_map @-> Isl.basic_map @-> returning Isl.basic_map) in
    let ret = isl_basic_map_gist bmap context in
    Gc.finalise basic_map_free ret;
    ret

let basic_map_intersect bmap1 bmap2 = 
    let bmap1 = basic_map_copy bmap1 in
    let bmap2 = basic_map_copy bmap2 in
    let isl_basic_map_intersect = foreign "isl_basic_map_intersect" (Isl.basic_map @-> Isl.basic_map @-> returning Isl.basic_map) in
    let ret = isl_basic_map_intersect bmap1 bmap2 in
    Gc.finalise basic_map_free ret;
    ret

let basic_map_intersect_domain bmap bset = 
    let bmap = basic_map_copy bmap in
    let bset = basic_set_copy bset in
    let isl_basic_map_intersect_domain = foreign "isl_basic_map_intersect_domain" (Isl.basic_map @-> Isl.basic_set @-> returning Isl.basic_map) in
    let ret = isl_basic_map_intersect_domain bmap bset in
    Gc.finalise basic_map_free ret;
    ret

let basic_map_intersect_range bmap bset = 
    let bmap = basic_map_copy bmap in
    let bset = basic_set_copy bset in
    let isl_basic_map_intersect_range = foreign "isl_basic_map_intersect_range" (Isl.basic_map @-> Isl.basic_set @-> returning Isl.basic_map) in
    let ret = isl_basic_map_intersect_range bmap bset in
    Gc.finalise basic_map_free ret;
    ret

let basic_map_reverse bmap = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_reverse = foreign "isl_basic_map_reverse" (Isl.basic_map @-> returning Isl.basic_map) in
    let ret = isl_basic_map_reverse bmap in
    Gc.finalise basic_map_free ret;
    ret

let basic_map_sample bmap = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_sample = foreign "isl_basic_map_sample" (Isl.basic_map @-> returning Isl.basic_map) in
    let ret = isl_basic_map_sample bmap in
    Gc.finalise basic_map_free ret;
    ret

let map_affine_hull map = 
    let map = map_copy map in
    let isl_map_affine_hull = foreign "isl_map_affine_hull" (Isl.map @-> returning Isl.basic_map) in
    let ret = isl_map_affine_hull map in
    Gc.finalise basic_map_free ret;
    ret

let map_polyhedral_hull map = 
    let map = map_copy map in
    let isl_map_polyhedral_hull = foreign "isl_map_polyhedral_hull" (Isl.map @-> returning Isl.basic_map) in
    let ret = isl_map_polyhedral_hull map in
    Gc.finalise basic_map_free ret;
    ret

let map_sample map = 
    let map = map_copy map in
    let isl_map_sample = foreign "isl_map_sample" (Isl.map @-> returning Isl.basic_map) in
    let ret = isl_map_sample map in
    Gc.finalise basic_map_free ret;
    ret

let basic_map_deltas bmap = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_deltas = foreign "isl_basic_map_deltas" (Isl.basic_map @-> returning Isl.basic_set) in
    let ret = isl_basic_map_deltas bmap in
    Gc.finalise basic_set_free ret;
    ret

let basic_set_flatten bset = 
    let bset = basic_set_copy bset in
    let isl_basic_set_flatten = foreign "isl_basic_set_flatten" (Isl.basic_set @-> returning Isl.basic_set) in
    let ret = isl_basic_set_flatten bset in
    Gc.finalise basic_set_free ret;
    ret

let map_from_basic_map bmap = 
    let bmap = basic_map_copy bmap in
    let isl_map_from_basic_map = foreign "isl_map_from_basic_map" (Isl.basic_map @-> returning Isl.map) in
    let ret = isl_map_from_basic_map bmap in
    Gc.finalise map_free ret;
    ret

let map_read_from_str ctx str = 
    let isl_map_read_from_str = foreign "isl_map_read_from_str" (Isl.ctx @-> string @-> returning Isl.map) in
    let ret = isl_map_read_from_str ctx str in
    Gc.finalise map_free ret;
    ret

let basic_map_read_from_str ctx str = 
    let isl_basic_map_read_from_str = foreign "isl_basic_map_read_from_str" (Isl.ctx @-> string @-> returning Isl.basic_map) in
    let ret = isl_basic_map_read_from_str ctx str in
    Gc.finalise basic_map_free ret;
    ret

