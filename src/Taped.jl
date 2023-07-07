module Taped

using
    DiffRules,
    LinearAlgebra,
    Random,
    Setfield,
    Umlaut,
    Test

import Umlaut: isprimitive, Frame, Tracer

using Base: IEEEFloat

using Core.Intrinsics:
    not_int, sitofp, sle_int, slt_int, sub_int, add_int, add_float, mul_float, eq_float,
    bitcast, mul_int, and_int, or_int

include("tracing.jl")
include("tangents.jl")
include("reverse_mode_ad.jl")
include("testing.jl")

export
    primal,
    shadow,
    randn_tangent,
    increment!!,
    increment_field!!,
    NoTangent,
    Tangent,
    MutableTangent,
    PossiblyUninitTangent,
    set_to_zero!!,
    set_field_to_zero!!,
    tangent_type,
    zero_tangent,
    _scale,
    _add_to_primal,
    _diff,
    _dot

end
