open Types
open Ctypes
open Foreign
open IslMemory
open Errors

let dim ctx aff typ = 
    let isl_aff_dim = foreign "isl_aff_dim" (Types.aff @-> dim_type @-> returning int) in
    let ret = isl_aff_dim aff typ in
    check_for_errors ctx;
    ret

let dump ctx aff = 
    let isl_aff_dump = foreign "isl_aff_dump" (Types.aff @-> returning void) in
    let ret = isl_aff_dump aff in
    check_for_errors ctx;
    ret

let is_cst ctx aff = 
    let isl_aff_is_cst = foreign "isl_aff_is_cst" (Types.aff @-> returning bool) in
    let ret = isl_aff_is_cst aff in
    check_for_errors ctx;
    ret

let is_nan ctx aff = 
    let isl_aff_is_nan = foreign "isl_aff_is_nan" (Types.aff @-> returning bool) in
    let ret = isl_aff_is_nan aff in
    check_for_errors ctx;
    ret

let plain_is_equal ctx aff1 aff2 = 
    let isl_aff_plain_is_equal = foreign "isl_aff_plain_is_equal" (Types.aff @-> Types.aff @-> returning bool) in
    let ret = isl_aff_plain_is_equal aff1 aff2 in
    check_for_errors ctx;
    ret

let plain_is_zero ctx aff = 
    let isl_aff_plain_is_zero = foreign "isl_aff_plain_is_zero" (Types.aff @-> returning bool) in
    let ret = isl_aff_plain_is_zero aff in
    check_for_errors ctx;
    ret

let get_domain_space ctx aff = 
    let isl_aff_get_domain_space = foreign "isl_aff_get_domain_space" (Types.aff @-> returning Types.space) in
    let ret = isl_aff_get_domain_space aff in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let get_space ctx aff = 
    let isl_aff_get_space = foreign "isl_aff_get_space" (Types.aff @-> returning Types.space) in
    let ret = isl_aff_get_space aff in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let ge_basic_set ctx aff1 aff2 = 
    let aff1 = aff_copy aff1 in
    let aff2 = aff_copy aff2 in
    let isl_aff_ge_basic_set = foreign "isl_aff_ge_basic_set" (Types.aff @-> Types.aff @-> returning Types.basic_set) in
    let ret = isl_aff_ge_basic_set aff1 aff2 in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let le_basic_set ctx aff1 aff2 = 
    let aff1 = aff_copy aff1 in
    let aff2 = aff_copy aff2 in
    let isl_aff_le_basic_set = foreign "isl_aff_le_basic_set" (Types.aff @-> Types.aff @-> returning Types.basic_set) in
    let ret = isl_aff_le_basic_set aff1 aff2 in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let neg_basic_set ctx aff = 
    let aff = aff_copy aff in
    let isl_aff_neg_basic_set = foreign "isl_aff_neg_basic_set" (Types.aff @-> returning Types.basic_set) in
    let ret = isl_aff_neg_basic_set aff in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let zero_basic_set ctx aff = 
    let aff = aff_copy aff in
    let isl_aff_zero_basic_set = foreign "isl_aff_zero_basic_set" (Types.aff @-> returning Types.basic_set) in
    let ret = isl_aff_zero_basic_set aff in
    check_for_errors ctx;
    Gc.finalise basic_set_free ret;
    ret

let get_coefficient_val ctx aff typ pos = 
    let isl_aff_get_coefficient_val = foreign "isl_aff_get_coefficient_val" (Types.aff @-> dim_type @-> int @-> returning Types.value) in
    let ret = isl_aff_get_coefficient_val aff typ pos in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let get_constant_val ctx aff = 
    let isl_aff_get_constant_val = foreign "isl_aff_get_constant_val" (Types.aff @-> returning Types.value) in
    let ret = isl_aff_get_constant_val aff in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let get_denominator_val ctx aff = 
    let isl_aff_get_denominator_val = foreign "isl_aff_get_denominator_val" (Types.aff @-> returning Types.value) in
    let ret = isl_aff_get_denominator_val aff in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let add ctx aff1 aff2 = 
    let aff1 = aff_copy aff1 in
    let aff2 = aff_copy aff2 in
    let isl_aff_add = foreign "isl_aff_add" (Types.aff @-> Types.aff @-> returning Types.aff) in
    let ret = isl_aff_add aff1 aff2 in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let add_coefficient_si ctx aff typ pos v = 
    let aff = aff_copy aff in
    let isl_aff_add_coefficient_si = foreign "isl_aff_add_coefficient_si" (Types.aff @-> dim_type @-> int @-> int @-> returning Types.aff) in
    let ret = isl_aff_add_coefficient_si aff typ pos v in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let add_coefficient_val ctx aff typ pos v = 
    let aff = aff_copy aff in
    let v = val_copy v in
    let isl_aff_add_coefficient_val = foreign "isl_aff_add_coefficient_val" (Types.aff @-> dim_type @-> int @-> Types.value @-> returning Types.aff) in
    let ret = isl_aff_add_coefficient_val aff typ pos v in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let add_constant_num_si ctx aff v = 
    let aff = aff_copy aff in
    let isl_aff_add_constant_num_si = foreign "isl_aff_add_constant_num_si" (Types.aff @-> int @-> returning Types.aff) in
    let ret = isl_aff_add_constant_num_si aff v in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let add_constant_si ctx aff v = 
    let aff = aff_copy aff in
    let isl_aff_add_constant_si = foreign "isl_aff_add_constant_si" (Types.aff @-> int @-> returning Types.aff) in
    let ret = isl_aff_add_constant_si aff v in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let add_constant_val ctx aff v = 
    let aff = aff_copy aff in
    let v = val_copy v in
    let isl_aff_add_constant_val = foreign "isl_aff_add_constant_val" (Types.aff @-> Types.value @-> returning Types.aff) in
    let ret = isl_aff_add_constant_val aff v in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let align_params ctx aff model = 
    let aff = aff_copy aff in
    let model = space_copy model in
    let isl_aff_align_params = foreign "isl_aff_align_params" (Types.aff @-> Types.space @-> returning Types.aff) in
    let ret = isl_aff_align_params aff model in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let ceil ctx aff = 
    let aff = aff_copy aff in
    let isl_aff_ceil = foreign "isl_aff_ceil" (Types.aff @-> returning Types.aff) in
    let ret = isl_aff_ceil aff in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let div ctx aff1 aff2 = 
    let aff1 = aff_copy aff1 in
    let aff2 = aff_copy aff2 in
    let isl_aff_div = foreign "isl_aff_div" (Types.aff @-> Types.aff @-> returning Types.aff) in
    let ret = isl_aff_div aff1 aff2 in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let floor ctx aff = 
    let aff = aff_copy aff in
    let isl_aff_floor = foreign "isl_aff_floor" (Types.aff @-> returning Types.aff) in
    let ret = isl_aff_floor aff in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let get_div ctx aff pos = 
    let isl_aff_get_div = foreign "isl_aff_get_div" (Types.aff @-> int @-> returning Types.aff) in
    let ret = isl_aff_get_div aff pos in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let gist ctx aff context = 
    let aff = aff_copy aff in
    let context = set_copy context in
    let isl_aff_gist = foreign "isl_aff_gist" (Types.aff @-> Types.set @-> returning Types.aff) in
    let ret = isl_aff_gist aff context in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let gist_params ctx aff context = 
    let aff = aff_copy aff in
    let context = set_copy context in
    let isl_aff_gist_params = foreign "isl_aff_gist_params" (Types.aff @-> Types.set @-> returning Types.aff) in
    let ret = isl_aff_gist_params aff context in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let mod_val ctx aff modulo = 
    let aff = aff_copy aff in
    let isl_aff_mod_val = foreign "isl_aff_mod_val" (Types.aff @-> Types.value @-> returning Types.aff) in
    let ret = isl_aff_mod_val aff modulo in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let mul ctx aff1 aff2 = 
    let aff1 = aff_copy aff1 in
    let aff2 = aff_copy aff2 in
    let isl_aff_mul = foreign "isl_aff_mul" (Types.aff @-> Types.aff @-> returning Types.aff) in
    let ret = isl_aff_mul aff1 aff2 in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let nan_on_domain ctx ls = 
    let ls = local_space_copy ls in
    let isl_aff_nan_on_domain = foreign "isl_aff_nan_on_domain" (Types.local_space @-> returning Types.aff) in
    let ret = isl_aff_nan_on_domain ls in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let neg ctx aff = 
    let aff = aff_copy aff in
    let isl_aff_neg = foreign "isl_aff_neg" (Types.aff @-> returning Types.aff) in
    let ret = isl_aff_neg aff in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let project_domain_on_params ctx aff = 
    let aff = aff_copy aff in
    let isl_aff_project_domain_on_params = foreign "isl_aff_project_domain_on_params" (Types.aff @-> returning Types.aff) in
    let ret = isl_aff_project_domain_on_params aff in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let pullback_aff ctx aff1 aff2 = 
    let aff1 = aff_copy aff1 in
    let aff2 = aff_copy aff2 in
    let isl_aff_pullback_aff = foreign "isl_aff_pullback_aff" (Types.aff @-> Types.aff @-> returning Types.aff) in
    let ret = isl_aff_pullback_aff aff1 aff2 in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let of_string ctx str = 
    let isl_aff_read_from_str = foreign "isl_aff_read_from_str" (Ctx.t @-> string @-> returning Types.aff) in
    let ret = isl_aff_read_from_str ctx str in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let scale_down_val ctx aff v = 
    let aff = aff_copy aff in
    let v = val_copy v in
    let isl_aff_scale_down_val = foreign "isl_aff_scale_down_val" (Types.aff @-> Types.value @-> returning Types.aff) in
    let ret = isl_aff_scale_down_val aff v in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let scale_val ctx aff v = 
    let aff = aff_copy aff in
    let v = val_copy v in
    let isl_aff_scale_val = foreign "isl_aff_scale_val" (Types.aff @-> Types.value @-> returning Types.aff) in
    let ret = isl_aff_scale_val aff v in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let set_coefficient_si ctx aff typ pos v = 
    let aff = aff_copy aff in
    let isl_aff_set_coefficient_si = foreign "isl_aff_set_coefficient_si" (Types.aff @-> dim_type @-> int @-> int @-> returning Types.aff) in
    let ret = isl_aff_set_coefficient_si aff typ pos v in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let set_coefficient_val ctx aff typ pos v = 
    let aff = aff_copy aff in
    let v = val_copy v in
    let isl_aff_set_coefficient_val = foreign "isl_aff_set_coefficient_val" (Types.aff @-> dim_type @-> int @-> Types.value @-> returning Types.aff) in
    let ret = isl_aff_set_coefficient_val aff typ pos v in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let set_constant_si ctx aff v = 
    let aff = aff_copy aff in
    let isl_aff_set_constant_si = foreign "isl_aff_set_constant_si" (Types.aff @-> int @-> returning Types.aff) in
    let ret = isl_aff_set_constant_si aff v in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let set_constant_val ctx aff v = 
    let aff = aff_copy aff in
    let v = val_copy v in
    let isl_aff_set_constant_val = foreign "isl_aff_set_constant_val" (Types.aff @-> Types.value @-> returning Types.aff) in
    let ret = isl_aff_set_constant_val aff v in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let set_tuple_id ctx aff typ id = 
    let aff = aff_copy aff in
    let id = id_copy id in
    let isl_aff_set_tuple_id = foreign "isl_aff_set_tuple_id" (Types.aff @-> dim_type @-> Types.id @-> returning Types.aff) in
    let ret = isl_aff_set_tuple_id aff typ id in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let sub ctx aff1 aff2 = 
    let aff1 = aff_copy aff1 in
    let aff2 = aff_copy aff2 in
    let isl_aff_sub = foreign "isl_aff_sub" (Types.aff @-> Types.aff @-> returning Types.aff) in
    let ret = isl_aff_sub aff1 aff2 in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let val_on_domain ctx ls value = 
    let ls = local_space_copy ls in
    let isl_aff_val_on_domain = foreign "isl_aff_val_on_domain" (Types.local_space @-> Types.value @-> returning Types.aff) in
    let ret = isl_aff_val_on_domain ls value in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let zero_on_domain ctx ls = 
    let ls = local_space_copy ls in
    let isl_aff_zero_on_domain = foreign "isl_aff_zero_on_domain" (Types.local_space @-> returning Types.aff) in
    let ret = isl_aff_zero_on_domain ls in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let get_domain_local_space ctx aff = 
    let isl_aff_get_domain_local_space = foreign "isl_aff_get_domain_local_space" (Types.aff @-> returning Types.local_space) in
    let ret = isl_aff_get_domain_local_space aff in
    check_for_errors ctx;
    Gc.finalise local_space_free ret;
    ret

let get_local_space ctx aff = 
    let isl_aff_get_local_space = foreign "isl_aff_get_local_space" (Types.aff @-> returning Types.local_space) in
    let ret = isl_aff_get_local_space aff in
    check_for_errors ctx;
    Gc.finalise local_space_free ret;
    ret

