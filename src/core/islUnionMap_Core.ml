open Types
open Ctypes
open Foreign
open IslMemory
open IslErrors
open Unsigned

let isl_union_map_n_map = foreign "isl_union_map_n_map" (Types.union_map @-> returning int)
let n_map ctx umap = 
    let ret = isl_union_map_n_map umap in
    check_for_errors ctx;
    ret

let isl_union_map_dim = foreign "isl_union_map_dim" (Types.union_map @-> dim_type @-> returning unsigned_int)
let dim ctx umap typ = 
    let ret = isl_union_map_dim umap typ in
    check_for_errors ctx;
    ret

let isl_union_map_dump = foreign "isl_union_map_dump" (Types.union_map @-> returning void)
let dump ctx umap = 
    let ret = isl_union_map_dump umap in
    check_for_errors ctx;
    ret

let isl_union_map_plain_is_injective = foreign "isl_union_map_plain_is_injective" (Types.union_map @-> returning bool)
let plain_is_injective ctx umap = 
    let ret = isl_union_map_plain_is_injective umap in
    check_for_errors ctx;
    ret

let isl_union_map_params = foreign "isl_union_map_params" (Types.union_map @-> returning Types.set)
let params ctx umap = 
    let umap = union_map_copy umap in
    let ret = isl_union_map_params umap in
    check_for_errors ctx;
    Gc.finalise set_free ret;
    ret

let isl_union_map_get_space = foreign "isl_union_map_get_space" (Types.union_map @-> returning Types.space)
let get_space ctx umap = 
    let ret = isl_union_map_get_space umap in
    check_for_errors ctx;
    Gc.finalise space_free ret;
    ret

let isl_union_map_extract_map = foreign "isl_union_map_extract_map" (Types.union_map @-> Types.space @-> returning Types.map)
let extract_map ctx umap dim = 
    let dim = space_copy dim in
    let ret = isl_union_map_extract_map umap dim in
    check_for_errors ctx;
    Gc.finalise map_free ret;
    ret

let isl_union_map_sample = foreign "isl_union_map_sample" (Types.union_map @-> returning Types.basic_map)
let sample ctx umap = 
    let umap = union_map_copy umap in
    let ret = isl_union_map_sample umap in
    check_for_errors ctx;
    Gc.finalise basic_map_free ret;
    ret

let isl_union_map_add_map = foreign "isl_union_map_add_map" (Types.union_map @-> Types.map @-> returning Types.union_map)
let add_map ctx umap map = 
    let umap = union_map_copy umap in
    let map = map_copy map in
    let ret = isl_union_map_add_map umap map in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_align_params = foreign "isl_union_map_align_params" (Types.union_map @-> Types.space @-> returning Types.union_map)
let align_params ctx umap model = 
    let umap = union_map_copy umap in
    let model = space_copy model in
    let ret = isl_union_map_align_params umap model in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_compute_divs = foreign "isl_union_map_compute_divs" (Types.union_map @-> returning Types.union_map)
let compute_divs ctx umap = 
    let umap = union_map_copy umap in
    let ret = isl_union_map_compute_divs umap in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_curry = foreign "isl_union_map_curry" (Types.union_map @-> returning Types.union_map)
let curry ctx umap = 
    let umap = union_map_copy umap in
    let ret = isl_union_map_curry umap in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_deltas_map = foreign "isl_union_map_deltas_map" (Types.union_map @-> returning Types.union_map)
let deltas_map ctx umap = 
    let umap = union_map_copy umap in
    let ret = isl_union_map_deltas_map umap in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_domain_map = foreign "isl_union_map_domain_map" (Types.union_map @-> returning Types.union_map)
let domain_map ctx umap = 
    let umap = union_map_copy umap in
    let ret = isl_union_map_domain_map umap in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_domain_product = foreign "isl_union_map_domain_product" (Types.union_map @-> Types.union_map @-> returning Types.union_map)
let domain_product ctx umap1 umap2 = 
    let umap1 = union_map_copy umap1 in
    let umap2 = union_map_copy umap2 in
    let ret = isl_union_map_domain_product umap1 umap2 in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_empty = foreign "isl_union_map_empty" (Types.space @-> returning Types.union_map)
let empty ctx dim = 
    let dim = space_copy dim in
    let ret = isl_union_map_empty dim in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_fixed_power_val = foreign "isl_union_map_fixed_power_val" (Types.union_map @-> Types.value @-> returning Types.union_map)
let fixed_power_val ctx umap exp = 
    let umap = union_map_copy umap in
    let exp = val_copy exp in
    let ret = isl_union_map_fixed_power_val umap exp in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_flat_range_product = foreign "isl_union_map_flat_range_product" (Types.union_map @-> Types.union_map @-> returning Types.union_map)
let flat_range_product ctx umap1 umap2 = 
    let umap1 = union_map_copy umap1 in
    let umap2 = union_map_copy umap2 in
    let ret = isl_union_map_flat_range_product umap1 umap2 in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_from_domain = foreign "isl_union_map_from_domain" (Types.union_set @-> returning Types.union_map)
let from_domain ctx uset = 
    let uset = union_set_copy uset in
    let ret = isl_union_map_from_domain uset in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_from_domain_and_range = foreign "isl_union_map_from_domain_and_range" (Types.union_set @-> Types.union_set @-> returning Types.union_map)
let from_domain_and_range ctx domain range = 
    let domain = union_set_copy domain in
    let range = union_set_copy range in
    let ret = isl_union_map_from_domain_and_range domain range in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_from_range = foreign "isl_union_map_from_range" (Types.union_set @-> returning Types.union_map)
let from_range ctx uset = 
    let uset = union_set_copy uset in
    let ret = isl_union_map_from_range uset in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_lex_ge_union_map = foreign "isl_union_map_lex_ge_union_map" (Types.union_map @-> Types.union_map @-> returning Types.union_map)
let lex_ge_union_map ctx umap1 umap2 = 
    let umap1 = union_map_copy umap1 in
    let umap2 = union_map_copy umap2 in
    let ret = isl_union_map_lex_ge_union_map umap1 umap2 in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_lex_gt_union_map = foreign "isl_union_map_lex_gt_union_map" (Types.union_map @-> Types.union_map @-> returning Types.union_map)
let lex_gt_union_map ctx umap1 umap2 = 
    let umap1 = union_map_copy umap1 in
    let umap2 = union_map_copy umap2 in
    let ret = isl_union_map_lex_gt_union_map umap1 umap2 in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_lex_le_union_map = foreign "isl_union_map_lex_le_union_map" (Types.union_map @-> Types.union_map @-> returning Types.union_map)
let lex_le_union_map ctx umap1 umap2 = 
    let umap1 = union_map_copy umap1 in
    let umap2 = union_map_copy umap2 in
    let ret = isl_union_map_lex_le_union_map umap1 umap2 in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_lex_lt_union_map = foreign "isl_union_map_lex_lt_union_map" (Types.union_map @-> Types.union_map @-> returning Types.union_map)
let lex_lt_union_map ctx umap1 umap2 = 
    let umap1 = union_map_copy umap1 in
    let umap2 = union_map_copy umap2 in
    let ret = isl_union_map_lex_lt_union_map umap1 umap2 in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_product = foreign "isl_union_map_product" (Types.union_map @-> Types.union_map @-> returning Types.union_map)
let product ctx umap1 umap2 = 
    let umap1 = union_map_copy umap1 in
    let umap2 = union_map_copy umap2 in
    let ret = isl_union_map_product umap1 umap2 in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_project_out = foreign "isl_union_map_project_out" (Types.union_map @-> dim_type @-> unsigned_int @-> unsigned_int @-> returning Types.union_map)
let project_out ctx umap typ first n = 
    let umap = union_map_copy umap in
    let ret = isl_union_map_project_out umap typ first n in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_range_map = foreign "isl_union_map_range_map" (Types.union_map @-> returning Types.union_map)
let range_map ctx umap = 
    let umap = union_map_copy umap in
    let ret = isl_union_map_range_map umap in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_range_product = foreign "isl_union_map_range_product" (Types.union_map @-> Types.union_map @-> returning Types.union_map)
let range_product ctx umap1 umap2 = 
    let umap1 = union_map_copy umap1 in
    let umap2 = union_map_copy umap2 in
    let ret = isl_union_map_range_product umap1 umap2 in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_reset_user = foreign "isl_union_map_reset_user" (Types.union_map @-> returning Types.union_map)
let reset_user ctx umap = 
    let umap = union_map_copy umap in
    let ret = isl_union_map_reset_user umap in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_simple_hull = foreign "isl_union_map_simple_hull" (Types.union_map @-> returning Types.union_map)
let simple_hull ctx umap = 
    let umap = union_map_copy umap in
    let ret = isl_union_map_simple_hull umap in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_uncurry = foreign "isl_union_map_uncurry" (Types.union_map @-> returning Types.union_map)
let uncurry ctx umap = 
    let umap = union_map_copy umap in
    let ret = isl_union_map_uncurry umap in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_universe = foreign "isl_union_map_universe" (Types.union_map @-> returning Types.union_map)
let universe ctx umap = 
    let umap = union_map_copy umap in
    let ret = isl_union_map_universe umap in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_zip = foreign "isl_union_map_zip" (Types.union_map @-> returning Types.union_map)
let zip ctx umap = 
    let umap = union_map_copy umap in
    let ret = isl_union_map_zip umap in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_domain = foreign "isl_union_map_domain" (Types.union_map @-> returning Types.union_set)
let domain ctx umap = 
    let umap = union_map_copy umap in
    let ret = isl_union_map_domain umap in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let isl_union_map_range = foreign "isl_union_map_range" (Types.union_map @-> returning Types.union_set)
let range ctx umap = 
    let umap = union_map_copy umap in
    let ret = isl_union_map_range umap in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let isl_union_map_wrap = foreign "isl_union_map_wrap" (Types.union_map @-> returning Types.union_set)
let wrap ctx umap = 
    let umap = union_map_copy umap in
    let ret = isl_union_map_wrap umap in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let isl_union_map_get_dim_id = foreign "isl_union_map_get_dim_id" (Types.union_map @-> dim_type @-> unsigned_int @-> returning Types.id)
let get_dim_id ctx umap typ pos = 
    let ret = isl_union_map_get_dim_id umap typ pos in
    check_for_errors ctx;
    Gc.finalise id_free ret;
    ret

let isl_union_map_is_bijective = foreign "isl_union_map_is_bijective" (Types.union_map @-> returning bool)
let is_bijective ctx umap = 
    let ret = isl_union_map_is_bijective umap in
    check_for_errors ctx;
    ret

let isl_union_map_is_empty = foreign "isl_union_map_is_empty" (Types.union_map @-> returning bool)
let is_empty ctx umap = 
    let ret = isl_union_map_is_empty umap in
    check_for_errors ctx;
    ret

let isl_union_map_is_equal = foreign "isl_union_map_is_equal" (Types.union_map @-> Types.union_map @-> returning bool)
let is_equal ctx umap1 umap2 = 
    let ret = isl_union_map_is_equal umap1 umap2 in
    check_for_errors ctx;
    ret

let isl_union_map_is_injective = foreign "isl_union_map_is_injective" (Types.union_map @-> returning bool)
let is_injective ctx umap = 
    let ret = isl_union_map_is_injective umap in
    check_for_errors ctx;
    ret

let isl_union_map_is_single_valued = foreign "isl_union_map_is_single_valued" (Types.union_map @-> returning bool)
let is_single_valued ctx umap = 
    let ret = isl_union_map_is_single_valued umap in
    check_for_errors ctx;
    ret

let isl_union_map_is_strict_subset = foreign "isl_union_map_is_strict_subset" (Types.union_map @-> Types.union_map @-> returning bool)
let is_strict_subset ctx umap1 umap2 = 
    let ret = isl_union_map_is_strict_subset umap1 umap2 in
    check_for_errors ctx;
    ret

let isl_union_map_is_subset = foreign "isl_union_map_is_subset" (Types.union_map @-> Types.union_map @-> returning bool)
let is_subset ctx umap1 umap2 = 
    let ret = isl_union_map_is_subset umap1 umap2 in
    check_for_errors ctx;
    ret

let isl_union_map_affine_hull = foreign "isl_union_map_affine_hull" (Types.union_map @-> returning Types.union_map)
let affine_hull ctx umap = 
    let umap = union_map_copy umap in
    let ret = isl_union_map_affine_hull umap in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_apply_domain = foreign "isl_union_map_apply_domain" (Types.union_map @-> Types.union_map @-> returning Types.union_map)
let apply_domain ctx umap1 umap2 = 
    let umap1 = union_map_copy umap1 in
    let umap2 = union_map_copy umap2 in
    let ret = isl_union_map_apply_domain umap1 umap2 in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_apply_range = foreign "isl_union_map_apply_range" (Types.union_map @-> Types.union_map @-> returning Types.union_map)
let apply_range ctx umap1 umap2 = 
    let umap1 = union_map_copy umap1 in
    let umap2 = union_map_copy umap2 in
    let ret = isl_union_map_apply_range umap1 umap2 in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_coalesce = foreign "isl_union_map_coalesce" (Types.union_map @-> returning Types.union_map)
let coalesce ctx umap = 
    let umap = union_map_copy umap in
    let ret = isl_union_map_coalesce umap in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_detect_equalities = foreign "isl_union_map_detect_equalities" (Types.union_map @-> returning Types.union_map)
let detect_equalities ctx umap = 
    let umap = union_map_copy umap in
    let ret = isl_union_map_detect_equalities umap in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_gist = foreign "isl_union_map_gist" (Types.union_map @-> Types.union_map @-> returning Types.union_map)
let gist ctx umap context = 
    let umap = union_map_copy umap in
    let context = union_map_copy context in
    let ret = isl_union_map_gist umap context in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_gist_domain = foreign "isl_union_map_gist_domain" (Types.union_map @-> Types.union_set @-> returning Types.union_map)
let gist_domain ctx umap uset = 
    let umap = union_map_copy umap in
    let uset = union_set_copy uset in
    let ret = isl_union_map_gist_domain umap uset in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_gist_params = foreign "isl_union_map_gist_params" (Types.union_map @-> Types.set @-> returning Types.union_map)
let gist_params ctx umap set = 
    let umap = union_map_copy umap in
    let set = set_copy set in
    let ret = isl_union_map_gist_params umap set in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_gist_range = foreign "isl_union_map_gist_range" (Types.union_map @-> Types.union_set @-> returning Types.union_map)
let gist_range ctx umap uset = 
    let umap = union_map_copy umap in
    let uset = union_set_copy uset in
    let ret = isl_union_map_gist_range umap uset in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_intersect = foreign "isl_union_map_intersect" (Types.union_map @-> Types.union_map @-> returning Types.union_map)
let intersect ctx umap1 umap2 = 
    let umap1 = union_map_copy umap1 in
    let umap2 = union_map_copy umap2 in
    let ret = isl_union_map_intersect umap1 umap2 in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_intersect_domain = foreign "isl_union_map_intersect_domain" (Types.union_map @-> Types.union_set @-> returning Types.union_map)
let intersect_domain ctx umap uset = 
    let umap = union_map_copy umap in
    let uset = union_set_copy uset in
    let ret = isl_union_map_intersect_domain umap uset in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_intersect_params = foreign "isl_union_map_intersect_params" (Types.union_map @-> Types.set @-> returning Types.union_map)
let intersect_params ctx umap set = 
    let umap = union_map_copy umap in
    let set = set_copy set in
    let ret = isl_union_map_intersect_params umap set in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_intersect_range = foreign "isl_union_map_intersect_range" (Types.union_map @-> Types.union_set @-> returning Types.union_map)
let intersect_range ctx umap uset = 
    let umap = union_map_copy umap in
    let uset = union_set_copy uset in
    let ret = isl_union_map_intersect_range umap uset in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_lexmax = foreign "isl_union_map_lexmax" (Types.union_map @-> returning Types.union_map)
let lexmax ctx umap = 
    let umap = union_map_copy umap in
    let ret = isl_union_map_lexmax umap in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_lexmin = foreign "isl_union_map_lexmin" (Types.union_map @-> returning Types.union_map)
let lexmin ctx umap = 
    let umap = union_map_copy umap in
    let ret = isl_union_map_lexmin umap in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_polyhedral_hull = foreign "isl_union_map_polyhedral_hull" (Types.union_map @-> returning Types.union_map)
let polyhedral_hull ctx umap = 
    let umap = union_map_copy umap in
    let ret = isl_union_map_polyhedral_hull umap in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_reverse = foreign "isl_union_map_reverse" (Types.union_map @-> returning Types.union_map)
let reverse ctx umap = 
    let umap = union_map_copy umap in
    let ret = isl_union_map_reverse umap in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_subtract = foreign "isl_union_map_subtract" (Types.union_map @-> Types.union_map @-> returning Types.union_map)
let subtract ctx umap1 umap2 = 
    let umap1 = union_map_copy umap1 in
    let umap2 = union_map_copy umap2 in
    let ret = isl_union_map_subtract umap1 umap2 in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_subtract_domain = foreign "isl_union_map_subtract_domain" (Types.union_map @-> Types.union_set @-> returning Types.union_map)
let subtract_domain ctx umap dom = 
    let umap = union_map_copy umap in
    let dom = union_set_copy dom in
    let ret = isl_union_map_subtract_domain umap dom in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_subtract_range = foreign "isl_union_map_subtract_range" (Types.union_map @-> Types.union_set @-> returning Types.union_map)
let subtract_range ctx umap dom = 
    let umap = union_map_copy umap in
    let dom = union_set_copy dom in
    let ret = isl_union_map_subtract_range umap dom in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_union = foreign "isl_union_map_union" (Types.union_map @-> Types.union_map @-> returning Types.union_map)
let union ctx umap1 umap2 = 
    let umap1 = union_map_copy umap1 in
    let umap2 = union_map_copy umap2 in
    let ret = isl_union_map_union umap1 umap2 in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_deltas = foreign "isl_union_map_deltas" (Types.union_map @-> returning Types.union_set)
let deltas ctx umap = 
    let umap = union_map_copy umap in
    let ret = isl_union_map_deltas umap in
    check_for_errors ctx;
    Gc.finalise union_set_free ret;
    ret

let isl_union_map_from_basic_map = foreign "isl_union_map_from_basic_map" (Types.basic_map @-> returning Types.union_map)
let from_basic_map ctx bmap = 
    let bmap = basic_map_copy bmap in
    let ret = isl_union_map_from_basic_map bmap in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_from_map = foreign "isl_union_map_from_map" (Types.map @-> returning Types.union_map)
let from_map ctx map = 
    let map = map_copy map in
    let ret = isl_union_map_from_map map in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

let isl_union_map_read_from_str = foreign "isl_union_map_read_from_str" (Types.ctx @-> string @-> returning Types.union_map)
let of_string ctx str = 
    let ret = isl_union_map_read_from_str ctx str in
    check_for_errors ctx;
    Gc.finalise union_map_free ret;
    ret

