open Types
open Ctypes
open Foreign
open IslMemory
open Errors

let n_set ctx uset = 
    let isl_union_set_n_set = foreign "isl_union_set_n_set" (Types.union_set @-> returning int) in
    let ret = isl_union_set_n_set uset in
    check_for_errors ctx;
    ret

let dump ctx uset = 
    let isl_union_set_dump = foreign "isl_union_set_dump" (Types.union_set @-> returning void) in
    let ret = isl_union_set_dump uset in
    check_for_errors ctx;
    ret

let is_params ctx uset = 
    let isl_union_set_is_params = foreign "isl_union_set_is_params" (Types.union_set @-> returning bool) in
    let ret = isl_union_set_is_params uset in
    check_for_errors ctx;
    ret

let extract_set ctx uset dim = 
    let dim = space_copy dim in
    let isl_union_set_extract_set = foreign "isl_union_set_extract_set" (Types.union_set @-> Types.space @-> returning Types.set) in
    let ret = isl_union_set_extract_set uset dim in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let params ctx uset = 
    let uset = union_set_copy uset in
    let isl_union_set_params = foreign "isl_union_set_params" (Types.union_set @-> returning Types.set) in
    let ret = isl_union_set_params uset in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let get_space ctx uset = 
    let isl_union_set_get_space = foreign "isl_union_set_get_space" (Types.union_set @-> returning Types.space) in
    let ret = isl_union_set_get_space uset in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let lex_ge_union_set ctx uset1 uset2 = 
    let uset1 = union_set_copy uset1 in
    let uset2 = union_set_copy uset2 in
    let isl_union_set_lex_ge_union_set = foreign "isl_union_set_lex_ge_union_set" (Types.union_set @-> Types.union_set @-> returning Types.union_map) in
    let ret = isl_union_set_lex_ge_union_set uset1 uset2 in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let lex_gt_union_set ctx uset1 uset2 = 
    let uset1 = union_set_copy uset1 in
    let uset2 = union_set_copy uset2 in
    let isl_union_set_lex_gt_union_set = foreign "isl_union_set_lex_gt_union_set" (Types.union_set @-> Types.union_set @-> returning Types.union_map) in
    let ret = isl_union_set_lex_gt_union_set uset1 uset2 in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let lex_le_union_set ctx uset1 uset2 = 
    let uset1 = union_set_copy uset1 in
    let uset2 = union_set_copy uset2 in
    let isl_union_set_lex_le_union_set = foreign "isl_union_set_lex_le_union_set" (Types.union_set @-> Types.union_set @-> returning Types.union_map) in
    let ret = isl_union_set_lex_le_union_set uset1 uset2 in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let lex_lt_union_set ctx uset1 uset2 = 
    let uset1 = union_set_copy uset1 in
    let uset2 = union_set_copy uset2 in
    let isl_union_set_lex_lt_union_set = foreign "isl_union_set_lex_lt_union_set" (Types.union_set @-> Types.union_set @-> returning Types.union_map) in
    let ret = isl_union_set_lex_lt_union_set uset1 uset2 in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let unwrap ctx uset = 
    let uset = union_set_copy uset in
    let isl_union_set_unwrap = foreign "isl_union_set_unwrap" (Types.union_set @-> returning Types.union_map) in
    let ret = isl_union_set_unwrap uset in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let sample ctx uset = 
    let uset = union_set_copy uset in
    let isl_union_set_sample = foreign "isl_union_set_sample" (Types.union_set @-> returning Types.basic_set) in
    let ret = isl_union_set_sample uset in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let add_set ctx uset set = 
    let uset = union_set_copy uset in
    let set = set_copy set in
    let isl_union_set_add_set = foreign "isl_union_set_add_set" (Types.union_set @-> Types.set @-> returning Types.union_set) in
    let ret = isl_union_set_add_set uset set in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let align_params ctx uset model = 
    let uset = union_set_copy uset in
    let model = space_copy model in
    let isl_union_set_align_params = foreign "isl_union_set_align_params" (Types.union_set @-> Types.space @-> returning Types.union_set) in
    let ret = isl_union_set_align_params uset model in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let coefficients ctx bset = 
    let bset = union_set_copy bset in
    let isl_union_set_coefficients = foreign "isl_union_set_coefficients" (Types.union_set @-> returning Types.union_set) in
    let ret = isl_union_set_coefficients bset in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let compute_divs ctx uset = 
    let uset = union_set_copy uset in
    let isl_union_set_compute_divs = foreign "isl_union_set_compute_divs" (Types.union_set @-> returning Types.union_set) in
    let ret = isl_union_set_compute_divs uset in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let empty ctx dim = 
    let dim = space_copy dim in
    let isl_union_set_empty = foreign "isl_union_set_empty" (Types.space @-> returning Types.union_set) in
    let ret = isl_union_set_empty dim in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let lift ctx uset = 
    let uset = union_set_copy uset in
    let isl_union_set_lift = foreign "isl_union_set_lift" (Types.union_set @-> returning Types.union_set) in
    let ret = isl_union_set_lift uset in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let product ctx uset1 uset2 = 
    let uset1 = union_set_copy uset1 in
    let uset2 = union_set_copy uset2 in
    let isl_union_set_product = foreign "isl_union_set_product" (Types.union_set @-> Types.union_set @-> returning Types.union_set) in
    let ret = isl_union_set_product uset1 uset2 in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let reset_user ctx uset = 
    let uset = union_set_copy uset in
    let isl_union_set_reset_user = foreign "isl_union_set_reset_user" (Types.union_set @-> returning Types.union_set) in
    let ret = isl_union_set_reset_user uset in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let simple_hull ctx uset = 
    let uset = union_set_copy uset in
    let isl_union_set_simple_hull = foreign "isl_union_set_simple_hull" (Types.union_set @-> returning Types.union_set) in
    let ret = isl_union_set_simple_hull uset in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let solutions ctx bset = 
    let bset = union_set_copy bset in
    let isl_union_set_solutions = foreign "isl_union_set_solutions" (Types.union_set @-> returning Types.union_set) in
    let ret = isl_union_set_solutions bset in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let union ctx uset1 uset2 = 
    let uset1 = union_set_copy uset1 in
    let uset2 = union_set_copy uset2 in
    let isl_union_set_union = foreign "isl_union_set_union" (Types.union_set @-> Types.union_set @-> returning Types.union_set) in
    let ret = isl_union_set_union uset1 uset2 in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let universe ctx uset = 
    let uset = union_set_copy uset in
    let isl_union_set_universe = foreign "isl_union_set_universe" (Types.union_set @-> returning Types.union_set) in
    let ret = isl_union_set_universe uset in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let is_empty ctx uset = 
    let isl_union_set_is_empty = foreign "isl_union_set_is_empty" (Types.union_set @-> returning bool) in
    let ret = isl_union_set_is_empty uset in
    check_for_errors ctx;
    ret

let is_equal ctx uset1 uset2 = 
    let isl_union_set_is_equal = foreign "isl_union_set_is_equal" (Types.union_set @-> Types.union_set @-> returning bool) in
    let ret = isl_union_set_is_equal uset1 uset2 in
    check_for_errors ctx;
    ret

let is_strict_subset ctx uset1 uset2 = 
    let isl_union_set_is_strict_subset = foreign "isl_union_set_is_strict_subset" (Types.union_set @-> Types.union_set @-> returning bool) in
    let ret = isl_union_set_is_strict_subset uset1 uset2 in
    check_for_errors ctx;
    ret

let is_subset ctx uset1 uset2 = 
    let isl_union_set_is_subset = foreign "isl_union_set_is_subset" (Types.union_set @-> Types.union_set @-> returning bool) in
    let ret = isl_union_set_is_subset uset1 uset2 in
    check_for_errors ctx;
    ret

let identity ctx uset = 
    let uset = union_set_copy uset in
    let isl_union_set_identity = foreign "isl_union_set_identity" (Types.union_set @-> returning Types.union_map) in
    let ret = isl_union_set_identity uset in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let affine_hull ctx uset = 
    let uset = union_set_copy uset in
    let isl_union_set_affine_hull = foreign "isl_union_set_affine_hull" (Types.union_set @-> returning Types.union_set) in
    let ret = isl_union_set_affine_hull uset in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let apply ctx uset umap = 
    let uset = union_set_copy uset in
    let umap = union_map_copy umap in
    let isl_union_set_apply = foreign "isl_union_set_apply" (Types.union_set @-> Types.union_map @-> returning Types.union_set) in
    let ret = isl_union_set_apply uset umap in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let coalesce ctx uset = 
    let uset = union_set_copy uset in
    let isl_union_set_coalesce = foreign "isl_union_set_coalesce" (Types.union_set @-> returning Types.union_set) in
    let ret = isl_union_set_coalesce uset in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let detect_equalities ctx uset = 
    let uset = union_set_copy uset in
    let isl_union_set_detect_equalities = foreign "isl_union_set_detect_equalities" (Types.union_set @-> returning Types.union_set) in
    let ret = isl_union_set_detect_equalities uset in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let gist ctx uset context = 
    let uset = union_set_copy uset in
    let context = union_set_copy context in
    let isl_union_set_gist = foreign "isl_union_set_gist" (Types.union_set @-> Types.union_set @-> returning Types.union_set) in
    let ret = isl_union_set_gist uset context in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let gist_params ctx uset set = 
    let uset = union_set_copy uset in
    let set = set_copy set in
    let isl_union_set_gist_params = foreign "isl_union_set_gist_params" (Types.union_set @-> Types.set @-> returning Types.union_set) in
    let ret = isl_union_set_gist_params uset set in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let intersect ctx uset1 uset2 = 
    let uset1 = union_set_copy uset1 in
    let uset2 = union_set_copy uset2 in
    let isl_union_set_intersect = foreign "isl_union_set_intersect" (Types.union_set @-> Types.union_set @-> returning Types.union_set) in
    let ret = isl_union_set_intersect uset1 uset2 in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let intersect_params ctx uset set = 
    let uset = union_set_copy uset in
    let set = set_copy set in
    let isl_union_set_intersect_params = foreign "isl_union_set_intersect_params" (Types.union_set @-> Types.set @-> returning Types.union_set) in
    let ret = isl_union_set_intersect_params uset set in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let lexmax ctx uset = 
    let uset = union_set_copy uset in
    let isl_union_set_lexmax = foreign "isl_union_set_lexmax" (Types.union_set @-> returning Types.union_set) in
    let ret = isl_union_set_lexmax uset in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let lexmin ctx uset = 
    let uset = union_set_copy uset in
    let isl_union_set_lexmin = foreign "isl_union_set_lexmin" (Types.union_set @-> returning Types.union_set) in
    let ret = isl_union_set_lexmin uset in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let polyhedral_hull ctx uset = 
    let uset = union_set_copy uset in
    let isl_union_set_polyhedral_hull = foreign "isl_union_set_polyhedral_hull" (Types.union_set @-> returning Types.union_set) in
    let ret = isl_union_set_polyhedral_hull uset in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let subtract ctx uset1 uset2 = 
    let uset1 = union_set_copy uset1 in
    let uset2 = union_set_copy uset2 in
    let isl_union_set_subtract = foreign "isl_union_set_subtract" (Types.union_set @-> Types.union_set @-> returning Types.union_set) in
    let ret = isl_union_set_subtract uset1 uset2 in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let from_basic_set ctx bset = 
    let bset = basic_set_copy bset in
    let isl_union_set_from_basic_set = foreign "isl_union_set_from_basic_set" (Types.basic_set @-> returning Types.union_set) in
    let ret = isl_union_set_from_basic_set bset in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let from_set ctx set = 
    let set = set_copy set in
    let isl_union_set_from_set = foreign "isl_union_set_from_set" (Types.set @-> returning Types.union_set) in
    let ret = isl_union_set_from_set set in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let of_string ctx str = 
    let isl_union_set_read_from_str = foreign "isl_union_set_read_from_str" (Ctx.t @-> string @-> returning Types.union_set) in
    let ret = isl_union_set_read_from_str ctx str in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

