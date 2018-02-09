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
	pushl	%edi
	pushl	%esi
	pushl	%eax
	movl	16(%esp), %esi
	testl	%esi, %esi              # [Dominated, Source: a]
	jle	LBB0_3
# BB#1:                                 # %for.body.lr.ph
	movl	(%esp), %eax            # [Dominated, Source: a]
	movl	%esi, %edi
	.p2align	4, 0x90
LBB0_2:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
	addl	%esi, %eax              # [Dominated, Source: a]
	pushl	%eax                    # [Dominated, Source: a]
	calll	"?foo_called@@YAHH@Z"   # [Dominated, Source: a]
	addl	$4, %esp                # [Dominated, Source: a]
	addl	(%esp), %eax            # [Annotated, Source: a]
                                        # [Dominated, Source: a]
	decl	%edi                    # [Maybe, Source: a]
	movl	%eax, (%esp)
	jne	LBB0_2
LBB0_3:                                 # %for.cond.cleanup
	xorl	%eax, %eax
	addl	$4, %esp
	popl	%esi
	popl	%edi
	retl
                                        # -- End function

