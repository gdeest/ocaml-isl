open IslValue_Core

module Make (Ctx: IslCtx.SIG): IslValue_sigs.S with module Types := Types = struct
    module Types = Types

    let sgn = sgn Ctx.ctx
    let dump = dump Ctx.ctx
    let eq = eq Ctx.ctx
    let ge = ge Ctx.ctx
    let gt = gt Ctx.ctx
    let is_divisible_by = is_divisible_by Ctx.ctx
    let is_infty = is_infty Ctx.ctx
    let is_int = is_int Ctx.ctx
    let is_nan = is_nan Ctx.ctx
    let is_neg = is_neg Ctx.ctx
    let is_neginfty = is_neginfty Ctx.ctx
    let is_negone = is_negone Ctx.ctx
    let is_nonneg = is_nonneg Ctx.ctx
    let is_nonpos = is_nonpos Ctx.ctx
    let is_one = is_one Ctx.ctx
    let is_pos = is_pos Ctx.ctx
    let is_rat = is_rat Ctx.ctx
    let is_zero = is_zero Ctx.ctx
    let le = le Ctx.ctx
    let lt = lt Ctx.ctx
    let ne = ne Ctx.ctx
    let two_exp = two_exp Ctx.ctx
    let abs = abs Ctx.ctx
    let add = add Ctx.ctx
    let ceil = ceil Ctx.ctx
    let div = div Ctx.ctx
    let floor = floor Ctx.ctx
    let gcd = gcd Ctx.ctx
    let infty = infty Ctx.ctx
    let max = max Ctx.ctx
    let min = min Ctx.ctx
    let modulo = modulo Ctx.ctx
    let mul = mul Ctx.ctx
    let nan = nan Ctx.ctx
    let neg = neg Ctx.ctx
    let neginfty = neginfty Ctx.ctx
    let negone = negone Ctx.ctx
    let one = one Ctx.ctx
    let of_string = of_string Ctx.ctx
    let sub = sub Ctx.ctx
    let trunc = trunc Ctx.ctx
    let zero = zero Ctx.ctx
    let to_string = to_string Ctx.ctx
end
