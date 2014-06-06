open Ctypes
open Foreign
open IslMemory

let union_set_n_set uset = 
    let isl_union_set_n_set = foreign "isl_union_set_n_set" (Isl.union_set @-> returning int) in
    let ret = isl_union_set_n_set uset in
    ret

let union_set_get_ctx uset = 
    let isl_union_set_get_ctx = foreign "isl_union_set_get_ctx" (Isl.union_set @-> returning Isl.ctx) in
    let ret = isl_union_set_get_ctx uset in
    ret

let union_set_dump uset = 
    let isl_union_set_dump = foreign "isl_union_set_dump" (Isl.union_set @-> returning void) in
    let ret = isl_union_set_dump uset in
    ret

let union_set_is_params uset = 
    let isl_union_set_is_params = foreign "isl_union_set_is_params" (Isl.union_set @-> returning Isl.bool) in
    let ret = isl_union_set_is_params uset in
    ret

let set_from_union_set uset = 
    let uset = union_set_copy uset in
    let isl_set_from_union_set = foreign "isl_set_from_union_set" (Isl.union_set @-> returning Isl.set) in
    let ret = isl_set_from_union_set uset in
    Gc.finalise set_free ret;
    ret

let union_set_extract_set uset dim = 
    let dim = space_copy dim in
    let isl_union_set_extract_set = foreign "isl_union_set_extract_set" (Isl.union_set @-> Isl.space @-> returning Isl.set) in
    let ret = isl_union_set_extract_set uset dim in
    Gc.finalise set_free ret;
    ret

let union_set_params uset = 
    let uset = union_set_copy uset in
    let isl_union_set_params = foreign "isl_union_set_params" (Isl.union_set @-> returning Isl.set) in
    let ret = isl_union_set_params uset in
    Gc.finalise set_free ret;
    ret

let union_set_get_space uset = 
    let isl_union_set_get_space = foreign "isl_union_set_get_space" (Isl.union_set @-> returning Isl.space) in
    let ret = isl_union_set_get_space uset in
    Gc.finalise space_free ret;
    ret

let union_set_lex_ge_union_set uset1 uset2 = 
    let uset1 = union_set_copy uset1 in
    let uset2 = union_set_copy uset2 in
    let isl_union_set_lex_ge_union_set = foreign "isl_union_set_lex_ge_union_set" (Isl.union_set @-> Isl.union_set @-> returning Isl.union_map) in
    let ret = isl_union_set_lex_ge_union_set uset1 uset2 in
    Gc.finalise union_map_free ret;
    ret

let union_set_lex_gt_union_set uset1 uset2 = 
    let uset1 = union_set_copy uset1 in
    let uset2 = union_set_copy uset2 in
    let isl_union_set_lex_gt_union_set = foreign "isl_union_set_lex_gt_union_set" (Isl.union_set @-> Isl.union_set @-> returning Isl.union_map) in
    let ret = isl_union_set_lex_gt_union_set uset1 uset2 in
    Gc.finalise union_map_free ret;
    ret

let union_set_lex_le_union_set uset1 uset2 = 
    let uset1 = union_set_copy uset1 in
    let uset2 = union_set_copy uset2 in
    let isl_union_set_lex_le_union_set = foreign "isl_union_set_lex_le_union_set" (Isl.union_set @-> Isl.union_set @-> returning Isl.union_map) in
    let ret = isl_union_set_lex_le_union_set uset1 uset2 in
    Gc.finalise union_map_free ret;
    ret

let union_set_lex_lt_union_set uset1 uset2 = 
    let uset1 = union_set_copy uset1 in
    let uset2 = union_set_copy uset2 in
    let isl_union_set_lex_lt_union_set = foreign "isl_union_set_lex_lt_union_set" (Isl.union_set @-> Isl.union_set @-> returning Isl.union_map) in
    let ret = isl_union_set_lex_lt_union_set uset1 uset2 in
    Gc.finalise union_map_free ret;
    ret

let union_set_sample uset = 
    let uset = union_set_copy uset in
    let isl_union_set_sample = foreign "isl_union_set_sample" (Isl.union_set @-> returning Isl.basic_set) in
    let ret = isl_union_set_sample uset in
    Gc.finalise basic_set_free ret;
    ret

let union_set_add_set uset set = 
    let uset = union_set_copy uset in
    let set = set_copy set in
    let isl_union_set_add_set = foreign "isl_union_set_add_set" (Isl.union_set @-> Isl.set @-> returning Isl.union_set) in
    let ret = isl_union_set_add_set uset set in
    Gc.finalise union_set_free ret;
    ret

let union_set_coefficients bset = 
    let bset = union_set_copy bset in
    let isl_union_set_coefficients = foreign "isl_union_set_coefficients" (Isl.union_set @-> returning Isl.union_set) in
    let ret = isl_union_set_coefficients bset in
    Gc.finalise union_set_free ret;
    ret

let union_set_compute_divs uset = 
    let uset = union_set_copy uset in
    let isl_union_set_compute_divs = foreign "isl_union_set_compute_divs" (Isl.union_set @-> returning Isl.union_set) in
    let ret = isl_union_set_compute_divs uset in
    Gc.finalise union_set_free ret;
    ret

let union_set_empty dim = 
    let dim = space_copy dim in
    let isl_union_set_empty = foreign "isl_union_set_empty" (Isl.space @-> returning Isl.union_set) in
    let ret = isl_union_set_empty dim in
    Gc.finalise union_set_free ret;
    ret

let union_set_lift uset = 
    let uset = union_set_copy uset in
    let isl_union_set_lift = foreign "isl_union_set_lift" (Isl.union_set @-> returning Isl.union_set) in
    let ret = isl_union_set_lift uset in
    Gc.finalise union_set_free ret;
    ret

let union_set_product uset1 uset2 = 
    let uset1 = union_set_copy uset1 in
    let uset2 = union_set_copy uset2 in
    let isl_union_set_product = foreign "isl_union_set_product" (Isl.union_set @-> Isl.union_set @-> returning Isl.union_set) in
    let ret = isl_union_set_product uset1 uset2 in
    Gc.finalise union_set_free ret;
    ret

let union_set_reset_user uset = 
    let uset = union_set_copy uset in
    let isl_union_set_reset_user = foreign "isl_union_set_reset_user" (Isl.union_set @-> returning Isl.union_set) in
    let ret = isl_union_set_reset_user uset in
    Gc.finalise union_set_free ret;
    ret

let union_set_simple_hull uset = 
    let uset = union_set_copy uset in
    let isl_union_set_simple_hull = foreign "isl_union_set_simple_hull" (Isl.union_set @-> returning Isl.union_set) in
    let ret = isl_union_set_simple_hull uset in
    Gc.finalise union_set_free ret;
    ret

let union_set_solutions bset = 
    let bset = union_set_copy bset in
    let isl_union_set_solutions = foreign "isl_union_set_solutions" (Isl.union_set @-> returning Isl.union_set) in
    let ret = isl_union_set_solutions bset in
    Gc.finalise union_set_free ret;
    ret

let union_set_union uset1 uset2 = 
    let uset1 = union_set_copy uset1 in
    let uset2 = union_set_copy uset2 in
    let isl_union_set_union = foreign "isl_union_set_union" (Isl.union_set @-> Isl.union_set @-> returning Isl.union_set) in
    let ret = isl_union_set_union uset1 uset2 in
    Gc.finalise union_set_free ret;
    ret

let union_set_universe uset = 
    let uset = union_set_copy uset in
    let isl_union_set_universe = foreign "isl_union_set_universe" (Isl.union_set @-> returning Isl.union_set) in
    let ret = isl_union_set_universe uset in
    Gc.finalise union_set_free ret;
    ret

let union_set_is_empty uset = 
    let isl_union_set_is_empty = foreign "isl_union_set_is_empty" (Isl.union_set @-> returning Isl.bool) in
    let ret = isl_union_set_is_empty uset in
    ret

let union_set_is_equal uset1 uset2 = 
    let isl_union_set_is_equal = foreign "isl_union_set_is_equal" (Isl.union_set @-> Isl.union_set @-> returning Isl.bool) in
    let ret = isl_union_set_is_equal uset1 uset2 in
    ret

let union_set_is_strict_subset uset1 uset2 = 
    let isl_union_set_is_strict_subset = foreign "isl_union_set_is_strict_subset" (Isl.union_set @-> Isl.union_set @-> returning Isl.bool) in
    let ret = isl_union_set_is_strict_subset uset1 uset2 in
    ret

let union_set_is_subset uset1 uset2 = 
    let isl_union_set_is_subset = foreign "isl_union_set_is_subset" (Isl.union_set @-> Isl.union_set @-> returning Isl.bool) in
    let ret = isl_union_set_is_subset uset1 uset2 in
    ret

let union_set_affine_hull uset = 
    let uset = union_set_copy uset in
    let isl_union_set_affine_hull = foreign "isl_union_set_affine_hull" (Isl.union_set @-> returning Isl.union_set) in
    let ret = isl_union_set_affine_hull uset in
    Gc.finalise union_set_free ret;
    ret

let union_set_apply uset umap = 
    let uset = union_set_copy uset in
    let umap = union_map_copy umap in
    let isl_union_set_apply = foreign "isl_union_set_apply" (Isl.union_set @-> Isl.union_map @-> returning Isl.union_set) in
    let ret = isl_union_set_apply uset umap in
    Gc.finalise union_set_free ret;
    ret

let union_set_coalesce uset = 
    let uset = union_set_copy uset in
    let isl_union_set_coalesce = foreign "isl_union_set_coalesce" (Isl.union_set @-> returning Isl.union_set) in
    let ret = isl_union_set_coalesce uset in
    Gc.finalise union_set_free ret;
    ret

let union_set_detect_equalities uset = 
    let uset = union_set_copy uset in
    let isl_union_set_detect_equalities = foreign "isl_union_set_detect_equalities" (Isl.union_set @-> returning Isl.union_set) in
    let ret = isl_union_set_detect_equalities uset in
    Gc.finalise union_set_free ret;
    ret

let union_set_gist uset context = 
    let uset = union_set_copy uset in
    let context = union_set_copy context in
    let isl_union_set_gist = foreign "isl_union_set_gist" (Isl.union_set @-> Isl.union_set @-> returning Isl.union_set) in
    let ret = isl_union_set_gist uset context in
    Gc.finalise union_set_free ret;
    ret

let union_set_gist_params uset set = 
    let uset = union_set_copy uset in
    let set = set_copy set in
    let isl_union_set_gist_params = foreign "isl_union_set_gist_params" (Isl.union_set @-> Isl.set @-> returning Isl.union_set) in
    let ret = isl_union_set_gist_params uset set in
    Gc.finalise union_set_free ret;
    ret

let union_set_intersect uset1 uset2 = 
    let uset1 = union_set_copy uset1 in
    let uset2 = union_set_copy uset2 in
    let isl_union_set_intersect = foreign "isl_union_set_intersect" (Isl.union_set @-> Isl.union_set @-> returning Isl.union_set) in
    let ret = isl_union_set_intersect uset1 uset2 in
    Gc.finalise union_set_free ret;
    ret

let union_set_intersect_params uset set = 
    let uset = union_set_copy uset in
    let set = set_copy set in
    let isl_union_set_intersect_params = foreign "isl_union_set_intersect_params" (Isl.union_set @-> Isl.set @-> returning Isl.union_set) in
    let ret = isl_union_set_intersect_params uset set in
    Gc.finalise union_set_free ret;
    ret

let union_set_lexmax uset = 
    let uset = union_set_copy uset in
    let isl_union_set_lexmax = foreign "isl_union_set_lexmax" (Isl.union_set @-> returning Isl.union_set) in
    let ret = isl_union_set_lexmax uset in
    Gc.finalise union_set_free ret;
    ret

let union_set_lexmin uset = 
    let uset = union_set_copy uset in
    let isl_union_set_lexmin = foreign "isl_union_set_lexmin" (Isl.union_set @-> returning Isl.union_set) in
    let ret = isl_union_set_lexmin uset in
    Gc.finalise union_set_free ret;
    ret

let union_set_polyhedral_hull uset = 
    let uset = union_set_copy uset in
    let isl_union_set_polyhedral_hull = foreign "isl_union_set_polyhedral_hull" (Isl.union_set @-> returning Isl.union_set) in
    let ret = isl_union_set_polyhedral_hull uset in
    Gc.finalise union_set_free ret;
    ret

let union_set_subtract uset1 uset2 = 
    let uset1 = union_set_copy uset1 in
    let uset2 = union_set_copy uset2 in
    let isl_union_set_subtract = foreign "isl_union_set_subtract" (Isl.union_set @-> Isl.union_set @-> returning Isl.union_set) in
    let ret = isl_union_set_subtract uset1 uset2 in
    Gc.finalise union_set_free ret;
    ret

let union_set_from_basic_set bset = 
    let bset = basic_set_copy bset in
    let isl_union_set_from_basic_set = foreign "isl_union_set_from_basic_set" (Isl.basic_set @-> returning Isl.union_set) in
    let ret = isl_union_set_from_basic_set bset in
    Gc.finalise union_set_free ret;
    ret

let union_set_from_set set = 
    let set = set_copy set in
    let isl_union_set_from_set = foreign "isl_union_set_from_set" (Isl.set @-> returning Isl.union_set) in
    let ret = isl_union_set_from_set set in
    Gc.finalise union_set_free ret;
    ret

let union_set_read_from_str ctx str = 
    let isl_union_set_read_from_str = foreign "isl_union_set_read_from_str" (Isl.ctx @-> string @-> returning Isl.union_set) in
    let ret = isl_union_set_read_from_str ctx str in
    Gc.finalise union_set_free ret;
    ret

