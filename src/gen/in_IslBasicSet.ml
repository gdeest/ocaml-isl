open Types
open Ctypes
open Foreign
open IslMemory
open Errors

let compare_at ctx bset1 bset2 pos = 
    let isl_basic_set_compare_at = foreign "isl_basic_set_compare_at" (Types.basic_set @-> Types.basic_set @-> int @-> returning int) in
    let ret = isl_basic_set_compare_at bset1 bset2 pos in
    check_for_errors ctx;
    ret

let n_constraint ctx bset = 
    let isl_basic_set_n_constraint = foreign "isl_basic_set_n_constraint" (Types.basic_set @-> returning int) in
    let ret = isl_basic_set_n_constraint bset in
    check_for_errors ctx;
    ret

let compute_divs ctx bset = 
    let isl_basic_set_compute_divs = foreign "isl_basic_set_compute_divs" (Types.basic_set @-> returning Types.set) in
    let ret = isl_basic_set_compute_divs bset in
    check_for_errors ctx;
    ret

let dup ctx bset = 
    let isl_basic_set_dup = foreign "isl_basic_set_dup" (Types.basic_set @-> returning Types.basic_set) in
    let ret = isl_basic_set_dup bset in
    check_for_errors ctx;
    ret

let empty_like ctx bset = 
    let isl_basic_set_empty_like = foreign "isl_basic_set_empty_like" (Types.basic_set @-> returning Types.basic_set) in
    let ret = isl_basic_set_empty_like bset in
    check_for_errors ctx;
    ret

let finalize ctx bset = 
    let isl_basic_set_finalize = foreign "isl_basic_set_finalize" (Types.basic_set @-> returning Types.basic_set) in
    let ret = isl_basic_set_finalize bset in
    check_for_errors ctx;
    ret

let from_basic_map ctx bmap = 
    let isl_basic_set_from_basic_map = foreign "isl_basic_set_from_basic_map" (Types.basic_map @-> returning Types.basic_set) in
    let ret = isl_basic_set_from_basic_map bmap in
    check_for_errors ctx;
    ret

let from_underlying_set ctx bset like = 
    let isl_basic_set_from_underlying_set = foreign "isl_basic_set_from_underlying_set" (Types.basic_set @-> Types.basic_set @-> returning Types.basic_set) in
    let ret = isl_basic_set_from_underlying_set bset like in
    check_for_errors ctx;
    ret

let simplify ctx bset = 
    let isl_basic_set_simplify = foreign "isl_basic_set_simplify" (Types.basic_set @-> returning Types.basic_set) in
    let ret = isl_basic_set_simplify bset in
    check_for_errors ctx;
    ret

let universe_like ctx bset = 
    let isl_basic_set_universe_like = foreign "isl_basic_set_universe_like" (Types.basic_set @-> returning Types.basic_set) in
    let ret = isl_basic_set_universe_like bset in
    check_for_errors ctx;
    ret

let dump ctx bset = 
    let isl_basic_set_dump = foreign "isl_basic_set_dump" (Types.basic_set @-> returning void) in
    let ret = isl_basic_set_dump bset in
    check_for_errors ctx;
    ret

let get_tuple_name ctx bset = 
    let isl_basic_set_get_tuple_name = foreign "isl_basic_set_get_tuple_name" (Types.basic_set @-> returning string) in
    let ret = isl_basic_set_get_tuple_name bset in
    check_for_errors ctx;
    ret

let fast_is_empty ctx bset = 
    let isl_basic_set_fast_is_empty = foreign "isl_basic_set_fast_is_empty" (Types.basic_set @-> returning bool) in
    let ret = isl_basic_set_fast_is_empty bset in
    check_for_errors ctx;
    ret

let is_bounded ctx bset = 
    let isl_basic_set_is_bounded = foreign "isl_basic_set_is_bounded" (Types.basic_set @-> returning bool) in
    let ret = isl_basic_set_is_bounded bset in
    check_for_errors ctx;
    ret

let is_disjoint ctx bset1 bset2 = 
    let isl_basic_set_is_disjoint = foreign "isl_basic_set_is_disjoint" (Types.basic_set @-> Types.basic_set @-> returning bool) in
    let ret = isl_basic_set_is_disjoint bset1 bset2 in
    check_for_errors ctx;
    ret

let is_rational ctx bset = 
    let isl_basic_set_is_rational = foreign "isl_basic_set_is_rational" (Types.basic_set @-> returning bool) in
    let ret = isl_basic_set_is_rational bset in
    check_for_errors ctx;
    ret

let is_universe ctx bset = 
    let isl_basic_set_is_universe = foreign "isl_basic_set_is_universe" (Types.basic_set @-> returning bool) in
    let ret = isl_basic_set_is_universe bset in
    check_for_errors ctx;
    ret

let plain_is_empty ctx bset = 
    let isl_basic_set_plain_is_empty = foreign "isl_basic_set_plain_is_empty" (Types.basic_set @-> returning bool) in
    let ret = isl_basic_set_plain_is_empty bset in
    check_for_errors ctx;
    ret

let plain_is_equal ctx bset1 bset2 = 
    let isl_basic_set_plain_is_equal = foreign "isl_basic_set_plain_is_equal" (Types.basic_set @-> Types.basic_set @-> returning bool) in
    let ret = isl_basic_set_plain_is_equal bset1 bset2 in
    check_for_errors ctx;
    ret

let get_space ctx bset = 
    let isl_basic_set_get_space = foreign "isl_basic_set_get_space" (Types.basic_set @-> returning Types.space) in
    let ret = isl_basic_set_get_space bset in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let unwrap ctx bset = 
    let bset = basic_set_copy bset in
    let isl_basic_set_unwrap = foreign "isl_basic_set_unwrap" (Types.basic_set @-> returning Types.basic_map) in
    let ret = isl_basic_set_unwrap bset in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let align_params ctx bset model = 
    let bset = basic_set_copy bset in
    let model = space_copy model in
    let isl_basic_set_align_params = foreign "isl_basic_set_align_params" (Types.basic_set @-> Types.space @-> returning Types.basic_set) in
    let ret = isl_basic_set_align_params bset model in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let coefficients ctx bset = 
    let bset = basic_set_copy bset in
    let isl_basic_set_coefficients = foreign "isl_basic_set_coefficients" (Types.basic_set @-> returning Types.basic_set) in
    let ret = isl_basic_set_coefficients bset in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let empty ctx dim = 
    let dim = space_copy dim in
    let isl_basic_set_empty = foreign "isl_basic_set_empty" (Types.space @-> returning Types.basic_set) in
    let ret = isl_basic_set_empty dim in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let flat_product ctx bset1 bset2 = 
    let bset1 = basic_set_copy bset1 in
    let bset2 = basic_set_copy bset2 in
    let isl_basic_set_flat_product = foreign "isl_basic_set_flat_product" (Types.basic_set @-> Types.basic_set @-> returning Types.basic_set) in
    let ret = isl_basic_set_flat_product bset1 bset2 in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let from_params ctx bset = 
    let bset = basic_set_copy bset in
    let isl_basic_set_from_params = foreign "isl_basic_set_from_params" (Types.basic_set @-> returning Types.basic_set) in
    let ret = isl_basic_set_from_params bset in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let lift ctx bset = 
    let bset = basic_set_copy bset in
    let isl_basic_set_lift = foreign "isl_basic_set_lift" (Types.basic_set @-> returning Types.basic_set) in
    let ret = isl_basic_set_lift bset in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let nat_universe ctx dim = 
    let dim = space_copy dim in
    let isl_basic_set_nat_universe = foreign "isl_basic_set_nat_universe" (Types.space @-> returning Types.basic_set) in
    let ret = isl_basic_set_nat_universe dim in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let neg ctx bset = 
    let bset = basic_set_copy bset in
    let isl_basic_set_neg = foreign "isl_basic_set_neg" (Types.basic_set @-> returning Types.basic_set) in
    let ret = isl_basic_set_neg bset in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let params ctx bset = 
    let bset = basic_set_copy bset in
    let isl_basic_set_params = foreign "isl_basic_set_params" (Types.basic_set @-> returning Types.basic_set) in
    let ret = isl_basic_set_params bset in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let positive_orthant ctx space = 
    let space = space_copy space in
    let isl_basic_set_positive_orthant = foreign "isl_basic_set_positive_orthant" (Types.space @-> returning Types.basic_set) in
    let ret = isl_basic_set_positive_orthant space in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let remove_divs ctx bset = 
    let bset = basic_set_copy bset in
    let isl_basic_set_remove_divs = foreign "isl_basic_set_remove_divs" (Types.basic_set @-> returning Types.basic_set) in
    let ret = isl_basic_set_remove_divs bset in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let remove_redundancies ctx bset = 
    let bset = basic_set_copy bset in
    let isl_basic_set_remove_redundancies = foreign "isl_basic_set_remove_redundancies" (Types.basic_set @-> returning Types.basic_set) in
    let ret = isl_basic_set_remove_redundancies bset in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let remove_unknown_divs ctx bset = 
    let bset = basic_set_copy bset in
    let isl_basic_set_remove_unknown_divs = foreign "isl_basic_set_remove_unknown_divs" (Types.basic_set @-> returning Types.basic_set) in
    let ret = isl_basic_set_remove_unknown_divs bset in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let set_tuple_id ctx bset id = 
    let bset = basic_set_copy bset in
    let id = id_copy id in
    let isl_basic_set_set_tuple_id = foreign "isl_basic_set_set_tuple_id" (Types.basic_set @-> Types.id @-> returning Types.basic_set) in
    let ret = isl_basic_set_set_tuple_id bset id in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let set_tuple_name ctx set s = 
    let set = basic_set_copy set in
    let isl_basic_set_set_tuple_name = foreign "isl_basic_set_set_tuple_name" (Types.basic_set @-> string @-> returning Types.basic_set) in
    let ret = isl_basic_set_set_tuple_name set s in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let solutions ctx bset = 
    let bset = basic_set_copy bset in
    let isl_basic_set_solutions = foreign "isl_basic_set_solutions" (Types.basic_set @-> returning Types.basic_set) in
    let ret = isl_basic_set_solutions bset in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let universe ctx dim = 
    let dim = space_copy dim in
    let isl_basic_set_universe = foreign "isl_basic_set_universe" (Types.space @-> returning Types.basic_set) in
    let ret = isl_basic_set_universe dim in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let universe_like_set ctx model = 
    let isl_basic_set_universe_like_set = foreign "isl_basic_set_universe_like_set" (Types.set @-> returning Types.basic_set) in
    let ret = isl_basic_set_universe_like_set model in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let max_val ctx bset obj = 
    let isl_basic_set_max_val = foreign "isl_basic_set_max_val" (Types.basic_set @-> Types.aff @-> returning Types.value) in
    let ret = isl_basic_set_max_val bset obj in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let get_div ctx bset pos = 
    let isl_basic_set_get_div = foreign "isl_basic_set_get_div" (Types.basic_set @-> int @-> returning Types.aff) in
    let ret = isl_basic_set_get_div bset pos in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let get_local_space ctx bset = 
    let isl_basic_set_get_local_space = foreign "isl_basic_set_get_local_space" (Types.basic_set @-> returning Types.local_space) in
    let ret = isl_basic_set_get_local_space bset in
    check_for_errors ctx;
    Gc.finalise local_space_free ret;
    ret

let is_empty ctx bset = 
    let isl_basic_set_is_empty = foreign "isl_basic_set_is_empty" (Types.basic_set @-> returning bool) in
    let ret = isl_basic_set_is_empty bset in
    check_for_errors ctx;
    ret

let is_equal ctx bset1 bset2 = 
    let isl_basic_set_is_equal = foreign "isl_basic_set_is_equal" (Types.basic_set @-> Types.basic_set @-> returning bool) in
    let ret = isl_basic_set_is_equal bset1 bset2 in
    check_for_errors ctx;
    ret

let is_subset ctx bset1 bset2 = 
    let isl_basic_set_is_subset = foreign "isl_basic_set_is_subset" (Types.basic_set @-> Types.basic_set @-> returning bool) in
    let ret = isl_basic_set_is_subset bset1 bset2 in
    check_for_errors ctx;
    ret

let is_wrapping ctx bset = 
    let isl_basic_set_is_wrapping = foreign "isl_basic_set_is_wrapping" (Types.basic_set @-> returning bool) in
    let ret = isl_basic_set_is_wrapping bset in
    check_for_errors ctx;
    ret

let lexmax ctx bset = 
    let bset = basic_set_copy bset in
    let isl_basic_set_lexmax = foreign "isl_basic_set_lexmax" (Types.basic_set @-> returning Types.set) in
    let ret = isl_basic_set_lexmax bset in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let lexmin ctx bset = 
    let bset = basic_set_copy bset in
    let isl_basic_set_lexmin = foreign "isl_basic_set_lexmin" (Types.basic_set @-> returning Types.set) in
    let ret = isl_basic_set_lexmin bset in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let union ctx bset1 bset2 = 
    let bset1 = basic_set_copy bset1 in
    let bset2 = basic_set_copy bset2 in
    let isl_basic_set_union = foreign "isl_basic_set_union" (Types.basic_set @-> Types.basic_set @-> returning Types.set) in
    let ret = isl_basic_set_union bset1 bset2 in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let affine_hull ctx bset = 
    let bset = basic_set_copy bset in
    let isl_basic_set_affine_hull = foreign "isl_basic_set_affine_hull" (Types.basic_set @-> returning Types.basic_set) in
    let ret = isl_basic_set_affine_hull bset in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let apply ctx bset bmap = 
    let bset = basic_set_copy bset in
    let bmap = basic_map_copy bmap in
    let isl_basic_set_apply = foreign "isl_basic_set_apply" (Types.basic_set @-> Types.basic_map @-> returning Types.basic_set) in
    let ret = isl_basic_set_apply bset bmap in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let detect_equalities ctx bset = 
    let bset = basic_set_copy bset in
    let isl_basic_set_detect_equalities = foreign "isl_basic_set_detect_equalities" (Types.basic_set @-> returning Types.basic_set) in
    let ret = isl_basic_set_detect_equalities bset in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let flatten ctx bset = 
    let bset = basic_set_copy bset in
    let isl_basic_set_flatten = foreign "isl_basic_set_flatten" (Types.basic_set @-> returning Types.basic_set) in
    let ret = isl_basic_set_flatten bset in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let gist ctx bset context = 
    let bset = basic_set_copy bset in
    let context = basic_set_copy context in
    let isl_basic_set_gist = foreign "isl_basic_set_gist" (Types.basic_set @-> Types.basic_set @-> returning Types.basic_set) in
    let ret = isl_basic_set_gist bset context in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let intersect ctx bset1 bset2 = 
    let bset1 = basic_set_copy bset1 in
    let bset2 = basic_set_copy bset2 in
    let isl_basic_set_intersect = foreign "isl_basic_set_intersect" (Types.basic_set @-> Types.basic_set @-> returning Types.basic_set) in
    let ret = isl_basic_set_intersect bset1 bset2 in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let intersect_params ctx bset1 bset2 = 
    let bset1 = basic_set_copy bset1 in
    let bset2 = basic_set_copy bset2 in
    let isl_basic_set_intersect_params = foreign "isl_basic_set_intersect_params" (Types.basic_set @-> Types.basic_set @-> returning Types.basic_set) in
    let ret = isl_basic_set_intersect_params bset1 bset2 in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let sample ctx bset = 
    let bset = basic_set_copy bset in
    let isl_basic_set_sample = foreign "isl_basic_set_sample" (Types.basic_set @-> returning Types.basic_set) in
    let ret = isl_basic_set_sample bset in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let of_string ctx str = 
    let isl_basic_set_read_from_str = foreign "isl_basic_set_read_from_str" (Ctx.t @-> string @-> returning Types.basic_set) in
    let ret = isl_basic_set_read_from_str ctx str in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

