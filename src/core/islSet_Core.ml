open Types
open Ctypes
open Foreign
open IslMemory
open IslErrors

let isl_set_find_dim_by_id = foreign "isl_set_find_dim_by_id" (Types.set @-> dim_type @-> Types.id @-> returning int)
let find_dim_by_id ctx set typ id = 
    let ret = isl_set_find_dim_by_id set typ id in
    check_for_errors ctx;
    ret

let isl_set_find_dim_by_name = foreign "isl_set_find_dim_by_name" (Types.set @-> dim_type @-> string @-> returning int)
let find_dim_by_name ctx set typ name = 
    let ret = isl_set_find_dim_by_name set typ name in
    check_for_errors ctx;
    ret

let isl_set_follows_at = foreign "isl_set_follows_at" (Types.set @-> Types.set @-> int @-> returning int)
let follows_at ctx set1 set2 pos = 
    let ret = isl_set_follows_at set1 set2 pos in
    check_for_errors ctx;
    ret

let isl_set_n_basic_set = foreign "isl_set_n_basic_set" (Types.set @-> returning int)
let n_basic_set ctx set = 
    let ret = isl_set_n_basic_set set in
    check_for_errors ctx;
    ret

let isl_set_plain_cmp = foreign "isl_set_plain_cmp" (Types.set @-> Types.set @-> returning int)
let plain_cmp ctx set1 set2 = 
    let ret = isl_set_plain_cmp set1 set2 in
    check_for_errors ctx;
    ret

let isl_set_size = foreign "isl_set_size" (Types.set @-> returning int)
let size ctx set = 
    let ret = isl_set_size set in
    check_for_errors ctx;
    ret

let isl_set_drop_basic_set = foreign "isl_set_drop_basic_set" (Types.set @-> Types.basic_set @-> returning Types.set)
let drop_basic_set ctx set bset = 
    let ret = isl_set_drop_basic_set set bset in
    check_for_errors ctx;
    ret

let isl_set_dup = foreign "isl_set_dup" (Types.set @-> returning Types.set)
let dup ctx set = 
    let ret = isl_set_dup set in
    check_for_errors ctx;
    ret

let isl_set_empty_like = foreign "isl_set_empty_like" (Types.set @-> returning Types.set)
let empty_like ctx set = 
    let ret = isl_set_empty_like set in
    check_for_errors ctx;
    ret

let isl_set_finalize = foreign "isl_set_finalize" (Types.set @-> returning Types.set)
let finalize ctx set = 
    let ret = isl_set_finalize set in
    check_for_errors ctx;
    ret

let isl_set_from_map = foreign "isl_set_from_map" (Types.map @-> returning Types.set)
let from_map ctx map = 
    let ret = isl_set_from_map map in
    check_for_errors ctx;
    ret

let isl_set_from_underlying_set = foreign "isl_set_from_underlying_set" (Types.set @-> Types.basic_set @-> returning Types.set)
let from_underlying_set ctx set like = 
    let ret = isl_set_from_underlying_set set like in
    check_for_errors ctx;
    ret

let isl_set_to_underlying_set = foreign "isl_set_to_underlying_set" (Types.set @-> returning Types.set)
let to_underlying_set ctx set = 
    let ret = isl_set_to_underlying_set set in
    check_for_errors ctx;
    ret

let isl_set_union_disjoint = foreign "isl_set_union_disjoint" (Types.set @-> Types.set @-> returning Types.set)
let union_disjoint ctx set1 set2 = 
    let ret = isl_set_union_disjoint set1 set2 in
    check_for_errors ctx;
    ret

let isl_set_bounded_simple_hull = foreign "isl_set_bounded_simple_hull" (Types.set @-> returning Types.basic_set)
let bounded_simple_hull ctx set = 
    let ret = isl_set_bounded_simple_hull set in
    check_for_errors ctx;
    ret

let isl_set_copy_basic_set = foreign "isl_set_copy_basic_set" (Types.set @-> returning Types.basic_set)
let copy_basic_set ctx set = 
    let ret = isl_set_copy_basic_set set in
    check_for_errors ctx;
    ret

let isl_set_dump = foreign "isl_set_dump" (Types.set @-> returning void)
let dump ctx set = 
    let ret = isl_set_dump set in
    check_for_errors ctx;
    ret

let isl_set_get_tuple_name = foreign "isl_set_get_tuple_name" (Types.set @-> returning string)
let get_tuple_name ctx set = 
    let ret = isl_set_get_tuple_name set in
    check_for_errors ctx;
    ret

let isl_set_fast_is_disjoint = foreign "isl_set_fast_is_disjoint" (Types.set @-> Types.set @-> returning bool)
let fast_is_disjoint ctx set1 set2 = 
    let ret = isl_set_fast_is_disjoint set1 set2 in
    check_for_errors ctx;
    ret

let isl_set_fast_is_empty = foreign "isl_set_fast_is_empty" (Types.set @-> returning bool)
let fast_is_empty ctx set = 
    let ret = isl_set_fast_is_empty set in
    check_for_errors ctx;
    ret

let isl_set_fast_is_equal = foreign "isl_set_fast_is_equal" (Types.set @-> Types.set @-> returning bool)
let fast_is_equal ctx set1 set2 = 
    let ret = isl_set_fast_is_equal set1 set2 in
    check_for_errors ctx;
    ret

let isl_set_fast_is_universe = foreign "isl_set_fast_is_universe" (Types.set @-> returning bool)
let fast_is_universe ctx set = 
    let ret = isl_set_fast_is_universe set in
    check_for_errors ctx;
    ret

let isl_set_has_equal_space = foreign "isl_set_has_equal_space" (Types.set @-> Types.set @-> returning bool)
let has_equal_space ctx set1 set2 = 
    let ret = isl_set_has_equal_space set1 set2 in
    check_for_errors ctx;
    ret

let isl_set_has_tuple_id = foreign "isl_set_has_tuple_id" (Types.set @-> returning bool)
let has_tuple_id ctx set = 
    let ret = isl_set_has_tuple_id set in
    check_for_errors ctx;
    ret

let isl_set_has_tuple_name = foreign "isl_set_has_tuple_name" (Types.set @-> returning bool)
let has_tuple_name ctx set = 
    let ret = isl_set_has_tuple_name set in
    check_for_errors ctx;
    ret

let isl_set_is_bounded = foreign "isl_set_is_bounded" (Types.set @-> returning bool)
let is_bounded ctx set = 
    let ret = isl_set_is_bounded set in
    check_for_errors ctx;
    ret

let isl_set_is_box = foreign "isl_set_is_box" (Types.set @-> returning bool)
let is_box ctx set = 
    let ret = isl_set_is_box set in
    check_for_errors ctx;
    ret

let isl_set_is_params = foreign "isl_set_is_params" (Types.set @-> returning bool)
let is_params ctx set = 
    let ret = isl_set_is_params set in
    check_for_errors ctx;
    ret

let isl_set_is_singleton = foreign "isl_set_is_singleton" (Types.set @-> returning bool)
let is_singleton ctx set = 
    let ret = isl_set_is_singleton set in
    check_for_errors ctx;
    ret

let isl_set_plain_is_disjoint = foreign "isl_set_plain_is_disjoint" (Types.set @-> Types.set @-> returning bool)
let plain_is_disjoint ctx set1 set2 = 
    let ret = isl_set_plain_is_disjoint set1 set2 in
    check_for_errors ctx;
    ret

let isl_set_plain_is_empty = foreign "isl_set_plain_is_empty" (Types.set @-> returning bool)
let plain_is_empty ctx set = 
    let ret = isl_set_plain_is_empty set in
    check_for_errors ctx;
    ret

let isl_set_plain_is_equal = foreign "isl_set_plain_is_equal" (Types.set @-> Types.set @-> returning bool)
let plain_is_equal ctx set1 set2 = 
    let ret = isl_set_plain_is_equal set1 set2 in
    check_for_errors ctx;
    ret

let isl_set_plain_is_universe = foreign "isl_set_plain_is_universe" (Types.set @-> returning bool)
let plain_is_universe ctx set = 
    let ret = isl_set_plain_is_universe set in
    check_for_errors ctx;
    ret

let isl_set_add_basic_set = foreign "isl_set_add_basic_set" (Types.set @-> Types.basic_set @-> returning Types.set)
let add_basic_set ctx set bset = 
    let set = set_copy set in
    let bset = basic_set_copy bset in
    let ret = isl_set_add_basic_set set bset in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_set_align_divs = foreign "isl_set_align_divs" (Types.set @-> returning Types.set)
let align_divs ctx set = 
    let set = set_copy set in
    let ret = isl_set_align_divs set in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_set_align_params = foreign "isl_set_align_params" (Types.set @-> Types.space @-> returning Types.set)
let align_params ctx set model = 
    let set = set_copy set in
    let model = space_copy model in
    let ret = isl_set_align_params set model in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_set_compute_divs = foreign "isl_set_compute_divs" (Types.set @-> returning Types.set)
let compute_divs ctx set = 
    let set = set_copy set in
    let ret = isl_set_compute_divs set in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_set_empty = foreign "isl_set_empty" (Types.space @-> returning Types.set)
let empty ctx dim = 
    let dim = space_copy dim in
    let ret = isl_set_empty dim in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_set_equate = foreign "isl_set_equate" (Types.set @-> dim_type @-> int @-> dim_type @-> int @-> returning Types.set)
let equate ctx set type1 pos1 type2 pos2 = 
    let set = set_copy set in
    let ret = isl_set_equate set type1 pos1 type2 pos2 in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_set_flat_product = foreign "isl_set_flat_product" (Types.set @-> Types.set @-> returning Types.set)
let flat_product ctx set1 set2 = 
    let set1 = set_copy set1 in
    let set2 = set_copy set2 in
    let ret = isl_set_flat_product set1 set2 in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_set_from_params = foreign "isl_set_from_params" (Types.set @-> returning Types.set)
let from_params ctx set = 
    let set = set_copy set in
    let ret = isl_set_from_params set in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_set_from_union_set = foreign "isl_set_from_union_set" (Types.union_set @-> returning Types.set)
let from_union_set ctx uset = 
    let uset = union_set_copy uset in
    let ret = isl_set_from_union_set uset in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_set_gist_basic_set = foreign "isl_set_gist_basic_set" (Types.set @-> Types.basic_set @-> returning Types.set)
let gist_basic_set ctx set context = 
    let set = set_copy set in
    let context = basic_set_copy context in
    let ret = isl_set_gist_basic_set set context in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_set_gist_params = foreign "isl_set_gist_params" (Types.set @-> Types.set @-> returning Types.set)
let gist_params ctx set context = 
    let set = set_copy set in
    let context = set_copy context in
    let ret = isl_set_gist_params set context in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_set_lift = foreign "isl_set_lift" (Types.set @-> returning Types.set)
let lift ctx set = 
    let set = set_copy set in
    let ret = isl_set_lift set in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_set_make_disjoint = foreign "isl_set_make_disjoint" (Types.set @-> returning Types.set)
let make_disjoint ctx set = 
    let set = set_copy set in
    let ret = isl_set_make_disjoint set in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_set_nat_universe = foreign "isl_set_nat_universe" (Types.space @-> returning Types.set)
let nat_universe ctx dim = 
    let dim = space_copy dim in
    let ret = isl_set_nat_universe dim in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_set_neg = foreign "isl_set_neg" (Types.set @-> returning Types.set)
let neg ctx set = 
    let set = set_copy set in
    let ret = isl_set_neg set in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_set_params = foreign "isl_set_params" (Types.set @-> returning Types.set)
let params ctx set = 
    let set = set_copy set in
    let ret = isl_set_params set in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_set_product = foreign "isl_set_product" (Types.set @-> Types.set @-> returning Types.set)
let product ctx set1 set2 = 
    let set1 = set_copy set1 in
    let set2 = set_copy set2 in
    let ret = isl_set_product set1 set2 in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_set_recession_cone = foreign "isl_set_recession_cone" (Types.set @-> returning Types.set)
let recession_cone ctx set = 
    let set = set_copy set in
    let ret = isl_set_recession_cone set in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_set_remove_divs = foreign "isl_set_remove_divs" (Types.set @-> returning Types.set)
let remove_divs ctx set = 
    let set = set_copy set in
    let ret = isl_set_remove_divs set in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_set_remove_redundancies = foreign "isl_set_remove_redundancies" (Types.set @-> returning Types.set)
let remove_redundancies ctx set = 
    let set = set_copy set in
    let ret = isl_set_remove_redundancies set in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_set_remove_unknown_divs = foreign "isl_set_remove_unknown_divs" (Types.set @-> returning Types.set)
let remove_unknown_divs ctx set = 
    let set = set_copy set in
    let ret = isl_set_remove_unknown_divs set in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_set_reset_space = foreign "isl_set_reset_space" (Types.set @-> Types.space @-> returning Types.set)
let reset_space ctx set dim = 
    let set = set_copy set in
    let dim = space_copy dim in
    let ret = isl_set_reset_space set dim in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_set_reset_tuple_id = foreign "isl_set_reset_tuple_id" (Types.set @-> returning Types.set)
let reset_tuple_id ctx set = 
    let set = set_copy set in
    let ret = isl_set_reset_tuple_id set in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_set_reset_user = foreign "isl_set_reset_user" (Types.set @-> returning Types.set)
let reset_user ctx set = 
    let set = set_copy set in
    let ret = isl_set_reset_user set in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_set_set_tuple_id = foreign "isl_set_set_tuple_id" (Types.set @-> Types.id @-> returning Types.set)
let set_tuple_id ctx set id = 
    let set = set_copy set in
    let id = id_copy id in
    let ret = isl_set_set_tuple_id set id in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_set_set_tuple_name = foreign "isl_set_set_tuple_name" (Types.set @-> string @-> returning Types.set)
let set_tuple_name ctx set s = 
    let set = set_copy set in
    let ret = isl_set_set_tuple_name set s in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_set_sum = foreign "isl_set_sum" (Types.set @-> Types.set @-> returning Types.set)
let sum ctx set1 set2 = 
    let set1 = set_copy set1 in
    let set2 = set_copy set2 in
    let ret = isl_set_sum set1 set2 in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_set_universe = foreign "isl_set_universe" (Types.space @-> returning Types.set)
let universe ctx dim = 
    let dim = space_copy dim in
    let ret = isl_set_universe dim in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_set_universe_like = foreign "isl_set_universe_like" (Types.set @-> returning Types.set)
let universe_like ctx model = 
    let ret = isl_set_universe_like model in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_set_get_space = foreign "isl_set_get_space" (Types.set @-> returning Types.space)
let get_space ctx set = 
    let ret = isl_set_get_space set in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_set_flatten_map = foreign "isl_set_flatten_map" (Types.set @-> returning Types.map)
let flatten_map ctx set = 
    let set = set_copy set in
    let ret = isl_set_flatten_map set in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let isl_set_lex_ge_set = foreign "isl_set_lex_ge_set" (Types.set @-> Types.set @-> returning Types.map)
let lex_ge_set ctx set1 set2 = 
    let set1 = set_copy set1 in
    let set2 = set_copy set2 in
    let ret = isl_set_lex_ge_set set1 set2 in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let isl_set_lex_gt_set = foreign "isl_set_lex_gt_set" (Types.set @-> Types.set @-> returning Types.map)
let lex_gt_set ctx set1 set2 = 
    let set1 = set_copy set1 in
    let set2 = set_copy set2 in
    let ret = isl_set_lex_gt_set set1 set2 in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let isl_set_lex_le_set = foreign "isl_set_lex_le_set" (Types.set @-> Types.set @-> returning Types.map)
let lex_le_set ctx set1 set2 = 
    let set1 = set_copy set1 in
    let set2 = set_copy set2 in
    let ret = isl_set_lex_le_set set1 set2 in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let isl_set_lex_lt_set = foreign "isl_set_lex_lt_set" (Types.set @-> Types.set @-> returning Types.map)
let lex_lt_set ctx set1 set2 = 
    let set1 = set_copy set1 in
    let set2 = set_copy set2 in
    let ret = isl_set_lex_lt_set set1 set2 in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let isl_set_lifting = foreign "isl_set_lifting" (Types.set @-> returning Types.map)
let lifting ctx set = 
    let set = set_copy set in
    let ret = isl_set_lifting set in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let isl_set_unwrap = foreign "isl_set_unwrap" (Types.set @-> returning Types.map)
let unwrap ctx set = 
    let set = set_copy set in
    let ret = isl_set_unwrap set in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let isl_set_coefficients = foreign "isl_set_coefficients" (Types.set @-> returning Types.basic_set)
let coefficients ctx set = 
    let set = set_copy set in
    let ret = isl_set_coefficients set in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_set_convex_hull = foreign "isl_set_convex_hull" (Types.set @-> returning Types.basic_set)
let convex_hull ctx set = 
    let set = set_copy set in
    let ret = isl_set_convex_hull set in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_set_simple_hull = foreign "isl_set_simple_hull" (Types.set @-> returning Types.basic_set)
let simple_hull ctx set = 
    let set = set_copy set in
    let ret = isl_set_simple_hull set in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_set_solutions = foreign "isl_set_solutions" (Types.set @-> returning Types.basic_set)
let solutions ctx set = 
    let set = set_copy set in
    let ret = isl_set_solutions set in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_set_unshifted_simple_hull = foreign "isl_set_unshifted_simple_hull" (Types.set @-> returning Types.basic_set)
let unshifted_simple_hull ctx set = 
    let set = set_copy set in
    let ret = isl_set_unshifted_simple_hull set in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_set_count_val = foreign "isl_set_count_val" (Types.set @-> returning Types.value)
let count_val ctx set = 
    let ret = isl_set_count_val set in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let isl_set_max_val = foreign "isl_set_max_val" (Types.set @-> Types.aff @-> returning Types.value)
let max_val ctx set obj = 
    let ret = isl_set_max_val set obj in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let isl_set_min_val = foreign "isl_set_min_val" (Types.set @-> Types.aff @-> returning Types.value)
let min_val ctx set obj = 
    let ret = isl_set_min_val set obj in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let isl_set_get_tuple_id = foreign "isl_set_get_tuple_id" (Types.set @-> returning Types.id)
let get_tuple_id ctx set = 
    let ret = isl_set_get_tuple_id set in
    check_for_errors ctx;
    Gc.finalise id_free ret;
    ret

let isl_set_to_str = foreign "isl_set_to_str" (Types.set @-> returning string)
let to_string ctx set = 
    let ret = isl_set_to_str set in
    check_for_errors ctx;
    Gc.finalise (fun _ -> ()) ret;
    ret

let isl_set_is_disjoint = foreign "isl_set_is_disjoint" (Types.set @-> Types.set @-> returning bool)
let is_disjoint ctx set1 set2 = 
    let ret = isl_set_is_disjoint set1 set2 in
    check_for_errors ctx;
    ret

let isl_set_is_empty = foreign "isl_set_is_empty" (Types.set @-> returning bool)
let is_empty ctx set = 
    let ret = isl_set_is_empty set in
    check_for_errors ctx;
    ret

let isl_set_is_equal = foreign "isl_set_is_equal" (Types.set @-> Types.set @-> returning bool)
let is_equal ctx set1 set2 = 
    let ret = isl_set_is_equal set1 set2 in
    check_for_errors ctx;
    ret

let isl_set_is_strict_subset = foreign "isl_set_is_strict_subset" (Types.set @-> Types.set @-> returning bool)
let is_strict_subset ctx set1 set2 = 
    let ret = isl_set_is_strict_subset set1 set2 in
    check_for_errors ctx;
    ret

let isl_set_is_subset = foreign "isl_set_is_subset" (Types.set @-> Types.set @-> returning bool)
let is_subset ctx set1 set2 = 
    let ret = isl_set_is_subset set1 set2 in
    check_for_errors ctx;
    ret

let isl_set_is_wrapping = foreign "isl_set_is_wrapping" (Types.set @-> returning bool)
let is_wrapping ctx set = 
    let ret = isl_set_is_wrapping set in
    check_for_errors ctx;
    ret

let isl_set_apply = foreign "isl_set_apply" (Types.set @-> Types.map @-> returning Types.set)
let apply ctx set map = 
    let set = set_copy set in
    let map = map_copy map in
    let ret = isl_set_apply set map in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_set_coalesce = foreign "isl_set_coalesce" (Types.set @-> returning Types.set)
let coalesce ctx set = 
    let set = set_copy set in
    let ret = isl_set_coalesce set in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_set_complement = foreign "isl_set_complement" (Types.set @-> returning Types.set)
let complement ctx set = 
    let set = set_copy set in
    let ret = isl_set_complement set in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_set_detect_equalities = foreign "isl_set_detect_equalities" (Types.set @-> returning Types.set)
let detect_equalities ctx set = 
    let set = set_copy set in
    let ret = isl_set_detect_equalities set in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_set_flatten = foreign "isl_set_flatten" (Types.set @-> returning Types.set)
let flatten ctx set = 
    let set = set_copy set in
    let ret = isl_set_flatten set in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_set_gist = foreign "isl_set_gist" (Types.set @-> Types.set @-> returning Types.set)
let gist ctx set context = 
    let set = set_copy set in
    let context = set_copy context in
    let ret = isl_set_gist set context in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_set_intersect = foreign "isl_set_intersect" (Types.set @-> Types.set @-> returning Types.set)
let intersect ctx set1 set2 = 
    let set1 = set_copy set1 in
    let set2 = set_copy set2 in
    let ret = isl_set_intersect set1 set2 in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_set_intersect_params = foreign "isl_set_intersect_params" (Types.set @-> Types.set @-> returning Types.set)
let intersect_params ctx set params = 
    let set = set_copy set in
    let params = set_copy params in
    let ret = isl_set_intersect_params set params in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_set_lexmax = foreign "isl_set_lexmax" (Types.set @-> returning Types.set)
let lexmax ctx set = 
    let set = set_copy set in
    let ret = isl_set_lexmax set in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_set_lexmin = foreign "isl_set_lexmin" (Types.set @-> returning Types.set)
let lexmin ctx set = 
    let set = set_copy set in
    let ret = isl_set_lexmin set in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_set_subtract = foreign "isl_set_subtract" (Types.set @-> Types.set @-> returning Types.set)
let subtract ctx set1 set2 = 
    let set1 = set_copy set1 in
    let set2 = set_copy set2 in
    let ret = isl_set_subtract set1 set2 in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_set_union = foreign "isl_set_union" (Types.set @-> Types.set @-> returning Types.set)
let union ctx set1 set2 = 
    let set1 = set_copy set1 in
    let set2 = set_copy set2 in
    let ret = isl_set_union set1 set2 in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_set_identity = foreign "isl_set_identity" (Types.set @-> returning Types.map)
let identity ctx set = 
    let set = set_copy set in
    let ret = isl_set_identity set in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let isl_set_affine_hull = foreign "isl_set_affine_hull" (Types.set @-> returning Types.basic_set)
let affine_hull ctx set = 
    let set = set_copy set in
    let ret = isl_set_affine_hull set in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_set_polyhedral_hull = foreign "isl_set_polyhedral_hull" (Types.set @-> returning Types.basic_set)
let polyhedral_hull ctx set = 
    let set = set_copy set in
    let ret = isl_set_polyhedral_hull set in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_set_sample = foreign "isl_set_sample" (Types.set @-> returning Types.basic_set)
let sample ctx set = 
    let set = set_copy set in
    let ret = isl_set_sample set in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_set_from_basic_set = foreign "isl_set_from_basic_set" (Types.basic_set @-> returning Types.set)
let from_basic_set ctx bset = 
    let bset = basic_set_copy bset in
    let ret = isl_set_from_basic_set bset in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_set_read_from_str = foreign "isl_set_read_from_str" (Types.ctx @-> string @-> returning Types.set)
let of_string ctx str = 
    let ret = isl_set_read_from_str ctx str in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

