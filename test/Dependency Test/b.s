	.text
	.def	 @feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
@feat.00 = 1
	.def	 "?foo@@YAHH@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?foo@@YAHH@Z"          # -- Begin function ?foo@@YAHH@Z
	.p2align	4, 0x90
"?foo@@YAHH@Z":                         # @"\01?foo@@YAHH@Z"
# BB#0:                                 # %entry
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$8, %esp
	movl	24(%esp), %esi
	xorl	%edi, %edi
	movl	$0, (%esp)
	movl	$0, 4(%esp)
	testl	%esi, %esi              # [Dominated, Source: b]
	jle	LBB0_3
# BB#1:                                 # %for.body.preheader
	movl	%esi, %ebx
	.p2align	4, 0x90
LBB0_2:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
	addl	%esi, %edi              # [Perpect, Source: b]
                                        # [Perpect, Source: a]
	pushl	%edi                    # [Maybe, Source: b]
                                        # [Perpect, Source: a]
	calll	"?foo_called@@YAHH@Z"   # [Maybe, Source: b]
                                        # [Perpect, Source: a]
	addl	$4, %esp                # [Maybe, Source: b]
                                        # [Perpect, Source: a]
	addl	%eax, 4(%esp)
	pushl	%edi                    # [Perpect, Source: b]
	calll	"?foo_called2@@YAHH@Z"  # [Perpect, Source: b]
	addl	$4, %esp                # [Perpect, Source: b]
	addl	(%esp), %eax            # [Annotated, Source: b]
	movl	4(%esp), %edi           # [Perpect, Source: b]
                                        # [Perpect, Source: a]
	decl	%ebx                    # [Maybe, Source: b]
	movl	%eax, (%esp)
	jne	LBB0_2
	jmp	LBB0_4
LBB0_3:                                 # %entry.for.cond.cleanup_crit_edge
	movl	(%esp), %eax
LBB0_4:                                 # %for.cond.cleanup
	pushl	%eax
	calll	"?foo_called@@YAHH@Z"
	addl	$4, %esp
	addl	%edi, %eax
	addl	$8, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	retl
                                        # -- End function

