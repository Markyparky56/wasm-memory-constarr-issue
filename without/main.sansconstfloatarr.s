	.text
	.file	"main.sansconstfloatarr.cpp"
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
	.local  	i32, i64, i32, i32
	block   	
	i32.const	$push13=, 0
	i32.load	$push12=, returnHelper($pop13)
	tee_local	$push11=, $4=, $pop12
	i32.eqz 	$push24=, $pop11
	br_if   	0, $pop24
	call    	free@FUNCTION, $4
.LBB4_2:
	end_block
	i32.const	$push19=, 0
	i32.const	$push6=, -1
	i64.extend_u/i32	$push0=, $0
	i64.const	$push1=, 2
	i64.shl 	$push18=, $pop0, $pop1
	tee_local	$push17=, $2=, $pop18
	i32.wrap/i64	$push2=, $pop17
	i64.const	$push3=, 32
	i64.shr_u	$push4=, $2, $pop3
	i32.wrap/i64	$push5=, $pop4
	i32.select	$push7=, $pop6, $pop2, $pop5
	i32.call	$push16=, malloc@FUNCTION, $pop7
	tee_local	$push15=, $1=, $pop16
	i32.store	returnHelper($pop19), $pop15
	block   	
	i32.const	$push14=, 1
	i32.lt_s	$push8=, $0, $pop14
	br_if   	0, $pop8
	i32.const	$4=, 0
	copy_local	$3=, $1
.LBB4_4:
	loop    	
	f32.convert_s/i32	$push9=, $4
	f32.store	0($3), $pop9
	i32.const	$push23=, 4
	i32.add 	$3=, $3, $pop23
	i32.const	$push22=, 1
	i32.add 	$push21=, $4, $pop22
	tee_local	$push20=, $4=, $pop21
	i32.ne  	$push10=, $0, $pop20
	br_if   	0, $pop10
.LBB4_5:
	end_loop
	end_block
	copy_local	$push25=, $1
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


	.ident	"clang version 6.0.0 (trunk 314790) (llvm/trunk 314789)"
	.functype	malloc, i32, i32
	.functype	free, void, i32
	.functype	__gxx_personality_v0, i32
