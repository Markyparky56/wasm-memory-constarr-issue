	.text
	.file	"main.withconstfloatarr.cpp"
	.globl	_Znwj
	.type	_Znwj,@function
_Znwj:
	.param  	i32
	.result 	i32
	i32.call	$push0=, malloc@FUNCTION, $0
	.endfunc
.Lfunc_end0:
	.size	_Znwj, .Lfunc_end0-_Znwj

	.globl	_Znaj
	.type	_Znaj,@function
_Znaj:
	.param  	i32
	.result 	i32
	i32.call	$push0=, malloc@FUNCTION, $0
	.endfunc
.Lfunc_end1:
	.size	_Znaj, .Lfunc_end1-_Znaj

	.globl	_ZdlPv
	.type	_ZdlPv,@function
_ZdlPv:
	.param  	i32
	call    	free@FUNCTION, $0
	.endfunc
.Lfunc_end2:
	.size	_ZdlPv, .Lfunc_end2-_ZdlPv

	.globl	_ZdaPv
	.type	_ZdaPv,@function
_ZdaPv:
	.param  	i32
	call    	free@FUNCTION, $0
	.endfunc
.Lfunc_end3:
	.size	_ZdaPv, .Lfunc_end3-_ZdaPv

	.hidden	GetFloatArr
	.globl	GetFloatArr
	.type	GetFloatArr,@function
GetFloatArr:
	.param  	i32
	.result 	i32
	.local  	i32, i64
	block   	
	i32.const	$push15=, 0
	i32.load	$push14=, returnHelper($pop15)
	tee_local	$push13=, $1=, $pop14
	i32.eqz 	$push21=, $pop13
	br_if   	0, $pop21
	call    	free@FUNCTION, $1
.LBB4_2:
	end_block
	i32.const	$push20=, 0
	i32.const	$push6=, -1
	i64.extend_u/i32	$push0=, $0
	i64.const	$push1=, 2
	i64.shl 	$push19=, $pop0, $pop1
	tee_local	$push18=, $2=, $pop19
	i32.wrap/i64	$push2=, $pop18
	i64.const	$push3=, 32
	i64.shr_u	$push4=, $2, $pop3
	i32.wrap/i64	$push5=, $pop4
	i32.select	$push7=, $pop6, $pop2, $pop5
	i32.call	$push17=, malloc@FUNCTION, $pop7
	tee_local	$push16=, $1=, $pop17
	i32.store	returnHelper($pop20), $pop16
	block   	
	i32.const	$push8=, 1
	i32.lt_s	$push9=, $0, $pop8
	br_if   	0, $pop9
	i32.const	$push12=, _ZL13constFloatArr
	i32.const	$push10=, 2
	i32.shl 	$push11=, $0, $pop10
	i32.call	$drop=, memcpy@FUNCTION, $1, $pop12, $pop11
.LBB4_4:
	end_block
	copy_local	$push22=, $1
	.endfunc
.Lfunc_end4:
	.size	GetFloatArr, .Lfunc_end4-GetFloatArr

	.hidden	returnHelper
	.type	returnHelper,@object
	.bss
	.globl	returnHelper
	.p2align	2
returnHelper:
	.skip	4
	.size	returnHelper, 4

	.type	_ZL13constFloatArr,@object
	.section	.rodata,"a",@progbits
	.p2align	4
_ZL13constFloatArr:
	.int32	3212836864
	.int32	3204448256
	.int32	0
	.int32	1056964608
	.int32	1065353216
	.size	_ZL13constFloatArr, 20


	.ident	"clang version 6.0.0 (trunk 314790) (llvm/trunk 314789)"
	.functype	malloc, i32, i32
	.functype	free, void, i32
	.functype	__gxx_personality_v0, i32
