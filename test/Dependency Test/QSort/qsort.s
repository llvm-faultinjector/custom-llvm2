	.text
	.def	 @feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
@feat.00 = 1
	.def	 "?swap@@YAXPAH0@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?swap@@YAXPAH0@Z"      # -- Begin function ?swap@@YAXPAH0@Z
	.p2align	4, 0x90
"?swap@@YAXPAH0@Z":                     # @"\01?swap@@YAXPAH0@Z"
# BB#0:                                 # %entry
	pushl	%esi
	movl	12(%esp), %eax
	movl	8(%esp), %ecx
	movl	(%ecx), %edx
	movl	(%eax), %esi
	movl	%esi, (%ecx)
	movl	%edx, (%eax)
	popl	%esi
	retl
                                        # -- End function
	.def	 "?partition@@YAHQAHHH@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?partition@@YAHQAHHH@Z" # -- Begin function ?partition@@YAHQAHHH@Z
	.p2align	4, 0x90
"?partition@@YAHQAHHH@Z":               # @"\01?partition@@YAHQAHHH@Z"
# BB#0:                                 # %entry
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	movl	28(%esp), %ecx
	movl	20(%esp), %edx
	movl	24(%esp), %ebx
	movl	(%edx,%ecx,4), %esi
	leal	-1(%ebx), %eax
	cmpl	%ecx, %ebx
	jge	LBB1_6
# BB#1:                                 # %for.body.preheader
	movl	%ecx, %edi
	subl	%ebx, %edi
	leal	(%edx,%ebx,4), %ebx
	.p2align	4, 0x90
LBB1_2:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%ebx), %ebp
	cmpl	%esi, %ebp
	jg	LBB1_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	4(%edx,%eax,4), %ecx
	movl	%ebp, 4(%edx,%eax,4)
	incl	%eax
	movl	%ecx, (%ebx)
LBB1_4:                                 # %for.inc
                                        #   in Loop: Header=BB1_2 Depth=1
	addl	$4, %ebx
	decl	%edi
	jne	LBB1_2
# BB#5:                                 # %for.cond.cleanup.loopexit
	movl	28(%esp), %ecx
	movl	(%edx,%ecx,4), %esi
LBB1_6:                                 # %for.cond.cleanup
	movl	4(%edx,%eax,4), %edi
	movl	%esi, 4(%edx,%eax,4)
	incl	%eax
	movl	%edi, (%edx,%ecx,4)
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
                                        # -- End function
	.def	 "?quickSort@@YAXQAHHH@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?quickSort@@YAXQAHHH@Z" # -- Begin function ?quickSort@@YAXQAHHH@Z
	.p2align	4, 0x90
"?quickSort@@YAXQAHHH@Z":               # @"\01?quickSort@@YAXQAHHH@Z"
# BB#0:                                 # %entry
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	pushl	%eax
	movl	32(%esp), %esi
	movl	28(%esp), %eax
	cmpl	%esi, %eax              # [Dominated, Source: pi]
	jge	LBB2_6
# BB#1:                                 # %for.body.lr.ph.i
	movl	24(%esp), %edi
	leal	-1(%eax), %ecx          # [Perpect, Source: pi]
	movl	%eax, %ebx
	movl	(%edi,%esi,4), %edx     # [Maybe, Source: pi]
	.p2align	4, 0x90
LBB2_2:                                 # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	(%edi,%ebx,4), %ebp     # [Maybe, Source: pi]
	cmpl	%edx, %ebp              # [Maybe, Source: pi]
	jg	LBB2_4
# BB#3:                                 # %if.then.i
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	4(%edi,%ecx,4), %eax
	movl	%ebp, 4(%edi,%ecx,4)
	incl	%ecx                    # [Perpect, Source: pi]
	movl	%eax, (%edi,%ebx,4)
LBB2_4:                                 # %for.inc.i
                                        #   in Loop: Header=BB2_2 Depth=1
	incl	%ebx                    # [Dominated, Source: pi]
	cmpl	%ebx, %esi              # [Dominated, Source: pi]
	jne	LBB2_2
# BB#5:                                 # %"\01?partition@@YAHQAHHH@Z.exit"
	movl	(%edi,%esi,4), %eax
	movl	4(%edi,%ecx,4), %ebx
	leal	1(%ecx), %edx           # [Annotated, Source: pi]
	movl	%eax, 4(%edi,%ecx,4)
	movl	%ebx, (%edi,%esi,4)
	movl	%edx, (%esp)
	pushl	%ecx
	pushl	32(%esp)
	pushl	%edi
	calll	"?quickSort@@YAXQAHHH@Z"
	addl	$12, %esp
	movl	(%esp), %eax
	incl	%eax
	pushl	%esi
	pushl	%eax
	pushl	%edi
	calll	"?quickSort@@YAXQAHHH@Z"
	addl	$12, %esp
LBB2_6:                                 # %if.end
	addl	$4, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
                                        # -- End function
	.def	 "?printArray@@YAXQAHH@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?printArray@@YAXQAHH@Z" # -- Begin function ?printArray@@YAXQAHH@Z
	.p2align	4, 0x90
"?printArray@@YAXQAHH@Z":               # @"\01?printArray@@YAXQAHH@Z"
# BB#0:                                 # %entry
	pushl	%edi
	pushl	%esi
	movl	16(%esp), %esi
	testl	%esi, %esi
	jle	LBB3_3
# BB#1:                                 # %for.body.preheader
	movl	12(%esp), %edi
	.p2align	4, 0x90
LBB3_2:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
	pushl	(%edi)
	pushl	$"??_C@_03JDANDILB@?$CFd?5?$AA@"
	calll	_printf
	addl	$8, %esp
	addl	$4, %edi
	decl	%esi
	jne	LBB3_2
LBB3_3:                                 # %for.end
	pushl	$110
	calll	_putchar
	addl	$4, %esp
	popl	%esi
	popl	%edi
	retl
                                        # -- End function
	.def	 _printf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_printf
	.globl	_printf                 # -- Begin function printf
	.p2align	4, 0x90
_printf:                                # @printf
# BB#0:                                 # %entry
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	pushl	%eax
	movl	20(%esp), %edi
	leal	24(%esp), %ebx
	movl	%ebx, (%esp)
	pushl	$1
	calll	___acrt_iob_func
	addl	$4, %esp
	movl	%eax, %esi
	calll	___local_stdio_printf_options
	pushl	%ebx
	pushl	$0
	pushl	%edi
	pushl	%esi
	pushl	4(%eax)
	pushl	(%eax)
	calll	___stdio_common_vfprintf
	addl	$28, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	retl
                                        # -- End function
	.def	 _main;
	.scl	2;
	.type	32;
	.endef
	.text
	.globl	_main                   # -- Begin function main
	.p2align	4, 0x90
_main:                                  # @main
# BB#0:                                 # %entry
	subl	$24, %esp
	movsd	"?arr@?1??main@@9@3PAHA"+16, %xmm0 # xmm0 = mem[0],zero
	movsd	"?arr@?1??main@@9@3PAHA"+8, %xmm2 # xmm2 = mem[0],zero
	movsd	"?arr@?1??main@@9@3PAHA", %xmm1 # xmm1 = mem[0],zero
	movl	%esp, %eax
	movsd	%xmm0, 16(%esp)
	movsd	%xmm2, 8(%esp)
	movsd	%xmm1, (%esp)
	pushl	$5
	pushl	$0
	pushl	%eax
	calll	"?quickSort@@YAXQAHHH@Z"
	addl	$12, %esp
	pushl	$"??_C@_0BA@DPNLFGIP@Sorted?5array?3?5n?$AA@"
	calll	_printf
	addl	$4, %esp
	pushl	(%esp)
	pushl	$"??_C@_03JDANDILB@?$CFd?5?$AA@"
	calll	_printf
	addl	$8, %esp
	pushl	4(%esp)
	pushl	$"??_C@_03JDANDILB@?$CFd?5?$AA@"
	calll	_printf
	addl	$8, %esp
	pushl	8(%esp)
	pushl	$"??_C@_03JDANDILB@?$CFd?5?$AA@"
	calll	_printf
	addl	$8, %esp
	pushl	12(%esp)
	pushl	$"??_C@_03JDANDILB@?$CFd?5?$AA@"
	calll	_printf
	addl	$8, %esp
	pushl	16(%esp)
	pushl	$"??_C@_03JDANDILB@?$CFd?5?$AA@"
	calll	_printf
	addl	$8, %esp
	pushl	20(%esp)
	pushl	$"??_C@_03JDANDILB@?$CFd?5?$AA@"
	calll	_printf
	addl	$8, %esp
	pushl	$110
	calll	_putchar
	addl	$4, %esp
	xorl	%eax, %eax
	addl	$24, %esp
	retl
                                        # -- End function
	.def	 ___local_stdio_printf_options;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,___local_stdio_printf_options
	.globl	___local_stdio_printf_options # -- Begin function __local_stdio_printf_options
	.p2align	4, 0x90
___local_stdio_printf_options:          # @__local_stdio_printf_options
# BB#0:                                 # %entry
	movl	$"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA", %eax
	retl
                                        # -- End function
	.section	.rdata,"dr",discard,"??_C@_03JDANDILB@?$CFd?5?$AA@"
	.globl	"??_C@_03JDANDILB@?$CFd?5?$AA@" # @"\01??_C@_03JDANDILB@?$CFd?5?$AA@"
"??_C@_03JDANDILB@?$CFd?5?$AA@":
	.asciz	"%d "

	.section	.rdata,"dr"
	.p2align	2               # @"\01?arr@?1??main@@9@3PAHA"
"?arr@?1??main@@9@3PAHA":
	.long	10                      # 0xa
	.long	7                       # 0x7
	.long	8                       # 0x8
	.long	9                       # 0x9
	.long	1                       # 0x1
	.long	5                       # 0x5

	.section	.rdata,"dr",discard,"??_C@_0BA@DPNLFGIP@Sorted?5array?3?5n?$AA@"
	.globl	"??_C@_0BA@DPNLFGIP@Sorted?5array?3?5n?$AA@" # @"\01??_C@_0BA@DPNLFGIP@Sorted?5array?3?5n?$AA@"
"??_C@_0BA@DPNLFGIP@Sorted?5array?3?5n?$AA@":
	.asciz	"Sorted array: n"

	.section	.bss,"bw",discard,"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA"
	.globl	"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA" # @"\01?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA"
	.p2align	3
"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA":
	.quad	0                       # 0x0

	.section	.drectve,"yn"
	.ascii	" /FAILIFMISMATCH:\"_CRT_STDIO_ISO_WIDE_SPECIFIERS=0\""

