open Ctypes
open Foreign
open Types

let set_copy = foreign "isl_set_copy" (set @-> returning set)
let set_free = foreign "isl_set_free" (set @-> returning void)

let basic_set_copy = foreign "isl_basic_set_copy" (basic_set @-> returning basic_set)
let basic_set_free = foreign "isl_basic_set_free" (basic_set @-> returning void)

let union_set_copy = foreign "isl_union_set_copy" (union_set @-> returning union_set)
let union_set_free = foreign "isl_union_set_free" (union_set @-> returning void)

let map_copy = foreign "isl_map_copy" (map @-> returning map)
let map_free = foreign "isl_map_free" (map @-> returning void)

let basic_map_copy = foreign "isl_basic_map_copy" (basic_map @-> returning basic_map)
let basic_map_free = foreign "isl_basic_map_free" (basic_map @-> returning void)

let union_map_copy = foreign "isl_union_map_copy" (union_map @-> returning union_map)
let union_map_free = foreign "isl_union_map_free" (union_map @-> returning void)

let aff_copy = foreign "isl_aff_copy" (aff @-> returning aff)
let aff_free = foreign "isl_aff_free" (aff @-> returning void)

let val_copy = foreign "isl_val_copy" (value @-> returning value)
let val_free = foreign "isl_val_free" (value @-> returning void)

let space_copy = foreign "isl_space_copy" (space @-> returning space)
let space_free = foreign "isl_space_free" (space @-> returning void)

let local_space_copy = foreign "isl_local_space_copy" (local_space @-> returning local_space)
let local_space_free = foreign "isl_local_space_free" (local_space @-> returning void)

let id_copy = foreign "isl_id_copy" (id @-> returning id)
let id_free = foreign "isl_id_free" (id @-> returning void)
