open Ctypes
open Foreign
open IslMemory

let val_sgn v = 
	let isl_val_sgn = foreign "isl_val_sgn" (Isl.value @-> returning int) in
	let ret = isl_val_sgn v in
	ret

let val_get_ctx value = 
	let isl_val_get_ctx = foreign "isl_val_get_ctx" (Isl.value @-> returning Isl.ctx) in
	let ret = isl_val_get_ctx value in
	ret

let val_dump v = 
	let isl_val_dump = foreign "isl_val_dump" (Isl.value @-> returning void) in
	let ret = isl_val_dump v in
	ret

let val_eq v1 v2 = 
	let isl_val_eq = foreign "isl_val_eq" (Isl.value @-> Isl.value @-> returning Isl.bool) in
	let ret = isl_val_eq v1 v2 in
	ret

let val_ge v1 v2 = 
	let isl_val_ge = foreign "isl_val_ge" (Isl.value @-> Isl.value @-> returning Isl.bool) in
	let ret = isl_val_ge v1 v2 in
	ret

let val_gt v1 v2 = 
	let isl_val_gt = foreign "isl_val_gt" (Isl.value @-> Isl.value @-> returning Isl.bool) in
	let ret = isl_val_gt v1 v2 in
	ret

let val_is_divisible_by v1 v2 = 
	let isl_val_is_divisible_by = foreign "isl_val_is_divisible_by" (Isl.value @-> Isl.value @-> returning Isl.bool) in
	let ret = isl_val_is_divisible_by v1 v2 in
	ret

let val_is_infty v = 
	let isl_val_is_infty = foreign "isl_val_is_infty" (Isl.value @-> returning Isl.bool) in
	let ret = isl_val_is_infty v in
	ret

let val_is_int v = 
	let isl_val_is_int = foreign "isl_val_is_int" (Isl.value @-> returning Isl.bool) in
	let ret = isl_val_is_int v in
	ret

let val_is_nan v = 
	let isl_val_is_nan = foreign "isl_val_is_nan" (Isl.value @-> returning Isl.bool) in
	let ret = isl_val_is_nan v in
	ret

let val_is_neg v = 
	let isl_val_is_neg = foreign "isl_val_is_neg" (Isl.value @-> returning Isl.bool) in
	let ret = isl_val_is_neg v in
	ret

let val_is_neginfty v = 
	let isl_val_is_neginfty = foreign "isl_val_is_neginfty" (Isl.value @-> returning Isl.bool) in
	let ret = isl_val_is_neginfty v in
	ret

let val_is_negone v = 
	let isl_val_is_negone = foreign "isl_val_is_negone" (Isl.value @-> returning Isl.bool) in
	let ret = isl_val_is_negone v in
	ret

let val_is_nonneg v = 
	let isl_val_is_nonneg = foreign "isl_val_is_nonneg" (Isl.value @-> returning Isl.bool) in
	let ret = isl_val_is_nonneg v in
	ret

let val_is_nonpos v = 
	let isl_val_is_nonpos = foreign "isl_val_is_nonpos" (Isl.value @-> returning Isl.bool) in
	let ret = isl_val_is_nonpos v in
	ret

let val_is_one v = 
	let isl_val_is_one = foreign "isl_val_is_one" (Isl.value @-> returning Isl.bool) in
	let ret = isl_val_is_one v in
	ret

let val_is_pos v = 
	let isl_val_is_pos = foreign "isl_val_is_pos" (Isl.value @-> returning Isl.bool) in
	let ret = isl_val_is_pos v in
	ret

let val_is_rat v = 
	let isl_val_is_rat = foreign "isl_val_is_rat" (Isl.value @-> returning Isl.bool) in
	let ret = isl_val_is_rat v in
	ret

let val_is_zero v = 
	let isl_val_is_zero = foreign "isl_val_is_zero" (Isl.value @-> returning Isl.bool) in
	let ret = isl_val_is_zero v in
	ret

let val_le v1 v2 = 
	let isl_val_le = foreign "isl_val_le" (Isl.value @-> Isl.value @-> returning Isl.bool) in
	let ret = isl_val_le v1 v2 in
	ret

let val_lt v1 v2 = 
	let isl_val_lt = foreign "isl_val_lt" (Isl.value @-> Isl.value @-> returning Isl.bool) in
	let ret = isl_val_lt v1 v2 in
	ret

let val_ne v1 v2 = 
	let isl_val_ne = foreign "isl_val_ne" (Isl.value @-> Isl.value @-> returning Isl.bool) in
	let ret = isl_val_ne v1 v2 in
	ret

let val_2exp v = 
	let v = val_copy v in
	let isl_val_2exp = foreign "isl_val_2exp" (Isl.value @-> returning Isl.value) in
	let ret = isl_val_2exp v in
	Gc.finalise val_free ret;
	ret

let val_abs v = 
	let v = val_copy v in
	let isl_val_abs = foreign "isl_val_abs" (Isl.value @-> returning Isl.value) in
	let ret = isl_val_abs v in
	Gc.finalise val_free ret;
	ret

let val_add v1 v2 = 
	let v1 = val_copy v1 in
	let v2 = val_copy v2 in
	let isl_val_add = foreign "isl_val_add" (Isl.value @-> Isl.value @-> returning Isl.value) in
	let ret = isl_val_add v1 v2 in
	Gc.finalise val_free ret;
	ret

let val_ceil v = 
	let v = val_copy v in
	let isl_val_ceil = foreign "isl_val_ceil" (Isl.value @-> returning Isl.value) in
	let ret = isl_val_ceil v in
	Gc.finalise val_free ret;
	ret

let val_div v1 v2 = 
	let v1 = val_copy v1 in
	let v2 = val_copy v2 in
	let isl_val_div = foreign "isl_val_div" (Isl.value @-> Isl.value @-> returning Isl.value) in
	let ret = isl_val_div v1 v2 in
	Gc.finalise val_free ret;
	ret

let val_floor v = 
	let v = val_copy v in
	let isl_val_floor = foreign "isl_val_floor" (Isl.value @-> returning Isl.value) in
	let ret = isl_val_floor v in
	Gc.finalise val_free ret;
	ret

let val_gcd v1 v2 = 
	let v1 = val_copy v1 in
	let v2 = val_copy v2 in
	let isl_val_gcd = foreign "isl_val_gcd" (Isl.value @-> Isl.value @-> returning Isl.value) in
	let ret = isl_val_gcd v1 v2 in
	Gc.finalise val_free ret;
	ret

let val_infty ctx = 
	let isl_val_infty = foreign "isl_val_infty" (Isl.ctx @-> returning Isl.value) in
	let ret = isl_val_infty ctx in
	Gc.finalise val_free ret;
	ret

let val_max v1 v2 = 
	let v1 = val_copy v1 in
	let v2 = val_copy v2 in
	let isl_val_max = foreign "isl_val_max" (Isl.value @-> Isl.value @-> returning Isl.value) in
	let ret = isl_val_max v1 v2 in
	Gc.finalise val_free ret;
	ret

let val_min v1 v2 = 
	let v1 = val_copy v1 in
	let v2 = val_copy v2 in
	let isl_val_min = foreign "isl_val_min" (Isl.value @-> Isl.value @-> returning Isl.value) in
	let ret = isl_val_min v1 v2 in
	Gc.finalise val_free ret;
	ret

let val_mod v1 v2 = 
	let v1 = val_copy v1 in
	let v2 = val_copy v2 in
	let isl_val_mod = foreign "isl_val_mod" (Isl.value @-> Isl.value @-> returning Isl.value) in
	let ret = isl_val_mod v1 v2 in
	Gc.finalise val_free ret;
	ret

let val_mul v1 v2 = 
	let v1 = val_copy v1 in
	let v2 = val_copy v2 in
	let isl_val_mul = foreign "isl_val_mul" (Isl.value @-> Isl.value @-> returning Isl.value) in
	let ret = isl_val_mul v1 v2 in
	Gc.finalise val_free ret;
	ret

let val_nan ctx = 
	let isl_val_nan = foreign "isl_val_nan" (Isl.ctx @-> returning Isl.value) in
	let ret = isl_val_nan ctx in
	Gc.finalise val_free ret;
	ret

let val_neg v = 
	let v = val_copy v in
	let isl_val_neg = foreign "isl_val_neg" (Isl.value @-> returning Isl.value) in
	let ret = isl_val_neg v in
	Gc.finalise val_free ret;
	ret

let val_neginfty ctx = 
	let isl_val_neginfty = foreign "isl_val_neginfty" (Isl.ctx @-> returning Isl.value) in
	let ret = isl_val_neginfty ctx in
	Gc.finalise val_free ret;
	ret

let val_negone ctx = 
	let isl_val_negone = foreign "isl_val_negone" (Isl.ctx @-> returning Isl.value) in
	let ret = isl_val_negone ctx in
	Gc.finalise val_free ret;
	ret

let val_one ctx = 
	let isl_val_one = foreign "isl_val_one" (Isl.ctx @-> returning Isl.value) in
	let ret = isl_val_one ctx in
	Gc.finalise val_free ret;
	ret

let val_read_from_str ctx str = 
	let isl_val_read_from_str = foreign "isl_val_read_from_str" (Isl.ctx @-> string @-> returning Isl.value) in
	let ret = isl_val_read_from_str ctx str in
	Gc.finalise val_free ret;
	ret

let val_sub v1 v2 = 
	let v1 = val_copy v1 in
	let v2 = val_copy v2 in
	let isl_val_sub = foreign "isl_val_sub" (Isl.value @-> Isl.value @-> returning Isl.value) in
	let ret = isl_val_sub v1 v2 in
	Gc.finalise val_free ret;
	ret

let val_trunc v = 
	let v = val_copy v in
	let isl_val_trunc = foreign "isl_val_trunc" (Isl.value @-> returning Isl.value) in
	let ret = isl_val_trunc v in
	Gc.finalise val_free ret;
	ret

let val_zero ctx = 
	let isl_val_zero = foreign "isl_val_zero" (Isl.ctx @-> returning Isl.value) in
	let ret = isl_val_zero ctx in
	Gc.finalise val_free ret;
	ret

let val_to_str v = 
	let isl_val_to_str = foreign "isl_val_to_str" (Isl.value @-> returning string) in
	let ret = isl_val_to_str v in
	Gc.finalise (fun _ -> ()) ret;
	ret

