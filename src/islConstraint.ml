open Ctypes
open Foreign
open IslMemory

let basic_set_n_constraint bset = 
	let isl_basic_set_n_constraint = foreign "isl_basic_set_n_constraint" (Isl.basic_set @-> returning int) in
	let ret = isl_basic_set_n_constraint bset in
	ret

