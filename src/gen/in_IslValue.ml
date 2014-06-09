open Types
open Ctypes
open Foreign
open IslMemory
open Errors

let sgn ctx v = 
    let isl_val_sgn = foreign "isl_val_sgn" (Types.value @-> returning int) in
    let ret = isl_val_sgn v in
    check_for_errors ctx;
    ret

let dump ctx v = 
    let isl_val_dump = foreign "isl_val_dump" (Types.value @-> returning void) in
    let ret = isl_val_dump v in
    check_for_errors ctx;
    ret

let eq ctx v1 v2 = 
    let isl_val_eq = foreign "isl_val_eq" (Types.value @-> Types.value @-> returning bool) in
    let ret = isl_val_eq v1 v2 in
    check_for_errors ctx;
    ret

let ge ctx v1 v2 = 
    let isl_val_ge = foreign "isl_val_ge" (Types.value @-> Types.value @-> returning bool) in
    let ret = isl_val_ge v1 v2 in
    check_for_errors ctx;
    ret

let gt ctx v1 v2 = 
    let isl_val_gt = foreign "isl_val_gt" (Types.value @-> Types.value @-> returning bool) in
    let ret = isl_val_gt v1 v2 in
    check_for_errors ctx;
    ret

let is_divisible_by ctx v1 v2 = 
    let isl_val_is_divisible_by = foreign "isl_val_is_divisible_by" (Types.value @-> Types.value @-> returning bool) in
    let ret = isl_val_is_divisible_by v1 v2 in
    check_for_errors ctx;
    ret

let is_infty ctx v = 
    let isl_val_is_infty = foreign "isl_val_is_infty" (Types.value @-> returning bool) in
    let ret = isl_val_is_infty v in
    check_for_errors ctx;
    ret

let is_int ctx v = 
    let isl_val_is_int = foreign "isl_val_is_int" (Types.value @-> returning bool) in
    let ret = isl_val_is_int v in
    check_for_errors ctx;
    ret

let is_nan ctx v = 
    let isl_val_is_nan = foreign "isl_val_is_nan" (Types.value @-> returning bool) in
    let ret = isl_val_is_nan v in
    check_for_errors ctx;
    ret

let is_neg ctx v = 
    let isl_val_is_neg = foreign "isl_val_is_neg" (Types.value @-> returning bool) in
    let ret = isl_val_is_neg v in
    check_for_errors ctx;
    ret

let is_neginfty ctx v = 
    let isl_val_is_neginfty = foreign "isl_val_is_neginfty" (Types.value @-> returning bool) in
    let ret = isl_val_is_neginfty v in
    check_for_errors ctx;
    ret

let is_negone ctx v = 
    let isl_val_is_negone = foreign "isl_val_is_negone" (Types.value @-> returning bool) in
    let ret = isl_val_is_negone v in
    check_for_errors ctx;
    ret

let is_nonneg ctx v = 
    let isl_val_is_nonneg = foreign "isl_val_is_nonneg" (Types.value @-> returning bool) in
    let ret = isl_val_is_nonneg v in
    check_for_errors ctx;
    ret

let is_nonpos ctx v = 
    let isl_val_is_nonpos = foreign "isl_val_is_nonpos" (Types.value @-> returning bool) in
    let ret = isl_val_is_nonpos v in
    check_for_errors ctx;
    ret

let is_one ctx v = 
    let isl_val_is_one = foreign "isl_val_is_one" (Types.value @-> returning bool) in
    let ret = isl_val_is_one v in
    check_for_errors ctx;
    ret

let is_pos ctx v = 
    let isl_val_is_pos = foreign "isl_val_is_pos" (Types.value @-> returning bool) in
    let ret = isl_val_is_pos v in
    check_for_errors ctx;
    ret

let is_rat ctx v = 
    let isl_val_is_rat = foreign "isl_val_is_rat" (Types.value @-> returning bool) in
    let ret = isl_val_is_rat v in
    check_for_errors ctx;
    ret

let is_zero ctx v = 
    let isl_val_is_zero = foreign "isl_val_is_zero" (Types.value @-> returning bool) in
    let ret = isl_val_is_zero v in
    check_for_errors ctx;
    ret

let le ctx v1 v2 = 
    let isl_val_le = foreign "isl_val_le" (Types.value @-> Types.value @-> returning bool) in
    let ret = isl_val_le v1 v2 in
    check_for_errors ctx;
    ret

let lt ctx v1 v2 = 
    let isl_val_lt = foreign "isl_val_lt" (Types.value @-> Types.value @-> returning bool) in
    let ret = isl_val_lt v1 v2 in
    check_for_errors ctx;
    ret

let ne ctx v1 v2 = 
    let isl_val_ne = foreign "isl_val_ne" (Types.value @-> Types.value @-> returning bool) in
    let ret = isl_val_ne v1 v2 in
    check_for_errors ctx;
    ret

let two_exp ctx v = 
    let v = val_copy v in
    let isl_val_2exp = foreign "isl_val_2exp" (Types.value @-> returning Types.value) in
    let ret = isl_val_2exp v in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let abs ctx v = 
    let v = val_copy v in
    let isl_val_abs = foreign "isl_val_abs" (Types.value @-> returning Types.value) in
    let ret = isl_val_abs v in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let add ctx v1 v2 = 
    let v1 = val_copy v1 in
    let v2 = val_copy v2 in
    let isl_val_add = foreign "isl_val_add" (Types.value @-> Types.value @-> returning Types.value) in
    let ret = isl_val_add v1 v2 in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let ceil ctx v = 
    let v = val_copy v in
    let isl_val_ceil = foreign "isl_val_ceil" (Types.value @-> returning Types.value) in
    let ret = isl_val_ceil v in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let div ctx v1 v2 = 
    let v1 = val_copy v1 in
    let v2 = val_copy v2 in
    let isl_val_div = foreign "isl_val_div" (Types.value @-> Types.value @-> returning Types.value) in
    let ret = isl_val_div v1 v2 in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let floor ctx v = 
    let v = val_copy v in
    let isl_val_floor = foreign "isl_val_floor" (Types.value @-> returning Types.value) in
    let ret = isl_val_floor v in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let gcd ctx v1 v2 = 
    let v1 = val_copy v1 in
    let v2 = val_copy v2 in
    let isl_val_gcd = foreign "isl_val_gcd" (Types.value @-> Types.value @-> returning Types.value) in
    let ret = isl_val_gcd v1 v2 in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let infty ctx = 
    let isl_val_infty = foreign "isl_val_infty" (Ctx.t @-> returning Types.value) in
    let ret = isl_val_infty ctx in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let max ctx v1 v2 = 
    let v1 = val_copy v1 in
    let v2 = val_copy v2 in
    let isl_val_max = foreign "isl_val_max" (Types.value @-> Types.value @-> returning Types.value) in
    let ret = isl_val_max v1 v2 in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let min ctx v1 v2 = 
    let v1 = val_copy v1 in
    let v2 = val_copy v2 in
    let isl_val_min = foreign "isl_val_min" (Types.value @-> Types.value @-> returning Types.value) in
    let ret = isl_val_min v1 v2 in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let modulo ctx v1 v2 = 
    let v1 = val_copy v1 in
    let v2 = val_copy v2 in
    let isl_val_mod = foreign "isl_val_mod" (Types.value @-> Types.value @-> returning Types.value) in
    let ret = isl_val_mod v1 v2 in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let mul ctx v1 v2 = 
    let v1 = val_copy v1 in
    let v2 = val_copy v2 in
    let isl_val_mul = foreign "isl_val_mul" (Types.value @-> Types.value @-> returning Types.value) in
    let ret = isl_val_mul v1 v2 in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let nan ctx = 
    let isl_val_nan = foreign "isl_val_nan" (Ctx.t @-> returning Types.value) in
    let ret = isl_val_nan ctx in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let neg ctx v = 
    let v = val_copy v in
    let isl_val_neg = foreign "isl_val_neg" (Types.value @-> returning Types.value) in
    let ret = isl_val_neg v in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let neginfty ctx = 
    let isl_val_neginfty = foreign "isl_val_neginfty" (Ctx.t @-> returning Types.value) in
    let ret = isl_val_neginfty ctx in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let negone ctx = 
    let isl_val_negone = foreign "isl_val_negone" (Ctx.t @-> returning Types.value) in
    let ret = isl_val_negone ctx in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let one ctx = 
    let isl_val_one = foreign "isl_val_one" (Ctx.t @-> returning Types.value) in
    let ret = isl_val_one ctx in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let of_string ctx str = 
    let isl_val_read_from_str = foreign "isl_val_read_from_str" (Ctx.t @-> string @-> returning Types.value) in
    let ret = isl_val_read_from_str ctx str in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let sub ctx v1 v2 = 
    let v1 = val_copy v1 in
    let v2 = val_copy v2 in
    let isl_val_sub = foreign "isl_val_sub" (Types.value @-> Types.value @-> returning Types.value) in
    let ret = isl_val_sub v1 v2 in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let trunc ctx v = 
    let v = val_copy v in
    let isl_val_trunc = foreign "isl_val_trunc" (Types.value @-> returning Types.value) in
    let ret = isl_val_trunc v in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let zero ctx = 
    let isl_val_zero = foreign "isl_val_zero" (Ctx.t @-> returning Types.value) in
    let ret = isl_val_zero ctx in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let to_string ctx v = 
    let isl_val_to_str = foreign "isl_val_to_str" (Types.value @-> returning string) in
    let ret = isl_val_to_str v in
    check_for_errors ctx;
    Gc.finalise (fun _ -> ()) ret;
    ret

