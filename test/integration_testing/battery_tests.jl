@testset "battery_tests" begin
    @testset "$(typeof(p))" for p in vcat(
        [
            true, false,
            UInt8(0), UInt8(3),
            UInt16(0), UInt16(5),
            UInt32(0), UInt32(7),
            UInt64(0), UInt64(9),
            UInt128(0), UInt128(3),
            Int8(0), Int8(3),
            Int16(0), Int16(-1),
            Int32(0), Int32(-3),
            Int64(0), Int64(5),
            Int128(0), Int128(24),
            "hello",
        ],
        randn(Float64, 5),
        [1, 2, 3],
        randn(Float32, 5),
        randn(Float16, 5),
        [
            randn(1),
            randn(1, 2),
            randn(1, 2, 1),
            Adjoint(randn(2, 2)),
            Diagonal(randn(2)),
            UnitRange(1, 3),
            Transpose(randn(2, 2)),
            view(randn(3, 3), 1:2, 1:1),
            Xoshiro(123456),
            Ref(5.0),
            StructFoo(5.0, randn(5)),
            MutableFoo(5.0, randn(5)),
            TypeStableMutableStruct{Vector{Float64}}(5.0, randn(5)),
            StructFoo(5.0),
            MutableFoo(5.0),
            TypeStableMutableStruct{Vector{Float64}}(5.0),
            LowerTriangular(randn(3, 3)),
            UpperTriangular(randn(3, 3)),
            UnitLowerTriangular(randn(3, 3)),
            UnitUpperTriangular(randn(2, 2)),
        ]
    )
        TestUtils.test_data(sr(123), p)
    end
end
