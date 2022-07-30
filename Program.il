.assembly extern System.Runtime
{
	.publickeytoken = (
		b0 3f 5f 7f 11 d5 0a 3a
	)
	.ver 6:0:0:0
}

.assembly SpanInvalidProg
{
	.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = (
		01 00 08 00 00 00 00 00
	)
	.custom instance void [System.Runtime]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = (
		01 00 01 00 54 02 16 57 72 61 70 4e 6f 6e 45 78
		63 65 70 74 69 6f 6e 54 68 72 6f 77 73 01
	)
	.custom instance void [System.Runtime]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggableAttribute/DebuggingModes) = (
		01 00 02 00 00 00 00 00
	)
	.custom instance void [System.Runtime]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = (
		01 00 18 2e 4e 45 54 43 6f 72 65 41 70 70 2c 56
		65 72 73 69 6f 6e 3d 76 36 2e 30 01 00 54 0e 14
		46 72 61 6d 65 77 6f 72 6b 44 69 73 70 6c 61 79
		4e 61 6d 65 00
	)
	.custom instance void [System.Runtime]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = (
		01 00 0f 53 70 61 6e 49 6e 76 61 6c 69 64 50 72
		6f 67 00 00
	)
	.custom instance void [System.Runtime]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = (
		01 00 07 72 65 6c 65 61 73 65 00 00
	)
	.custom instance void [System.Runtime]System.Reflection.AssemblyFileVersionAttribute::.ctor(string) = (
		01 00 07 31 2e 30 2e 30 2e 30 00 00
	)
	.custom instance void [System.Runtime]System.Reflection.AssemblyInformationalVersionAttribute::.ctor(string) = (
		01 00 05 31 2e 30 2e 30 00 00
	)
	.custom instance void [System.Runtime]System.Reflection.AssemblyProductAttribute::.ctor(string) = (
		01 00 0f 53 70 61 6e 49 6e 76 61 6c 69 64 50 72
		6f 67 00 00
	)
	.custom instance void [System.Runtime]System.Reflection.AssemblyTitleAttribute::.ctor(string) = (
		01 00 0f 53 70 61 6e 49 6e 76 61 6c 69 64 50 72
		6f 67 00 00
	)
	.hash algorithm 0x00008004 // SHA1
	.ver 1:0:0:0
}

.module SpanInvalidProg.dll
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003 // WindowsCui
.corflags 0x00000001 // ILOnly


.class private auto ansi '<Module>'
{
}

.class public sequential ansi sealed beforefieldinit TwoSpans
	extends [System.Runtime]System.ValueType
{
	.custom instance void [System.Runtime]System.Runtime.CompilerServices.IsByRefLikeAttribute::.ctor() = (
		01 00 00 00
	)
	.custom instance void [System.Runtime]System.ObsoleteAttribute::.ctor(string, bool) = (
		01 00 52 54 79 70 65 73 20 77 69 74 68 20 65 6d
		62 65 64 64 65 64 20 72 65 66 65 72 65 6e 63 65
		73 20 61 72 65 20 6e 6f 74 20 73 75 70 70 6f 72
		74 65 64 20 69 6e 20 74 68 69 73 20 76 65 72 73
		69 6f 6e 20 6f 66 20 79 6f 75 72 20 63 6f 6d 70
		69 6c 65 72 2e 01 00 00
	)
	.custom instance void [System.Runtime]System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
		01 00 00 00
	)
	.field public initonly valuetype [System.Runtime]System.Span`1<int32> First
	.field public initonly valuetype [System.Runtime]System.Span`1<int32> Second

	.method public hidebysig specialname rtspecialname
		instance void .ctor (
			valuetype [System.Runtime]System.Span`1<int32> first,
			valuetype [System.Runtime]System.Span`1<int32> second
		) cil managed
	{
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: stfld valuetype [System.Runtime]System.Span`1<int32> TwoSpans::First
		IL_0007: ldarg.0
		IL_0008: ldarg.2
		IL_0009: stfld valuetype [System.Runtime]System.Span`1<int32> TwoSpans::Second
		IL_000e: ret
	}
}

.class public auto ansi abstract sealed beforefieldinit Program
	extends [System.Runtime]System.Object
{
	.method public hidebysig static
		void Main () cil managed
	{
		.maxstack 8
		.entrypoint
		.locals init (
			[0] valuetype [System.Runtime]System.Span`1<int32>,
			[1] valuetype [System.Runtime]System.Span`1<int32>
		)

		ldc.i4.s 40
		conv.u
		localloc
		ldc.i4.s 10
		newobj instance void valuetype [System.Runtime]System.Span`1<int32>::.ctor(void*, int32)
		stloc.0
		ldc.i4.s 80
		conv.u
		localloc
		ldc.i4.s 20
		newobj instance void valuetype [System.Runtime]System.Span`1<int32>::.ctor(void*, int32)
		stloc.1
		ldloc.0
		ldloc.1
		newobj instance void TwoSpans::.ctor(valuetype [System.Runtime]System.Span`1<int32>, valuetype [System.Runtime]System.Span`1<int32>)
		pop
		ret
	}
}
