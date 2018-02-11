	.text
	.def	 @feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
@feat.00 = 1
	.def	 _SHA256_Mixing;
	.scl	2;
	.type	32;
	.endef
	.globl	_SHA256_Mixing          # -- Begin function SHA256_Mixing
	.p2align	4, 0x90
_SHA256_Mixing:                         # @SHA256_Mixing
# BB#0:                                 # %entry
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$300, %esp              # imm = 0x12C
	movl	320(%esp), %eax
	pxor	%xmm0, %xmm0
	movdqu	(%eax), %xmm1
	movdqa	%xmm1, %xmm2
	punpcklbw	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	punpckhbw	%xmm0, %xmm2    # xmm2 = xmm2[8],xmm0[8],xmm2[9],xmm0[9],xmm2[10],xmm0[10],xmm2[11],xmm0[11],xmm2[12],xmm0[12],xmm2[13],xmm0[13],xmm2[14],xmm0[14],xmm2[15],xmm0[15]
	pshuflw	$27, %xmm1, %xmm1       # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshuflw	$27, %xmm2, %xmm2       # xmm2 = xmm2[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1       # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	pshufhw	$27, %xmm2, %xmm2       # xmm2 = xmm2[0,1,2,3,7,6,5,4]
	packuswb	%xmm2, %xmm1
	movdqu	%xmm1, 40(%esp)
	movd	%xmm1, %ecx
	movdqu	16(%eax), %xmm2
	movdqa	%xmm2, %xmm3
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	punpckhbw	%xmm0, %xmm3    # xmm3 = xmm3[8],xmm0[8],xmm3[9],xmm0[9],xmm3[10],xmm0[10],xmm3[11],xmm0[11],xmm3[12],xmm0[12],xmm3[13],xmm0[13],xmm3[14],xmm0[14],xmm3[15],xmm0[15]
	pshuflw	$27, %xmm2, %xmm2       # xmm2 = xmm2[3,2,1,0,4,5,6,7]
	pshuflw	$27, %xmm3, %xmm3       # xmm3 = xmm3[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm2, %xmm2       # xmm2 = xmm2[0,1,2,3,7,6,5,4]
	pshufhw	$27, %xmm3, %xmm3       # xmm3 = xmm3[0,1,2,3,7,6,5,4]
	packuswb	%xmm3, %xmm2
	movdqu	%xmm2, 56(%esp)
	movdqu	32(%eax), %xmm2
	movdqa	%xmm2, %xmm3
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	punpckhbw	%xmm0, %xmm3    # xmm3 = xmm3[8],xmm0[8],xmm3[9],xmm0[9],xmm3[10],xmm0[10],xmm3[11],xmm0[11],xmm3[12],xmm0[12],xmm3[13],xmm0[13],xmm3[14],xmm0[14],xmm3[15],xmm0[15]
	pshuflw	$27, %xmm2, %xmm2       # xmm2 = xmm2[3,2,1,0,4,5,6,7]
	pshuflw	$27, %xmm3, %xmm3       # xmm3 = xmm3[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm2, %xmm2       # xmm2 = xmm2[0,1,2,3,7,6,5,4]
	pshufhw	$27, %xmm3, %xmm3       # xmm3 = xmm3[0,1,2,3,7,6,5,4]
	packuswb	%xmm3, %xmm2
	movdqu	%xmm2, 72(%esp)
	movdqu	48(%eax), %xmm2
	movl	$16, %eax
	movdqa	%xmm2, %xmm3
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	punpckhbw	%xmm0, %xmm3    # xmm3 = xmm3[8],xmm0[8],xmm3[9],xmm0[9],xmm3[10],xmm0[10],xmm3[11],xmm0[11],xmm3[12],xmm0[12],xmm3[13],xmm0[13],xmm3[14],xmm0[14],xmm3[15],xmm0[15]
	pshuflw	$27, %xmm2, %xmm0       # xmm0 = xmm2[3,2,1,0,4,5,6,7]
	pshuflw	$27, %xmm3, %xmm3       # xmm3 = xmm3[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm0, %xmm0       # xmm0 = xmm0[0,1,2,3,7,6,5,4]
	pshufhw	$27, %xmm3, %xmm3       # xmm3 = xmm3[0,1,2,3,7,6,5,4]
	packuswb	%xmm3, %xmm0
	movdqu	%xmm0, 88(%esp)
	.p2align	4, 0x90
LBB0_1:                                 # %for.body16
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%esp,%eax,4), %edx
	movl	32(%esp,%eax,4), %esi
	addl	12(%esp,%eax,4), %ecx
	movl	%edx, %edi
	movl	%edx, %ebp
	movl	%edx, %ebx
	roll	$25, %edi
	shrl	$3, %ebp
	roll	$14, %ebx
	xorl	%edi, %ebp
	movl	%esi, %edi
	xorl	%ebx, %ebp
	movl	%esi, %ebx
	roll	$15, %edi
	shrl	$10, %esi
	roll	$13, %ebx
	xorl	%edi, %esi
	addl	%ebp, %ecx
	xorl	%ebx, %esi
	addl	%esi, %ecx
	movl	%ecx, 40(%esp,%eax,4)
	incl	%eax                    # [Dominated, Source: a]
	movl	%edx, %ecx
	cmpl	$64, %eax               # [Dominated, Source: a]
	jne	LBB0_1
# BB#2:                                 # %for.end62
	movl	324(%esp), %eax
	xorl	%edi, %edi
	movdqu	(%eax), %xmm1           # [Perpect, Source: a]
	movd	%xmm1, 36(%esp)
	pshufd	$229, %xmm1, %xmm2      # xmm2 = xmm1[1,1,2,3]
	movd	%xmm1, %ecx             # [Annotated, Source: a]
	movdqu	16(%eax), %xmm0
	movd	%xmm2, (%esp)           # 4-byte Folded Spill
	pshufd	$78, %xmm1, %xmm2       # xmm2 = xmm1[2,3,0,1]
	movd	%xmm2, 28(%esp)         # 4-byte Folded Spill
	pshufd	$231, %xmm1, %xmm2      # xmm2 = xmm1[3,1,2,3]
	movd	%xmm2, 12(%esp)         # 4-byte Folded Spill
	movd	%xmm0, %ebp
	pshufd	$229, %xmm0, %xmm2      # xmm2 = xmm0[1,1,2,3]
	pshufd	$78, %xmm0, %xmm4       # xmm4 = xmm0[2,3,0,1]
	pshufd	$231, %xmm0, %xmm3      # xmm3 = xmm0[3,1,2,3]
	movd	%xmm2, 16(%esp)         # 4-byte Folded Spill
	movd	%xmm4, 8(%esp)          # 4-byte Folded Spill
	movd	%xmm3, 4(%esp)          # 4-byte Folded Spill
	.p2align	4, 0x90
LBB0_3:                                 # %for.body73
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %esi
	movl	8(%esp), %ebp           # 4-byte Reload
	movl	%esi, %eax
	movl	%esi, %edx
	movl	%esi, %ebx
	roll	$21, %eax
	roll	$7, %edx
	notl	%ebx
	xorl	%eax, %edx
	movl	%esi, %eax
	roll	$26, %eax
	andl	%ebp, %ebx
	movl	%ebp, 24(%esp)          # 4-byte Spill
	xorl	%eax, %edx
	movl	16(%esp), %eax          # 4-byte Reload
	movl	%esi, 16(%esp)          # 4-byte Spill
	addl	4(%esp), %edx           # 4-byte Folded Reload
	movl	%eax, 20(%esp)          # 4-byte Spill
	andl	%esi, %eax
	xorl	%eax, %ebx
	movl	(%esp), %eax            # 4-byte Reload
	addl	%edx, %ebx
	movl	%ecx, %edx
	movl	%edx, %ebp
	movl	%edx, (%esp)            # 4-byte Spill
	addl	_SHA_256_K(%edi), %ebx
	roll	$10, %ebp
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	%edx, %eax
	roll	$19, %eax
	xorl	%eax, %ebp
	movl	%edx, %eax
	addl	40(%esp,%edi), %ebx
	addl	$4, %edi
	roll	$30, %eax
	xorl	%eax, %ebp
	movl	28(%esp), %eax          # 4-byte Reload
	xorl	%eax, %edx
	andl	%eax, %ecx
	andl	32(%esp), %edx          # 4-byte Folded Reload
	xorl	%edx, %ecx
	movl	24(%esp), %edx          # 4-byte Reload
	addl	%ebp, %ecx
	movl	12(%esp), %ebp          # 4-byte Reload
	movl	%eax, 12(%esp)          # 4-byte Spill
	addl	%ebx, %ecx
	movl	%edx, 4(%esp)           # 4-byte Spill
	movl	20(%esp), %edx          # 4-byte Reload
	addl	%ebx, %ebp
	cmpl	$256, %edi              # imm = 0x100
	movl	%edx, 8(%esp)           # 4-byte Spill
	movl	32(%esp), %edx          # 4-byte Reload
	movl	%edx, %ebx
	movl	%edx, 28(%esp)          # 4-byte Spill
	jne	LBB0_3
# BB#4:                                 # %for.end115
	movd	(%esp), %xmm4           # 4-byte Folded Reload
                                        # xmm4 = mem[0],zero,zero,zero
	movd	24(%esp), %xmm6         # 4-byte Folded Reload
                                        # xmm6 = mem[0],zero,zero,zero
	movd	20(%esp), %xmm7         # 4-byte Folded Reload
                                        # xmm7 = mem[0],zero,zero,zero
	movd	%ecx, %xmm5
	movd	%eax, %xmm2
	movd	%ebx, %xmm3
	movl	324(%esp), %eax
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	movd	%esi, %xmm2
	punpckldq	%xmm4, %xmm5    # xmm5 = xmm5[0],xmm4[0],xmm5[1],xmm4[1]
	movd	%ebp, %xmm4
	punpckldq	%xmm6, %xmm7    # xmm7 = xmm7[0],xmm6[0],xmm7[1],xmm6[1]
	punpckldq	%xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1]
	punpcklqdq	%xmm3, %xmm5    # xmm5 = xmm5[0],xmm3[0]
	punpcklqdq	%xmm7, %xmm4    # xmm4 = xmm4[0],xmm7[0]
	paddd	%xmm1, %xmm5
	paddd	%xmm0, %xmm4
	movdqu	%xmm5, (%eax)
	movdqu	%xmm4, 16(%eax)
	addl	$300, %esp              # imm = 0x12C
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
                                        # -- End function
	.def	 _SHA256_Init;
	.scl	2;
	.type	32;
	.endef
	.globl	__xmm@a54ff53a3c6ef372bb67ae856a09e667 # -- Begin function SHA256_Init
	.section	.rdata,"dr",discard,__xmm@a54ff53a3c6ef372bb67ae856a09e667
	.p2align	4
__xmm@a54ff53a3c6ef372bb67ae856a09e667:
	.long	1779033703              # 0x6a09e667
	.long	3144134277              # 0xbb67ae85
	.long	1013904242              # 0x3c6ef372
	.long	2773480762              # 0xa54ff53a
	.globl	__xmm@5be0cd191f83d9ab9b05688c510e527f
	.section	.rdata,"dr",discard,__xmm@5be0cd191f83d9ab9b05688c510e527f
	.p2align	4
__xmm@5be0cd191f83d9ab9b05688c510e527f:
	.long	1359893119              # 0x510e527f
	.long	2600822924              # 0x9b05688c
	.long	528734635               # 0x1f83d9ab
	.long	1541459225              # 0x5be0cd19
	.text
	.globl	_SHA256_Init
	.p2align	4, 0x90
_SHA256_Init:                           # @SHA256_Init
# BB#0:                                 # %entry
	movl	4(%esp), %eax
	movaps	__xmm@a54ff53a3c6ef372bb67ae856a09e667, %xmm0 # xmm0 = [1779033703,3144134277,1013904242,2773480762]
	movaps	__xmm@5be0cd191f83d9ab9b05688c510e527f, %xmm1 # xmm1 = [1359893119,2600822924,528734635,1541459225]
	movl	$0, 96(%eax)
	movl	$0, 100(%eax)
	movups	%xmm0, (%eax)
	movups	%xmm1, 16(%eax)
	retl
                                        # -- End function
	.def	 _SHA256_Update;
	.scl	2;
	.type	32;
	.endef
	.globl	_SHA256_Update          # -- Begin function SHA256_Update
	.p2align	4, 0x90
_SHA256_Update:                         # @SHA256_Update
# BB#0:                                 # %entry
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	movl	28(%esp), %esi
	movl	20(%esp), %ebx
	movl	24(%esp), %edi
	leal	(,%esi,8), %eax
	leal	32(%ebx), %ebp
	addl	%eax, 100(%ebx)
	movl	%esi, %eax
	shrl	$29, %eax
	addl	%eax, 96(%ebx)
	pushl	%esi
	pushl	%edi
	pushl	%ebp
	calll	_memcpy
	addl	$12, %esp
	cmpl	$64, %esi
	jb	LBB2_2
	.p2align	4, 0x90
LBB2_1:                                 # %while.body
                                        # =>This Inner Loop Header: Depth=1
	pushl	%ebx
	pushl	%edi
	calll	_SHA256_Mixing
	addl	$8, %esp
	addl	$64, %edi
	addl	$-64, %esi
	pushl	%esi
	pushl	%edi
	pushl	%ebp
	calll	_memcpy
	addl	$12, %esp
	cmpl	$63, %esi
	ja	LBB2_1
LBB2_2:                                 # %while.end
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
                                        # -- End function
	.def	 _SHA256_Final;
	.scl	2;
	.type	32;
	.endef
	.globl	_SHA256_Final           # -- Begin function SHA256_Final
	.p2align	4, 0x90
_SHA256_Final:                          # @SHA256_Final
# BB#0:                                 # %entry
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	movl	16(%esp), %edi
	movl	20(%esp), %esi
	movl	100(%edi), %ecx
	leal	32(%edi), %ebx
	shrl	$3, %ecx
	andl	$63, %ecx
	cmpl	$56, %ecx
	leal	33(%edi,%ecx), %eax
	movb	$-128, 32(%edi,%ecx)
	jb	LBB3_2
# BB#1:                                 # %if.then
	xorl	$63, %ecx
	pushl	%ecx
	pushl	$0
	pushl	%eax
	calll	_memset
	addl	$12, %esp
	pushl	%edi
	pushl	%ebx
	calll	_SHA256_Mixing
	addl	$8, %esp
	movl	$0, 4(%ebx)
	movl	$0, (%ebx)
	movl	$0, 12(%ebx)
	movl	$0, 8(%ebx)
	movl	$0, 20(%ebx)
	movl	$0, 16(%ebx)
	movl	$0, 28(%ebx)
	movl	$0, 24(%ebx)
	movl	$0, 36(%ebx)
	movl	$0, 32(%ebx)
	movl	$0, 44(%ebx)
	movl	$0, 40(%ebx)
	movl	$0, 52(%ebx)
	movl	$0, 48(%ebx)
	jmp	LBB3_3
LBB3_2:                                 # %if.else
	movl	$55, %edx
	subl	%ecx, %edx
	pushl	%edx
	pushl	$0
	pushl	%eax
	calll	_memset
	addl	$12, %esp
LBB3_3:                                 # %if.end
	movb	99(%edi), %al
	movb	103(%edi), %cl
	movb	%al, 46(%edi)
	movb	%cl, 47(%edi)
	pushl	%edi
	pushl	%ebx
	calll	_SHA256_Mixing
	addl	$8, %esp
	movl	(%edi), %eax
	bswapl	%eax
	movl	%eax, (%esi)
	movl	4(%edi), %eax
	bswapl	%eax
	movl	%eax, 4(%esi)
	movl	8(%edi), %eax
	bswapl	%eax
	movl	%eax, 8(%esi)
	movl	12(%edi), %eax
	bswapl	%eax
	movl	%eax, 12(%esi)
	movl	16(%edi), %eax
	bswapl	%eax
	movl	%eax, 16(%esi)
	movl	20(%edi), %eax
	bswapl	%eax
	movl	%eax, 20(%esi)
	movl	24(%edi), %eax
	bswapl	%eax
	movl	%eax, 24(%esi)
	movl	28(%edi), %eax
	bswapl	%eax
	movl	%eax, 28(%esi)
	popl	%esi
	popl	%edi
	popl	%ebx
	retl
                                        # -- End function
	.def	 _SHA256;
	.scl	2;
	.type	32;
	.endef
	.globl	_SHA256                 # -- Begin function SHA256
	.p2align	4, 0x90
_SHA256:                                # @SHA256
# BB#0:                                 # %entry
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	movl	20(%esp), %edi
	movaps	__xmm@a54ff53a3c6ef372bb67ae856a09e667, %xmm0 # xmm0 = [1779033703,3144134277,1013904242,2773480762]
	movaps	__xmm@5be0cd191f83d9ab9b05688c510e527f, %xmm1 # xmm1 = [1359893119,2600822924,528734635,1541459225]
	movl	24(%esp), %esi
	movl	16(%esp), %ebx
	leal	(,%edi,8), %eax
	movaps	%xmm0, _SHA256.cnxt
	movaps	%xmm1, _SHA256.cnxt+16
	movl	%eax, _SHA256.cnxt+100
	movl	%edi, %eax
	shrl	$29, %eax
	movl	%eax, _SHA256.cnxt+96
	pushl	%edi
	pushl	%ebx
	pushl	$_SHA256.cnxt+32
	calll	_memcpy
	addl	$12, %esp
	cmpl	$64, %edi
	jb	LBB4_2
	.p2align	4, 0x90
LBB4_1:                                 # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	pushl	$_SHA256.cnxt
	pushl	%ebx
	calll	_SHA256_Mixing
	addl	$8, %esp
	addl	$64, %ebx
	addl	$-64, %edi
	pushl	%edi
	pushl	%ebx
	pushl	$_SHA256.cnxt+32
	calll	_memcpy
	addl	$12, %esp
	cmpl	$63, %edi
	ja	LBB4_1
LBB4_2:                                 # %SHA256_Update.exit
	pushl	%esi
	pushl	$_SHA256.cnxt
	calll	_SHA256_Final
	addl	$8, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	retl
                                        # -- End function
	.section	.rdata,"dr"
	.globl	_SHA_256_K              # @SHA_256_K
	.p2align	2
_SHA_256_K:
	.long	1116352408              # 0x428a2f98
	.long	1899447441              # 0x71374491
	.long	3049323471              # 0xb5c0fbcf
	.long	3921009573              # 0xe9b5dba5
	.long	961987163               # 0x3956c25b
	.long	1508970993              # 0x59f111f1
	.long	2453635748              # 0x923f82a4
	.long	2870763221              # 0xab1c5ed5
	.long	3624381080              # 0xd807aa98
	.long	310598401               # 0x12835b01
	.long	607225278               # 0x243185be
	.long	1426881987              # 0x550c7dc3
	.long	1925078388              # 0x72be5d74
	.long	2162078206              # 0x80deb1fe
	.long	2614888103              # 0x9bdc06a7
	.long	3248222580              # 0xc19bf174
	.long	3835390401              # 0xe49b69c1
	.long	4022224774              # 0xefbe4786
	.long	264347078               # 0xfc19dc6
	.long	604807628               # 0x240ca1cc
	.long	770255983               # 0x2de92c6f
	.long	1249150122              # 0x4a7484aa
	.long	1555081692              # 0x5cb0a9dc
	.long	1996064986              # 0x76f988da
	.long	2554220882              # 0x983e5152
	.long	2821834349              # 0xa831c66d
	.long	2952996808              # 0xb00327c8
	.long	3210313671              # 0xbf597fc7
	.long	3336571891              # 0xc6e00bf3
	.long	3584528711              # 0xd5a79147
	.long	113926993               # 0x6ca6351
	.long	338241895               # 0x14292967
	.long	666307205               # 0x27b70a85
	.long	773529912               # 0x2e1b2138
	.long	1294757372              # 0x4d2c6dfc
	.long	1396182291              # 0x53380d13
	.long	1695183700              # 0x650a7354
	.long	1986661051              # 0x766a0abb
	.long	2177026350              # 0x81c2c92e
	.long	2456956037              # 0x92722c85
	.long	2730485921              # 0xa2bfe8a1
	.long	2820302411              # 0xa81a664b
	.long	3259730800              # 0xc24b8b70
	.long	3345764771              # 0xc76c51a3
	.long	3516065817              # 0xd192e819
	.long	3600352804              # 0xd6990624
	.long	4094571909              # 0xf40e3585
	.long	275423344               # 0x106aa070
	.long	430227734               # 0x19a4c116
	.long	506948616               # 0x1e376c08
	.long	659060556               # 0x2748774c
	.long	883997877               # 0x34b0bcb5
	.long	958139571               # 0x391c0cb3
	.long	1322822218              # 0x4ed8aa4a
	.long	1537002063              # 0x5b9cca4f
	.long	1747873779              # 0x682e6ff3
	.long	1955562222              # 0x748f82ee
	.long	2024104815              # 0x78a5636f
	.long	2227730452              # 0x84c87814
	.long	2361852424              # 0x8cc70208
	.long	2428436474              # 0x90befffa
	.long	2756734187              # 0xa4506ceb
	.long	3204031479              # 0xbef9a3f7
	.long	3329325298              # 0xc67178f2

	.globl	_SHA_256_H              # @SHA_256_H
	.p2align	2
_SHA_256_H:
	.long	1779033703              # 0x6a09e667
	.long	3144134277              # 0xbb67ae85
	.long	1013904242              # 0x3c6ef372
	.long	2773480762              # 0xa54ff53a
	.long	1359893119              # 0x510e527f
	.long	2600822924              # 0x9b05688c
	.long	528734635               # 0x1f83d9ab
	.long	1541459225              # 0x5be0cd19

	.lcomm	_SHA256.cnxt,104,16     # @SHA256.cnxt

