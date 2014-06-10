open Types
open Ctypes
open Foreign
open IslMemory
open IslErrors
open Unsigned

let isl_basic_set_compare_at = foreign "isl_basic_set_compare_at" (Types.basic_set @-> Types.basic_set @-> int @-> returning int)
let compare_at ctx bset1 bset2 pos = 
    let ret = isl_basic_set_compare_at bset1 bset2 pos in
    check_for_errors ctx;
    ret

let isl_basic_set_involves_dims = foreign "isl_basic_set_involves_dims" (Types.basic_set @-> dim_type @-> unsigned_int @-> unsigned_int @-> returning int)
let involves_dims ctx bset typ first n = 
    let ret = isl_basic_set_involves_dims bset typ first n in
    check_for_errors ctx;
    ret

let isl_basic_set_n_constraint = foreign "isl_basic_set_n_constraint" (Types.basic_set @-> returning int)
let n_constraint ctx bset = 
    let ret = isl_basic_set_n_constraint bset in
    check_for_errors ctx;
    ret

let isl_basic_set_dim = foreign "isl_basic_set_dim" (Types.basic_set @-> dim_type @-> returning unsigned_int)
let dim ctx bset typ = 
    let ret = isl_basic_set_dim bset typ in
    check_for_errors ctx;
    ret

let isl_basic_set_n_dim = foreign "isl_basic_set_n_dim" (Types.basic_set @-> returning unsigned_int)
let n_dim ctx bset = 
    let ret = isl_basic_set_n_dim bset in
    check_for_errors ctx;
    ret

let isl_basic_set_n_param = foreign "isl_basic_set_n_param" (Types.basic_set @-> returning unsigned_int)
let n_param ctx bset = 
    let ret = isl_basic_set_n_param bset in
    check_for_errors ctx;
    ret

let isl_basic_set_total_dim = foreign "isl_basic_set_total_dim" (Types.basic_set @-> returning unsigned_int)
let total_dim ctx bset = 
    let ret = isl_basic_set_total_dim bset in
    check_for_errors ctx;
    ret

let isl_basic_set_compute_divs = foreign "isl_basic_set_compute_divs" (Types.basic_set @-> returning Types.set)
let compute_divs ctx bset = 
    let ret = isl_basic_set_compute_divs bset in
    check_for_errors ctx;
    ret

let isl_basic_set_alloc = foreign "isl_basic_set_alloc" (Types.ctx @-> unsigned_int @-> unsigned_int @-> unsigned_int @-> unsigned_int @-> unsigned_int @-> returning Types.basic_set)
let alloc ctx nparam dim extra n_eq n_ineq = 
    let ret = isl_basic_set_alloc ctx nparam dim extra n_eq n_ineq in
    check_for_errors ctx;
    ret

let isl_basic_set_dup = foreign "isl_basic_set_dup" (Types.basic_set @-> returning Types.basic_set)
let dup ctx bset = 
    let ret = isl_basic_set_dup bset in
    check_for_errors ctx;
    ret

let isl_basic_set_empty_like = foreign "isl_basic_set_empty_like" (Types.basic_set @-> returning Types.basic_set)
let empty_like ctx bset = 
    let ret = isl_basic_set_empty_like bset in
    check_for_errors ctx;
    ret

let isl_basic_set_extend = foreign "isl_basic_set_extend" (Types.basic_set @-> unsigned_int @-> unsigned_int @-> unsigned_int @-> unsigned_int @-> unsigned_int @-> returning Types.basic_set)
let extend ctx base nparam dim extra n_eq n_ineq = 
    let ret = isl_basic_set_extend base nparam dim extra n_eq n_ineq in
    check_for_errors ctx;
    ret

let isl_basic_set_extend_constraints = foreign "isl_basic_set_extend_constraints" (Types.basic_set @-> unsigned_int @-> unsigned_int @-> returning Types.basic_set)
let extend_constraints ctx base n_eq n_ineq = 
    let ret = isl_basic_set_extend_constraints base n_eq n_ineq in
    check_for_errors ctx;
    ret

let isl_basic_set_finalize = foreign "isl_basic_set_finalize" (Types.basic_set @-> returning Types.basic_set)
let finalize ctx bset = 
    let ret = isl_basic_set_finalize bset in
    check_for_errors ctx;
    ret

let isl_basic_set_from_basic_map = foreign "isl_basic_set_from_basic_map" (Types.basic_map @-> returning Types.basic_set)
let from_basic_map ctx bmap = 
    let ret = isl_basic_set_from_basic_map bmap in
    check_for_errors ctx;
    ret

let isl_basic_set_from_constraint = foreign "isl_basic_set_from_constraint" (Types.constrnt @-> returning Types.basic_set)
let from_constraint ctx constrnt = 
    let ret = isl_basic_set_from_constraint constrnt in
    check_for_errors ctx;
    ret

let isl_basic_set_from_underlying_set = foreign "isl_basic_set_from_underlying_set" (Types.basic_set @-> Types.basic_set @-> returning Types.basic_set)
let from_underlying_set ctx bset like = 
    let ret = isl_basic_set_from_underlying_set bset like in
    check_for_errors ctx;
    ret

let isl_basic_set_simplify = foreign "isl_basic_set_simplify" (Types.basic_set @-> returning Types.basic_set)
let simplify ctx bset = 
    let ret = isl_basic_set_simplify bset in
    check_for_errors ctx;
    ret

let isl_basic_set_universe_like = foreign "isl_basic_set_universe_like" (Types.basic_set @-> returning Types.basic_set)
let universe_like ctx bset = 
    let ret = isl_basic_set_universe_like bset in
    check_for_errors ctx;
    ret

let isl_basic_set_dump = foreign "isl_basic_set_dump" (Types.basic_set @-> returning void)
let dump ctx bset = 
    let ret = isl_basic_set_dump bset in
    check_for_errors ctx;
    ret

let isl_basic_set_get_dim_name = foreign "isl_basic_set_get_dim_name" (Types.basic_set @-> dim_type @-> unsigned_int @-> returning string)
let get_dim_name ctx bset typ pos = 
    let ret = isl_basic_set_get_dim_name bset typ pos in
    check_for_errors ctx;
    ret

let isl_basic_set_get_tuple_name = foreign "isl_basic_set_get_tuple_name" (Types.basic_set @-> returning string)
let get_tuple_name ctx bset = 
    let ret = isl_basic_set_get_tuple_name bset in
    check_for_errors ctx;
    ret

let isl_basic_set_fast_is_empty = foreign "isl_basic_set_fast_is_empty" (Types.basic_set @-> returning bool)
let fast_is_empty ctx bset = 
    let ret = isl_basic_set_fast_is_empty bset in
    check_for_errors ctx;
    ret

let isl_basic_set_is_bounded = foreign "isl_basic_set_is_bounded" (Types.basic_set @-> returning bool)
let is_bounded ctx bset = 
    let ret = isl_basic_set_is_bounded bset in
    check_for_errors ctx;
    ret

let isl_basic_set_is_disjoint = foreign "isl_basic_set_is_disjoint" (Types.basic_set @-> Types.basic_set @-> returning bool)
let is_disjoint ctx bset1 bset2 = 
    let ret = isl_basic_set_is_disjoint bset1 bset2 in
    check_for_errors ctx;
    ret

let isl_basic_set_is_rational = foreign "isl_basic_set_is_rational" (Types.basic_set @-> returning bool)
let is_rational ctx bset = 
    let ret = isl_basic_set_is_rational bset in
    check_for_errors ctx;
    ret

let isl_basic_set_is_universe = foreign "isl_basic_set_is_universe" (Types.basic_set @-> returning bool)
let is_universe ctx bset = 
    let ret = isl_basic_set_is_universe bset in
    check_for_errors ctx;
    ret

let isl_basic_set_plain_is_empty = foreign "isl_basic_set_plain_is_empty" (Types.basic_set @-> returning bool)
let plain_is_empty ctx bset = 
    let ret = isl_basic_set_plain_is_empty bset in
    check_for_errors ctx;
    ret

let isl_basic_set_plain_is_equal = foreign "isl_basic_set_plain_is_equal" (Types.basic_set @-> Types.basic_set @-> returning bool)
let plain_is_equal ctx bset1 bset2 = 
    let ret = isl_basic_set_plain_is_equal bset1 bset2 in
    check_for_errors ctx;
    ret

let isl_basic_set_get_space = foreign "isl_basic_set_get_space" (Types.basic_set @-> returning Types.space)
let get_space ctx bset = 
    let ret = isl_basic_set_get_space bset in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_basic_set_unwrap = foreign "isl_basic_set_unwrap" (Types.basic_set @-> returning Types.basic_map)
let unwrap ctx bset = 
    let bset = basic_set_copy bset in
    let ret = isl_basic_set_unwrap bset in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let isl_basic_set_add = foreign "isl_basic_set_add" (Types.basic_set @-> dim_type @-> unsigned_int @-> returning Types.basic_set)
let add ctx bset typ n = 
    let bset = basic_set_copy bset in
    let ret = isl_basic_set_add bset typ n in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_basic_set_add_constraint = foreign "isl_basic_set_add_constraint" (Types.basic_set @-> Types.constrnt @-> returning Types.basic_set)
let add_constraint ctx bset constrnt = 
    let bset = basic_set_copy bset in
    let ret = isl_basic_set_add_constraint bset constrnt in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_basic_set_add_dims = foreign "isl_basic_set_add_dims" (Types.basic_set @-> dim_type @-> unsigned_int @-> returning Types.basic_set)
let add_dims ctx bset typ n = 
    let bset = basic_set_copy bset in
    let ret = isl_basic_set_add_dims bset typ n in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_basic_set_align_params = foreign "isl_basic_set_align_params" (Types.basic_set @-> Types.space @-> returning Types.basic_set)
let align_params ctx bset model = 
    let bset = basic_set_copy bset in
    let model = space_copy model in
    let ret = isl_basic_set_align_params bset model in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_basic_set_coefficients = foreign "isl_basic_set_coefficients" (Types.basic_set @-> returning Types.basic_set)
let coefficients ctx bset = 
    let bset = basic_set_copy bset in
    let ret = isl_basic_set_coefficients bset in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_basic_set_drop_constraint = foreign "isl_basic_set_drop_constraint" (Types.basic_set @-> Types.constrnt @-> returning Types.basic_set)
let drop_constraint ctx bset constrnt = 
    let bset = basic_set_copy bset in
    let ret = isl_basic_set_drop_constraint bset constrnt in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_basic_set_drop_constraints_involving_dims = foreign "isl_basic_set_drop_constraints_involving_dims" (Types.basic_set @-> dim_type @-> unsigned_int @-> unsigned_int @-> returning Types.basic_set)
let drop_constraints_involving_dims ctx bset typ first n = 
    let bset = basic_set_copy bset in
    let ret = isl_basic_set_drop_constraints_involving_dims bset typ first n in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_basic_set_drop_constraints_not_involving_dims = foreign "isl_basic_set_drop_constraints_not_involving_dims" (Types.basic_set @-> dim_type @-> unsigned_int @-> unsigned_int @-> returning Types.basic_set)
let drop_constraints_not_involving_dims ctx bset typ first n = 
    let bset = basic_set_copy bset in
    let ret = isl_basic_set_drop_constraints_not_involving_dims bset typ first n in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_basic_set_eliminate = foreign "isl_basic_set_eliminate" (Types.basic_set @-> dim_type @-> unsigned_int @-> unsigned_int @-> returning Types.basic_set)
let eliminate ctx bset typ first n = 
    let bset = basic_set_copy bset in
    let ret = isl_basic_set_eliminate bset typ first n in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_basic_set_empty = foreign "isl_basic_set_empty" (Types.space @-> returning Types.basic_set)
let empty ctx dim = 
    let dim = space_copy dim in
    let ret = isl_basic_set_empty dim in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_basic_set_fix_si = foreign "isl_basic_set_fix_si" (Types.basic_set @-> dim_type @-> unsigned_int @-> int @-> returning Types.basic_set)
let fix_si ctx bset typ pos value = 
    let bset = basic_set_copy bset in
    let ret = isl_basic_set_fix_si bset typ pos value in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_basic_set_fix_val = foreign "isl_basic_set_fix_val" (Types.basic_set @-> dim_type @-> unsigned_int @-> Types.value @-> returning Types.basic_set)
let fix_val ctx bset typ pos v = 
    let bset = basic_set_copy bset in
    let v = val_copy v in
    let ret = isl_basic_set_fix_val bset typ pos v in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_basic_set_flat_product = foreign "isl_basic_set_flat_product" (Types.basic_set @-> Types.basic_set @-> returning Types.basic_set)
let flat_product ctx bset1 bset2 = 
    let bset1 = basic_set_copy bset1 in
    let bset2 = basic_set_copy bset2 in
    let ret = isl_basic_set_flat_product bset1 bset2 in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_basic_set_from_params = foreign "isl_basic_set_from_params" (Types.basic_set @-> returning Types.basic_set)
let from_params ctx bset = 
    let bset = basic_set_copy bset in
    let ret = isl_basic_set_from_params bset in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_basic_set_insert_dims = foreign "isl_basic_set_insert_dims" (Types.basic_set @-> dim_type @-> unsigned_int @-> unsigned_int @-> returning Types.basic_set)
let insert_dims ctx bset typ pos n = 
    let bset = basic_set_copy bset in
    let ret = isl_basic_set_insert_dims bset typ pos n in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_basic_set_lift = foreign "isl_basic_set_lift" (Types.basic_set @-> returning Types.basic_set)
let lift ctx bset = 
    let bset = basic_set_copy bset in
    let ret = isl_basic_set_lift bset in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_basic_set_move_dims = foreign "isl_basic_set_move_dims" (Types.basic_set @-> dim_type @-> unsigned_int @-> dim_type @-> unsigned_int @-> unsigned_int @-> returning Types.basic_set)
let move_dims ctx bset dst_type dst_pos src_type src_pos n = 
    let bset = basic_set_copy bset in
    let ret = isl_basic_set_move_dims bset dst_type dst_pos src_type src_pos n in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_basic_set_nat_universe = foreign "isl_basic_set_nat_universe" (Types.space @-> returning Types.basic_set)
let nat_universe ctx dim = 
    let dim = space_copy dim in
    let ret = isl_basic_set_nat_universe dim in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_basic_set_neg = foreign "isl_basic_set_neg" (Types.basic_set @-> returning Types.basic_set)
let neg ctx bset = 
    let bset = basic_set_copy bset in
    let ret = isl_basic_set_neg bset in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_basic_set_params = foreign "isl_basic_set_params" (Types.basic_set @-> returning Types.basic_set)
let params ctx bset = 
    let bset = basic_set_copy bset in
    let ret = isl_basic_set_params bset in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_basic_set_positive_orthant = foreign "isl_basic_set_positive_orthant" (Types.space @-> returning Types.basic_set)
let positive_orthant ctx space = 
    let space = space_copy space in
    let ret = isl_basic_set_positive_orthant space in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_basic_set_project_out = foreign "isl_basic_set_project_out" (Types.basic_set @-> dim_type @-> unsigned_int @-> unsigned_int @-> returning Types.basic_set)
let project_out ctx bset typ first n = 
    let bset = basic_set_copy bset in
    let ret = isl_basic_set_project_out bset typ first n in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_basic_set_remove_dims = foreign "isl_basic_set_remove_dims" (Types.basic_set @-> dim_type @-> unsigned_int @-> unsigned_int @-> returning Types.basic_set)
let remove_dims ctx bset typ first n = 
    let bset = basic_set_copy bset in
    let ret = isl_basic_set_remove_dims bset typ first n in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_basic_set_remove_divs = foreign "isl_basic_set_remove_divs" (Types.basic_set @-> returning Types.basic_set)
let remove_divs ctx bset = 
    let bset = basic_set_copy bset in
    let ret = isl_basic_set_remove_divs bset in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_basic_set_remove_divs_involving_dims = foreign "isl_basic_set_remove_divs_involving_dims" (Types.basic_set @-> dim_type @-> unsigned_int @-> unsigned_int @-> returning Types.basic_set)
let remove_divs_involving_dims ctx bset typ first n = 
    let bset = basic_set_copy bset in
    let ret = isl_basic_set_remove_divs_involving_dims bset typ first n in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_basic_set_remove_redundancies = foreign "isl_basic_set_remove_redundancies" (Types.basic_set @-> returning Types.basic_set)
let remove_redundancies ctx bset = 
    let bset = basic_set_copy bset in
    let ret = isl_basic_set_remove_redundancies bset in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_basic_set_remove_unknown_divs = foreign "isl_basic_set_remove_unknown_divs" (Types.basic_set @-> returning Types.basic_set)
let remove_unknown_divs ctx bset = 
    let bset = basic_set_copy bset in
    let ret = isl_basic_set_remove_unknown_divs bset in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_basic_set_set_dim_name = foreign "isl_basic_set_set_dim_name" (Types.basic_set @-> dim_type @-> unsigned_int @-> string @-> returning Types.basic_set)
let set_dim_name ctx bset typ pos s = 
    let bset = basic_set_copy bset in
    let ret = isl_basic_set_set_dim_name bset typ pos s in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_basic_set_set_tuple_id = foreign "isl_basic_set_set_tuple_id" (Types.basic_set @-> Types.id @-> returning Types.basic_set)
let set_tuple_id ctx bset id = 
    let bset = basic_set_copy bset in
    let id = id_copy id in
    let ret = isl_basic_set_set_tuple_id bset id in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_basic_set_set_tuple_name = foreign "isl_basic_set_set_tuple_name" (Types.basic_set @-> string @-> returning Types.basic_set)
let set_tuple_name ctx set s = 
    let set = basic_set_copy set in
    let ret = isl_basic_set_set_tuple_name set s in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_basic_set_solutions = foreign "isl_basic_set_solutions" (Types.basic_set @-> returning Types.basic_set)
let solutions ctx bset = 
    let bset = basic_set_copy bset in
    let ret = isl_basic_set_solutions bset in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_basic_set_universe = foreign "isl_basic_set_universe" (Types.space @-> returning Types.basic_set)
let universe ctx dim = 
    let dim = space_copy dim in
    let ret = isl_basic_set_universe dim in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_basic_set_universe_like_set = foreign "isl_basic_set_universe_like_set" (Types.set @-> returning Types.basic_set)
let universe_like_set ctx model = 
    let ret = isl_basic_set_universe_like_set model in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_basic_set_max_val = foreign "isl_basic_set_max_val" (Types.basic_set @-> Types.aff @-> returning Types.value)
let max_val ctx bset obj = 
    let ret = isl_basic_set_max_val bset obj in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let isl_basic_set_get_div = foreign "isl_basic_set_get_div" (Types.basic_set @-> int @-> returning Types.aff)
let get_div ctx bset pos = 
    let ret = isl_basic_set_get_div bset pos in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let isl_basic_set_get_dim_id = foreign "isl_basic_set_get_dim_id" (Types.basic_set @-> dim_type @-> unsigned_int @-> returning Types.id)
let get_dim_id ctx bset typ pos = 
    let ret = isl_basic_set_get_dim_id bset typ pos in
    check_for_errors ctx;
    Gc.finalise id_free ret;
    ret

let isl_basic_set_get_local_space = foreign "isl_basic_set_get_local_space" (Types.basic_set @-> returning Types.local_space)
let get_local_space ctx bset = 
    let ret = isl_basic_set_get_local_space bset in
    check_for_errors ctx;
    Gc.finalise local_space_free ret;
    ret

let isl_basic_set_is_empty = foreign "isl_basic_set_is_empty" (Types.basic_set @-> returning bool)
let is_empty ctx bset = 
    let ret = isl_basic_set_is_empty bset in
    check_for_errors ctx;
    ret

let isl_basic_set_is_equal = foreign "isl_basic_set_is_equal" (Types.basic_set @-> Types.basic_set @-> returning bool)
let is_equal ctx bset1 bset2 = 
    let ret = isl_basic_set_is_equal bset1 bset2 in
    check_for_errors ctx;
    ret

let isl_basic_set_is_subset = foreign "isl_basic_set_is_subset" (Types.basic_set @-> Types.basic_set @-> returning bool)
let is_subset ctx bset1 bset2 = 
    let ret = isl_basic_set_is_subset bset1 bset2 in
    check_for_errors ctx;
    ret

let isl_basic_set_is_wrapping = foreign "isl_basic_set_is_wrapping" (Types.basic_set @-> returning bool)
let is_wrapping ctx bset = 
    let ret = isl_basic_set_is_wrapping bset in
    check_for_errors ctx;
    ret

let isl_basic_set_lexmax = foreign "isl_basic_set_lexmax" (Types.basic_set @-> returning Types.set)
let lexmax ctx bset = 
    let bset = basic_set_copy bset in
    let ret = isl_basic_set_lexmax bset in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_basic_set_lexmin = foreign "isl_basic_set_lexmin" (Types.basic_set @-> returning Types.set)
let lexmin ctx bset = 
    let bset = basic_set_copy bset in
    let ret = isl_basic_set_lexmin bset in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_basic_set_union = foreign "isl_basic_set_union" (Types.basic_set @-> Types.basic_set @-> returning Types.set)
let union ctx bset1 bset2 = 
    let bset1 = basic_set_copy bset1 in
    let bset2 = basic_set_copy bset2 in
    let ret = isl_basic_set_union bset1 bset2 in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_basic_set_affine_hull = foreign "isl_basic_set_affine_hull" (Types.basic_set @-> returning Types.basic_set)
let affine_hull ctx bset = 
    let bset = basic_set_copy bset in
    let ret = isl_basic_set_affine_hull bset in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_basic_set_apply = foreign "isl_basic_set_apply" (Types.basic_set @-> Types.basic_map @-> returning Types.basic_set)
let apply ctx bset bmap = 
    let bset = basic_set_copy bset in
    let bmap = basic_map_copy bmap in
    let ret = isl_basic_set_apply bset bmap in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_basic_set_detect_equalities = foreign "isl_basic_set_detect_equalities" (Types.basic_set @-> returning Types.basic_set)
let detect_equalities ctx bset = 
    let bset = basic_set_copy bset in
    let ret = isl_basic_set_detect_equalities bset in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_basic_set_flatten = foreign "isl_basic_set_flatten" (Types.basic_set @-> returning Types.basic_set)
let flatten ctx bset = 
    let bset = basic_set_copy bset in
    let ret = isl_basic_set_flatten bset in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_basic_set_gist = foreign "isl_basic_set_gist" (Types.basic_set @-> Types.basic_set @-> returning Types.basic_set)
let gist ctx bset context = 
    let bset = basic_set_copy bset in
    let context = basic_set_copy context in
    let ret = isl_basic_set_gist bset context in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_basic_set_intersect = foreign "isl_basic_set_intersect" (Types.basic_set @-> Types.basic_set @-> returning Types.basic_set)
let intersect ctx bset1 bset2 = 
    let bset1 = basic_set_copy bset1 in
    let bset2 = basic_set_copy bset2 in
    let ret = isl_basic_set_intersect bset1 bset2 in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_basic_set_intersect_params = foreign "isl_basic_set_intersect_params" (Types.basic_set @-> Types.basic_set @-> returning Types.basic_set)
let intersect_params ctx bset1 bset2 = 
    let bset1 = basic_set_copy bset1 in
    let bset2 = basic_set_copy bset2 in
    let ret = isl_basic_set_intersect_params bset1 bset2 in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_basic_set_sample = foreign "isl_basic_set_sample" (Types.basic_set @-> returning Types.basic_set)
let sample ctx bset = 
    let bset = basic_set_copy bset in
    let ret = isl_basic_set_sample bset in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let isl_basic_set_read_from_str = foreign "isl_basic_set_read_from_str" (Types.ctx @-> string @-> returning Types.basic_set)
let of_string ctx str = 
    let ret = isl_basic_set_read_from_str ctx str in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

