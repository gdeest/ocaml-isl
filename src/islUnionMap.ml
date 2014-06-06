open Ctypes
open Foreign
open IslMemory

let union_map_n_map umap = 
	let isl_union_map_n_map = foreign "isl_union_map_n_map" (Isl.union_map @-> returning int) in
	let ret = isl_union_map_n_map umap in
	ret

let union_map_get_ctx umap = 
	let isl_union_map_get_ctx = foreign "isl_union_map_get_ctx" (Isl.union_map @-> returning Isl.ctx) in
	let ret = isl_union_map_get_ctx umap in
	ret

let union_map_dump umap = 
	let isl_union_map_dump = foreign "isl_union_map_dump" (Isl.union_map @-> returning void) in
	let ret = isl_union_map_dump umap in
	ret

let union_map_plain_is_injective umap = 
	let isl_union_map_plain_is_injective = foreign "isl_union_map_plain_is_injective" (Isl.union_map @-> returning Isl.bool) in
	let ret = isl_union_map_plain_is_injective umap in
	ret

let union_map_params umap = 
	let umap = union_map_copy umap in
	let isl_union_map_params = foreign "isl_union_map_params" (Isl.union_map @-> returning Isl.set) in
	let ret = isl_union_map_params umap in
	Gc.finalise set_free ret;
	ret

let union_map_get_space umap = 
	let isl_union_map_get_space = foreign "isl_union_map_get_space" (Isl.union_map @-> returning Isl.space) in
	let ret = isl_union_map_get_space umap in
	Gc.finalise space_free ret;
	ret

let map_from_union_map umap = 
	let umap = union_map_copy umap in
	let isl_map_from_union_map = foreign "isl_map_from_union_map" (Isl.union_map @-> returning Isl.map) in
	let ret = isl_map_from_union_map umap in
	Gc.finalise map_free ret;
	ret

let union_map_extract_map umap dim = 
	let dim = space_copy dim in
	let isl_union_map_extract_map = foreign "isl_union_map_extract_map" (Isl.union_map @-> Isl.space @-> returning Isl.map) in
	let ret = isl_union_map_extract_map umap dim in
	Gc.finalise map_free ret;
	ret

let union_map_sample umap = 
	let umap = union_map_copy umap in
	let isl_union_map_sample = foreign "isl_union_map_sample" (Isl.union_map @-> returning Isl.basic_map) in
	let ret = isl_union_map_sample umap in
	Gc.finalise basic_map_free ret;
	ret

let union_map_add_map umap map = 
	let umap = union_map_copy umap in
	let map = map_copy map in
	let isl_union_map_add_map = foreign "isl_union_map_add_map" (Isl.union_map @-> Isl.map @-> returning Isl.union_map) in
	let ret = isl_union_map_add_map umap map in
	Gc.finalise union_map_free ret;
	ret

let union_map_align_params umap model = 
	let umap = union_map_copy umap in
	let model = space_copy model in
	let isl_union_map_align_params = foreign "isl_union_map_align_params" (Isl.union_map @-> Isl.space @-> returning Isl.union_map) in
	let ret = isl_union_map_align_params umap model in
	Gc.finalise union_map_free ret;
	ret

let union_map_compute_divs umap = 
	let umap = union_map_copy umap in
	let isl_union_map_compute_divs = foreign "isl_union_map_compute_divs" (Isl.union_map @-> returning Isl.union_map) in
	let ret = isl_union_map_compute_divs umap in
	Gc.finalise union_map_free ret;
	ret

let union_map_curry umap = 
	let umap = union_map_copy umap in
	let isl_union_map_curry = foreign "isl_union_map_curry" (Isl.union_map @-> returning Isl.union_map) in
	let ret = isl_union_map_curry umap in
	Gc.finalise union_map_free ret;
	ret

let union_map_deltas_map umap = 
	let umap = union_map_copy umap in
	let isl_union_map_deltas_map = foreign "isl_union_map_deltas_map" (Isl.union_map @-> returning Isl.union_map) in
	let ret = isl_union_map_deltas_map umap in
	Gc.finalise union_map_free ret;
	ret

let union_map_domain_map umap = 
	let umap = union_map_copy umap in
	let isl_union_map_domain_map = foreign "isl_union_map_domain_map" (Isl.union_map @-> returning Isl.union_map) in
	let ret = isl_union_map_domain_map umap in
	Gc.finalise union_map_free ret;
	ret

let union_map_domain_product umap1 umap2 = 
	let umap1 = union_map_copy umap1 in
	let umap2 = union_map_copy umap2 in
	let isl_union_map_domain_product = foreign "isl_union_map_domain_product" (Isl.union_map @-> Isl.union_map @-> returning Isl.union_map) in
	let ret = isl_union_map_domain_product umap1 umap2 in
	Gc.finalise union_map_free ret;
	ret

let union_map_empty dim = 
	let dim = space_copy dim in
	let isl_union_map_empty = foreign "isl_union_map_empty" (Isl.space @-> returning Isl.union_map) in
	let ret = isl_union_map_empty dim in
	Gc.finalise union_map_free ret;
	ret

let union_map_fixed_power_val umap exp = 
	let umap = union_map_copy umap in
	let exp = val_copy exp in
	let isl_union_map_fixed_power_val = foreign "isl_union_map_fixed_power_val" (Isl.union_map @-> Isl.value @-> returning Isl.union_map) in
	let ret = isl_union_map_fixed_power_val umap exp in
	Gc.finalise union_map_free ret;
	ret

let union_map_flat_range_product umap1 umap2 = 
	let umap1 = union_map_copy umap1 in
	let umap2 = union_map_copy umap2 in
	let isl_union_map_flat_range_product = foreign "isl_union_map_flat_range_product" (Isl.union_map @-> Isl.union_map @-> returning Isl.union_map) in
	let ret = isl_union_map_flat_range_product umap1 umap2 in
	Gc.finalise union_map_free ret;
	ret

let union_map_from_domain uset = 
	let uset = union_set_copy uset in
	let isl_union_map_from_domain = foreign "isl_union_map_from_domain" (Isl.union_set @-> returning Isl.union_map) in
	let ret = isl_union_map_from_domain uset in
	Gc.finalise union_map_free ret;
	ret

let union_map_from_domain_and_range domain range = 
	let domain = union_set_copy domain in
	let range = union_set_copy range in
	let isl_union_map_from_domain_and_range = foreign "isl_union_map_from_domain_and_range" (Isl.union_set @-> Isl.union_set @-> returning Isl.union_map) in
	let ret = isl_union_map_from_domain_and_range domain range in
	Gc.finalise union_map_free ret;
	ret

let union_map_from_range uset = 
	let uset = union_set_copy uset in
	let isl_union_map_from_range = foreign "isl_union_map_from_range" (Isl.union_set @-> returning Isl.union_map) in
	let ret = isl_union_map_from_range uset in
	Gc.finalise union_map_free ret;
	ret

let union_map_lex_ge_union_map umap1 umap2 = 
	let umap1 = union_map_copy umap1 in
	let umap2 = union_map_copy umap2 in
	let isl_union_map_lex_ge_union_map = foreign "isl_union_map_lex_ge_union_map" (Isl.union_map @-> Isl.union_map @-> returning Isl.union_map) in
	let ret = isl_union_map_lex_ge_union_map umap1 umap2 in
	Gc.finalise union_map_free ret;
	ret

let union_map_lex_gt_union_map umap1 umap2 = 
	let umap1 = union_map_copy umap1 in
	let umap2 = union_map_copy umap2 in
	let isl_union_map_lex_gt_union_map = foreign "isl_union_map_lex_gt_union_map" (Isl.union_map @-> Isl.union_map @-> returning Isl.union_map) in
	let ret = isl_union_map_lex_gt_union_map umap1 umap2 in
	Gc.finalise union_map_free ret;
	ret

let union_map_lex_le_union_map umap1 umap2 = 
	let umap1 = union_map_copy umap1 in
	let umap2 = union_map_copy umap2 in
	let isl_union_map_lex_le_union_map = foreign "isl_union_map_lex_le_union_map" (Isl.union_map @-> Isl.union_map @-> returning Isl.union_map) in
	let ret = isl_union_map_lex_le_union_map umap1 umap2 in
	Gc.finalise union_map_free ret;
	ret

let union_map_lex_lt_union_map umap1 umap2 = 
	let umap1 = union_map_copy umap1 in
	let umap2 = union_map_copy umap2 in
	let isl_union_map_lex_lt_union_map = foreign "isl_union_map_lex_lt_union_map" (Isl.union_map @-> Isl.union_map @-> returning Isl.union_map) in
	let ret = isl_union_map_lex_lt_union_map umap1 umap2 in
	Gc.finalise union_map_free ret;
	ret

let union_map_product umap1 umap2 = 
	let umap1 = union_map_copy umap1 in
	let umap2 = union_map_copy umap2 in
	let isl_union_map_product = foreign "isl_union_map_product" (Isl.union_map @-> Isl.union_map @-> returning Isl.union_map) in
	let ret = isl_union_map_product umap1 umap2 in
	Gc.finalise union_map_free ret;
	ret

let union_map_range_map umap = 
	let umap = union_map_copy umap in
	let isl_union_map_range_map = foreign "isl_union_map_range_map" (Isl.union_map @-> returning Isl.union_map) in
	let ret = isl_union_map_range_map umap in
	Gc.finalise union_map_free ret;
	ret

let union_map_range_product umap1 umap2 = 
	let umap1 = union_map_copy umap1 in
	let umap2 = union_map_copy umap2 in
	let isl_union_map_range_product = foreign "isl_union_map_range_product" (Isl.union_map @-> Isl.union_map @-> returning Isl.union_map) in
	let ret = isl_union_map_range_product umap1 umap2 in
	Gc.finalise union_map_free ret;
	ret

let union_map_reset_user umap = 
	let umap = union_map_copy umap in
	let isl_union_map_reset_user = foreign "isl_union_map_reset_user" (Isl.union_map @-> returning Isl.union_map) in
	let ret = isl_union_map_reset_user umap in
	Gc.finalise union_map_free ret;
	ret

let union_map_simple_hull umap = 
	let umap = union_map_copy umap in
	let isl_union_map_simple_hull = foreign "isl_union_map_simple_hull" (Isl.union_map @-> returning Isl.union_map) in
	let ret = isl_union_map_simple_hull umap in
	Gc.finalise union_map_free ret;
	ret

let union_map_uncurry umap = 
	let umap = union_map_copy umap in
	let isl_union_map_uncurry = foreign "isl_union_map_uncurry" (Isl.union_map @-> returning Isl.union_map) in
	let ret = isl_union_map_uncurry umap in
	Gc.finalise union_map_free ret;
	ret

let union_map_universe umap = 
	let umap = union_map_copy umap in
	let isl_union_map_universe = foreign "isl_union_map_universe" (Isl.union_map @-> returning Isl.union_map) in
	let ret = isl_union_map_universe umap in
	Gc.finalise union_map_free ret;
	ret

let union_map_zip umap = 
	let umap = union_map_copy umap in
	let isl_union_map_zip = foreign "isl_union_map_zip" (Isl.union_map @-> returning Isl.union_map) in
	let ret = isl_union_map_zip umap in
	Gc.finalise union_map_free ret;
	ret

let union_set_unwrap uset = 
	let uset = union_set_copy uset in
	let isl_union_set_unwrap = foreign "isl_union_set_unwrap" (Isl.union_set @-> returning Isl.union_map) in
	let ret = isl_union_set_unwrap uset in
	Gc.finalise union_map_free ret;
	ret

let union_map_domain umap = 
	let umap = union_map_copy umap in
	let isl_union_map_domain = foreign "isl_union_map_domain" (Isl.union_map @-> returning Isl.union_set) in
	let ret = isl_union_map_domain umap in
	Gc.finalise union_set_free ret;
	ret

let union_map_range umap = 
	let umap = union_map_copy umap in
	let isl_union_map_range = foreign "isl_union_map_range" (Isl.union_map @-> returning Isl.union_set) in
	let ret = isl_union_map_range umap in
	Gc.finalise union_set_free ret;
	ret

let union_map_wrap umap = 
	let umap = union_map_copy umap in
	let isl_union_map_wrap = foreign "isl_union_map_wrap" (Isl.union_map @-> returning Isl.union_set) in
	let ret = isl_union_map_wrap umap in
	Gc.finalise union_set_free ret;
	ret

let union_set_align_params uset model = 
	let uset = union_set_copy uset in
	let model = space_copy model in
	let isl_union_set_align_params = foreign "isl_union_set_align_params" (Isl.union_set @-> Isl.space @-> returning Isl.union_set) in
	let ret = isl_union_set_align_params uset model in
	Gc.finalise union_set_free ret;
	ret

let union_map_is_bijective umap = 
	let isl_union_map_is_bijective = foreign "isl_union_map_is_bijective" (Isl.union_map @-> returning Isl.bool) in
	let ret = isl_union_map_is_bijective umap in
	ret

let union_map_is_empty umap = 
	let isl_union_map_is_empty = foreign "isl_union_map_is_empty" (Isl.union_map @-> returning Isl.bool) in
	let ret = isl_union_map_is_empty umap in
	ret

let union_map_is_equal umap1 umap2 = 
	let isl_union_map_is_equal = foreign "isl_union_map_is_equal" (Isl.union_map @-> Isl.union_map @-> returning Isl.bool) in
	let ret = isl_union_map_is_equal umap1 umap2 in
	ret

let union_map_is_injective umap = 
	let isl_union_map_is_injective = foreign "isl_union_map_is_injective" (Isl.union_map @-> returning Isl.bool) in
	let ret = isl_union_map_is_injective umap in
	ret

let union_map_is_single_valued umap = 
	let isl_union_map_is_single_valued = foreign "isl_union_map_is_single_valued" (Isl.union_map @-> returning Isl.bool) in
	let ret = isl_union_map_is_single_valued umap in
	ret

let union_map_is_strict_subset umap1 umap2 = 
	let isl_union_map_is_strict_subset = foreign "isl_union_map_is_strict_subset" (Isl.union_map @-> Isl.union_map @-> returning Isl.bool) in
	let ret = isl_union_map_is_strict_subset umap1 umap2 in
	ret

let union_map_is_subset umap1 umap2 = 
	let isl_union_map_is_subset = foreign "isl_union_map_is_subset" (Isl.union_map @-> Isl.union_map @-> returning Isl.bool) in
	let ret = isl_union_map_is_subset umap1 umap2 in
	ret

let union_map_affine_hull umap = 
	let umap = union_map_copy umap in
	let isl_union_map_affine_hull = foreign "isl_union_map_affine_hull" (Isl.union_map @-> returning Isl.union_map) in
	let ret = isl_union_map_affine_hull umap in
	Gc.finalise union_map_free ret;
	ret

let union_map_apply_domain umap1 umap2 = 
	let umap1 = union_map_copy umap1 in
	let umap2 = union_map_copy umap2 in
	let isl_union_map_apply_domain = foreign "isl_union_map_apply_domain" (Isl.union_map @-> Isl.union_map @-> returning Isl.union_map) in
	let ret = isl_union_map_apply_domain umap1 umap2 in
	Gc.finalise union_map_free ret;
	ret

let union_map_apply_range umap1 umap2 = 
	let umap1 = union_map_copy umap1 in
	let umap2 = union_map_copy umap2 in
	let isl_union_map_apply_range = foreign "isl_union_map_apply_range" (Isl.union_map @-> Isl.union_map @-> returning Isl.union_map) in
	let ret = isl_union_map_apply_range umap1 umap2 in
	Gc.finalise union_map_free ret;
	ret

let union_map_coalesce umap = 
	let umap = union_map_copy umap in
	let isl_union_map_coalesce = foreign "isl_union_map_coalesce" (Isl.union_map @-> returning Isl.union_map) in
	let ret = isl_union_map_coalesce umap in
	Gc.finalise union_map_free ret;
	ret

let union_map_detect_equalities umap = 
	let umap = union_map_copy umap in
	let isl_union_map_detect_equalities = foreign "isl_union_map_detect_equalities" (Isl.union_map @-> returning Isl.union_map) in
	let ret = isl_union_map_detect_equalities umap in
	Gc.finalise union_map_free ret;
	ret

let union_map_gist umap context = 
	let umap = union_map_copy umap in
	let context = union_map_copy context in
	let isl_union_map_gist = foreign "isl_union_map_gist" (Isl.union_map @-> Isl.union_map @-> returning Isl.union_map) in
	let ret = isl_union_map_gist umap context in
	Gc.finalise union_map_free ret;
	ret

let union_map_gist_domain umap uset = 
	let umap = union_map_copy umap in
	let uset = union_set_copy uset in
	let isl_union_map_gist_domain = foreign "isl_union_map_gist_domain" (Isl.union_map @-> Isl.union_set @-> returning Isl.union_map) in
	let ret = isl_union_map_gist_domain umap uset in
	Gc.finalise union_map_free ret;
	ret

let union_map_gist_params umap set = 
	let umap = union_map_copy umap in
	let set = set_copy set in
	let isl_union_map_gist_params = foreign "isl_union_map_gist_params" (Isl.union_map @-> Isl.set @-> returning Isl.union_map) in
	let ret = isl_union_map_gist_params umap set in
	Gc.finalise union_map_free ret;
	ret

let union_map_gist_range umap uset = 
	let umap = union_map_copy umap in
	let uset = union_set_copy uset in
	let isl_union_map_gist_range = foreign "isl_union_map_gist_range" (Isl.union_map @-> Isl.union_set @-> returning Isl.union_map) in
	let ret = isl_union_map_gist_range umap uset in
	Gc.finalise union_map_free ret;
	ret

let union_map_intersect umap1 umap2 = 
	let umap1 = union_map_copy umap1 in
	let umap2 = union_map_copy umap2 in
	let isl_union_map_intersect = foreign "isl_union_map_intersect" (Isl.union_map @-> Isl.union_map @-> returning Isl.union_map) in
	let ret = isl_union_map_intersect umap1 umap2 in
	Gc.finalise union_map_free ret;
	ret

let union_map_intersect_domain umap uset = 
	let umap = union_map_copy umap in
	let uset = union_set_copy uset in
	let isl_union_map_intersect_domain = foreign "isl_union_map_intersect_domain" (Isl.union_map @-> Isl.union_set @-> returning Isl.union_map) in
	let ret = isl_union_map_intersect_domain umap uset in
	Gc.finalise union_map_free ret;
	ret

let union_map_intersect_params umap set = 
	let umap = union_map_copy umap in
	let set = set_copy set in
	let isl_union_map_intersect_params = foreign "isl_union_map_intersect_params" (Isl.union_map @-> Isl.set @-> returning Isl.union_map) in
	let ret = isl_union_map_intersect_params umap set in
	Gc.finalise union_map_free ret;
	ret

let union_map_intersect_range umap uset = 
	let umap = union_map_copy umap in
	let uset = union_set_copy uset in
	let isl_union_map_intersect_range = foreign "isl_union_map_intersect_range" (Isl.union_map @-> Isl.union_set @-> returning Isl.union_map) in
	let ret = isl_union_map_intersect_range umap uset in
	Gc.finalise union_map_free ret;
	ret

let union_map_lexmax umap = 
	let umap = union_map_copy umap in
	let isl_union_map_lexmax = foreign "isl_union_map_lexmax" (Isl.union_map @-> returning Isl.union_map) in
	let ret = isl_union_map_lexmax umap in
	Gc.finalise union_map_free ret;
	ret

let union_map_lexmin umap = 
	let umap = union_map_copy umap in
	let isl_union_map_lexmin = foreign "isl_union_map_lexmin" (Isl.union_map @-> returning Isl.union_map) in
	let ret = isl_union_map_lexmin umap in
	Gc.finalise union_map_free ret;
	ret

let union_map_polyhedral_hull umap = 
	let umap = union_map_copy umap in
	let isl_union_map_polyhedral_hull = foreign "isl_union_map_polyhedral_hull" (Isl.union_map @-> returning Isl.union_map) in
	let ret = isl_union_map_polyhedral_hull umap in
	Gc.finalise union_map_free ret;
	ret

let union_map_reverse umap = 
	let umap = union_map_copy umap in
	let isl_union_map_reverse = foreign "isl_union_map_reverse" (Isl.union_map @-> returning Isl.union_map) in
	let ret = isl_union_map_reverse umap in
	Gc.finalise union_map_free ret;
	ret

let union_map_subtract umap1 umap2 = 
	let umap1 = union_map_copy umap1 in
	let umap2 = union_map_copy umap2 in
	let isl_union_map_subtract = foreign "isl_union_map_subtract" (Isl.union_map @-> Isl.union_map @-> returning Isl.union_map) in
	let ret = isl_union_map_subtract umap1 umap2 in
	Gc.finalise union_map_free ret;
	ret

let union_map_subtract_domain umap dom = 
	let umap = union_map_copy umap in
	let dom = union_set_copy dom in
	let isl_union_map_subtract_domain = foreign "isl_union_map_subtract_domain" (Isl.union_map @-> Isl.union_set @-> returning Isl.union_map) in
	let ret = isl_union_map_subtract_domain umap dom in
	Gc.finalise union_map_free ret;
	ret

let union_map_subtract_range umap dom = 
	let umap = union_map_copy umap in
	let dom = union_set_copy dom in
	let isl_union_map_subtract_range = foreign "isl_union_map_subtract_range" (Isl.union_map @-> Isl.union_set @-> returning Isl.union_map) in
	let ret = isl_union_map_subtract_range umap dom in
	Gc.finalise union_map_free ret;
	ret

let union_map_union umap1 umap2 = 
	let umap1 = union_map_copy umap1 in
	let umap2 = union_map_copy umap2 in
	let isl_union_map_union = foreign "isl_union_map_union" (Isl.union_map @-> Isl.union_map @-> returning Isl.union_map) in
	let ret = isl_union_map_union umap1 umap2 in
	Gc.finalise union_map_free ret;
	ret

let union_set_identity uset = 
	let uset = union_set_copy uset in
	let isl_union_set_identity = foreign "isl_union_set_identity" (Isl.union_set @-> returning Isl.union_map) in
	let ret = isl_union_set_identity uset in
	Gc.finalise union_map_free ret;
	ret

let union_map_deltas umap = 
	let umap = union_map_copy umap in
	let isl_union_map_deltas = foreign "isl_union_map_deltas" (Isl.union_map @-> returning Isl.union_set) in
	let ret = isl_union_map_deltas umap in
	Gc.finalise union_set_free ret;
	ret

let union_map_from_basic_map bmap = 
	let bmap = basic_map_copy bmap in
	let isl_union_map_from_basic_map = foreign "isl_union_map_from_basic_map" (Isl.basic_map @-> returning Isl.union_map) in
	let ret = isl_union_map_from_basic_map bmap in
	Gc.finalise union_map_free ret;
	ret

let union_map_from_map map = 
	let map = map_copy map in
	let isl_union_map_from_map = foreign "isl_union_map_from_map" (Isl.map @-> returning Isl.union_map) in
	let ret = isl_union_map_from_map map in
	Gc.finalise union_map_free ret;
	ret

let union_map_read_from_str ctx str = 
	let isl_union_map_read_from_str = foreign "isl_union_map_read_from_str" (Isl.ctx @-> string @-> returning Isl.union_map) in
	let ret = isl_union_map_read_from_str ctx str in
	Gc.finalise union_map_free ret;
	ret

