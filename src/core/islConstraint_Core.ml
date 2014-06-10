open Types
open Ctypes
open Foreign
open IslMemory
open IslErrors
open Unsigned

let isl_constraint_dim = foreign "isl_constraint_dim" (Types.constrnt @-> dim_type @-> returning int)
let dim ctx constrnt typ = 
    let ret = isl_constraint_dim constrnt typ in
    check_for_errors ctx;
    ret

let isl_constraint_involves_dims = foreign "isl_constraint_involves_dims" (Types.constrnt @-> dim_type @-> unsigned_int @-> unsigned_int @-> returning int)
let involves_dims ctx constrnt typ first n = 
    let ret = isl_constraint_involves_dims constrnt typ first n in
    check_for_errors ctx;
    ret

let isl_constraint_dump = foreign "isl_constraint_dump" (Types.constrnt @-> returning void)
let dump ctx c = 
    let ret = isl_constraint_dump c in
    check_for_errors ctx;
    ret

let isl_constraint_get_dim_name = foreign "isl_constraint_get_dim_name" (Types.constrnt @-> dim_type @-> unsigned_int @-> returning string)
let get_dim_name ctx constrnt typ pos = 
    let ret = isl_constraint_get_dim_name constrnt typ pos in
    check_for_errors ctx;
    ret

let isl_constraint_cow = foreign "isl_constraint_cow" (Types.constrnt @-> returning Types.constrnt)
let cow ctx c = 
    let ret = isl_constraint_cow c in
    check_for_errors ctx;
    ret

let isl_constraint_negate = foreign "isl_constraint_negate" (Types.constrnt @-> returning Types.constrnt)
let negate ctx constrnt = 
    let ret = isl_constraint_negate constrnt in
    check_for_errors ctx;
    ret

let isl_constraint_is_div_constraint = foreign "isl_constraint_is_div_constraint" (Types.constrnt @-> returning bool)
let is_div_constraint ctx constrnt = 
    let ret = isl_constraint_is_div_constraint constrnt in
    check_for_errors ctx;
    ret

let isl_constraint_is_equal = foreign "isl_constraint_is_equal" (Types.constrnt @-> Types.constrnt @-> returning bool)
let is_equal ctx constraint1 constraint2 = 
    let ret = isl_constraint_is_equal constraint1 constraint2 in
    check_for_errors ctx;
    ret

let isl_constraint_is_equality = foreign "isl_constraint_is_equality" (Types.constrnt @-> returning bool)
let is_equality ctx constrnt = 
    let ret = isl_constraint_is_equality constrnt in
    check_for_errors ctx;
    ret

let isl_constraint_is_lower_bound = foreign "isl_constraint_is_lower_bound" (Types.constrnt @-> dim_type @-> unsigned_int @-> returning bool)
let is_lower_bound ctx constrnt typ pos = 
    let ret = isl_constraint_is_lower_bound constrnt typ pos in
    check_for_errors ctx;
    ret

let isl_constraint_is_upper_bound = foreign "isl_constraint_is_upper_bound" (Types.constrnt @-> dim_type @-> unsigned_int @-> returning bool)
let is_upper_bound ctx constrnt typ pos = 
    let ret = isl_constraint_is_upper_bound constrnt typ pos in
    check_for_errors ctx;
    ret

let isl_constraint_get_space = foreign "isl_constraint_get_space" (Types.constrnt @-> returning Types.space)
let get_space ctx constrnt = 
    let ret = isl_constraint_get_space constrnt in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_constraint_get_coefficient_val = foreign "isl_constraint_get_coefficient_val" (Types.constrnt @-> dim_type @-> int @-> returning Types.value)
let get_coefficient_val ctx constrnt typ pos = 
    let ret = isl_constraint_get_coefficient_val constrnt typ pos in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let isl_constraint_get_constant_val = foreign "isl_constraint_get_constant_val" (Types.constrnt @-> returning Types.value)
let get_constant_val ctx constrnt = 
    let ret = isl_constraint_get_constant_val constrnt in
    check_for_errors ctx;
    Gc.finalise val_free ret;
    ret

let isl_constraint_get_aff = foreign "isl_constraint_get_aff" (Types.constrnt @-> returning Types.aff)
let get_aff ctx constrnt = 
    let ret = isl_constraint_get_aff constrnt in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let isl_constraint_get_bound = foreign "isl_constraint_get_bound" (Types.constrnt @-> dim_type @-> int @-> returning Types.aff)
let get_bound ctx constrnt typ pos = 
    let ret = isl_constraint_get_bound constrnt typ pos in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let isl_constraint_get_div = foreign "isl_constraint_get_div" (Types.constrnt @-> int @-> returning Types.aff)
let get_div ctx constrnt pos = 
    let ret = isl_constraint_get_div constrnt pos in
    check_for_errors ctx;
    Gc.finalise aff_free ret;
    ret

let isl_constraint_get_local_space = foreign "isl_constraint_get_local_space" (Types.constrnt @-> returning Types.local_space)
let get_local_space ctx constrnt = 
    let ret = isl_constraint_get_local_space constrnt in
    check_for_errors ctx;
    Gc.finalise local_space_free ret;
    ret

let isl_constraint_set_coefficient_si = foreign "isl_constraint_set_coefficient_si" (Types.constrnt @-> dim_type @-> int @-> int @-> returning Types.constrnt)
let set_coefficient_si ctx constrnt typ pos v = 
    let ret = isl_constraint_set_coefficient_si constrnt typ pos v in
    check_for_errors ctx;
    Gc.finalise constraint_free ret;
    ret

let isl_constraint_set_coefficient_val = foreign "isl_constraint_set_coefficient_val" (Types.constrnt @-> dim_type @-> int @-> Types.value @-> returning Types.constrnt)
let set_coefficient_val ctx constrnt typ pos v = 
    let v = val_copy v in
    let ret = isl_constraint_set_coefficient_val constrnt typ pos v in
    check_for_errors ctx;
    Gc.finalise constraint_free ret;
    ret

let isl_constraint_set_constant_si = foreign "isl_constraint_set_constant_si" (Types.constrnt @-> int @-> returning Types.constrnt)
let set_constant_si ctx constrnt v = 
    let ret = isl_constraint_set_constant_si constrnt v in
    check_for_errors ctx;
    Gc.finalise constraint_free ret;
    ret

let isl_constraint_set_constant_val = foreign "isl_constraint_set_constant_val" (Types.constrnt @-> Types.value @-> returning Types.constrnt)
let set_constant_val ctx constrnt v = 
    let v = val_copy v in
    let ret = isl_constraint_set_constant_val constrnt v in
    check_for_errors ctx;
    Gc.finalise constraint_free ret;
    ret

let isl_equality_alloc = foreign "isl_equality_alloc" (Types.local_space @-> returning Types.constrnt)
let equality_alloc ctx ls = 
    let ls = local_space_copy ls in
    let ret = isl_equality_alloc ls in
    check_for_errors ctx;
    Gc.finalise constraint_free ret;
    ret

let isl_equality_from_aff = foreign "isl_equality_from_aff" (Types.aff @-> returning Types.constrnt)
let equality_from_aff ctx aff = 
    let aff = aff_copy aff in
    let ret = isl_equality_from_aff aff in
    check_for_errors ctx;
    Gc.finalise constraint_free ret;
    ret

let isl_inequality_alloc = foreign "isl_inequality_alloc" (Types.local_space @-> returning Types.constrnt)
let inequality_alloc ctx ls = 
    let ls = local_space_copy ls in
    let ret = isl_inequality_alloc ls in
    check_for_errors ctx;
    Gc.finalise constraint_free ret;
    ret

let isl_inequality_from_aff = foreign "isl_inequality_from_aff" (Types.aff @-> returning Types.constrnt)
let inequality_from_aff ctx aff = 
    let aff = aff_copy aff in
    let ret = isl_inequality_from_aff aff in
    check_for_errors ctx;
    Gc.finalise constraint_free ret;
    ret

