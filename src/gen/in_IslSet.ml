open Types
open Ctypes
open Foreign
open IslMemory
open Errors

let find_dim_by_id ctx set typ id = 
    let isl_set_find_dim_by_id = foreign "isl_set_find_dim_by_id" (Types.set @-> dim_type @-> Types.id @-> returning int) in
    let ret = isl_set_find_dim_by_id set typ id in
    check_for_errors ctx;
    ret

let find_dim_by_name ctx set typ name = 
    let isl_set_find_dim_by_name = foreign "isl_set_find_dim_by_name" (Types.set @-> dim_type @-> string @-> returning int) in
    let ret = isl_set_find_dim_by_name set typ name in
    check_for_errors ctx;
    ret

let follows_at ctx set1 set2 pos = 
    let isl_set_follows_at = foreign "isl_set_follows_at" (Types.set @-> Types.set @-> int @-> returning int) in
    let ret = isl_set_follows_at set1 set2 pos in
    check_for_errors ctx;
    ret

let n_basic_set ctx set = 
    let isl_set_n_basic_set = foreign "isl_set_n_basic_set" (Types.set @-> returning int) in
    let ret = isl_set_n_basic_set set in
    check_for_errors ctx;
    ret

let plain_cmp ctx set1 set2 = 
    let isl_set_plain_cmp = foreign "isl_set_plain_cmp" (Types.set @-> Types.set @-> returning int) in
    let ret = isl_set_plain_cmp set1 set2 in
    check_for_errors ctx;
    ret

let size ctx set = 
    let isl_set_size = foreign "isl_set_size" (Types.set @-> returning int) in
    let ret = isl_set_size set in
    check_for_errors ctx;
    ret

let drop_basic_set ctx set bset = 
    let isl_set_drop_basic_set = foreign "isl_set_drop_basic_set" (Types.set @-> Types.basic_set @-> returning Types.set) in
    let ret = isl_set_drop_basic_set set bset in
    check_for_errors ctx;
    ret

let dup ctx set = 
    let isl_set_dup = foreign "isl_set_dup" (Types.set @-> returning Types.set) in
    let ret = isl_set_dup set in
    check_for_errors ctx;
    ret

let empty_like ctx set = 
    let isl_set_empty_like = foreign "isl_set_empty_like" (Types.set @-> returning Types.set) in
    let ret = isl_set_empty_like set in
    check_for_errors ctx;
    ret

let finalize ctx set = 
    let isl_set_finalize = foreign "isl_set_finalize" (Types.set @-> returning Types.set) in
    let ret = isl_set_finalize set in
    check_for_errors ctx;
    ret

let from_map ctx map = 
    let isl_set_from_map = foreign "isl_set_from_map" (Types.map @-> returning Types.set) in
    let ret = isl_set_from_map map in
    check_for_errors ctx;
    ret

let from_underlying_set ctx set like = 
    let isl_set_from_underlying_set = foreign "isl_set_from_underlying_set" (Types.set @-> Types.basic_set @-> returning Types.set) in
    let ret = isl_set_from_underlying_set set like in
    check_for_errors ctx;
    ret

let to_underlying_set ctx set = 
    let isl_set_to_underlying_set = foreign "isl_set_to_underlying_set" (Types.set @-> returning Types.set) in
    let ret = isl_set_to_underlying_set set in
    check_for_errors ctx;
    ret

let union_disjoint ctx set1 set2 = 
    let isl_set_union_disjoint = foreign "isl_set_union_disjoint" (Types.set @-> Types.set @-> returning Types.set) in
    let ret = isl_set_union_disjoint set1 set2 in
    check_for_errors ctx;
    ret

let bounded_simple_hull ctx set = 
    let isl_set_bounded_simple_hull = foreign "isl_set_bounded_simple_hull" (Types.set @-> returning Types.basic_set) in
    let ret = isl_set_bounded_simple_hull set in
    check_for_errors ctx;
    ret

let copy_basic_set ctx set = 
    let isl_set_copy_basic_set = foreign "isl_set_copy_basic_set" (Types.set @-> returning Types.basic_set) in
    let ret = isl_set_copy_basic_set set in
    check_for_errors ctx;
    ret

let dump ctx set = 
    let isl_set_dump = foreign "isl_set_dump" (Types.set @-> returning void) in
    let ret = isl_set_dump set in
    check_for_errors ctx;
    ret

let get_tuple_name ctx set = 
    let isl_set_get_tuple_name = foreign "isl_set_get_tuple_name" (Types.set @-> returning string) in
    let ret = isl_set_get_tuple_name set in
    check_for_errors ctx;
    ret

let fast_is_disjoint ctx set1 set2 = 
    let isl_set_fast_is_disjoint = foreign "isl_set_fast_is_disjoint" (Types.set @-> Types.set @-> returning bool) in
    let ret = isl_set_fast_is_disjoint set1 set2 in
    check_for_errors ctx;
    ret

let fast_is_empty ctx set = 
    let isl_set_fast_is_empty = foreign "isl_set_fast_is_empty" (Types.set @-> returning bool) in
    let ret = isl_set_fast_is_empty set in
    check_for_errors ctx;
    ret

let fast_is_equal ctx set1 set2 = 
    let isl_set_fast_is_equal = foreign "isl_set_fast_is_equal" (Types.set @-> Types.set @-> returning bool) in
    let ret = isl_set_fast_is_equal set1 set2 in
    check_for_errors ctx;
    ret

let fast_is_universe ctx set = 
    let isl_set_fast_is_universe = foreign "isl_set_fast_is_universe" (Types.set @-> returning bool) in
    let ret = isl_set_fast_is_universe set in
    check_for_errors ctx;
    ret

let has_equal_space ctx set1 set2 = 
    let isl_set_has_equal_space = foreign "isl_set_has_equal_space" (Types.set @-> Types.set @-> returning bool) in
    let ret = isl_set_has_equal_space set1 set2 in
    check_for_errors ctx;
    ret

let has_tuple_id ctx set = 
    let isl_set_has_tuple_id = foreign "isl_set_has_tuple_id" (Types.set @-> returning bool) in
    let ret = isl_set_has_tuple_id set in
    check_for_errors ctx;
    ret

let has_tuple_name ctx set = 
    let isl_set_has_tuple_name = foreign "isl_set_has_tuple_name" (Types.set @-> returning bool) in
    let ret = isl_set_has_tuple_name set in
    check_for_errors ctx;
    ret

let is_bounded ctx set = 
    let isl_set_is_bounded = foreign "isl_set_is_bounded" (Types.set @-> returning bool) in
    let ret = isl_set_is_bounded set in
    check_for_errors ctx;
    ret

let is_box ctx set = 
    let isl_set_is_box = foreign "isl_set_is_box" (Types.set @-> returning bool) in
    let ret = isl_set_is_box set in
    check_for_errors ctx;
    ret

let is_params ctx set = 
    let isl_set_is_params = foreign "isl_set_is_params" (Types.set @-> returning bool) in
    let ret = isl_set_is_params set in
    check_for_errors ctx;
    ret

let is_singleton ctx set = 
    let isl_set_is_singleton = foreign "isl_set_is_singleton" (Types.set @-> returning bool) in
    let ret = isl_set_is_singleton set in
    check_for_errors ctx;
    ret

let plain_is_disjoint ctx set1 set2 = 
    let isl_set_plain_is_disjoint = foreign "isl_set_plain_is_disjoint" (Types.set @-> Types.set @-> returning bool) in
    let ret = isl_set_plain_is_disjoint set1 set2 in
    check_for_errors ctx;
    ret

let plain_is_empty ctx set = 
    let isl_set_plain_is_empty = foreign "isl_set_plain_is_empty" (Types.set @-> returning bool) in
    let ret = isl_set_plain_is_empty set in
    check_for_errors ctx;
    ret

let plain_is_equal ctx set1 set2 = 
    let isl_set_plain_is_equal = foreign "isl_set_plain_is_equal" (Types.set @-> Types.set @-> returning bool) in
    let ret = isl_set_plain_is_equal set1 set2 in
    check_for_errors ctx;
    ret

let plain_is_universe ctx set = 
    let isl_set_plain_is_universe = foreign "isl_set_plain_is_universe" (Types.set @-> returning bool) in
    let ret = isl_set_plain_is_universe set in
    check_for_errors ctx;
    ret

let add_basic_set ctx set bset = 
    let set = set_copy set in
    let bset = basic_set_copy bset in
    let isl_set_add_basic_set = foreign "isl_set_add_basic_set" (Types.set @-> Types.basic_set @-> returning Types.set) in
    let ret = isl_set_add_basic_set set bset in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let align_divs ctx set = 
    let set = set_copy set in
    let isl_set_align_divs = foreign "isl_set_align_divs" (Types.set @-> returning Types.set) in
    let ret = isl_set_align_divs set in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let align_params ctx set model = 
    let set = set_copy set in
    let model = space_copy model in
    let isl_set_align_params = foreign "isl_set_align_params" (Types.set @-> Types.space @-> returning Types.set) in
    let ret = isl_set_align_params set model in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let compute_divs ctx set = 
    let set = set_copy set in
    let isl_set_compute_divs = foreign "isl_set_compute_divs" (Types.set @-> returning Types.set) in
    let ret = isl_set_compute_divs set in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let empty ctx dim = 
    let dim = space_copy dim in
    let isl_set_empty = foreign "isl_set_empty" (Types.space @-> returning Types.set) in
    let ret = isl_set_empty dim in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let equate ctx set type1 pos1 type2 pos2 = 
    let set = set_copy set in
    let isl_set_equate = foreign "isl_set_equate" (Types.set @-> dim_type @-> int @-> dim_type @-> int @-> returning Types.set) in
    let ret = isl_set_equate set type1 pos1 type2 pos2 in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let flat_product ctx set1 set2 = 
    let set1 = set_copy set1 in
    let set2 = set_copy set2 in
    let isl_set_flat_product = foreign "isl_set_flat_product" (Types.set @-> Types.set @-> returning Types.set) in
    let ret = isl_set_flat_product set1 set2 in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let from_params ctx set = 
    let set = set_copy set in
    let isl_set_from_params = foreign "isl_set_from_params" (Types.set @-> returning Types.set) in
    let ret = isl_set_from_params set in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let from_union_set ctx uset = 
    let uset = union_set_copy uset in
    let isl_set_from_union_set = foreign "isl_set_from_union_set" (Types.union_set @-> returning Types.set) in
    let ret = isl_set_from_union_set uset in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let gist_basic_set ctx set context = 
    let set = set_copy set in
    let context = basic_set_copy context in
    let isl_set_gist_basic_set = foreign "isl_set_gist_basic_set" (Types.set @-> Types.basic_set @-> returning Types.set) in
    let ret = isl_set_gist_basic_set set context in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let gist_params ctx set context = 
    let set = set_copy set in
    let context = set_copy context in
    let isl_set_gist_params = foreign "isl_set_gist_params" (Types.set @-> Types.set @-> returning Types.set) in
    let ret = isl_set_gist_params set context in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let lift ctx set = 
    let set = set_copy set in
    let isl_set_lift = foreign "isl_set_lift" (Types.set @-> returning Types.set) in
    let ret = isl_set_lift set in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let make_disjoint ctx set = 
    let set = set_copy set in
    let isl_set_make_disjoint = foreign "isl_set_make_disjoint" (Types.set @-> returning Types.set) in
    let ret = isl_set_make_disjoint set in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let nat_universe ctx dim = 
    let dim = space_copy dim in
    let isl_set_nat_universe = foreign "isl_set_nat_universe" (Types.space @-> returning Types.set) in
    let ret = isl_set_nat_universe dim in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let neg ctx set = 
    let set = set_copy set in
    let isl_set_neg = foreign "isl_set_neg" (Types.set @-> returning Types.set) in
    let ret = isl_set_neg set in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let params ctx set = 
    let set = set_copy set in
    let isl_set_params = foreign "isl_set_params" (Types.set @-> returning Types.set) in
    let ret = isl_set_params set in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let product ctx set1 set2 = 
    let set1 = set_copy set1 in
    let set2 = set_copy set2 in
    let isl_set_product = foreign "isl_set_product" (Types.set @-> Types.set @-> returning Types.set) in
    let ret = isl_set_product set1 set2 in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let recession_cone ctx set = 
    let set = set_copy set in
    let isl_set_recession_cone = foreign "isl_set_recession_cone" (Types.set @-> returning Types.set) in
    let ret = isl_set_recession_cone set in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let remove_divs ctx set = 
    let set = set_copy set in
    let isl_set_remove_divs = foreign "isl_set_remove_divs" (Types.set @-> returning Types.set) in
    let ret = isl_set_remove_divs set in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let remove_redundancies ctx set = 
    let set = set_copy set in
    let isl_set_remove_redundancies = foreign "isl_set_remove_redundancies" (Types.set @-> returning Types.set) in
    let ret = isl_set_remove_redundancies set in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let remove_unknown_divs ctx set = 
    let set = set_copy set in
    let isl_set_remove_unknown_divs = foreign "isl_set_remove_unknown_divs" (Types.set @-> returning Types.set) in
    let ret = isl_set_remove_unknown_divs set in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let reset_space ctx set dim = 
    let set = set_copy set in
    let dim = space_copy dim in
    let isl_set_reset_space = foreign "isl_set_reset_space" (Types.set @-> Types.space @-> returning Types.set) in
    let ret = isl_set_reset_space set dim in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let reset_tuple_id ctx set = 
    let set = set_copy set in
    let isl_set_reset_tuple_id = foreign "isl_set_reset_tuple_id" (Types.set @-> returning Types.set) in
    let ret = isl_set_reset_tuple_id set in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let reset_user ctx set = 
    let set = set_copy set in
    let isl_set_reset_user = foreign "isl_set_reset_user" (Types.set @-> returning Types.set) in
    let ret = isl_set_reset_user set in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let set_tuple_id ctx set id = 
    let set = set_copy set in
    let id = id_copy id in
    let isl_set_set_tuple_id = foreign "isl_set_set_tuple_id" (Types.set @-> Types.id @-> returning Types.set) in
    let ret = isl_set_set_tuple_id set id in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let set_tuple_name ctx set s = 
    let set = set_copy set in
    let isl_set_set_tuple_name = foreign "isl_set_set_tuple_name" (Types.set @-> string @-> returning Types.set) in
    let ret = isl_set_set_tuple_name set s in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let sum ctx set1 set2 = 
    let set1 = set_copy set1 in
    let set2 = set_copy set2 in
    let isl_set_sum = foreign "isl_set_sum" (Types.set @-> Types.set @-> returning Types.set) in
    let ret = isl_set_sum set1 set2 in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let universe ctx dim = 
    let dim = space_copy dim in
    let isl_set_universe = foreign "isl_set_universe" (Types.space @-> returning Types.set) in
    let ret = isl_set_universe dim in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let universe_like ctx model = 
    let isl_set_universe_like = foreign "isl_set_universe_like" (Types.set @-> returning Types.set) in
    let ret = isl_set_universe_like model in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let get_space ctx set = 
    let isl_set_get_space = foreign "isl_set_get_space" (Types.set @-> returning Types.space) in
    let ret = isl_set_get_space set in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let flatten_map ctx set = 
    let set = set_copy set in
    let isl_set_flatten_map = foreign "isl_set_flatten_map" (Types.set @-> returning Types.map) in
    let ret = isl_set_flatten_map set in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let lex_ge_set ctx set1 set2 = 
    let set1 = set_copy set1 in
    let set2 = set_copy set2 in
    let isl_set_lex_ge_set = foreign "isl_set_lex_ge_set" (Types.set @-> Types.set @-> returning Types.map) in
    let ret = isl_set_lex_ge_set set1 set2 in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let lex_gt_set ctx set1 set2 = 
    let set1 = set_copy set1 in
    let set2 = set_copy set2 in
    let isl_set_lex_gt_set = foreign "isl_set_lex_gt_set" (Types.set @-> Types.set @-> returning Types.map) in
    let ret = isl_set_lex_gt_set set1 set2 in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let lex_le_set ctx set1 set2 = 
    let set1 = set_copy set1 in
    let set2 = set_copy set2 in
    let isl_set_lex_le_set = foreign "isl_set_lex_le_set" (Types.set @-> Types.set @-> returning Types.map) in
    let ret = isl_set_lex_le_set set1 set2 in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let lex_lt_set ctx set1 set2 = 
    let set1 = set_copy set1 in
    let set2 = set_copy set2 in
    let isl_set_lex_lt_set = foreign "isl_set_lex_lt_set" (Types.set @-> Types.set @-> returning Types.map) in
    let ret = isl_set_lex_lt_set set1 set2 in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let lifting ctx set = 
    let set = set_copy set in
    let isl_set_lifting = foreign "isl_set_lifting" (Types.set @-> returning Types.map) in
    let ret = isl_set_lifting set in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let unwrap ctx set = 
    let set = set_copy set in
    let isl_set_unwrap = foreign "isl_set_unwrap" (Types.set @-> returning Types.map) in
    let ret = isl_set_unwrap set in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let coefficients ctx set = 
    let set = set_copy set in
    let isl_set_coefficients = foreign "isl_set_coefficients" (Types.set @-> returning Types.basic_set) in
    let ret = isl_set_coefficients set in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let convex_hull ctx set = 
    let set = set_copy set in
    let isl_set_convex_hull = foreign "isl_set_convex_hull" (Types.set @-> returning Types.basic_set) in
    let ret = isl_set_convex_hull set in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let simple_hull ctx set = 
    let set = set_copy set in
    let isl_set_simple_hull = foreign "isl_set_simple_hull" (Types.set @-> returning Types.basic_set) in
    let ret = isl_set_simple_hull set in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let solutions ctx set = 
    let set = set_copy set in
    let isl_set_solutions = foreign "isl_set_solutions" (Types.set @-> returning Types.basic_set) in
    let ret = isl_set_solutions set in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let unshifted_simple_hull ctx set = 
    let set = set_copy set in
    let isl_set_unshifted_simple_hull = foreign "isl_set_unshifted_simple_hull" (Types.set @-> returning Types.basic_set) in
    let ret = isl_set_unshifted_simple_hull set in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let count_val ctx set = 
    let isl_set_count_val = foreign "isl_set_count_val" (Types.set @-> returning Types.value) in
    let ret = isl_set_count_val set in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let max_val ctx set obj = 
    let isl_set_max_val = foreign "isl_set_max_val" (Types.set @-> Types.aff @-> returning Types.value) in
    let ret = isl_set_max_val set obj in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let min_val ctx set obj = 
    let isl_set_min_val = foreign "isl_set_min_val" (Types.set @-> Types.aff @-> returning Types.value) in
    let ret = isl_set_min_val set obj in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let get_tuple_id ctx set = 
    let isl_set_get_tuple_id = foreign "isl_set_get_tuple_id" (Types.set @-> returning Types.id) in
    let ret = isl_set_get_tuple_id set in
    check_for_errors ctx;
    Gc.finalise id_free ret;
    ret

let to_string ctx set = 
    let isl_set_to_str = foreign "isl_set_to_str" (Types.set @-> returning string) in
    let ret = isl_set_to_str set in
    check_for_errors ctx;
    Gc.finalise (fun _ -> ()) ret;
    ret

let is_disjoint ctx set1 set2 = 
    let isl_set_is_disjoint = foreign "isl_set_is_disjoint" (Types.set @-> Types.set @-> returning bool) in
    let ret = isl_set_is_disjoint set1 set2 in
    check_for_errors ctx;
    ret

let is_empty ctx set = 
    let isl_set_is_empty = foreign "isl_set_is_empty" (Types.set @-> returning bool) in
    let ret = isl_set_is_empty set in
    check_for_errors ctx;
    ret

let is_equal ctx set1 set2 = 
    let isl_set_is_equal = foreign "isl_set_is_equal" (Types.set @-> Types.set @-> returning bool) in
    let ret = isl_set_is_equal set1 set2 in
    check_for_errors ctx;
    ret

let is_strict_subset ctx set1 set2 = 
    let isl_set_is_strict_subset = foreign "isl_set_is_strict_subset" (Types.set @-> Types.set @-> returning bool) in
    let ret = isl_set_is_strict_subset set1 set2 in
    check_for_errors ctx;
    ret

let is_subset ctx set1 set2 = 
    let isl_set_is_subset = foreign "isl_set_is_subset" (Types.set @-> Types.set @-> returning bool) in
    let ret = isl_set_is_subset set1 set2 in
    check_for_errors ctx;
    ret

let is_wrapping ctx set = 
    let isl_set_is_wrapping = foreign "isl_set_is_wrapping" (Types.set @-> returning bool) in
    let ret = isl_set_is_wrapping set in
    check_for_errors ctx;
    ret

let apply ctx set map = 
    let set = set_copy set in
    let map = map_copy map in
    let isl_set_apply = foreign "isl_set_apply" (Types.set @-> Types.map @-> returning Types.set) in
    let ret = isl_set_apply set map in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let coalesce ctx set = 
    let set = set_copy set in
    let isl_set_coalesce = foreign "isl_set_coalesce" (Types.set @-> returning Types.set) in
    let ret = isl_set_coalesce set in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let complement ctx set = 
    let set = set_copy set in
    let isl_set_complement = foreign "isl_set_complement" (Types.set @-> returning Types.set) in
    let ret = isl_set_complement set in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let detect_equalities ctx set = 
    let set = set_copy set in
    let isl_set_detect_equalities = foreign "isl_set_detect_equalities" (Types.set @-> returning Types.set) in
    let ret = isl_set_detect_equalities set in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let flatten ctx set = 
    let set = set_copy set in
    let isl_set_flatten = foreign "isl_set_flatten" (Types.set @-> returning Types.set) in
    let ret = isl_set_flatten set in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let gist ctx set context = 
    let set = set_copy set in
    let context = set_copy context in
    let isl_set_gist = foreign "isl_set_gist" (Types.set @-> Types.set @-> returning Types.set) in
    let ret = isl_set_gist set context in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let intersect ctx set1 set2 = 
    let set1 = set_copy set1 in
    let set2 = set_copy set2 in
    let isl_set_intersect = foreign "isl_set_intersect" (Types.set @-> Types.set @-> returning Types.set) in
    let ret = isl_set_intersect set1 set2 in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let intersect_params ctx set params = 
    let set = set_copy set in
    let params = set_copy params in
    let isl_set_intersect_params = foreign "isl_set_intersect_params" (Types.set @-> Types.set @-> returning Types.set) in
    let ret = isl_set_intersect_params set params in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let lexmax ctx set = 
    let set = set_copy set in
    let isl_set_lexmax = foreign "isl_set_lexmax" (Types.set @-> returning Types.set) in
    let ret = isl_set_lexmax set in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let lexmin ctx set = 
    let set = set_copy set in
    let isl_set_lexmin = foreign "isl_set_lexmin" (Types.set @-> returning Types.set) in
    let ret = isl_set_lexmin set in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let subtract ctx set1 set2 = 
    let set1 = set_copy set1 in
    let set2 = set_copy set2 in
    let isl_set_subtract = foreign "isl_set_subtract" (Types.set @-> Types.set @-> returning Types.set) in
    let ret = isl_set_subtract set1 set2 in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let union ctx set1 set2 = 
    let set1 = set_copy set1 in
    let set2 = set_copy set2 in
    let isl_set_union = foreign "isl_set_union" (Types.set @-> Types.set @-> returning Types.set) in
    let ret = isl_set_union set1 set2 in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let identity ctx set = 
    let set = set_copy set in
    let isl_set_identity = foreign "isl_set_identity" (Types.set @-> returning Types.map) in
    let ret = isl_set_identity set in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let affine_hull ctx set = 
    let set = set_copy set in
    let isl_set_affine_hull = foreign "isl_set_affine_hull" (Types.set @-> returning Types.basic_set) in
    let ret = isl_set_affine_hull set in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let polyhedral_hull ctx set = 
    let set = set_copy set in
    let isl_set_polyhedral_hull = foreign "isl_set_polyhedral_hull" (Types.set @-> returning Types.basic_set) in
    let ret = isl_set_polyhedral_hull set in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let sample ctx set = 
    let set = set_copy set in
    let isl_set_sample = foreign "isl_set_sample" (Types.set @-> returning Types.basic_set) in
    let ret = isl_set_sample set in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let from_basic_set ctx bset = 
    let bset = basic_set_copy bset in
    let isl_set_from_basic_set = foreign "isl_set_from_basic_set" (Types.basic_set @-> returning Types.set) in
    let ret = isl_set_from_basic_set bset in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let of_string ctx str = 
    let isl_set_read_from_str = foreign "isl_set_read_from_str" (Ctx.t @-> string @-> returning Types.set) in
    let ret = isl_set_read_from_str ctx str in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

