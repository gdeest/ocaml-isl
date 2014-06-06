open Ctypes
open Foreign
open IslMemory

let basic_set_compare_at bset1 bset2 pos = 
    let isl_basic_set_compare_at = foreign "isl_basic_set_compare_at" (Isl.basic_set @-> Isl.basic_set @-> int @-> returning int) in
    let ret = isl_basic_set_compare_at bset1 bset2 pos in
    ret

let set_find_dim_by_id set typ id = 
    let isl_set_find_dim_by_id = foreign "isl_set_find_dim_by_id" (Isl.set @-> Isl.dim_type @-> Isl.id @-> returning int) in
    let ret = isl_set_find_dim_by_id set typ id in
    ret

let set_find_dim_by_name set typ name = 
    let isl_set_find_dim_by_name = foreign "isl_set_find_dim_by_name" (Isl.set @-> Isl.dim_type @-> string @-> returning int) in
    let ret = isl_set_find_dim_by_name set typ name in
    ret

let set_follows_at set1 set2 pos = 
    let isl_set_follows_at = foreign "isl_set_follows_at" (Isl.set @-> Isl.set @-> int @-> returning int) in
    let ret = isl_set_follows_at set1 set2 pos in
    ret

let set_n_basic_set set = 
    let isl_set_n_basic_set = foreign "isl_set_n_basic_set" (Isl.set @-> returning int) in
    let ret = isl_set_n_basic_set set in
    ret

let set_plain_cmp set1 set2 = 
    let isl_set_plain_cmp = foreign "isl_set_plain_cmp" (Isl.set @-> Isl.set @-> returning int) in
    let ret = isl_set_plain_cmp set1 set2 in
    ret

let set_size set = 
    let isl_set_size = foreign "isl_set_size" (Isl.set @-> returning int) in
    let ret = isl_set_size set in
    ret

let basic_set_compute_divs bset = 
    let isl_basic_set_compute_divs = foreign "isl_basic_set_compute_divs" (Isl.basic_set @-> returning Isl.set) in
    let ret = isl_basic_set_compute_divs bset in
    ret

let set_drop_basic_set set bset = 
    let isl_set_drop_basic_set = foreign "isl_set_drop_basic_set" (Isl.set @-> Isl.basic_set @-> returning Isl.set) in
    let ret = isl_set_drop_basic_set set bset in
    ret

let set_dup set = 
    let isl_set_dup = foreign "isl_set_dup" (Isl.set @-> returning Isl.set) in
    let ret = isl_set_dup set in
    ret

let set_empty_like set = 
    let isl_set_empty_like = foreign "isl_set_empty_like" (Isl.set @-> returning Isl.set) in
    let ret = isl_set_empty_like set in
    ret

let set_finalize set = 
    let isl_set_finalize = foreign "isl_set_finalize" (Isl.set @-> returning Isl.set) in
    let ret = isl_set_finalize set in
    ret

let set_from_underlying_set set like = 
    let isl_set_from_underlying_set = foreign "isl_set_from_underlying_set" (Isl.set @-> Isl.basic_set @-> returning Isl.set) in
    let ret = isl_set_from_underlying_set set like in
    ret

let set_to_underlying_set set = 
    let isl_set_to_underlying_set = foreign "isl_set_to_underlying_set" (Isl.set @-> returning Isl.set) in
    let ret = isl_set_to_underlying_set set in
    ret

let set_union_disjoint set1 set2 = 
    let isl_set_union_disjoint = foreign "isl_set_union_disjoint" (Isl.set @-> Isl.set @-> returning Isl.set) in
    let ret = isl_set_union_disjoint set1 set2 in
    ret

let basic_set_dup bset = 
    let isl_basic_set_dup = foreign "isl_basic_set_dup" (Isl.basic_set @-> returning Isl.basic_set) in
    let ret = isl_basic_set_dup bset in
    ret

let basic_set_empty_like bset = 
    let isl_basic_set_empty_like = foreign "isl_basic_set_empty_like" (Isl.basic_set @-> returning Isl.basic_set) in
    let ret = isl_basic_set_empty_like bset in
    ret

let basic_set_finalize bset = 
    let isl_basic_set_finalize = foreign "isl_basic_set_finalize" (Isl.basic_set @-> returning Isl.basic_set) in
    let ret = isl_basic_set_finalize bset in
    ret

let basic_set_from_underlying_set bset like = 
    let isl_basic_set_from_underlying_set = foreign "isl_basic_set_from_underlying_set" (Isl.basic_set @-> Isl.basic_set @-> returning Isl.basic_set) in
    let ret = isl_basic_set_from_underlying_set bset like in
    ret

let basic_set_simplify bset = 
    let isl_basic_set_simplify = foreign "isl_basic_set_simplify" (Isl.basic_set @-> returning Isl.basic_set) in
    let ret = isl_basic_set_simplify bset in
    ret

let basic_set_universe_like bset = 
    let isl_basic_set_universe_like = foreign "isl_basic_set_universe_like" (Isl.basic_set @-> returning Isl.basic_set) in
    let ret = isl_basic_set_universe_like bset in
    ret

let set_bounded_simple_hull set = 
    let isl_set_bounded_simple_hull = foreign "isl_set_bounded_simple_hull" (Isl.set @-> returning Isl.basic_set) in
    let ret = isl_set_bounded_simple_hull set in
    ret

let set_copy_basic_set set = 
    let isl_set_copy_basic_set = foreign "isl_set_copy_basic_set" (Isl.set @-> returning Isl.basic_set) in
    let ret = isl_set_copy_basic_set set in
    ret

let basic_set_get_ctx bset = 
    let isl_basic_set_get_ctx = foreign "isl_basic_set_get_ctx" (Isl.basic_set @-> returning Isl.ctx) in
    let ret = isl_basic_set_get_ctx bset in
    ret

let set_get_ctx set = 
    let isl_set_get_ctx = foreign "isl_set_get_ctx" (Isl.set @-> returning Isl.ctx) in
    let ret = isl_set_get_ctx set in
    ret

let basic_set_dump bset = 
    let isl_basic_set_dump = foreign "isl_basic_set_dump" (Isl.basic_set @-> returning void) in
    let ret = isl_basic_set_dump bset in
    ret

let set_dump set = 
    let isl_set_dump = foreign "isl_set_dump" (Isl.set @-> returning void) in
    let ret = isl_set_dump set in
    ret

let basic_set_get_tuple_name bset = 
    let isl_basic_set_get_tuple_name = foreign "isl_basic_set_get_tuple_name" (Isl.basic_set @-> returning string) in
    let ret = isl_basic_set_get_tuple_name bset in
    ret

let set_get_tuple_name set = 
    let isl_set_get_tuple_name = foreign "isl_set_get_tuple_name" (Isl.set @-> returning string) in
    let ret = isl_set_get_tuple_name set in
    ret

let basic_set_fast_is_empty bset = 
    let isl_basic_set_fast_is_empty = foreign "isl_basic_set_fast_is_empty" (Isl.basic_set @-> returning Isl.bool) in
    let ret = isl_basic_set_fast_is_empty bset in
    ret

let basic_set_is_bounded bset = 
    let isl_basic_set_is_bounded = foreign "isl_basic_set_is_bounded" (Isl.basic_set @-> returning Isl.bool) in
    let ret = isl_basic_set_is_bounded bset in
    ret

let basic_set_is_disjoint bset1 bset2 = 
    let isl_basic_set_is_disjoint = foreign "isl_basic_set_is_disjoint" (Isl.basic_set @-> Isl.basic_set @-> returning Isl.bool) in
    let ret = isl_basic_set_is_disjoint bset1 bset2 in
    ret

let basic_set_is_rational bset = 
    let isl_basic_set_is_rational = foreign "isl_basic_set_is_rational" (Isl.basic_set @-> returning Isl.bool) in
    let ret = isl_basic_set_is_rational bset in
    ret

let basic_set_is_universe bset = 
    let isl_basic_set_is_universe = foreign "isl_basic_set_is_universe" (Isl.basic_set @-> returning Isl.bool) in
    let ret = isl_basic_set_is_universe bset in
    ret

let basic_set_plain_is_empty bset = 
    let isl_basic_set_plain_is_empty = foreign "isl_basic_set_plain_is_empty" (Isl.basic_set @-> returning Isl.bool) in
    let ret = isl_basic_set_plain_is_empty bset in
    ret

let basic_set_plain_is_equal bset1 bset2 = 
    let isl_basic_set_plain_is_equal = foreign "isl_basic_set_plain_is_equal" (Isl.basic_set @-> Isl.basic_set @-> returning Isl.bool) in
    let ret = isl_basic_set_plain_is_equal bset1 bset2 in
    ret

let set_fast_is_disjoint set1 set2 = 
    let isl_set_fast_is_disjoint = foreign "isl_set_fast_is_disjoint" (Isl.set @-> Isl.set @-> returning Isl.bool) in
    let ret = isl_set_fast_is_disjoint set1 set2 in
    ret

let set_fast_is_empty set = 
    let isl_set_fast_is_empty = foreign "isl_set_fast_is_empty" (Isl.set @-> returning Isl.bool) in
    let ret = isl_set_fast_is_empty set in
    ret

let set_fast_is_equal set1 set2 = 
    let isl_set_fast_is_equal = foreign "isl_set_fast_is_equal" (Isl.set @-> Isl.set @-> returning Isl.bool) in
    let ret = isl_set_fast_is_equal set1 set2 in
    ret

let set_fast_is_universe set = 
    let isl_set_fast_is_universe = foreign "isl_set_fast_is_universe" (Isl.set @-> returning Isl.bool) in
    let ret = isl_set_fast_is_universe set in
    ret

let set_has_equal_space set1 set2 = 
    let isl_set_has_equal_space = foreign "isl_set_has_equal_space" (Isl.set @-> Isl.set @-> returning Isl.bool) in
    let ret = isl_set_has_equal_space set1 set2 in
    ret

let set_has_tuple_id set = 
    let isl_set_has_tuple_id = foreign "isl_set_has_tuple_id" (Isl.set @-> returning Isl.bool) in
    let ret = isl_set_has_tuple_id set in
    ret

let set_has_tuple_name set = 
    let isl_set_has_tuple_name = foreign "isl_set_has_tuple_name" (Isl.set @-> returning Isl.bool) in
    let ret = isl_set_has_tuple_name set in
    ret

let set_is_bounded set = 
    let isl_set_is_bounded = foreign "isl_set_is_bounded" (Isl.set @-> returning Isl.bool) in
    let ret = isl_set_is_bounded set in
    ret

let set_is_box set = 
    let isl_set_is_box = foreign "isl_set_is_box" (Isl.set @-> returning Isl.bool) in
    let ret = isl_set_is_box set in
    ret

let set_is_params set = 
    let isl_set_is_params = foreign "isl_set_is_params" (Isl.set @-> returning Isl.bool) in
    let ret = isl_set_is_params set in
    ret

let set_is_singleton set = 
    let isl_set_is_singleton = foreign "isl_set_is_singleton" (Isl.set @-> returning Isl.bool) in
    let ret = isl_set_is_singleton set in
    ret

let set_plain_is_disjoint set1 set2 = 
    let isl_set_plain_is_disjoint = foreign "isl_set_plain_is_disjoint" (Isl.set @-> Isl.set @-> returning Isl.bool) in
    let ret = isl_set_plain_is_disjoint set1 set2 in
    ret

let set_plain_is_empty set = 
    let isl_set_plain_is_empty = foreign "isl_set_plain_is_empty" (Isl.set @-> returning Isl.bool) in
    let ret = isl_set_plain_is_empty set in
    ret

let set_plain_is_equal set1 set2 = 
    let isl_set_plain_is_equal = foreign "isl_set_plain_is_equal" (Isl.set @-> Isl.set @-> returning Isl.bool) in
    let ret = isl_set_plain_is_equal set1 set2 in
    ret

let set_plain_is_universe set = 
    let isl_set_plain_is_universe = foreign "isl_set_plain_is_universe" (Isl.set @-> returning Isl.bool) in
    let ret = isl_set_plain_is_universe set in
    ret

let set_add_basic_set set bset = 
    let set = set_copy set in
    let bset = basic_set_copy bset in
    let isl_set_add_basic_set = foreign "isl_set_add_basic_set" (Isl.set @-> Isl.basic_set @-> returning Isl.set) in
    let ret = isl_set_add_basic_set set bset in
    Gc.finalise set_free ret;
    ret

let set_align_divs set = 
    let set = set_copy set in
    let isl_set_align_divs = foreign "isl_set_align_divs" (Isl.set @-> returning Isl.set) in
    let ret = isl_set_align_divs set in
    Gc.finalise set_free ret;
    ret

let set_align_params set model = 
    let set = set_copy set in
    let model = space_copy model in
    let isl_set_align_params = foreign "isl_set_align_params" (Isl.set @-> Isl.space @-> returning Isl.set) in
    let ret = isl_set_align_params set model in
    Gc.finalise set_free ret;
    ret

let set_compute_divs set = 
    let set = set_copy set in
    let isl_set_compute_divs = foreign "isl_set_compute_divs" (Isl.set @-> returning Isl.set) in
    let ret = isl_set_compute_divs set in
    Gc.finalise set_free ret;
    ret

let set_empty dim = 
    let dim = space_copy dim in
    let isl_set_empty = foreign "isl_set_empty" (Isl.space @-> returning Isl.set) in
    let ret = isl_set_empty dim in
    Gc.finalise set_free ret;
    ret

let set_equate set type1 pos1 type2 pos2 = 
    let set = set_copy set in
    let isl_set_equate = foreign "isl_set_equate" (Isl.set @-> Isl.dim_type @-> int @-> Isl.dim_type @-> int @-> returning Isl.set) in
    let ret = isl_set_equate set type1 pos1 type2 pos2 in
    Gc.finalise set_free ret;
    ret

let set_flat_product set1 set2 = 
    let set1 = set_copy set1 in
    let set2 = set_copy set2 in
    let isl_set_flat_product = foreign "isl_set_flat_product" (Isl.set @-> Isl.set @-> returning Isl.set) in
    let ret = isl_set_flat_product set1 set2 in
    Gc.finalise set_free ret;
    ret

let set_from_params set = 
    let set = set_copy set in
    let isl_set_from_params = foreign "isl_set_from_params" (Isl.set @-> returning Isl.set) in
    let ret = isl_set_from_params set in
    Gc.finalise set_free ret;
    ret

let set_gist_basic_set set context = 
    let set = set_copy set in
    let context = basic_set_copy context in
    let isl_set_gist_basic_set = foreign "isl_set_gist_basic_set" (Isl.set @-> Isl.basic_set @-> returning Isl.set) in
    let ret = isl_set_gist_basic_set set context in
    Gc.finalise set_free ret;
    ret

let set_gist_params set context = 
    let set = set_copy set in
    let context = set_copy context in
    let isl_set_gist_params = foreign "isl_set_gist_params" (Isl.set @-> Isl.set @-> returning Isl.set) in
    let ret = isl_set_gist_params set context in
    Gc.finalise set_free ret;
    ret

let set_lift set = 
    let set = set_copy set in
    let isl_set_lift = foreign "isl_set_lift" (Isl.set @-> returning Isl.set) in
    let ret = isl_set_lift set in
    Gc.finalise set_free ret;
    ret

let set_make_disjoint set = 
    let set = set_copy set in
    let isl_set_make_disjoint = foreign "isl_set_make_disjoint" (Isl.set @-> returning Isl.set) in
    let ret = isl_set_make_disjoint set in
    Gc.finalise set_free ret;
    ret

let set_nat_universe dim = 
    let dim = space_copy dim in
    let isl_set_nat_universe = foreign "isl_set_nat_universe" (Isl.space @-> returning Isl.set) in
    let ret = isl_set_nat_universe dim in
    Gc.finalise set_free ret;
    ret

let set_neg set = 
    let set = set_copy set in
    let isl_set_neg = foreign "isl_set_neg" (Isl.set @-> returning Isl.set) in
    let ret = isl_set_neg set in
    Gc.finalise set_free ret;
    ret

let set_params set = 
    let set = set_copy set in
    let isl_set_params = foreign "isl_set_params" (Isl.set @-> returning Isl.set) in
    let ret = isl_set_params set in
    Gc.finalise set_free ret;
    ret

let set_product set1 set2 = 
    let set1 = set_copy set1 in
    let set2 = set_copy set2 in
    let isl_set_product = foreign "isl_set_product" (Isl.set @-> Isl.set @-> returning Isl.set) in
    let ret = isl_set_product set1 set2 in
    Gc.finalise set_free ret;
    ret

let set_recession_cone set = 
    let set = set_copy set in
    let isl_set_recession_cone = foreign "isl_set_recession_cone" (Isl.set @-> returning Isl.set) in
    let ret = isl_set_recession_cone set in
    Gc.finalise set_free ret;
    ret

let set_remove_divs set = 
    let set = set_copy set in
    let isl_set_remove_divs = foreign "isl_set_remove_divs" (Isl.set @-> returning Isl.set) in
    let ret = isl_set_remove_divs set in
    Gc.finalise set_free ret;
    ret

let set_remove_redundancies set = 
    let set = set_copy set in
    let isl_set_remove_redundancies = foreign "isl_set_remove_redundancies" (Isl.set @-> returning Isl.set) in
    let ret = isl_set_remove_redundancies set in
    Gc.finalise set_free ret;
    ret

let set_remove_unknown_divs set = 
    let set = set_copy set in
    let isl_set_remove_unknown_divs = foreign "isl_set_remove_unknown_divs" (Isl.set @-> returning Isl.set) in
    let ret = isl_set_remove_unknown_divs set in
    Gc.finalise set_free ret;
    ret

let set_reset_space set dim = 
    let set = set_copy set in
    let dim = space_copy dim in
    let isl_set_reset_space = foreign "isl_set_reset_space" (Isl.set @-> Isl.space @-> returning Isl.set) in
    let ret = isl_set_reset_space set dim in
    Gc.finalise set_free ret;
    ret

let set_reset_tuple_id set = 
    let set = set_copy set in
    let isl_set_reset_tuple_id = foreign "isl_set_reset_tuple_id" (Isl.set @-> returning Isl.set) in
    let ret = isl_set_reset_tuple_id set in
    Gc.finalise set_free ret;
    ret

let set_reset_user set = 
    let set = set_copy set in
    let isl_set_reset_user = foreign "isl_set_reset_user" (Isl.set @-> returning Isl.set) in
    let ret = isl_set_reset_user set in
    Gc.finalise set_free ret;
    ret

let set_set_tuple_id set id = 
    let set = set_copy set in
    let id = id_copy id in
    let isl_set_set_tuple_id = foreign "isl_set_set_tuple_id" (Isl.set @-> Isl.id @-> returning Isl.set) in
    let ret = isl_set_set_tuple_id set id in
    Gc.finalise set_free ret;
    ret

let set_set_tuple_name set s = 
    let set = set_copy set in
    let isl_set_set_tuple_name = foreign "isl_set_set_tuple_name" (Isl.set @-> string @-> returning Isl.set) in
    let ret = isl_set_set_tuple_name set s in
    Gc.finalise set_free ret;
    ret

let set_sum set1 set2 = 
    let set1 = set_copy set1 in
    let set2 = set_copy set2 in
    let isl_set_sum = foreign "isl_set_sum" (Isl.set @-> Isl.set @-> returning Isl.set) in
    let ret = isl_set_sum set1 set2 in
    Gc.finalise set_free ret;
    ret

let set_universe dim = 
    let dim = space_copy dim in
    let isl_set_universe = foreign "isl_set_universe" (Isl.space @-> returning Isl.set) in
    let ret = isl_set_universe dim in
    Gc.finalise set_free ret;
    ret

let set_universe_like model = 
    let isl_set_universe_like = foreign "isl_set_universe_like" (Isl.set @-> returning Isl.set) in
    let ret = isl_set_universe_like model in
    Gc.finalise set_free ret;
    ret

let basic_set_get_space bset = 
    let isl_basic_set_get_space = foreign "isl_basic_set_get_space" (Isl.basic_set @-> returning Isl.space) in
    let ret = isl_basic_set_get_space bset in
    Gc.finalise space_free ret;
    ret

let set_get_space set = 
    let isl_set_get_space = foreign "isl_set_get_space" (Isl.set @-> returning Isl.space) in
    let ret = isl_set_get_space set in
    Gc.finalise space_free ret;
    ret

let set_lex_ge_set set1 set2 = 
    let set1 = set_copy set1 in
    let set2 = set_copy set2 in
    let isl_set_lex_ge_set = foreign "isl_set_lex_ge_set" (Isl.set @-> Isl.set @-> returning Isl.map) in
    let ret = isl_set_lex_ge_set set1 set2 in
    Gc.finalise map_free ret;
    ret

let set_lex_gt_set set1 set2 = 
    let set1 = set_copy set1 in
    let set2 = set_copy set2 in
    let isl_set_lex_gt_set = foreign "isl_set_lex_gt_set" (Isl.set @-> Isl.set @-> returning Isl.map) in
    let ret = isl_set_lex_gt_set set1 set2 in
    Gc.finalise map_free ret;
    ret

let set_lex_le_set set1 set2 = 
    let set1 = set_copy set1 in
    let set2 = set_copy set2 in
    let isl_set_lex_le_set = foreign "isl_set_lex_le_set" (Isl.set @-> Isl.set @-> returning Isl.map) in
    let ret = isl_set_lex_le_set set1 set2 in
    Gc.finalise map_free ret;
    ret

let set_lex_lt_set set1 set2 = 
    let set1 = set_copy set1 in
    let set2 = set_copy set2 in
    let isl_set_lex_lt_set = foreign "isl_set_lex_lt_set" (Isl.set @-> Isl.set @-> returning Isl.map) in
    let ret = isl_set_lex_lt_set set1 set2 in
    Gc.finalise map_free ret;
    ret

let basic_set_align_params bset model = 
    let bset = basic_set_copy bset in
    let model = space_copy model in
    let isl_basic_set_align_params = foreign "isl_basic_set_align_params" (Isl.basic_set @-> Isl.space @-> returning Isl.basic_set) in
    let ret = isl_basic_set_align_params bset model in
    Gc.finalise basic_set_free ret;
    ret

let basic_set_coefficients bset = 
    let bset = basic_set_copy bset in
    let isl_basic_set_coefficients = foreign "isl_basic_set_coefficients" (Isl.basic_set @-> returning Isl.basic_set) in
    let ret = isl_basic_set_coefficients bset in
    Gc.finalise basic_set_free ret;
    ret

let basic_set_empty dim = 
    let dim = space_copy dim in
    let isl_basic_set_empty = foreign "isl_basic_set_empty" (Isl.space @-> returning Isl.basic_set) in
    let ret = isl_basic_set_empty dim in
    Gc.finalise basic_set_free ret;
    ret

let basic_set_flat_product bset1 bset2 = 
    let bset1 = basic_set_copy bset1 in
    let bset2 = basic_set_copy bset2 in
    let isl_basic_set_flat_product = foreign "isl_basic_set_flat_product" (Isl.basic_set @-> Isl.basic_set @-> returning Isl.basic_set) in
    let ret = isl_basic_set_flat_product bset1 bset2 in
    Gc.finalise basic_set_free ret;
    ret

let basic_set_from_params bset = 
    let bset = basic_set_copy bset in
    let isl_basic_set_from_params = foreign "isl_basic_set_from_params" (Isl.basic_set @-> returning Isl.basic_set) in
    let ret = isl_basic_set_from_params bset in
    Gc.finalise basic_set_free ret;
    ret

let basic_set_lift bset = 
    let bset = basic_set_copy bset in
    let isl_basic_set_lift = foreign "isl_basic_set_lift" (Isl.basic_set @-> returning Isl.basic_set) in
    let ret = isl_basic_set_lift bset in
    Gc.finalise basic_set_free ret;
    ret

let basic_set_nat_universe dim = 
    let dim = space_copy dim in
    let isl_basic_set_nat_universe = foreign "isl_basic_set_nat_universe" (Isl.space @-> returning Isl.basic_set) in
    let ret = isl_basic_set_nat_universe dim in
    Gc.finalise basic_set_free ret;
    ret

let basic_set_neg bset = 
    let bset = basic_set_copy bset in
    let isl_basic_set_neg = foreign "isl_basic_set_neg" (Isl.basic_set @-> returning Isl.basic_set) in
    let ret = isl_basic_set_neg bset in
    Gc.finalise basic_set_free ret;
    ret

let basic_set_params bset = 
    let bset = basic_set_copy bset in
    let isl_basic_set_params = foreign "isl_basic_set_params" (Isl.basic_set @-> returning Isl.basic_set) in
    let ret = isl_basic_set_params bset in
    Gc.finalise basic_set_free ret;
    ret

let basic_set_positive_orthant space = 
    let space = space_copy space in
    let isl_basic_set_positive_orthant = foreign "isl_basic_set_positive_orthant" (Isl.space @-> returning Isl.basic_set) in
    let ret = isl_basic_set_positive_orthant space in
    Gc.finalise basic_set_free ret;
    ret

let basic_set_remove_divs bset = 
    let bset = basic_set_copy bset in
    let isl_basic_set_remove_divs = foreign "isl_basic_set_remove_divs" (Isl.basic_set @-> returning Isl.basic_set) in
    let ret = isl_basic_set_remove_divs bset in
    Gc.finalise basic_set_free ret;
    ret

let basic_set_remove_redundancies bset = 
    let bset = basic_set_copy bset in
    let isl_basic_set_remove_redundancies = foreign "isl_basic_set_remove_redundancies" (Isl.basic_set @-> returning Isl.basic_set) in
    let ret = isl_basic_set_remove_redundancies bset in
    Gc.finalise basic_set_free ret;
    ret

let basic_set_remove_unknown_divs bset = 
    let bset = basic_set_copy bset in
    let isl_basic_set_remove_unknown_divs = foreign "isl_basic_set_remove_unknown_divs" (Isl.basic_set @-> returning Isl.basic_set) in
    let ret = isl_basic_set_remove_unknown_divs bset in
    Gc.finalise basic_set_free ret;
    ret

let basic_set_set_tuple_id bset id = 
    let bset = basic_set_copy bset in
    let id = id_copy id in
    let isl_basic_set_set_tuple_id = foreign "isl_basic_set_set_tuple_id" (Isl.basic_set @-> Isl.id @-> returning Isl.basic_set) in
    let ret = isl_basic_set_set_tuple_id bset id in
    Gc.finalise basic_set_free ret;
    ret

let basic_set_set_tuple_name set s = 
    let set = basic_set_copy set in
    let isl_basic_set_set_tuple_name = foreign "isl_basic_set_set_tuple_name" (Isl.basic_set @-> string @-> returning Isl.basic_set) in
    let ret = isl_basic_set_set_tuple_name set s in
    Gc.finalise basic_set_free ret;
    ret

let basic_set_solutions bset = 
    let bset = basic_set_copy bset in
    let isl_basic_set_solutions = foreign "isl_basic_set_solutions" (Isl.basic_set @-> returning Isl.basic_set) in
    let ret = isl_basic_set_solutions bset in
    Gc.finalise basic_set_free ret;
    ret

let basic_set_universe dim = 
    let dim = space_copy dim in
    let isl_basic_set_universe = foreign "isl_basic_set_universe" (Isl.space @-> returning Isl.basic_set) in
    let ret = isl_basic_set_universe dim in
    Gc.finalise basic_set_free ret;
    ret

let basic_set_universe_like_set model = 
    let isl_basic_set_universe_like_set = foreign "isl_basic_set_universe_like_set" (Isl.set @-> returning Isl.basic_set) in
    let ret = isl_basic_set_universe_like_set model in
    Gc.finalise basic_set_free ret;
    ret

let set_coefficients set = 
    let set = set_copy set in
    let isl_set_coefficients = foreign "isl_set_coefficients" (Isl.set @-> returning Isl.basic_set) in
    let ret = isl_set_coefficients set in
    Gc.finalise basic_set_free ret;
    ret

let set_convex_hull set = 
    let set = set_copy set in
    let isl_set_convex_hull = foreign "isl_set_convex_hull" (Isl.set @-> returning Isl.basic_set) in
    let ret = isl_set_convex_hull set in
    Gc.finalise basic_set_free ret;
    ret

let set_simple_hull set = 
    let set = set_copy set in
    let isl_set_simple_hull = foreign "isl_set_simple_hull" (Isl.set @-> returning Isl.basic_set) in
    let ret = isl_set_simple_hull set in
    Gc.finalise basic_set_free ret;
    ret

let set_solutions set = 
    let set = set_copy set in
    let isl_set_solutions = foreign "isl_set_solutions" (Isl.set @-> returning Isl.basic_set) in
    let ret = isl_set_solutions set in
    Gc.finalise basic_set_free ret;
    ret

let set_unshifted_simple_hull set = 
    let set = set_copy set in
    let isl_set_unshifted_simple_hull = foreign "isl_set_unshifted_simple_hull" (Isl.set @-> returning Isl.basic_set) in
    let ret = isl_set_unshifted_simple_hull set in
    Gc.finalise basic_set_free ret;
    ret

let set_count_val set = 
    let isl_set_count_val = foreign "isl_set_count_val" (Isl.set @-> returning Isl.value) in
    let ret = isl_set_count_val set in
    Gc.finalise val_free ret;
    ret

let basic_set_get_div bset pos = 
    let isl_basic_set_get_div = foreign "isl_basic_set_get_div" (Isl.basic_set @-> int @-> returning Isl.aff) in
    let ret = isl_basic_set_get_div bset pos in
    Gc.finalise aff_free ret;
    ret

let set_get_tuple_id set = 
    let isl_set_get_tuple_id = foreign "isl_set_get_tuple_id" (Isl.set @-> returning Isl.id) in
    let ret = isl_set_get_tuple_id set in
    Gc.finalise id_free ret;
    ret

let set_to_str set = 
    let isl_set_to_str = foreign "isl_set_to_str" (Isl.set @-> returning string) in
    let ret = isl_set_to_str set in
    Gc.finalise (fun _ -> ()) ret;
    ret

let basic_set_get_local_space bset = 
    let isl_basic_set_get_local_space = foreign "isl_basic_set_get_local_space" (Isl.basic_set @-> returning Isl.local_space) in
    let ret = isl_basic_set_get_local_space bset in
    Gc.finalise local_space_free ret;
    ret

let basic_set_is_empty bset = 
    let isl_basic_set_is_empty = foreign "isl_basic_set_is_empty" (Isl.basic_set @-> returning Isl.bool) in
    let ret = isl_basic_set_is_empty bset in
    ret

let basic_set_is_equal bset1 bset2 = 
    let isl_basic_set_is_equal = foreign "isl_basic_set_is_equal" (Isl.basic_set @-> Isl.basic_set @-> returning Isl.bool) in
    let ret = isl_basic_set_is_equal bset1 bset2 in
    ret

let basic_set_is_subset bset1 bset2 = 
    let isl_basic_set_is_subset = foreign "isl_basic_set_is_subset" (Isl.basic_set @-> Isl.basic_set @-> returning Isl.bool) in
    let ret = isl_basic_set_is_subset bset1 bset2 in
    ret

let set_is_disjoint set1 set2 = 
    let isl_set_is_disjoint = foreign "isl_set_is_disjoint" (Isl.set @-> Isl.set @-> returning Isl.bool) in
    let ret = isl_set_is_disjoint set1 set2 in
    ret

let set_is_empty set = 
    let isl_set_is_empty = foreign "isl_set_is_empty" (Isl.set @-> returning Isl.bool) in
    let ret = isl_set_is_empty set in
    ret

let set_is_equal set1 set2 = 
    let isl_set_is_equal = foreign "isl_set_is_equal" (Isl.set @-> Isl.set @-> returning Isl.bool) in
    let ret = isl_set_is_equal set1 set2 in
    ret

let set_is_strict_subset set1 set2 = 
    let isl_set_is_strict_subset = foreign "isl_set_is_strict_subset" (Isl.set @-> Isl.set @-> returning Isl.bool) in
    let ret = isl_set_is_strict_subset set1 set2 in
    ret

let set_is_subset set1 set2 = 
    let isl_set_is_subset = foreign "isl_set_is_subset" (Isl.set @-> Isl.set @-> returning Isl.bool) in
    let ret = isl_set_is_subset set1 set2 in
    ret

let basic_set_lexmax bset = 
    let bset = basic_set_copy bset in
    let isl_basic_set_lexmax = foreign "isl_basic_set_lexmax" (Isl.basic_set @-> returning Isl.set) in
    let ret = isl_basic_set_lexmax bset in
    Gc.finalise set_free ret;
    ret

let basic_set_lexmin bset = 
    let bset = basic_set_copy bset in
    let isl_basic_set_lexmin = foreign "isl_basic_set_lexmin" (Isl.basic_set @-> returning Isl.set) in
    let ret = isl_basic_set_lexmin bset in
    Gc.finalise set_free ret;
    ret

let basic_set_union bset1 bset2 = 
    let bset1 = basic_set_copy bset1 in
    let bset2 = basic_set_copy bset2 in
    let isl_basic_set_union = foreign "isl_basic_set_union" (Isl.basic_set @-> Isl.basic_set @-> returning Isl.set) in
    let ret = isl_basic_set_union bset1 bset2 in
    Gc.finalise set_free ret;
    ret

let set_apply set map = 
    let set = set_copy set in
    let map = map_copy map in
    let isl_set_apply = foreign "isl_set_apply" (Isl.set @-> Isl.map @-> returning Isl.set) in
    let ret = isl_set_apply set map in
    Gc.finalise set_free ret;
    ret

let set_coalesce set = 
    let set = set_copy set in
    let isl_set_coalesce = foreign "isl_set_coalesce" (Isl.set @-> returning Isl.set) in
    let ret = isl_set_coalesce set in
    Gc.finalise set_free ret;
    ret

let set_complement set = 
    let set = set_copy set in
    let isl_set_complement = foreign "isl_set_complement" (Isl.set @-> returning Isl.set) in
    let ret = isl_set_complement set in
    Gc.finalise set_free ret;
    ret

let set_detect_equalities set = 
    let set = set_copy set in
    let isl_set_detect_equalities = foreign "isl_set_detect_equalities" (Isl.set @-> returning Isl.set) in
    let ret = isl_set_detect_equalities set in
    Gc.finalise set_free ret;
    ret

let set_gist set context = 
    let set = set_copy set in
    let context = set_copy context in
    let isl_set_gist = foreign "isl_set_gist" (Isl.set @-> Isl.set @-> returning Isl.set) in
    let ret = isl_set_gist set context in
    Gc.finalise set_free ret;
    ret

let set_intersect set1 set2 = 
    let set1 = set_copy set1 in
    let set2 = set_copy set2 in
    let isl_set_intersect = foreign "isl_set_intersect" (Isl.set @-> Isl.set @-> returning Isl.set) in
    let ret = isl_set_intersect set1 set2 in
    Gc.finalise set_free ret;
    ret

let set_intersect_params set params = 
    let set = set_copy set in
    let params = set_copy params in
    let isl_set_intersect_params = foreign "isl_set_intersect_params" (Isl.set @-> Isl.set @-> returning Isl.set) in
    let ret = isl_set_intersect_params set params in
    Gc.finalise set_free ret;
    ret

let set_lexmax set = 
    let set = set_copy set in
    let isl_set_lexmax = foreign "isl_set_lexmax" (Isl.set @-> returning Isl.set) in
    let ret = isl_set_lexmax set in
    Gc.finalise set_free ret;
    ret

let set_lexmin set = 
    let set = set_copy set in
    let isl_set_lexmin = foreign "isl_set_lexmin" (Isl.set @-> returning Isl.set) in
    let ret = isl_set_lexmin set in
    Gc.finalise set_free ret;
    ret

let set_subtract set1 set2 = 
    let set1 = set_copy set1 in
    let set2 = set_copy set2 in
    let isl_set_subtract = foreign "isl_set_subtract" (Isl.set @-> Isl.set @-> returning Isl.set) in
    let ret = isl_set_subtract set1 set2 in
    Gc.finalise set_free ret;
    ret

let set_union set1 set2 = 
    let set1 = set_copy set1 in
    let set2 = set_copy set2 in
    let isl_set_union = foreign "isl_set_union" (Isl.set @-> Isl.set @-> returning Isl.set) in
    let ret = isl_set_union set1 set2 in
    Gc.finalise set_free ret;
    ret

let basic_set_affine_hull bset = 
    let bset = basic_set_copy bset in
    let isl_basic_set_affine_hull = foreign "isl_basic_set_affine_hull" (Isl.basic_set @-> returning Isl.basic_set) in
    let ret = isl_basic_set_affine_hull bset in
    Gc.finalise basic_set_free ret;
    ret

let basic_set_apply bset bmap = 
    let bset = basic_set_copy bset in
    let bmap = basic_map_copy bmap in
    let isl_basic_set_apply = foreign "isl_basic_set_apply" (Isl.basic_set @-> Isl.basic_map @-> returning Isl.basic_set) in
    let ret = isl_basic_set_apply bset bmap in
    Gc.finalise basic_set_free ret;
    ret

let basic_set_detect_equalities bset = 
    let bset = basic_set_copy bset in
    let isl_basic_set_detect_equalities = foreign "isl_basic_set_detect_equalities" (Isl.basic_set @-> returning Isl.basic_set) in
    let ret = isl_basic_set_detect_equalities bset in
    Gc.finalise basic_set_free ret;
    ret

let basic_set_gist bset context = 
    let bset = basic_set_copy bset in
    let context = basic_set_copy context in
    let isl_basic_set_gist = foreign "isl_basic_set_gist" (Isl.basic_set @-> Isl.basic_set @-> returning Isl.basic_set) in
    let ret = isl_basic_set_gist bset context in
    Gc.finalise basic_set_free ret;
    ret

let basic_set_intersect bset1 bset2 = 
    let bset1 = basic_set_copy bset1 in
    let bset2 = basic_set_copy bset2 in
    let isl_basic_set_intersect = foreign "isl_basic_set_intersect" (Isl.basic_set @-> Isl.basic_set @-> returning Isl.basic_set) in
    let ret = isl_basic_set_intersect bset1 bset2 in
    Gc.finalise basic_set_free ret;
    ret

let basic_set_intersect_params bset1 bset2 = 
    let bset1 = basic_set_copy bset1 in
    let bset2 = basic_set_copy bset2 in
    let isl_basic_set_intersect_params = foreign "isl_basic_set_intersect_params" (Isl.basic_set @-> Isl.basic_set @-> returning Isl.basic_set) in
    let ret = isl_basic_set_intersect_params bset1 bset2 in
    Gc.finalise basic_set_free ret;
    ret

let basic_set_sample bset = 
    let bset = basic_set_copy bset in
    let isl_basic_set_sample = foreign "isl_basic_set_sample" (Isl.basic_set @-> returning Isl.basic_set) in
    let ret = isl_basic_set_sample bset in
    Gc.finalise basic_set_free ret;
    ret

let set_affine_hull set = 
    let set = set_copy set in
    let isl_set_affine_hull = foreign "isl_set_affine_hull" (Isl.set @-> returning Isl.basic_set) in
    let ret = isl_set_affine_hull set in
    Gc.finalise basic_set_free ret;
    ret

let set_polyhedral_hull set = 
    let set = set_copy set in
    let isl_set_polyhedral_hull = foreign "isl_set_polyhedral_hull" (Isl.set @-> returning Isl.basic_set) in
    let ret = isl_set_polyhedral_hull set in
    Gc.finalise basic_set_free ret;
    ret

let set_sample set = 
    let set = set_copy set in
    let isl_set_sample = foreign "isl_set_sample" (Isl.set @-> returning Isl.basic_set) in
    let ret = isl_set_sample set in
    Gc.finalise basic_set_free ret;
    ret

let set_from_basic_set bset = 
    let bset = basic_set_copy bset in
    let isl_set_from_basic_set = foreign "isl_set_from_basic_set" (Isl.basic_set @-> returning Isl.set) in
    let ret = isl_set_from_basic_set bset in
    Gc.finalise set_free ret;
    ret

let set_read_from_str ctx str = 
    let isl_set_read_from_str = foreign "isl_set_read_from_str" (Isl.ctx @-> string @-> returning Isl.set) in
    let ret = isl_set_read_from_str ctx str in
    Gc.finalise set_free ret;
    ret

let basic_set_read_from_str ctx str = 
    let isl_basic_set_read_from_str = foreign "isl_basic_set_read_from_str" (Isl.ctx @-> string @-> returning Isl.basic_set) in
    let ret = isl_basic_set_read_from_str ctx str in
    Gc.finalise basic_set_free ret;
    ret

