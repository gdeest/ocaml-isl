open Ctypes
open Foreign
open IslMemory

let aff_dim aff typ = 
	let isl_aff_dim = foreign "isl_aff_dim" (Isl.aff @-> Isl.dim_type @-> returning int) in
	let ret = isl_aff_dim aff typ in
	ret

let aff_get_ctx aff = 
	let isl_aff_get_ctx = foreign "isl_aff_get_ctx" (Isl.aff @-> returning Isl.ctx) in
	let ret = isl_aff_get_ctx aff in
	ret

let aff_dump aff = 
	let isl_aff_dump = foreign "isl_aff_dump" (Isl.aff @-> returning void) in
	let ret = isl_aff_dump aff in
	ret

let aff_is_cst aff = 
	let isl_aff_is_cst = foreign "isl_aff_is_cst" (Isl.aff @-> returning Isl.bool) in
	let ret = isl_aff_is_cst aff in
	ret

let aff_is_nan aff = 
	let isl_aff_is_nan = foreign "isl_aff_is_nan" (Isl.aff @-> returning Isl.bool) in
	let ret = isl_aff_is_nan aff in
	ret

let aff_plain_is_equal aff1 aff2 = 
	let isl_aff_plain_is_equal = foreign "isl_aff_plain_is_equal" (Isl.aff @-> Isl.aff @-> returning Isl.bool) in
	let ret = isl_aff_plain_is_equal aff1 aff2 in
	ret

let aff_plain_is_zero aff = 
	let isl_aff_plain_is_zero = foreign "isl_aff_plain_is_zero" (Isl.aff @-> returning Isl.bool) in
	let ret = isl_aff_plain_is_zero aff in
	ret

let aff_get_domain_space aff = 
	let isl_aff_get_domain_space = foreign "isl_aff_get_domain_space" (Isl.aff @-> returning Isl.space) in
	let ret = isl_aff_get_domain_space aff in
	Gc.finalise space_free ret;
	ret

let aff_get_space aff = 
	let isl_aff_get_space = foreign "isl_aff_get_space" (Isl.aff @-> returning Isl.space) in
	let ret = isl_aff_get_space aff in
	Gc.finalise space_free ret;
	ret

let aff_ge_basic_set aff1 aff2 = 
	let aff1 = aff_copy aff1 in
	let aff2 = aff_copy aff2 in
	let isl_aff_ge_basic_set = foreign "isl_aff_ge_basic_set" (Isl.aff @-> Isl.aff @-> returning Isl.basic_set) in
	let ret = isl_aff_ge_basic_set aff1 aff2 in
	Gc.finalise basic_set_free ret;
	ret

let aff_le_basic_set aff1 aff2 = 
	let aff1 = aff_copy aff1 in
	let aff2 = aff_copy aff2 in
	let isl_aff_le_basic_set = foreign "isl_aff_le_basic_set" (Isl.aff @-> Isl.aff @-> returning Isl.basic_set) in
	let ret = isl_aff_le_basic_set aff1 aff2 in
	Gc.finalise basic_set_free ret;
	ret

let aff_neg_basic_set aff = 
	let aff = aff_copy aff in
	let isl_aff_neg_basic_set = foreign "isl_aff_neg_basic_set" (Isl.aff @-> returning Isl.basic_set) in
	let ret = isl_aff_neg_basic_set aff in
	Gc.finalise basic_set_free ret;
	ret

let aff_zero_basic_set aff = 
	let aff = aff_copy aff in
	let isl_aff_zero_basic_set = foreign "isl_aff_zero_basic_set" (Isl.aff @-> returning Isl.basic_set) in
	let ret = isl_aff_zero_basic_set aff in
	Gc.finalise basic_set_free ret;
	ret

let aff_get_coefficient_val aff typ pos = 
	let isl_aff_get_coefficient_val = foreign "isl_aff_get_coefficient_val" (Isl.aff @-> Isl.dim_type @-> int @-> returning Isl.value) in
	let ret = isl_aff_get_coefficient_val aff typ pos in
	Gc.finalise val_free ret;
	ret

let aff_get_constant_val aff = 
	let isl_aff_get_constant_val = foreign "isl_aff_get_constant_val" (Isl.aff @-> returning Isl.value) in
	let ret = isl_aff_get_constant_val aff in
	Gc.finalise val_free ret;
	ret

let aff_get_denominator_val aff = 
	let isl_aff_get_denominator_val = foreign "isl_aff_get_denominator_val" (Isl.aff @-> returning Isl.value) in
	let ret = isl_aff_get_denominator_val aff in
	Gc.finalise val_free ret;
	ret

let aff_add aff1 aff2 = 
	let aff1 = aff_copy aff1 in
	let aff2 = aff_copy aff2 in
	let isl_aff_add = foreign "isl_aff_add" (Isl.aff @-> Isl.aff @-> returning Isl.aff) in
	let ret = isl_aff_add aff1 aff2 in
	Gc.finalise aff_free ret;
	ret

let aff_add_coefficient_si aff typ pos v = 
	let aff = aff_copy aff in
	let isl_aff_add_coefficient_si = foreign "isl_aff_add_coefficient_si" (Isl.aff @-> Isl.dim_type @-> int @-> int @-> returning Isl.aff) in
	let ret = isl_aff_add_coefficient_si aff typ pos v in
	Gc.finalise aff_free ret;
	ret

let aff_add_coefficient_val aff typ pos v = 
	let aff = aff_copy aff in
	let v = val_copy v in
	let isl_aff_add_coefficient_val = foreign "isl_aff_add_coefficient_val" (Isl.aff @-> Isl.dim_type @-> int @-> Isl.value @-> returning Isl.aff) in
	let ret = isl_aff_add_coefficient_val aff typ pos v in
	Gc.finalise aff_free ret;
	ret

let aff_add_constant_num_si aff v = 
	let aff = aff_copy aff in
	let isl_aff_add_constant_num_si = foreign "isl_aff_add_constant_num_si" (Isl.aff @-> int @-> returning Isl.aff) in
	let ret = isl_aff_add_constant_num_si aff v in
	Gc.finalise aff_free ret;
	ret

let aff_add_constant_si aff v = 
	let aff = aff_copy aff in
	let isl_aff_add_constant_si = foreign "isl_aff_add_constant_si" (Isl.aff @-> int @-> returning Isl.aff) in
	let ret = isl_aff_add_constant_si aff v in
	Gc.finalise aff_free ret;
	ret

let aff_add_constant_val aff v = 
	let aff = aff_copy aff in
	let v = val_copy v in
	let isl_aff_add_constant_val = foreign "isl_aff_add_constant_val" (Isl.aff @-> Isl.value @-> returning Isl.aff) in
	let ret = isl_aff_add_constant_val aff v in
	Gc.finalise aff_free ret;
	ret

let aff_align_params aff model = 
	let aff = aff_copy aff in
	let model = space_copy model in
	let isl_aff_align_params = foreign "isl_aff_align_params" (Isl.aff @-> Isl.space @-> returning Isl.aff) in
	let ret = isl_aff_align_params aff model in
	Gc.finalise aff_free ret;
	ret

let aff_ceil aff = 
	let aff = aff_copy aff in
	let isl_aff_ceil = foreign "isl_aff_ceil" (Isl.aff @-> returning Isl.aff) in
	let ret = isl_aff_ceil aff in
	Gc.finalise aff_free ret;
	ret

let aff_div aff1 aff2 = 
	let aff1 = aff_copy aff1 in
	let aff2 = aff_copy aff2 in
	let isl_aff_div = foreign "isl_aff_div" (Isl.aff @-> Isl.aff @-> returning Isl.aff) in
	let ret = isl_aff_div aff1 aff2 in
	Gc.finalise aff_free ret;
	ret

let aff_floor aff = 
	let aff = aff_copy aff in
	let isl_aff_floor = foreign "isl_aff_floor" (Isl.aff @-> returning Isl.aff) in
	let ret = isl_aff_floor aff in
	Gc.finalise aff_free ret;
	ret

let aff_get_div aff pos = 
	let isl_aff_get_div = foreign "isl_aff_get_div" (Isl.aff @-> int @-> returning Isl.aff) in
	let ret = isl_aff_get_div aff pos in
	Gc.finalise aff_free ret;
	ret

let aff_gist aff context = 
	let aff = aff_copy aff in
	let context = set_copy context in
	let isl_aff_gist = foreign "isl_aff_gist" (Isl.aff @-> Isl.set @-> returning Isl.aff) in
	let ret = isl_aff_gist aff context in
	Gc.finalise aff_free ret;
	ret

let aff_gist_params aff context = 
	let aff = aff_copy aff in
	let context = set_copy context in
	let isl_aff_gist_params = foreign "isl_aff_gist_params" (Isl.aff @-> Isl.set @-> returning Isl.aff) in
	let ret = isl_aff_gist_params aff context in
	Gc.finalise aff_free ret;
	ret

let aff_mod_val aff modulo = 
	let aff = aff_copy aff in
	let isl_aff_mod_val = foreign "isl_aff_mod_val" (Isl.aff @-> Isl.value @-> returning Isl.aff) in
	let ret = isl_aff_mod_val aff modulo in
	Gc.finalise aff_free ret;
	ret

let aff_mul aff1 aff2 = 
	let aff1 = aff_copy aff1 in
	let aff2 = aff_copy aff2 in
	let isl_aff_mul = foreign "isl_aff_mul" (Isl.aff @-> Isl.aff @-> returning Isl.aff) in
	let ret = isl_aff_mul aff1 aff2 in
	Gc.finalise aff_free ret;
	ret

let aff_nan_on_domain ls = 
	let ls = local_space_copy ls in
	let isl_aff_nan_on_domain = foreign "isl_aff_nan_on_domain" (Isl.local_space @-> returning Isl.aff) in
	let ret = isl_aff_nan_on_domain ls in
	Gc.finalise aff_free ret;
	ret

let aff_neg aff = 
	let aff = aff_copy aff in
	let isl_aff_neg = foreign "isl_aff_neg" (Isl.aff @-> returning Isl.aff) in
	let ret = isl_aff_neg aff in
	Gc.finalise aff_free ret;
	ret

let aff_project_domain_on_params aff = 
	let aff = aff_copy aff in
	let isl_aff_project_domain_on_params = foreign "isl_aff_project_domain_on_params" (Isl.aff @-> returning Isl.aff) in
	let ret = isl_aff_project_domain_on_params aff in
	Gc.finalise aff_free ret;
	ret

let aff_pullback_aff aff1 aff2 = 
	let aff1 = aff_copy aff1 in
	let aff2 = aff_copy aff2 in
	let isl_aff_pullback_aff = foreign "isl_aff_pullback_aff" (Isl.aff @-> Isl.aff @-> returning Isl.aff) in
	let ret = isl_aff_pullback_aff aff1 aff2 in
	Gc.finalise aff_free ret;
	ret

let aff_read_from_str ctx str = 
	let isl_aff_read_from_str = foreign "isl_aff_read_from_str" (Isl.ctx @-> string @-> returning Isl.aff) in
	let ret = isl_aff_read_from_str ctx str in
	Gc.finalise aff_free ret;
	ret

let aff_scale_down_val aff v = 
	let aff = aff_copy aff in
	let v = val_copy v in
	let isl_aff_scale_down_val = foreign "isl_aff_scale_down_val" (Isl.aff @-> Isl.value @-> returning Isl.aff) in
	let ret = isl_aff_scale_down_val aff v in
	Gc.finalise aff_free ret;
	ret

let aff_scale_val aff v = 
	let aff = aff_copy aff in
	let v = val_copy v in
	let isl_aff_scale_val = foreign "isl_aff_scale_val" (Isl.aff @-> Isl.value @-> returning Isl.aff) in
	let ret = isl_aff_scale_val aff v in
	Gc.finalise aff_free ret;
	ret

let aff_set_coefficient_si aff typ pos v = 
	let aff = aff_copy aff in
	let isl_aff_set_coefficient_si = foreign "isl_aff_set_coefficient_si" (Isl.aff @-> Isl.dim_type @-> int @-> int @-> returning Isl.aff) in
	let ret = isl_aff_set_coefficient_si aff typ pos v in
	Gc.finalise aff_free ret;
	ret

let aff_set_coefficient_val aff typ pos v = 
	let aff = aff_copy aff in
	let v = val_copy v in
	let isl_aff_set_coefficient_val = foreign "isl_aff_set_coefficient_val" (Isl.aff @-> Isl.dim_type @-> int @-> Isl.value @-> returning Isl.aff) in
	let ret = isl_aff_set_coefficient_val aff typ pos v in
	Gc.finalise aff_free ret;
	ret

let aff_set_constant_si aff v = 
	let aff = aff_copy aff in
	let isl_aff_set_constant_si = foreign "isl_aff_set_constant_si" (Isl.aff @-> int @-> returning Isl.aff) in
	let ret = isl_aff_set_constant_si aff v in
	Gc.finalise aff_free ret;
	ret

let aff_set_constant_val aff v = 
	let aff = aff_copy aff in
	let v = val_copy v in
	let isl_aff_set_constant_val = foreign "isl_aff_set_constant_val" (Isl.aff @-> Isl.value @-> returning Isl.aff) in
	let ret = isl_aff_set_constant_val aff v in
	Gc.finalise aff_free ret;
	ret

let aff_set_tuple_id aff typ id = 
	let aff = aff_copy aff in
	let id = id_copy id in
	let isl_aff_set_tuple_id = foreign "isl_aff_set_tuple_id" (Isl.aff @-> Isl.dim_type @-> Isl.id @-> returning Isl.aff) in
	let ret = isl_aff_set_tuple_id aff typ id in
	Gc.finalise aff_free ret;
	ret

let aff_sub aff1 aff2 = 
	let aff1 = aff_copy aff1 in
	let aff2 = aff_copy aff2 in
	let isl_aff_sub = foreign "isl_aff_sub" (Isl.aff @-> Isl.aff @-> returning Isl.aff) in
	let ret = isl_aff_sub aff1 aff2 in
	Gc.finalise aff_free ret;
	ret

let aff_val_on_domain ls value = 
	let ls = local_space_copy ls in
	let isl_aff_val_on_domain = foreign "isl_aff_val_on_domain" (Isl.local_space @-> Isl.value @-> returning Isl.aff) in
	let ret = isl_aff_val_on_domain ls value in
	Gc.finalise aff_free ret;
	ret

let aff_zero_on_domain ls = 
	let ls = local_space_copy ls in
	let isl_aff_zero_on_domain = foreign "isl_aff_zero_on_domain" (Isl.local_space @-> returning Isl.aff) in
	let ret = isl_aff_zero_on_domain ls in
	Gc.finalise aff_free ret;
	ret

let aff_get_domain_local_space aff = 
	let isl_aff_get_domain_local_space = foreign "isl_aff_get_domain_local_space" (Isl.aff @-> returning Isl.local_space) in
	let ret = isl_aff_get_domain_local_space aff in
	Gc.finalise local_space_free ret;
	ret

let aff_get_local_space aff = 
	let isl_aff_get_local_space = foreign "isl_aff_get_local_space" (Isl.aff @-> returning Isl.local_space) in
	let ret = isl_aff_get_local_space aff in
	Gc.finalise local_space_free ret;
	ret

