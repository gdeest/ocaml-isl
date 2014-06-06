open Ctypes
open Foreign
open IslMemory

let basic_set_max_val bset obj = 
	let isl_basic_set_max_val = foreign "isl_basic_set_max_val" (Isl.basic_set @-> Isl.aff @-> returning Isl.value) in
	let ret = isl_basic_set_max_val bset obj in
	Gc.finalise val_free ret;
	ret

let set_max_val set obj = 
	let isl_set_max_val = foreign "isl_set_max_val" (Isl.set @-> Isl.aff @-> returning Isl.value) in
	let ret = isl_set_max_val set obj in
	Gc.finalise val_free ret;
	ret

let set_min_val set obj = 
	let isl_set_min_val = foreign "isl_set_min_val" (Isl.set @-> Isl.aff @-> returning Isl.value) in
	let ret = isl_set_min_val set obj in
	Gc.finalise val_free ret;
	ret

