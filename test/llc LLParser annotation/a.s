	.text
	.def	 @feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
@feat.00 = 1
	.def	 "?foo_c@@YAHHAAH@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?foo_c@@YAHHAAH@Z"     # -- Begin function ?foo_c@@YAHHAAH@Z
	.p2align	4, 0x90
"?foo_c@@YAHHAAH@Z":                    # @"\01?foo_c@@YAHHAAH@Z"
# BB#0:                                 # %entry
	pushl	%ebp
	movl	%esp, %ebp
	movl	12(%ebp), %eax
	movl	8(%ebp), %eax
	movl	8(%ebp), %eax
	movl	12(%ebp), %ecx
	addl	(%ecx), %eax
	popl	%ebp
	retl
                                        # -- End function
	.def	 "?foo_called@@YAHH@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?foo_called@@YAHH@Z"   # -- Begin function ?foo_called@@YAHH@Z
	.p2align	4, 0x90
"?foo_called@@YAHH@Z":                  # @"\01?foo_called@@YAHH@Z"
# BB#0:                                 # %entry
	pushl	%ebp
	movl	%esp, %ebp
	subl	$12, %esp
	movl	8(%ebp), %eax
	leal	8(%ebp), %eax
	movl	$1, -4(%ebp)
	movl	-4(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	calll	"?foo_c@@YAHHAAH@Z"
	addl	$1, %eax
	addl	$12, %esp
	popl	%ebp
	retl
                                        # -- End function
	.def	 "?foo@@YAHH@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?foo@@YAHH@Z"          # -- Begin function ?foo@@YAHH@Z
	.p2align	4, 0x90
"?foo@@YAHH@Z":                         # @"\01?foo@@YAHH@Z"
# BB#0:                                 # %entry
	pushl	%ebp
	movl	%esp, %ebp
	subl	$16, %esp
	movl	8(%ebp), %eax
	movl	$0, -4(%ebp)
LBB2_1:                                 # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%ebp), %eax
	cmpl	8(%ebp), %eax
	jge	LBB2_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-8(%ebp), %eax
	addl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	calll	"?foo_called@@YAHH@Z"
	addl	-8(%ebp), %eax
	movl	%eax, -8(%ebp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-4(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -4(%ebp)
	jmp	LBB2_1
LBB2_4:                                 # %for.end
	xorl	%eax, %eax
	addl	$16, %esp
	popl	%ebp
	retl
                                        # -- End function

