open Types
open Ctypes
open Foreign
open IslMemory
open Errors

let empty_like ctx model = 
    let isl_basic_map_empty_like = foreign "isl_basic_map_empty_like" (Types.basic_map @-> returning Types.basic_map) in
    let ret = isl_basic_map_empty_like model in
    check_for_errors ctx;
    ret

let empty_like_map ctx model = 
    let isl_basic_map_empty_like_map = foreign "isl_basic_map_empty_like_map" (Types.map @-> returning Types.basic_map) in
    let ret = isl_basic_map_empty_like_map model in
    check_for_errors ctx;
    ret

let finalize ctx bmap = 
    let isl_basic_map_finalize = foreign "isl_basic_map_finalize" (Types.basic_map @-> returning Types.basic_map) in
    let ret = isl_basic_map_finalize bmap in
    check_for_errors ctx;
    ret

let identity_like ctx model = 
    let isl_basic_map_identity_like = foreign "isl_basic_map_identity_like" (Types.basic_map @-> returning Types.basic_map) in
    let ret = isl_basic_map_identity_like model in
    check_for_errors ctx;
    ret

let neg ctx bmap = 
    let isl_basic_map_neg = foreign "isl_basic_map_neg" (Types.basic_map @-> returning Types.basic_map) in
    let ret = isl_basic_map_neg bmap in
    check_for_errors ctx;
    ret

let simplify ctx bmap = 
    let isl_basic_map_simplify = foreign "isl_basic_map_simplify" (Types.basic_map @-> returning Types.basic_map) in
    let ret = isl_basic_map_simplify bmap in
    check_for_errors ctx;
    ret

let sum ctx bmap1 bmap2 = 
    let isl_basic_map_sum = foreign "isl_basic_map_sum" (Types.basic_map @-> Types.basic_map @-> returning Types.basic_map) in
    let ret = isl_basic_map_sum bmap1 bmap2 in
    check_for_errors ctx;
    ret

let dump ctx bmap = 
    let isl_basic_map_dump = foreign "isl_basic_map_dump" (Types.basic_map @-> returning void) in
    let ret = isl_basic_map_dump bmap in
    check_for_errors ctx;
    ret

let get_tuple_name ctx bmap typ = 
    let isl_basic_map_get_tuple_name = foreign "isl_basic_map_get_tuple_name" (Types.basic_map @-> dim_type @-> returning string) in
    let ret = isl_basic_map_get_tuple_name bmap typ in
    check_for_errors ctx;
    ret

let can_curry ctx bmap = 
    let isl_basic_map_can_curry = foreign "isl_basic_map_can_curry" (Types.basic_map @-> returning bool) in
    let ret = isl_basic_map_can_curry bmap in
    check_for_errors ctx;
    ret

let can_uncurry ctx bmap = 
    let isl_basic_map_can_uncurry = foreign "isl_basic_map_can_uncurry" (Types.basic_map @-> returning bool) in
    let ret = isl_basic_map_can_uncurry bmap in
    check_for_errors ctx;
    ret

let can_zip ctx bmap = 
    let isl_basic_map_can_zip = foreign "isl_basic_map_can_zip" (Types.basic_map @-> returning bool) in
    let ret = isl_basic_map_can_zip bmap in
    check_for_errors ctx;
    ret

let fast_is_empty ctx bmap = 
    let isl_basic_map_fast_is_empty = foreign "isl_basic_map_fast_is_empty" (Types.basic_map @-> returning bool) in
    let ret = isl_basic_map_fast_is_empty bmap in
    check_for_errors ctx;
    ret

let image_is_bounded ctx bmap = 
    let isl_basic_map_image_is_bounded = foreign "isl_basic_map_image_is_bounded" (Types.basic_map @-> returning bool) in
    let ret = isl_basic_map_image_is_bounded bmap in
    check_for_errors ctx;
    ret

let is_disjoint ctx bmap1 bmap2 = 
    let isl_basic_map_is_disjoint = foreign "isl_basic_map_is_disjoint" (Types.basic_map @-> Types.basic_map @-> returning bool) in
    let ret = isl_basic_map_is_disjoint bmap1 bmap2 in
    check_for_errors ctx;
    ret

let is_rational ctx bmap = 
    let isl_basic_map_is_rational = foreign "isl_basic_map_is_rational" (Types.basic_map @-> returning bool) in
    let ret = isl_basic_map_is_rational bmap in
    check_for_errors ctx;
    ret

let is_single_valued ctx bmap = 
    let isl_basic_map_is_single_valued = foreign "isl_basic_map_is_single_valued" (Types.basic_map @-> returning bool) in
    let ret = isl_basic_map_is_single_valued bmap in
    check_for_errors ctx;
    ret

let is_strict_subset ctx bmap1 bmap2 = 
    let isl_basic_map_is_strict_subset = foreign "isl_basic_map_is_strict_subset" (Types.basic_map @-> Types.basic_map @-> returning bool) in
    let ret = isl_basic_map_is_strict_subset bmap1 bmap2 in
    check_for_errors ctx;
    ret

let is_universe ctx bmap = 
    let isl_basic_map_is_universe = foreign "isl_basic_map_is_universe" (Types.basic_map @-> returning bool) in
    let ret = isl_basic_map_is_universe bmap in
    check_for_errors ctx;
    ret

let plain_is_empty ctx bmap = 
    let isl_basic_map_plain_is_empty = foreign "isl_basic_map_plain_is_empty" (Types.basic_map @-> returning bool) in
    let ret = isl_basic_map_plain_is_empty bmap in
    check_for_errors ctx;
    ret

let get_space ctx bmap = 
    let isl_basic_map_get_space = foreign "isl_basic_map_get_space" (Types.basic_map @-> returning Types.space) in
    let ret = isl_basic_map_get_space bmap in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let compute_divs ctx bmap = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_compute_divs = foreign "isl_basic_map_compute_divs" (Types.basic_map @-> returning Types.map) in
    let ret = isl_basic_map_compute_divs bmap in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let align_params ctx bmap model = 
    let bmap = basic_map_copy bmap in
    let model = space_copy model in
    let isl_basic_map_align_params = foreign "isl_basic_map_align_params" (Types.basic_map @-> Types.space @-> returning Types.basic_map) in
    let ret = isl_basic_map_align_params bmap model in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let curry ctx bmap = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_curry = foreign "isl_basic_map_curry" (Types.basic_map @-> returning Types.basic_map) in
    let ret = isl_basic_map_curry bmap in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let deltas_map ctx bmap = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_deltas_map = foreign "isl_basic_map_deltas_map" (Types.basic_map @-> returning Types.basic_map) in
    let ret = isl_basic_map_deltas_map bmap in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let domain_map ctx bmap = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_domain_map = foreign "isl_basic_map_domain_map" (Types.basic_map @-> returning Types.basic_map) in
    let ret = isl_basic_map_domain_map bmap in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let domain_product ctx bmap1 bmap2 = 
    let bmap1 = basic_map_copy bmap1 in
    let bmap2 = basic_map_copy bmap2 in
    let isl_basic_map_domain_product = foreign "isl_basic_map_domain_product" (Types.basic_map @-> Types.basic_map @-> returning Types.basic_map) in
    let ret = isl_basic_map_domain_product bmap1 bmap2 in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let empty ctx dim = 
    let dim = space_copy dim in
    let isl_basic_map_empty = foreign "isl_basic_map_empty" (Types.space @-> returning Types.basic_map) in
    let ret = isl_basic_map_empty dim in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let equate ctx bmap type1 pos1 type2 pos2 = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_equate = foreign "isl_basic_map_equate" (Types.basic_map @-> dim_type @-> int @-> dim_type @-> int @-> returning Types.basic_map) in
    let ret = isl_basic_map_equate bmap type1 pos1 type2 pos2 in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let flat_product ctx bmap1 bmap2 = 
    let bmap1 = basic_map_copy bmap1 in
    let bmap2 = basic_map_copy bmap2 in
    let isl_basic_map_flat_product = foreign "isl_basic_map_flat_product" (Types.basic_map @-> Types.basic_map @-> returning Types.basic_map) in
    let ret = isl_basic_map_flat_product bmap1 bmap2 in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let flat_range_product ctx bmap1 bmap2 = 
    let bmap1 = basic_map_copy bmap1 in
    let bmap2 = basic_map_copy bmap2 in
    let isl_basic_map_flat_range_product = foreign "isl_basic_map_flat_range_product" (Types.basic_map @-> Types.basic_map @-> returning Types.basic_map) in
    let ret = isl_basic_map_flat_range_product bmap1 bmap2 in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let from_aff ctx aff = 
    let aff = aff_copy aff in
    let isl_basic_map_from_aff = foreign "isl_basic_map_from_aff" (Types.aff @-> returning Types.basic_map) in
    let ret = isl_basic_map_from_aff aff in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let from_basic_set ctx bset dim = 
    let bset = basic_set_copy bset in
    let dim = space_copy dim in
    let isl_basic_map_from_basic_set = foreign "isl_basic_map_from_basic_set" (Types.basic_set @-> Types.space @-> returning Types.basic_map) in
    let ret = isl_basic_map_from_basic_set bset dim in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let from_domain ctx bset = 
    let bset = basic_set_copy bset in
    let isl_basic_map_from_domain = foreign "isl_basic_map_from_domain" (Types.basic_set @-> returning Types.basic_map) in
    let ret = isl_basic_map_from_domain bset in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let from_domain_and_range ctx domain range = 
    let domain = basic_set_copy domain in
    let range = basic_set_copy range in
    let isl_basic_map_from_domain_and_range = foreign "isl_basic_map_from_domain_and_range" (Types.basic_set @-> Types.basic_set @-> returning Types.basic_map) in
    let ret = isl_basic_map_from_domain_and_range domain range in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let from_range ctx bset = 
    let bset = basic_set_copy bset in
    let isl_basic_map_from_range = foreign "isl_basic_map_from_range" (Types.basic_set @-> returning Types.basic_map) in
    let ret = isl_basic_map_from_range bset in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let identity ctx dim = 
    let dim = space_copy dim in
    let isl_basic_map_identity = foreign "isl_basic_map_identity" (Types.space @-> returning Types.basic_map) in
    let ret = isl_basic_map_identity dim in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let nat_universe ctx dim = 
    let dim = space_copy dim in
    let isl_basic_map_nat_universe = foreign "isl_basic_map_nat_universe" (Types.space @-> returning Types.basic_map) in
    let ret = isl_basic_map_nat_universe dim in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let order_ge ctx bmap type1 pos1 type2 pos2 = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_order_ge = foreign "isl_basic_map_order_ge" (Types.basic_map @-> dim_type @-> int @-> dim_type @-> int @-> returning Types.basic_map) in
    let ret = isl_basic_map_order_ge bmap type1 pos1 type2 pos2 in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let order_gt ctx bmap type1 pos1 type2 pos2 = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_order_gt = foreign "isl_basic_map_order_gt" (Types.basic_map @-> dim_type @-> int @-> dim_type @-> int @-> returning Types.basic_map) in
    let ret = isl_basic_map_order_gt bmap type1 pos1 type2 pos2 in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let product ctx bmap1 bmap2 = 
    let bmap1 = basic_map_copy bmap1 in
    let bmap2 = basic_map_copy bmap2 in
    let isl_basic_map_product = foreign "isl_basic_map_product" (Types.basic_map @-> Types.basic_map @-> returning Types.basic_map) in
    let ret = isl_basic_map_product bmap1 bmap2 in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let range_map ctx bmap = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_range_map = foreign "isl_basic_map_range_map" (Types.basic_map @-> returning Types.basic_map) in
    let ret = isl_basic_map_range_map bmap in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let range_product ctx bmap1 bmap2 = 
    let bmap1 = basic_map_copy bmap1 in
    let bmap2 = basic_map_copy bmap2 in
    let isl_basic_map_range_product = foreign "isl_basic_map_range_product" (Types.basic_map @-> Types.basic_map @-> returning Types.basic_map) in
    let ret = isl_basic_map_range_product bmap1 bmap2 in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let remove_divs ctx bmap = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_remove_divs = foreign "isl_basic_map_remove_divs" (Types.basic_map @-> returning Types.basic_map) in
    let ret = isl_basic_map_remove_divs bmap in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let remove_redundancies ctx bmap = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_remove_redundancies = foreign "isl_basic_map_remove_redundancies" (Types.basic_map @-> returning Types.basic_map) in
    let ret = isl_basic_map_remove_redundancies bmap in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let set_tuple_id ctx bmap typ id = 
    let bmap = basic_map_copy bmap in
    let id = id_copy id in
    let isl_basic_map_set_tuple_id = foreign "isl_basic_map_set_tuple_id" (Types.basic_map @-> dim_type @-> Types.id @-> returning Types.basic_map) in
    let ret = isl_basic_map_set_tuple_id bmap typ id in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let set_tuple_name ctx bmap typ s = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_set_tuple_name = foreign "isl_basic_map_set_tuple_name" (Types.basic_map @-> dim_type @-> string @-> returning Types.basic_map) in
    let ret = isl_basic_map_set_tuple_name bmap typ s in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let uncurry ctx bmap = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_uncurry = foreign "isl_basic_map_uncurry" (Types.basic_map @-> returning Types.basic_map) in
    let ret = isl_basic_map_uncurry bmap in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let universe ctx dim = 
    let dim = space_copy dim in
    let isl_basic_map_universe = foreign "isl_basic_map_universe" (Types.space @-> returning Types.basic_map) in
    let ret = isl_basic_map_universe dim in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let universe_like ctx bmap = 
    let isl_basic_map_universe_like = foreign "isl_basic_map_universe_like" (Types.basic_map @-> returning Types.basic_map) in
    let ret = isl_basic_map_universe_like bmap in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let zip ctx bmap = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_zip = foreign "isl_basic_map_zip" (Types.basic_map @-> returning Types.basic_map) in
    let ret = isl_basic_map_zip bmap in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let domain ctx bmap = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_domain = foreign "isl_basic_map_domain" (Types.basic_map @-> returning Types.basic_set) in
    let ret = isl_basic_map_domain bmap in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let range ctx bmap = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_range = foreign "isl_basic_map_range" (Types.basic_map @-> returning Types.basic_set) in
    let ret = isl_basic_map_range bmap in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let wrap ctx bmap = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_wrap = foreign "isl_basic_map_wrap" (Types.basic_map @-> returning Types.basic_set) in
    let ret = isl_basic_map_wrap bmap in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let get_div ctx bmap pos = 
    let isl_basic_map_get_div = foreign "isl_basic_map_get_div" (Types.basic_map @-> int @-> returning Types.aff) in
    let ret = isl_basic_map_get_div bmap pos in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let get_local_space ctx bmap = 
    let isl_basic_map_get_local_space = foreign "isl_basic_map_get_local_space" (Types.basic_map @-> returning Types.local_space) in
    let ret = isl_basic_map_get_local_space bmap in
    check_for_errors ctx;
    Gc.finalise local_space_free ret;
    ret

let is_empty ctx bmap = 
    let isl_basic_map_is_empty = foreign "isl_basic_map_is_empty" (Types.basic_map @-> returning bool) in
    let ret = isl_basic_map_is_empty bmap in
    check_for_errors ctx;
    ret

let is_equal ctx bmap1 bmap2 = 
    let isl_basic_map_is_equal = foreign "isl_basic_map_is_equal" (Types.basic_map @-> Types.basic_map @-> returning bool) in
    let ret = isl_basic_map_is_equal bmap1 bmap2 in
    check_for_errors ctx;
    ret

let is_subset ctx bmap1 bmap2 = 
    let isl_basic_map_is_subset = foreign "isl_basic_map_is_subset" (Types.basic_map @-> Types.basic_map @-> returning bool) in
    let ret = isl_basic_map_is_subset bmap1 bmap2 in
    check_for_errors ctx;
    ret

let lexmax ctx bmap = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_lexmax = foreign "isl_basic_map_lexmax" (Types.basic_map @-> returning Types.map) in
    let ret = isl_basic_map_lexmax bmap in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let lexmin ctx bmap = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_lexmin = foreign "isl_basic_map_lexmin" (Types.basic_map @-> returning Types.map) in
    let ret = isl_basic_map_lexmin bmap in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let union ctx bmap1 bmap2 = 
    let bmap1 = basic_map_copy bmap1 in
    let bmap2 = basic_map_copy bmap2 in
    let isl_basic_map_union = foreign "isl_basic_map_union" (Types.basic_map @-> Types.basic_map @-> returning Types.map) in
    let ret = isl_basic_map_union bmap1 bmap2 in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let affine_hull ctx bmap = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_affine_hull = foreign "isl_basic_map_affine_hull" (Types.basic_map @-> returning Types.basic_map) in
    let ret = isl_basic_map_affine_hull bmap in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let apply_domain ctx bmap1 bmap2 = 
    let bmap1 = basic_map_copy bmap1 in
    let bmap2 = basic_map_copy bmap2 in
    let isl_basic_map_apply_domain = foreign "isl_basic_map_apply_domain" (Types.basic_map @-> Types.basic_map @-> returning Types.basic_map) in
    let ret = isl_basic_map_apply_domain bmap1 bmap2 in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let apply_range ctx bmap1 bmap2 = 
    let bmap1 = basic_map_copy bmap1 in
    let bmap2 = basic_map_copy bmap2 in
    let isl_basic_map_apply_range = foreign "isl_basic_map_apply_range" (Types.basic_map @-> Types.basic_map @-> returning Types.basic_map) in
    let ret = isl_basic_map_apply_range bmap1 bmap2 in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let detect_equalities ctx bmap = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_detect_equalities = foreign "isl_basic_map_detect_equalities" (Types.basic_map @-> returning Types.basic_map) in
    let ret = isl_basic_map_detect_equalities bmap in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let flatten ctx bmap = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_flatten = foreign "isl_basic_map_flatten" (Types.basic_map @-> returning Types.basic_map) in
    let ret = isl_basic_map_flatten bmap in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let flatten_domain ctx bmap = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_flatten_domain = foreign "isl_basic_map_flatten_domain" (Types.basic_map @-> returning Types.basic_map) in
    let ret = isl_basic_map_flatten_domain bmap in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let flatten_range ctx bmap = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_flatten_range = foreign "isl_basic_map_flatten_range" (Types.basic_map @-> returning Types.basic_map) in
    let ret = isl_basic_map_flatten_range bmap in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let gist ctx bmap context = 
    let bmap = basic_map_copy bmap in
    let context = basic_map_copy context in
    let isl_basic_map_gist = foreign "isl_basic_map_gist" (Types.basic_map @-> Types.basic_map @-> returning Types.basic_map) in
    let ret = isl_basic_map_gist bmap context in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let intersect ctx bmap1 bmap2 = 
    let bmap1 = basic_map_copy bmap1 in
    let bmap2 = basic_map_copy bmap2 in
    let isl_basic_map_intersect = foreign "isl_basic_map_intersect" (Types.basic_map @-> Types.basic_map @-> returning Types.basic_map) in
    let ret = isl_basic_map_intersect bmap1 bmap2 in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let intersect_domain ctx bmap bset = 
    let bmap = basic_map_copy bmap in
    let bset = basic_set_copy bset in
    let isl_basic_map_intersect_domain = foreign "isl_basic_map_intersect_domain" (Types.basic_map @-> Types.basic_set @-> returning Types.basic_map) in
    let ret = isl_basic_map_intersect_domain bmap bset in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let intersect_range ctx bmap bset = 
    let bmap = basic_map_copy bmap in
    let bset = basic_set_copy bset in
    let isl_basic_map_intersect_range = foreign "isl_basic_map_intersect_range" (Types.basic_map @-> Types.basic_set @-> returning Types.basic_map) in
    let ret = isl_basic_map_intersect_range bmap bset in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let reverse ctx bmap = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_reverse = foreign "isl_basic_map_reverse" (Types.basic_map @-> returning Types.basic_map) in
    let ret = isl_basic_map_reverse bmap in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let sample ctx bmap = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_sample = foreign "isl_basic_map_sample" (Types.basic_map @-> returning Types.basic_map) in
    let ret = isl_basic_map_sample bmap in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let deltas ctx bmap = 
    let bmap = basic_map_copy bmap in
    let isl_basic_map_deltas = foreign "isl_basic_map_deltas" (Types.basic_map @-> returning Types.basic_set) in
    let ret = isl_basic_map_deltas bmap in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let of_string ctx str = 
    let isl_basic_map_read_from_str = foreign "isl_basic_map_read_from_str" (Ctx.t @-> string @-> returning Types.basic_map) in
    let ret = isl_basic_map_read_from_str ctx str in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

