	.text
	.def	 @feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
@feat.00 = 1
	.def	 "??0BigBase@ofw@@QAE@XZ";
	.scl	2;
	.type	32;
	.endef
	.globl	"??0BigBase@ofw@@QAE@XZ" # -- Begin function ??0BigBase@ofw@@QAE@XZ
	.p2align	4, 0x90
"??0BigBase@ofw@@QAE@XZ":               # @"\01??0BigBase@ofw@@QAE@XZ"
# BB#0:                                 # %entry
	movl	%ecx, %eax
	movl	$0, (%ecx)
	movl	$0, 4(%ecx)
	retl
                                        # -- End function
	.def	 "??0BigBase@ofw@@QAE@I@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"??0BigBase@ofw@@QAE@I@Z" # -- Begin function ??0BigBase@ofw@@QAE@I@Z
	.p2align	4, 0x90
"??0BigBase@ofw@@QAE@I@Z":              # @"\01??0BigBase@ofw@@QAE@I@Z"
# BB#0:                                 # %entry
	pushl	%edi
	pushl	%esi
	movl	12(%esp), %edi
	movl	%ecx, %esi
	movl	$0, (%esi)
	movl	$0, 4(%esi)
	testl	%edi, %edi
	je	LBB1_2
# BB#1:                                 # %if.then
	pushl	$4
	calll	"??_U@YAPAXI@Z"
	addl	$4, %esp
	movl	%eax, (%esi)
	movl	$1, 4(%esi)
	movl	%edi, (%eax)
LBB1_2:                                 # %if.end
	movl	%esi, %eax
	popl	%esi
	popl	%edi
	retl	$4
                                        # -- End function
	.def	 "?allocate@BigBase@ofw@@AAEXI@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?allocate@BigBase@ofw@@AAEXI@Z" # -- Begin function ?allocate@BigBase@ofw@@AAEXI@Z
	.p2align	4, 0x90
"?allocate@BigBase@ofw@@AAEXI@Z":       # @"\01?allocate@BigBase@ofw@@AAEXI@Z"
# BB#0:                                 # %entry
	pushl	%edi
	pushl	%esi
	movl	12(%esp), %edi
	movl	%ecx, %esi
	movl	$4, %ecx
	movl	%edi, %eax
	mull	%ecx
	movl	$-1, %edx
	cmovnol	%eax, %edx
	pushl	%edx
	calll	"??_U@YAPAXI@Z"
	addl	$4, %esp
	movl	%eax, (%esi)
	movl	%edi, 4(%esi)
	popl	%esi
	popl	%edi
	retl	$4
                                        # -- End function
	.def	 "??0BigBase@ofw@@QAE@ABV01@@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"??0BigBase@ofw@@QAE@ABV01@@Z" # -- Begin function ??0BigBase@ofw@@QAE@ABV01@@Z
	.p2align	4, 0x90
"??0BigBase@ofw@@QAE@ABV01@@Z":         # @"\01??0BigBase@ofw@@QAE@ABV01@@Z"
# BB#0:                                 # %"\01?init@BigBase@ofw@@AAEXXZ.exit.i"
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	movl	16(%esp), %ebx
	movl	%ecx, %esi
	movl	$0, 4(%esi)
	movl	$0, (%esi)
	movl	4(%ebx), %edi
	testl	%edi, %edi
	je	LBB3_2
# BB#1:                                 # %if.then.i
	movl	$4, %ecx
	movl	%edi, %eax
	mull	%ecx
	movl	$-1, %edx
	cmovnol	%eax, %edx
	pushl	%edx
	calll	"??_U@YAPAXI@Z"
	addl	$4, %esp
	movl	%eax, (%esi)
	movl	%edi, 4(%esi)
	movl	4(%ebx), %ecx
	shll	$2, %ecx
	pushl	%ecx
	pushl	(%ebx)
	pushl	%eax
	calll	_memcpy
	addl	$12, %esp
LBB3_2:                                 # %"\01?copy@BigBase@ofw@@AAEXABV12@@Z.exit"
	movl	%esi, %eax
	popl	%esi
	popl	%edi
	popl	%ebx
	retl	$4
                                        # -- End function
	.def	 "?copy@BigBase@ofw@@AAEXABV12@@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?copy@BigBase@ofw@@AAEXABV12@@Z" # -- Begin function ?copy@BigBase@ofw@@AAEXABV12@@Z
	.p2align	4, 0x90
"?copy@BigBase@ofw@@AAEXABV12@@Z":      # @"\01?copy@BigBase@ofw@@AAEXABV12@@Z"
# BB#0:                                 # %entry
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	movl	%ecx, %esi
	movl	16(%esp), %ebx
	movl	(%esi), %eax
	testl	%eax, %eax
	je	LBB4_2
# BB#1:                                 # %delete.notnull.i
	pushl	%eax
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
LBB4_2:                                 # %"\01?init@BigBase@ofw@@AAEXXZ.exit"
	movl	$0, (%esi)
	movl	$0, 4(%esi)
	movl	4(%ebx), %edi
	testl	%edi, %edi
	je	LBB4_4
# BB#3:                                 # %if.then
	movl	$4, %ecx
	movl	%edi, %eax
	mull	%ecx
	movl	$-1, %edx
	cmovnol	%eax, %edx
	pushl	%edx
	calll	"??_U@YAPAXI@Z"
	addl	$4, %esp
	movl	%eax, (%esi)
	movl	%edi, 4(%esi)
	movl	4(%ebx), %ecx
	shll	$2, %ecx
	pushl	%ecx
	pushl	(%ebx)
	pushl	%eax
	calll	_memcpy
	addl	$12, %esp
LBB4_4:                                 # %if.end
	popl	%esi
	popl	%edi
	popl	%ebx
	retl	$4
                                        # -- End function
	.def	 "??0BigBase@ofw@@QAE@PBD@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"??0BigBase@ofw@@QAE@PBD@Z" # -- Begin function ??0BigBase@ofw@@QAE@PBD@Z
	.p2align	4, 0x90
"??0BigBase@ofw@@QAE@PBD@Z":            # @"\01??0BigBase@ofw@@QAE@PBD@Z"
# BB#0:                                 # %entry
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	pushl	%eax
	movl	%ecx, %esi
	pushl	%eax
	subl	$20, %esp
	movl	%esp, %edi
	movl	$0, 16(%edi)
	movl	$15, 20(%edi)
	movb	$0, (%edi)
	pushl	8(%ebp)
	calll	_strlen
	addl	$4, %esp
	movl	%eax, %ebx
	cmpl	$15, %ebx
	jbe	LBB5_1
# BB#2:                                 # %if.end.i.i.i
	subl	$12, %esp
	movb	-16(%ebp), %al
	movl	%edi, %ecx
	movb	%al, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ebx, (%esp)
	calll	"??$_Reallocate_for@V<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV34@QBDI@Z@PBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV01@IV<lambda_1>@?0??assign@01@QAEAAV01@QBDI@Z@PBD@Z"
	jmp	LBB5_3
LBB5_1:                                 # %"\01?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QAEPADXZ.exit.i.i.i"
	movl	%ebx, 16(%edi)
	pushl	%ebx
	pushl	8(%ebp)
	pushl	%edi
	calll	_memcpy
	addl	$12, %esp
	movb	$0, (%edi,%ebx)
LBB5_3:                                 # %"\01??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@QBD@Z.exit"
	movl	%esi, %ecx
	calll	"??0BigBase@ofw@@QAE@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z"
	movl	%esi, %eax
	leal	-12(%ebp), %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$4
                                        # -- End function
	.def	 "??0BigBase@ofw@@QAE@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"??0BigBase@ofw@@QAE@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z" # -- Begin function ??0BigBase@ofw@@QAE@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z
	.p2align	4, 0x90
"??0BigBase@ofw@@QAE@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z": # @"\01??0BigBase@ofw@@QAE@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z"
Lfunc_begin0:
# BB#0:                                 # %entry
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$40, %esp
	movl	%esp, -28(%ebp)
	movl	$-1, -16(%ebp)
	movl	$"___ehhandler$??0BigBase@ofw@@QAE@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z", -20(%ebp)
	leal	-24(%ebp), %eax
	leal	8(%ebp), %esi
	movl	%fs:0, %edx
	movl	%edx, -24(%ebp)
	movl	%eax, %fs:0
	movl	$0, (%ecx)
	movl	$0, 4(%ecx)
	movl	%esi, %eax
	cmpl	$16, 28(%ebp)
	jb	LBB6_2
# BB#1:                                 # %if.then.i.i
	movl	(%esi), %eax
LBB6_2:                                 # %"\01??A?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QBEABDI@Z.exit"
	movl	%esp, -52(%ebp)         # 4-byte Spill
	movb	(%eax), %al
	pushl	%eax
	subl	$20, %esp
	movl	%esp, %edi
	movl	$0, 16(%edi)
	movl	$0, 20(%edi)
	cmpl	$15, 20(%esi)
	movl	(%esi), %edx
	movl	16(%esi), %ebx
	movl	%ecx, -48(%ebp)         # 4-byte Spill
	cmovbel	%esi, %edx
	cmpb	$120, %al
	jne	LBB6_11
# BB#3:                                 # %if.then
	cmpl	$15, %ebx
	ja	LBB6_5
# BB#4:                                 # %if.then.i.i15
	movsd	(%edx), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%edx), %xmm1          # xmm1 = mem[0],zero
	movl	$15, %eax
	movsd	%xmm1, 8(%edi)
	movsd	%xmm0, (%edi)
	jmp	LBB6_10
LBB6_11:                                # %if.else
	cmpl	$15, %ebx
	ja	LBB6_13
# BB#12:                                # %if.then.i.i31
	movsd	(%edx), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%edx), %xmm1          # xmm1 = mem[0],zero
	movl	$15, %eax
	movsd	%xmm1, 8(%edi)
	movsd	%xmm0, (%edi)
	jmp	LBB6_18
LBB6_5:                                 # %if.end.i.i.i.i
	movl	%ebx, %eax
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movl	%edx, -32(%ebp)         # 4-byte Spill
	movl	%edi, -40(%ebp)         # 4-byte Spill
	movl	%ebx, -36(%ebp)         # 4-byte Spill
	orl	$15, %eax
	cmpl	$2147483647, %eax       # imm = 0x7FFFFFFF
	cmovbl	%eax, %ecx
	cmpl	$4095, %ecx             # imm = 0xFFF
	movl	%ecx, -44(%ebp)         # 4-byte Spill
	jb	LBB6_8
# BB#6:                                 # %if.end8.i.i.i.i
	leal	36(%ecx), %eax
	movl	$1, -16(%ebp)
	pushl	%eax
	calll	"??2@YAPAXI@Z"
	addl	$4, %esp
	movl	%eax, %ecx
# BB#7:                                 # %call.i.i.i4.i.noexc
	movl	%ecx, %eax
	addl	$35, %eax
	andl	$-32, %eax
	movl	%ecx, -4(%eax)
	jmp	LBB6_9
LBB6_13:                                # %if.end.i.i.i.i35
	movl	%ebx, %eax
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movl	%edx, -32(%ebp)         # 4-byte Spill
	movl	%edi, -40(%ebp)         # 4-byte Spill
	movl	%ebx, -36(%ebp)         # 4-byte Spill
	orl	$15, %eax
	cmpl	$2147483647, %eax       # imm = 0x7FFFFFFF
	cmovbl	%eax, %ecx
	cmpl	$4095, %ecx             # imm = 0xFFF
	movl	%ecx, -44(%ebp)         # 4-byte Spill
	jb	LBB6_16
# BB#14:                                # %if.end8.i.i.i.i40
	leal	36(%ecx), %eax
	movl	$1, -16(%ebp)
	pushl	%eax
	calll	"??2@YAPAXI@Z"
	addl	$4, %esp
	movl	%eax, %ecx
# BB#15:                                # %call.i.i.i4.i.noexc47
	movl	%ecx, %eax
	addl	$35, %eax
	andl	$-32, %eax
	movl	%ecx, -4(%eax)
	jmp	LBB6_17
LBB6_8:                                 # %if.end13.i.i.i.i
	leal	1(%ecx), %eax
	movl	$1, -16(%ebp)
	pushl	%eax
	calll	"??2@YAPAXI@Z"
	addl	$4, %esp
LBB6_9:
	movl	-36(%ebp), %ebx         # 4-byte Reload
	movl	-40(%ebp), %edi         # 4-byte Reload
	movl	-32(%ebp), %edx         # 4-byte Reload
	leal	1(%ebx), %ecx
	movl	%eax, (%edi)
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	calll	_memcpy
	addl	$12, %esp
	movl	-48(%ebp), %ecx         # 4-byte Reload
	movl	-44(%ebp), %eax         # 4-byte Reload
LBB6_10:                                # %invoke.cont2
	movl	%ebx, 16(%edi)
	movl	%eax, 20(%edi)
	movl	$1, -16(%ebp)
	calll	"?init_hex@BigBase@ofw@@AAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z"
	jmp	LBB6_19
LBB6_16:                                # %if.end13.i.i.i.i42
	leal	1(%ecx), %eax
	movl	$1, -16(%ebp)
	pushl	%eax
	calll	"??2@YAPAXI@Z"
	addl	$4, %esp
LBB6_17:
	movl	-36(%ebp), %ebx         # 4-byte Reload
	movl	-40(%ebp), %edi         # 4-byte Reload
	movl	-32(%ebp), %edx         # 4-byte Reload
	leal	1(%ebx), %ecx
	movl	%eax, (%edi)
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	calll	_memcpy
	addl	$12, %esp
	movl	-48(%ebp), %ecx         # 4-byte Reload
	movl	-44(%ebp), %eax         # 4-byte Reload
LBB6_18:                                # %invoke.cont6
	movl	%ebx, 16(%edi)
	movl	%eax, 20(%edi)
	movl	$1, -16(%ebp)
	calll	"?init_decimal@BigBase@ofw@@AAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z"
LBB6_19:                                # %invoke.cont9
	movl	-52(%ebp), %esp         # 4-byte Reload
	leal	8(%ebp), %ecx
	movl	20(%ecx), %eax
	cmpl	$16, %eax
	jb	LBB6_27
# BB#20:                                # %if.then.i.i57
	movl	(%ecx), %ecx
	leal	1(%eax), %esi
	cmpl	$4096, %esi             # imm = 0x1000
	jb	LBB6_26
# BB#21:                                # %if.then2.i.i.i.i60
	cmpl	$-36, %esi
	ja	LBB6_28
# BB#22:                                # %if.end5.i.i.i.i63
	testb	$31, %cl
	jne	LBB6_28
# BB#23:                                # %if.end9.i.i.i.i66
	movl	-4(%ecx), %edx
	cmpl	%ecx, %edx
	jae	LBB6_28
# BB#24:                                # %if.end12.i.i.i.i68
	addl	$-4, %ecx
	subl	%edx, %ecx
	cmpl	$32, %ecx
	jae	LBB6_28
# BB#25:
	addl	$36, %eax
	movl	%edx, %ecx
	movl	%eax, %esi
LBB6_26:                                # %"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i73"
	pushl	%esi
	pushl	%ecx
	calll	"??3@YAXPAXI@Z"
	addl	$8, %esp
LBB6_27:                                # %"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit77"
	movl	-24(%ebp), %eax
	movl	%eax, %fs:0
	movl	-48(%ebp), %eax         # 4-byte Reload
	leal	-12(%ebp), %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$24
LBB6_28:                                # %_Invalid_parameter.i.i.i.i69
	movl	$0, -16(%ebp)
	calll	__invalid_parameter_noinfo_noreturn
# BB#29:                                # %.noexc.i70
	.def	 "?dtor$30@?0???0BigBase@ofw@@QAE@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$30@?0???0BigBase@ofw@@QAE@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z@4HA":
LBB6_30:                                # %ehcleanup.i76
	pushl	%ebp
	subl	$24, %esp
	addl	$12, %ebp
	calll	*__imp____std_terminate
	.def	 "?dtor$31@?0???0BigBase@ofw@@QAE@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$31@?0???0BigBase@ofw@@QAE@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z@4HA":
LBB6_31:                                # %ehcleanup
	pushl	%ebp
	subl	$24, %esp
	addl	$12, %ebp
	leal	8(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	$16, %eax
	jb	LBB6_39
# BB#32:                                # %if.then.i.i12
	leal	8(%ebp), %ecx
	leal	1(%eax), %esi
	movl	(%ecx), %ecx
	cmpl	$4096, %esi             # imm = 0x1000
	jb	LBB6_38
# BB#33:                                # %if.then2.i.i.i.i
	cmpl	$-36, %esi
	ja	LBB6_40
# BB#34:                                # %if.end5.i.i.i.i
	testb	$31, %cl
	jne	LBB6_40
# BB#35:                                # %if.end9.i.i.i.i
	movl	-4(%ecx), %edx
	cmpl	%ecx, %edx
	jae	LBB6_40
# BB#36:                                # %if.end12.i.i.i.i
	addl	$-4, %ecx
	subl	%edx, %ecx
	cmpl	$32, %ecx
	jae	LBB6_40
# BB#37:
	addl	$36, %eax
	movl	%edx, %ecx
	movl	%eax, %esi
LBB6_38:                                # %"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i"
	pushl	%esi
	pushl	%ecx
	calll	"??3@YAXPAXI@Z"
	addl	$8, %esp
LBB6_39:                                # %"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit"
	addl	$24, %esp
	popl	%ebp
	retl                            # CLEANUPRET
LBB6_40:                                # %_Invalid_parameter.i.i.i.i
	calll	__invalid_parameter_noinfo_noreturn
Lfunc_end0:
	.section	.xdata,"dr"
	.p2align	2
"L__ehtable$??0BigBase@ofw@@QAE@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z":
	.long	429065506               # MagicNumber
	.long	2                       # MaxState
	.long	("$stateUnwindMap$??0BigBase@ofw@@QAE@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z") # UnwindMap
	.long	0                       # NumTryBlocks
	.long	0                       # TryBlockMap
	.long	0                       # IPMapEntries
	.long	0                       # IPToStateXData
	.long	0                       # ESTypeList
	.long	1                       # EHFlags
"$stateUnwindMap$??0BigBase@ofw@@QAE@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z":
	.long	-1                      # ToState
	.long	"?dtor$30@?0???0BigBase@ofw@@QAE@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z@4HA" # Action
	.long	-1                      # ToState
	.long	"?dtor$31@?0???0BigBase@ofw@@QAE@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z@4HA" # Action
	.text
                                        # -- End function
	.def	 "?init_hex@BigBase@ofw@@AAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	__real@4330000000000000 # -- Begin function ?init_hex@BigBase@ofw@@AAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z
	.section	.rdata,"dr",discard,__real@4330000000000000
	.p2align	3
__real@4330000000000000:
	.quad	4841369599423283200     # double 4503599627370496
	.globl	__real@3e000000
	.section	.rdata,"dr",discard,__real@3e000000
	.p2align	2
__real@3e000000:
	.long	1040187392              # float 0.125
	.text
	.globl	"?init_hex@BigBase@ofw@@AAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z"
	.p2align	4, 0x90
"?init_hex@BigBase@ofw@@AAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z": # @"\01?init_hex@BigBase@ofw@@AAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z"
Lfunc_begin1:
# BB#0:                                 # %entry
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$56, %esp
	movl	%esp, -28(%ebp)
	movl	$-1, -16(%ebp)
	movl	%ecx, -48(%ebp)         # 4-byte Spill
	movl	$"___ehhandler$?init_hex@BigBase@ofw@@AAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z", -20(%ebp)
	leal	-24(%ebp), %eax
	movl	%fs:0, %ecx
	movl	%ecx, -24(%ebp)
	movl	%eax, %fs:0
	movl	24(%ebp), %eax
	movl	$1, -16(%ebp)
	decl	%eax
	movl	%eax, -40(%ebp)         # 4-byte Spill
	shrl	$3, %eax
	movl	%eax, -36(%ebp)         # 4-byte Spill
	leal	4(,%eax,4), %eax
	movl	%eax, -32(%ebp)         # 4-byte Spill
	pushl	%eax
	calll	"??_U@YAPAXI@Z"
	addl	$4, %esp
# BB#1:                                 # %invoke.cont
	movl	-36(%ebp), %ecx         # 4-byte Reload
	movl	-48(%ebp), %esi         # 4-byte Reload
	incl	%ecx
	movl	%eax, (%esi)
	movl	%ecx, 4(%esi)
	pushl	-32(%ebp)               # 4-byte Folded Reload
	pushl	$0
	movl	%eax, -44(%ebp)         # 4-byte Spill
	pushl	%eax
	calll	_memset
	addl	$12, %esp
	movl	-40(%ebp), %ebx         # 4-byte Reload
	movq	__real@4330000000000000, %xmm0 # xmm0 = mem[0],zero
	movd	%ebx, %xmm1
	por	%xmm0, %xmm1
	subsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	mulss	__real@3e000000, %xmm0
	cvtss2sd	%xmm0, %xmm0
	subl	$8, %esp
	movsd	%xmm0, (%esp)
	calll	_ceil
	addl	$8, %esp
	fstps	-68(%ebp)
	movl	%esi, %eax
	movl	%ebx, %esi
	cvttss2si	-68(%ebp), %edi
	movl	-36(%ebp), %ecx         # 4-byte Reload
	testl	%edi, %edi
	jle	LBB7_11
# BB#2:                                 # %for.body.lr.ph
	movl	%esi, %ecx
	leal	-1(%edi), %eax
	movl	%edi, -60(%ebp)         # 4-byte Spill
	movl	%eax, -56(%ebp)         # 4-byte Spill
	andl	$7, %ecx
	movl	$8, %eax
	cmovel	%eax, %ecx
	xorl	%eax, %eax
	movl	%ecx, -52(%ebp)         # 4-byte Spill
	.p2align	4, 0x90
LBB7_3:                                 # %for.body11.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_4 Depth 2
	cmpl	-56(%ebp), %eax         # 4-byte Folded Reload
	movl	%eax, %ecx
	movl	$8, %eax
	movl	%esi, -40(%ebp)         # 4-byte Spill
	movl	%esi, %edi
	movl	%ecx, -32(%ebp)         # 4-byte Spill
	cmovel	-52(%ebp), %eax         # 4-byte Folded Reload
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movl	%eax, -64(%ebp)         # 4-byte Spill
	.p2align	4, 0x90
LBB7_4:                                 # %for.body11
                                        #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	8(%ebp), %eax
	movl	%eax, %ecx
	movl	20(%ecx), %eax
	cmpl	$16, %eax
	jb	LBB7_6
# BB#5:                                 # %if.then.i.i102
                                        #   in Loop: Header=BB7_4 Depth=2
	leal	8(%ebp), %ecx
	movl	(%ecx), %ecx
LBB7_6:                                 # %invoke.cont15
                                        #   in Loop: Header=BB7_4 Depth=2
	movsbl	(%ecx,%edi), %ecx
	addl	$-48, %ecx
	cmpl	$9, %ecx
	ja	LBB7_28
# BB#7:                                 # %if.then20
                                        #   in Loop: Header=BB7_4 Depth=2
	cmpl	$16, %eax
	leal	8(%ebp), %eax
	jb	LBB7_9
# BB#8:                                 # %if.then.i.i108
                                        #   in Loop: Header=BB7_4 Depth=2
	leal	8(%ebp), %eax
	movl	(%eax), %eax
LBB7_9:                                 # %invoke.cont21
                                        #   in Loop: Header=BB7_4 Depth=2
	movsbl	(%eax,%edi), %eax
	addl	$-48, %eax
	jmp	LBB7_31
	.p2align	4, 0x90
LBB7_28:                                # %if.else
                                        #   in Loop: Header=BB7_4 Depth=2
	leal	8(%ebp), %ecx
	cmpl	$16, %eax
	movl	%ecx, %eax
	jb	LBB7_30
# BB#29:                                # %if.then.i.i116
                                        #   in Loop: Header=BB7_4 Depth=2
	movl	(%ecx), %eax
LBB7_30:                                # %invoke.cont25
                                        #   in Loop: Header=BB7_4 Depth=2
	movsbl	(%eax,%edi), %eax
	pushl	%eax
	calll	_tolower
	addl	$4, %esp
	addl	$-87, %eax
LBB7_31:                                # %if.end31
                                        #   in Loop: Header=BB7_4 Depth=2
	movl	%ebx, %ecx
	movl	-32(%ebp), %edx         # 4-byte Reload
	incl	%esi
	addl	$4, %ebx
	decl	%edi
	shll	%cl, %eax
	movl	-44(%ebp), %ecx         # 4-byte Reload
	orl	%eax, (%ecx,%edx,4)
	cmpl	-64(%ebp), %esi         # 4-byte Folded Reload
	jl	LBB7_4
# BB#26:                                # %for.cond.cleanup10
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	-32(%ebp), %eax         # 4-byte Reload
	movl	-40(%ebp), %esi         # 4-byte Reload
	movl	-60(%ebp), %edi         # 4-byte Reload
	incl	%eax
	addl	$-8, %esi
	cmpl	%edi, %eax
	jne	LBB7_3
# BB#27:
	movl	-48(%ebp), %eax         # 4-byte Reload
	movl	-36(%ebp), %ecx         # 4-byte Reload
	.p2align	4, 0x90
LBB7_11:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%ebp), %edx         # 4-byte Reload
	cmpl	$0, (%edx,%ecx,4)
	jne	LBB7_12
# BB#10:                                # %for.cond.i
                                        #   in Loop: Header=BB7_11 Depth=1
	decl	%ecx
	jns	LBB7_11
# BB#13:                                # %delete.notnull.i
	movl	$0, 4(%eax)
	pushl	-44(%ebp)               # 4-byte Folded Reload
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
	jmp	LBB7_14
LBB7_12:                                # %if.then4.i
	incl	%ecx
	movl	%ecx, 4(%eax)
LBB7_14:                                # %"\01?trim@BigBase@ofw@@AAEXXZ.exit"
	leal	8(%ebp), %ecx
	movl	20(%ecx), %eax
	cmpl	$16, %eax
	jb	LBB7_22
# BB#15:                                # %if.then.i.i79
	movl	(%ecx), %ecx
	leal	1(%eax), %esi
	cmpl	$4096, %esi             # imm = 0x1000
	jb	LBB7_21
# BB#16:                                # %if.then2.i.i.i.i82
	cmpl	$-36, %esi
	ja	LBB7_23
# BB#17:                                # %if.end5.i.i.i.i85
	testb	$31, %cl
	jne	LBB7_23
# BB#18:                                # %if.end9.i.i.i.i88
	movl	-4(%ecx), %edx
	cmpl	%ecx, %edx
	jae	LBB7_23
# BB#19:                                # %if.end12.i.i.i.i90
	addl	$-4, %ecx
	subl	%edx, %ecx
	cmpl	$32, %ecx
	jae	LBB7_23
# BB#20:
	addl	$36, %eax
	movl	%edx, %ecx
	movl	%eax, %esi
LBB7_21:                                # %"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i95"
	pushl	%esi
	pushl	%ecx
	calll	"??3@YAXPAXI@Z"
	addl	$8, %esp
LBB7_22:                                # %"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit99"
	movl	-24(%ebp), %eax
	movl	%eax, %fs:0
	addl	$56, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$24
LBB7_23:                                # %_Invalid_parameter.i.i.i.i91
	movl	$0, -16(%ebp)
	calll	__invalid_parameter_noinfo_noreturn
# BB#24:                                # %.noexc.i92
	.def	 "?dtor$25@?0??init_hex@BigBase@ofw@@AAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$25@?0??init_hex@BigBase@ofw@@AAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z@4HA":
LBB7_25:                                # %ehcleanup.i98
	pushl	%ebp
	subl	$12, %esp
	addl	$12, %ebp
	calll	*__imp____std_terminate
	.def	 "?dtor$32@?0??init_hex@BigBase@ofw@@AAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$32@?0??init_hex@BigBase@ofw@@AAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z@4HA":
LBB7_32:                                # %ehcleanup43
	pushl	%ebp
	subl	$12, %esp
	addl	$12, %ebp
	leal	8(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	$16, %eax
	jb	LBB7_40
# BB#33:                                # %if.then.i.i
	leal	8(%ebp), %ecx
	leal	1(%eax), %esi
	movl	(%ecx), %ecx
	cmpl	$4096, %esi             # imm = 0x1000
	jb	LBB7_39
# BB#34:                                # %if.then2.i.i.i.i
	cmpl	$-36, %esi
	ja	LBB7_41
# BB#35:                                # %if.end5.i.i.i.i
	testb	$31, %cl
	jne	LBB7_41
# BB#36:                                # %if.end9.i.i.i.i
	movl	-4(%ecx), %edx
	cmpl	%ecx, %edx
	jae	LBB7_41
# BB#37:                                # %if.end12.i.i.i.i
	addl	$-4, %ecx
	subl	%edx, %ecx
	cmpl	$32, %ecx
	jae	LBB7_41
# BB#38:
	addl	$36, %eax
	movl	%edx, %ecx
	movl	%eax, %esi
LBB7_39:                                # %"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i"
	pushl	%esi
	pushl	%ecx
	calll	"??3@YAXPAXI@Z"
	addl	$8, %esp
LBB7_40:                                # %"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit"
	addl	$12, %esp
	popl	%ebp
	retl                            # CLEANUPRET
LBB7_41:                                # %_Invalid_parameter.i.i.i.i
	calll	__invalid_parameter_noinfo_noreturn
Lfunc_end1:
	.section	.xdata,"dr"
	.p2align	2
"L__ehtable$?init_hex@BigBase@ofw@@AAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z":
	.long	429065506               # MagicNumber
	.long	2                       # MaxState
	.long	("$stateUnwindMap$?init_hex@BigBase@ofw@@AAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z") # UnwindMap
	.long	0                       # NumTryBlocks
	.long	0                       # TryBlockMap
	.long	0                       # IPMapEntries
	.long	0                       # IPToStateXData
	.long	0                       # ESTypeList
	.long	1                       # EHFlags
"$stateUnwindMap$?init_hex@BigBase@ofw@@AAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z":
	.long	-1                      # ToState
	.long	"?dtor$25@?0??init_hex@BigBase@ofw@@AAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z@4HA" # Action
	.long	-1                      # ToState
	.long	"?dtor$32@?0??init_hex@BigBase@ofw@@AAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z@4HA" # Action
	.text
                                        # -- End function
	.def	 "?init_decimal@BigBase@ofw@@AAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?init_decimal@BigBase@ofw@@AAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z" # -- Begin function ?init_decimal@BigBase@ofw@@AAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z
	.p2align	4, 0x90
"?init_decimal@BigBase@ofw@@AAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z": # @"\01?init_decimal@BigBase@ofw@@AAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z"
Lfunc_begin2:
# BB#0:                                 # %entry
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$52, %esp
	movl	%esp, -28(%ebp)
	movl	$-1, -16(%ebp)
	movl	%ecx, -44(%ebp)         # 4-byte Spill
	movl	$"___ehhandler$?init_decimal@BigBase@ofw@@AAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z", -20(%ebp)
	leal	-24(%ebp), %eax
	movl	%fs:0, %ecx
	movl	%ecx, -24(%ebp)
	movl	%eax, %fs:0
	movl	$4, %ecx
	movl	24(%ebp), %eax
	movl	$1, -16(%ebp)
	movl	%eax, -36(%ebp)         # 4-byte Spill
	leal	(,%eax,4), %eax
	movl	%eax, -40(%ebp)         # 4-byte Spill
	mull	%ecx
	movl	$-1, %edx
	cmovnol	%eax, %edx
	pushl	%edx
	calll	"??_U@YAPAXI@Z"
	addl	$4, %esp
	movl	%eax, %edi
# BB#1:                                 # %invoke.cont
	movl	-44(%ebp), %eax         # 4-byte Reload
	movl	%edi, (%eax)
	movl	-40(%ebp), %ecx         # 4-byte Reload
	movl	%ecx, 4(%eax)
	movl	-36(%ebp), %esi         # 4-byte Reload
	movl	%esi, %eax
	shll	$4, %eax
	pushl	%eax
	pushl	$0
	pushl	%edi
	calll	_memset
	addl	$12, %esp
	movl	$954437177, %ecx        # imm = 0x38E38E39
	movl	%esi, %eax
	movl	%esi, %ebx
	mull	%ecx
	movl	%esi, %ecx
	shrl	%edx
	leal	(%edx,%edx,8), %eax
	subl	%eax, %ecx
	movl	%ecx, -32(%ebp)         # 4-byte Spill
	je	LBB8_8
# BB#2:                                 # %if.then
	testl	%ebx, %ebx
	leal	8(%ebp), %eax
	je	LBB8_3
# BB#4:                                 # %for.body.lr.ph.i
	cmpl	$15, 20(%eax)
	movl	(%eax), %ecx
	movl	$1, %edx
	cmovbel	%eax, %ecx
	xorl	%eax, %eax
	.p2align	4, 0x90
LBB8_5:                                 # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movsbl	-1(%ecx,%edx), %esi
	cmpl	-32(%ebp), %edx         # 4-byte Folded Reload
	leal	(%eax,%eax,4), %eax
	leal	-48(%esi,%eax,2), %eax
	jae	LBB8_7
# BB#6:                                 # %for.body.i
                                        #   in Loop: Header=BB8_5 Depth=1
	cmpl	%ebx, %edx
	leal	1(%edx), %edx
	jb	LBB8_5
	jmp	LBB8_7
LBB8_3:
	xorl	%eax, %eax
LBB8_7:                                 # %invoke.cont3
	movl	%eax, (%edi)
LBB8_8:                                 # %if.end
	cmpl	$9, %ebx
	movl	%edi, -48(%ebp)         # 4-byte Spill
	jb	LBB8_20
# BB#9:                                 # %if.then6
	movl	-36(%ebp), %eax         # 4-byte Reload
	subl	-32(%ebp), %eax         # 4-byte Folded Reload
	movl	%eax, -60(%ebp)         # 4-byte Spill
	je	LBB8_20
# BB#10:                                # %for.body.lr.ph
	movl	-32(%ebp), %eax         # 4-byte Reload
	xorl	%ecx, %ecx
	incl	%eax
	movl	%eax, -52(%ebp)         # 4-byte Spill
	.p2align	4, 0x90
LBB8_11:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_14 Depth 2
                                        #     Child Loop BB8_18 Depth 2
	movl	-32(%ebp), %eax         # 4-byte Reload
	movl	%ecx, -56(%ebp)         # 4-byte Spill
	leal	(%ecx,%eax), %eax
	cmpl	$-10, %eax
	ja	LBB8_19
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB8_11 Depth=1
	cmpl	%eax, -36(%ebp)         # 4-byte Folded Reload
	jbe	LBB8_19
# BB#13:                                # %for.body.lr.ph.i71
                                        #   in Loop: Header=BB8_11 Depth=1
	movl	-32(%ebp), %eax         # 4-byte Reload
	movl	-56(%ebp), %ecx         # 4-byte Reload
	movl	-52(%ebp), %esi         # 4-byte Reload
	movl	-36(%ebp), %ebx         # 4-byte Reload
	leal	9(%ecx,%eax), %eax
	leal	8(%ebp), %ecx
	cmpl	$15, 20(%ecx)
	movl	(%ecx), %edx
	cmovbel	%ecx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB8_14:                                # %for.body.i84
                                        #   Parent Loop BB8_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	-1(%edx,%esi), %edi
	leal	(%ecx,%ecx,4), %ecx
	cmpl	%eax, %esi
	leal	-48(%edi,%ecx,2), %ecx
	jae	LBB8_16
# BB#15:                                # %for.body.i84
                                        #   in Loop: Header=BB8_14 Depth=2
	cmpl	%ebx, %esi
	leal	1(%esi), %esi
	jb	LBB8_14
LBB8_16:                                # %invoke.cont8
                                        #   in Loop: Header=BB8_11 Depth=1
	testl	%ecx, %ecx
	je	LBB8_19
# BB#17:                                # %for.body13.lr.ph
                                        #   in Loop: Header=BB8_11 Depth=1
	movl	-48(%ebp), %edi         # 4-byte Reload
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB8_18:                                # %for.body13
                                        #   Parent Loop BB8_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1000000000, %eax       # imm = 0x3B9ACA00
	movl	%edx, -64(%ebp)         # 4-byte Spill
	mull	(%edi)
	movl	%eax, %esi
	movl	%edx, %ebx
	addl	%ecx, %esi
	adcl	-64(%ebp), %ebx         # 4-byte Folded Reload
	movl	%esi, (%edi)
	pushl	$0
	pushl	$-1
	pushl	%ebx
	pushl	%esi
	calll	__aulldiv
	addl	$4, %edi
	cmpl	$-1, %esi
	movl	%eax, %ecx
	sbbl	$0, %ebx
	jae	LBB8_18
LBB8_19:                                # %for.cond.cleanup12
                                        #   in Loop: Header=BB8_11 Depth=1
	movl	-56(%ebp), %ecx         # 4-byte Reload
	addl	$9, -52(%ebp)           # 4-byte Folded Spill
	addl	$9, %ecx
	cmpl	-60(%ebp), %ecx         # 4-byte Folded Reload
	jb	LBB8_11
LBB8_20:                                # %if.end27
	movl	-40(%ebp), %ecx         # 4-byte Reload
	movl	-44(%ebp), %eax         # 4-byte Reload
	movl	-48(%ebp), %edx         # 4-byte Reload
	leal	8(%ebp), %esi
	decl	%ecx
	js	LBB8_21
	.p2align	4, 0x90
LBB8_23:                                # %for.body.i89
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%edx,%ecx,4)
	jne	LBB8_24
# BB#22:                                # %for.cond.i
                                        #   in Loop: Header=BB8_23 Depth=1
	decl	%ecx
	jns	LBB8_23
LBB8_21:                                # %delete.notnull.i
	movl	$0, 4(%eax)
	pushl	%edx
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
	jmp	LBB8_25
LBB8_24:                                # %if.then4.i
	incl	%ecx
	movl	%ecx, 4(%eax)
LBB8_25:                                # %"\01?trim@BigBase@ofw@@AAEXXZ.exit"
	movl	20(%esi), %eax
	cmpl	$16, %eax
	jb	LBB8_33
# BB#26:                                # %if.then.i.i95
	movl	(%esi), %ecx
	leal	1(%eax), %esi
	cmpl	$4096, %esi             # imm = 0x1000
	jb	LBB8_32
# BB#27:                                # %if.then2.i.i.i.i98
	cmpl	$-36, %esi
	ja	LBB8_34
# BB#28:                                # %if.end5.i.i.i.i101
	testb	$31, %cl
	jne	LBB8_34
# BB#29:                                # %if.end9.i.i.i.i104
	movl	-4(%ecx), %edx
	cmpl	%ecx, %edx
	jae	LBB8_34
# BB#30:                                # %if.end12.i.i.i.i106
	addl	$-4, %ecx
	subl	%edx, %ecx
	cmpl	$32, %ecx
	jae	LBB8_34
# BB#31:
	addl	$36, %eax
	movl	%edx, %ecx
	movl	%eax, %esi
LBB8_32:                                # %"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i111"
	pushl	%esi
	pushl	%ecx
	calll	"??3@YAXPAXI@Z"
	addl	$8, %esp
LBB8_33:                                # %"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit115"
	movl	-24(%ebp), %eax
	movl	%eax, %fs:0
	addl	$52, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$24
LBB8_34:                                # %_Invalid_parameter.i.i.i.i107
	movl	$0, -16(%ebp)
	calll	__invalid_parameter_noinfo_noreturn
# BB#35:                                # %.noexc.i108
	.def	 "?dtor$36@?0??init_decimal@BigBase@ofw@@AAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$36@?0??init_decimal@BigBase@ofw@@AAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z@4HA":
LBB8_36:                                # %ehcleanup.i114
	pushl	%ebp
	subl	$16, %esp
	addl	$12, %ebp
	calll	*__imp____std_terminate
	.def	 "?dtor$37@?0??init_decimal@BigBase@ofw@@AAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$37@?0??init_decimal@BigBase@ofw@@AAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z@4HA":
LBB8_37:                                # %ehcleanup30
	pushl	%ebp
	subl	$16, %esp
	addl	$12, %ebp
	leal	8(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	$16, %eax
	jb	LBB8_45
# BB#38:                                # %if.then.i.i
	leal	8(%ebp), %ecx
	leal	1(%eax), %esi
	movl	(%ecx), %ecx
	cmpl	$4096, %esi             # imm = 0x1000
	jb	LBB8_44
# BB#39:                                # %if.then2.i.i.i.i
	cmpl	$-36, %esi
	ja	LBB8_46
# BB#40:                                # %if.end5.i.i.i.i
	testb	$31, %cl
	jne	LBB8_46
# BB#41:                                # %if.end9.i.i.i.i
	movl	-4(%ecx), %edx
	cmpl	%ecx, %edx
	jae	LBB8_46
# BB#42:                                # %if.end12.i.i.i.i
	addl	$-4, %ecx
	subl	%edx, %ecx
	cmpl	$32, %ecx
	jae	LBB8_46
# BB#43:
	addl	$36, %eax
	movl	%edx, %ecx
	movl	%eax, %esi
LBB8_44:                                # %"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i"
	pushl	%esi
	pushl	%ecx
	calll	"??3@YAXPAXI@Z"
	addl	$8, %esp
LBB8_45:                                # %"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit"
	addl	$16, %esp
	popl	%ebp
	retl                            # CLEANUPRET
LBB8_46:                                # %_Invalid_parameter.i.i.i.i
	calll	__invalid_parameter_noinfo_noreturn
Lfunc_end2:
	.section	.xdata,"dr"
	.p2align	2
"L__ehtable$?init_decimal@BigBase@ofw@@AAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z":
	.long	429065506               # MagicNumber
	.long	2                       # MaxState
	.long	("$stateUnwindMap$?init_decimal@BigBase@ofw@@AAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z") # UnwindMap
	.long	0                       # NumTryBlocks
	.long	0                       # TryBlockMap
	.long	0                       # IPMapEntries
	.long	0                       # IPToStateXData
	.long	0                       # ESTypeList
	.long	1                       # EHFlags
"$stateUnwindMap$?init_decimal@BigBase@ofw@@AAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z":
	.long	-1                      # ToState
	.long	"?dtor$36@?0??init_decimal@BigBase@ofw@@AAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z@4HA" # Action
	.long	-1                      # ToState
	.long	"?dtor$37@?0??init_decimal@BigBase@ofw@@AAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z@4HA" # Action
	.text
                                        # -- End function
	.def	 "?aly_hex@BigBase@ofw@@QAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?aly_hex@BigBase@ofw@@QAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z" # -- Begin function ?aly_hex@BigBase@ofw@@QAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z
	.p2align	4, 0x90
"?aly_hex@BigBase@ofw@@QAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z": # @"\01?aly_hex@BigBase@ofw@@QAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z"
Lfunc_begin3:
# BB#0:                                 # %entry
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$40, %esp
	movl	%esp, -28(%ebp)
	movl	$-1, -16(%ebp)
	movl	%esp, -52(%ebp)         # 4-byte Spill
	movl	$"___ehhandler$?aly_hex@BigBase@ofw@@QAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z", -20(%ebp)
	leal	8(%ebp), %edx
	movl	%fs:0, %eax
	movl	%eax, -24(%ebp)
	leal	-24(%ebp), %eax
	movl	%eax, %fs:0
	pushl	%eax
	subl	$20, %esp
	movl	%esp, %esi
	movl	$0, 16(%esi)
	movl	$0, 20(%esi)
	movl	24(%ebp), %edi
	cmpl	$15, 28(%ebp)
	movl	8(%ebp), %eax
	cmovbel	%edx, %eax
	cmpl	$15, %edi
	ja	LBB9_2
# BB#1:                                 # %if.then.i.i
	movsd	(%eax), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%eax), %xmm1          # xmm1 = mem[0],zero
	movl	$15, %eax
	movsd	%xmm1, 8(%esi)
	movsd	%xmm0, (%esi)
	jmp	LBB9_7
LBB9_2:                                 # %if.end.i.i.i.i
	movl	%edi, %edx
	movl	%ecx, -48(%ebp)         # 4-byte Spill
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movl	%eax, -44(%ebp)         # 4-byte Spill
	movl	%esi, -36(%ebp)         # 4-byte Spill
	movl	%edi, -32(%ebp)         # 4-byte Spill
	orl	$15, %edx
	cmpl	$2147483647, %edx       # imm = 0x7FFFFFFF
	cmovbl	%edx, %ecx
	cmpl	$4095, %ecx             # imm = 0xFFF
	movl	%ecx, -40(%ebp)         # 4-byte Spill
	jb	LBB9_5
# BB#3:                                 # %if.end8.i.i.i.i
	leal	36(%ecx), %eax
	movl	$1, -16(%ebp)
	pushl	%eax
	calll	"??2@YAPAXI@Z"
	addl	$4, %esp
	movl	%eax, %ecx
# BB#4:                                 # %call.i.i.i4.i.noexc
	movl	%ecx, %eax
	addl	$35, %eax
	andl	$-32, %eax
	movl	%ecx, -4(%eax)
	jmp	LBB9_6
LBB9_5:                                 # %if.end13.i.i.i.i
	leal	1(%ecx), %eax
	movl	$1, -16(%ebp)
	pushl	%eax
	calll	"??2@YAPAXI@Z"
	addl	$4, %esp
LBB9_6:
	movl	-32(%ebp), %edi         # 4-byte Reload
	movl	-36(%ebp), %esi         # 4-byte Reload
	leal	1(%edi), %ecx
	movl	%eax, (%esi)
	pushl	%ecx
	pushl	-44(%ebp)               # 4-byte Folded Reload
	pushl	%eax
	calll	_memcpy
	addl	$12, %esp
	movl	-48(%ebp), %ecx         # 4-byte Reload
	movl	-40(%ebp), %eax         # 4-byte Reload
LBB9_7:                                 # %invoke.cont
	movl	%edi, 16(%esi)
	movl	%eax, 20(%esi)
	movl	$1, -16(%ebp)
	calll	"?init_hex@BigBase@ofw@@AAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z"
# BB#8:                                 # %invoke.cont2
	movl	-52(%ebp), %esp         # 4-byte Reload
	leal	8(%ebp), %ecx
	movl	20(%ecx), %eax
	cmpl	$16, %eax
	jb	LBB9_16
# BB#9:                                 # %if.then.i.i6
	movl	(%ecx), %ecx
	leal	1(%eax), %esi
	cmpl	$4096, %esi             # imm = 0x1000
	jb	LBB9_15
# BB#10:                                # %if.then2.i.i.i.i
	cmpl	$-36, %esi
	ja	LBB9_17
# BB#11:                                # %if.end5.i.i.i.i
	testb	$31, %cl
	jne	LBB9_17
# BB#12:                                # %if.end9.i.i.i.i
	movl	-4(%ecx), %edx
	cmpl	%ecx, %edx
	jae	LBB9_17
# BB#13:                                # %if.end12.i.i.i.i
	addl	$-4, %ecx
	subl	%edx, %ecx
	cmpl	$32, %ecx
	jae	LBB9_17
# BB#14:
	addl	$36, %eax
	movl	%edx, %ecx
	movl	%eax, %esi
LBB9_15:                                # %"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i"
	pushl	%esi
	pushl	%ecx
	calll	"??3@YAXPAXI@Z"
	addl	$8, %esp
LBB9_16:                                # %"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit"
	movl	-24(%ebp), %eax
	movl	%eax, %fs:0
	leal	-12(%ebp), %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$24
LBB9_17:                                # %_Invalid_parameter.i.i.i.i
	movl	$0, -16(%ebp)
	calll	__invalid_parameter_noinfo_noreturn
# BB#18:                                # %.noexc.i
	.def	 "?dtor$19@?0??aly_hex@BigBase@ofw@@QAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$19@?0??aly_hex@BigBase@ofw@@QAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z@4HA":
LBB9_19:                                # %ehcleanup.i
	pushl	%ebp
	subl	$24, %esp
	addl	$12, %ebp
	calll	*__imp____std_terminate
	.def	 "?dtor$20@?0??aly_hex@BigBase@ofw@@QAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$20@?0??aly_hex@BigBase@ofw@@QAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z@4HA":
LBB9_20:                                # %ehcleanup
	pushl	%ebp
	subl	$24, %esp
	addl	$12, %ebp
	leal	8(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	$16, %eax
	jb	LBB9_28
# BB#21:                                # %if.then.i.i15
	leal	8(%ebp), %ecx
	leal	1(%eax), %esi
	movl	(%ecx), %ecx
	cmpl	$4096, %esi             # imm = 0x1000
	jb	LBB9_27
# BB#22:                                # %if.then2.i.i.i.i18
	cmpl	$-36, %esi
	ja	LBB9_29
# BB#23:                                # %if.end5.i.i.i.i21
	testb	$31, %cl
	jne	LBB9_29
# BB#24:                                # %if.end9.i.i.i.i24
	movl	-4(%ecx), %edx
	cmpl	%ecx, %edx
	jae	LBB9_29
# BB#25:                                # %if.end12.i.i.i.i26
	addl	$-4, %ecx
	subl	%edx, %ecx
	cmpl	$32, %ecx
	jae	LBB9_29
# BB#26:
	addl	$36, %eax
	movl	%edx, %ecx
	movl	%eax, %esi
LBB9_27:                                # %"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i31"
	pushl	%esi
	pushl	%ecx
	calll	"??3@YAXPAXI@Z"
	addl	$8, %esp
LBB9_28:                                # %"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit35"
	addl	$24, %esp
	popl	%ebp
	retl                            # CLEANUPRET
LBB9_29:                                # %_Invalid_parameter.i.i.i.i27
	calll	__invalid_parameter_noinfo_noreturn
Lfunc_end3:
	.section	.xdata,"dr"
	.p2align	2
"L__ehtable$?aly_hex@BigBase@ofw@@QAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z":
	.long	429065506               # MagicNumber
	.long	2                       # MaxState
	.long	("$stateUnwindMap$?aly_hex@BigBase@ofw@@QAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z") # UnwindMap
	.long	0                       # NumTryBlocks
	.long	0                       # TryBlockMap
	.long	0                       # IPMapEntries
	.long	0                       # IPToStateXData
	.long	0                       # ESTypeList
	.long	1                       # EHFlags
"$stateUnwindMap$?aly_hex@BigBase@ofw@@QAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z":
	.long	-1                      # ToState
	.long	"?dtor$19@?0??aly_hex@BigBase@ofw@@QAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z@4HA" # Action
	.long	-1                      # ToState
	.long	"?dtor$20@?0??aly_hex@BigBase@ofw@@QAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z@4HA" # Action
	.text
                                        # -- End function
	.def	 "?aly_dec@BigBase@ofw@@QAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?aly_dec@BigBase@ofw@@QAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z" # -- Begin function ?aly_dec@BigBase@ofw@@QAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z
	.p2align	4, 0x90
"?aly_dec@BigBase@ofw@@QAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z": # @"\01?aly_dec@BigBase@ofw@@QAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z"
Lfunc_begin4:
# BB#0:                                 # %entry
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$40, %esp
	movl	%esp, -28(%ebp)
	movl	$-1, -16(%ebp)
	movl	%esp, -52(%ebp)         # 4-byte Spill
	movl	$"___ehhandler$?aly_dec@BigBase@ofw@@QAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z", -20(%ebp)
	leal	8(%ebp), %edx
	movl	%fs:0, %eax
	movl	%eax, -24(%ebp)
	leal	-24(%ebp), %eax
	movl	%eax, %fs:0
	pushl	%eax
	subl	$20, %esp
	movl	%esp, %esi
	movl	$0, 16(%esi)
	movl	$0, 20(%esi)
	movl	24(%ebp), %edi
	cmpl	$15, 28(%ebp)
	movl	8(%ebp), %eax
	cmovbel	%edx, %eax
	cmpl	$15, %edi
	ja	LBB10_2
# BB#1:                                 # %if.then.i.i
	movsd	(%eax), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%eax), %xmm1          # xmm1 = mem[0],zero
	movl	$15, %eax
	movsd	%xmm1, 8(%esi)
	movsd	%xmm0, (%esi)
	jmp	LBB10_7
LBB10_2:                                # %if.end.i.i.i.i
	movl	%edi, %edx
	movl	%ecx, -48(%ebp)         # 4-byte Spill
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movl	%eax, -44(%ebp)         # 4-byte Spill
	movl	%esi, -36(%ebp)         # 4-byte Spill
	movl	%edi, -32(%ebp)         # 4-byte Spill
	orl	$15, %edx
	cmpl	$2147483647, %edx       # imm = 0x7FFFFFFF
	cmovbl	%edx, %ecx
	cmpl	$4095, %ecx             # imm = 0xFFF
	movl	%ecx, -40(%ebp)         # 4-byte Spill
	jb	LBB10_5
# BB#3:                                 # %if.end8.i.i.i.i
	leal	36(%ecx), %eax
	movl	$1, -16(%ebp)
	pushl	%eax
	calll	"??2@YAPAXI@Z"
	addl	$4, %esp
	movl	%eax, %ecx
# BB#4:                                 # %call.i.i.i4.i.noexc
	movl	%ecx, %eax
	addl	$35, %eax
	andl	$-32, %eax
	movl	%ecx, -4(%eax)
	jmp	LBB10_6
LBB10_5:                                # %if.end13.i.i.i.i
	leal	1(%ecx), %eax
	movl	$1, -16(%ebp)
	pushl	%eax
	calll	"??2@YAPAXI@Z"
	addl	$4, %esp
LBB10_6:
	movl	-32(%ebp), %edi         # 4-byte Reload
	movl	-36(%ebp), %esi         # 4-byte Reload
	leal	1(%edi), %ecx
	movl	%eax, (%esi)
	pushl	%ecx
	pushl	-44(%ebp)               # 4-byte Folded Reload
	pushl	%eax
	calll	_memcpy
	addl	$12, %esp
	movl	-48(%ebp), %ecx         # 4-byte Reload
	movl	-40(%ebp), %eax         # 4-byte Reload
LBB10_7:                                # %invoke.cont
	movl	%edi, 16(%esi)
	movl	%eax, 20(%esi)
	movl	$1, -16(%ebp)
	calll	"?init_decimal@BigBase@ofw@@AAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z"
# BB#8:                                 # %invoke.cont2
	movl	-52(%ebp), %esp         # 4-byte Reload
	leal	8(%ebp), %ecx
	movl	20(%ecx), %eax
	cmpl	$16, %eax
	jb	LBB10_16
# BB#9:                                 # %if.then.i.i6
	movl	(%ecx), %ecx
	leal	1(%eax), %esi
	cmpl	$4096, %esi             # imm = 0x1000
	jb	LBB10_15
# BB#10:                                # %if.then2.i.i.i.i
	cmpl	$-36, %esi
	ja	LBB10_17
# BB#11:                                # %if.end5.i.i.i.i
	testb	$31, %cl
	jne	LBB10_17
# BB#12:                                # %if.end9.i.i.i.i
	movl	-4(%ecx), %edx
	cmpl	%ecx, %edx
	jae	LBB10_17
# BB#13:                                # %if.end12.i.i.i.i
	addl	$-4, %ecx
	subl	%edx, %ecx
	cmpl	$32, %ecx
	jae	LBB10_17
# BB#14:
	addl	$36, %eax
	movl	%edx, %ecx
	movl	%eax, %esi
LBB10_15:                               # %"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i"
	pushl	%esi
	pushl	%ecx
	calll	"??3@YAXPAXI@Z"
	addl	$8, %esp
LBB10_16:                               # %"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit"
	movl	-24(%ebp), %eax
	movl	%eax, %fs:0
	leal	-12(%ebp), %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$24
LBB10_17:                               # %_Invalid_parameter.i.i.i.i
	movl	$0, -16(%ebp)
	calll	__invalid_parameter_noinfo_noreturn
# BB#18:                                # %.noexc.i
	.def	 "?dtor$19@?0??aly_dec@BigBase@ofw@@QAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$19@?0??aly_dec@BigBase@ofw@@QAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z@4HA":
LBB10_19:                               # %ehcleanup.i
	pushl	%ebp
	subl	$24, %esp
	addl	$12, %ebp
	calll	*__imp____std_terminate
	.def	 "?dtor$20@?0??aly_dec@BigBase@ofw@@QAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$20@?0??aly_dec@BigBase@ofw@@QAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z@4HA":
LBB10_20:                               # %ehcleanup
	pushl	%ebp
	subl	$24, %esp
	addl	$12, %ebp
	leal	8(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	$16, %eax
	jb	LBB10_28
# BB#21:                                # %if.then.i.i15
	leal	8(%ebp), %ecx
	leal	1(%eax), %esi
	movl	(%ecx), %ecx
	cmpl	$4096, %esi             # imm = 0x1000
	jb	LBB10_27
# BB#22:                                # %if.then2.i.i.i.i18
	cmpl	$-36, %esi
	ja	LBB10_29
# BB#23:                                # %if.end5.i.i.i.i21
	testb	$31, %cl
	jne	LBB10_29
# BB#24:                                # %if.end9.i.i.i.i24
	movl	-4(%ecx), %edx
	cmpl	%ecx, %edx
	jae	LBB10_29
# BB#25:                                # %if.end12.i.i.i.i26
	addl	$-4, %ecx
	subl	%edx, %ecx
	cmpl	$32, %ecx
	jae	LBB10_29
# BB#26:
	addl	$36, %eax
	movl	%edx, %ecx
	movl	%eax, %esi
LBB10_27:                               # %"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i31"
	pushl	%esi
	pushl	%ecx
	calll	"??3@YAXPAXI@Z"
	addl	$8, %esp
LBB10_28:                               # %"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit35"
	addl	$24, %esp
	popl	%ebp
	retl                            # CLEANUPRET
LBB10_29:                               # %_Invalid_parameter.i.i.i.i27
	calll	__invalid_parameter_noinfo_noreturn
Lfunc_end4:
	.section	.xdata,"dr"
	.p2align	2
"L__ehtable$?aly_dec@BigBase@ofw@@QAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z":
	.long	429065506               # MagicNumber
	.long	2                       # MaxState
	.long	("$stateUnwindMap$?aly_dec@BigBase@ofw@@QAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z") # UnwindMap
	.long	0                       # NumTryBlocks
	.long	0                       # TryBlockMap
	.long	0                       # IPMapEntries
	.long	0                       # IPToStateXData
	.long	0                       # ESTypeList
	.long	1                       # EHFlags
"$stateUnwindMap$?aly_dec@BigBase@ofw@@QAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z":
	.long	-1                      # ToState
	.long	"?dtor$19@?0??aly_dec@BigBase@ofw@@QAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z@4HA" # Action
	.long	-1                      # ToState
	.long	"?dtor$20@?0??aly_dec@BigBase@ofw@@QAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z@4HA" # Action
	.text
                                        # -- End function
	.def	 "??4BigBase@ofw@@QAEAAV01@ABV01@@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"??4BigBase@ofw@@QAEAAV01@ABV01@@Z" # -- Begin function ??4BigBase@ofw@@QAEAAV01@ABV01@@Z
	.p2align	4, 0x90
"??4BigBase@ofw@@QAEAAV01@ABV01@@Z":    # @"\01??4BigBase@ofw@@QAEAAV01@ABV01@@Z"
# BB#0:                                 # %entry
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	movl	%ecx, %esi
	movl	16(%esp), %ebx
	movl	(%esi), %eax
	testl	%eax, %eax
	je	LBB11_2
# BB#1:                                 # %delete.notnull.i.i
	pushl	%eax
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
LBB11_2:                                # %"\01?init@BigBase@ofw@@AAEXXZ.exit.i"
	movl	$0, (%esi)
	movl	$0, 4(%esi)
	movl	4(%ebx), %edi
	testl	%edi, %edi
	je	LBB11_4
# BB#3:                                 # %if.then.i
	movl	$4, %ecx
	movl	%edi, %eax
	mull	%ecx
	movl	$-1, %edx
	cmovnol	%eax, %edx
	pushl	%edx
	calll	"??_U@YAPAXI@Z"
	addl	$4, %esp
	movl	%eax, (%esi)
	movl	%edi, 4(%esi)
	movl	4(%ebx), %ecx
	shll	$2, %ecx
	pushl	%ecx
	pushl	(%ebx)
	pushl	%eax
	calll	_memcpy
	addl	$12, %esp
LBB11_4:                                # %"\01?copy@BigBase@ofw@@AAEXABV12@@Z.exit"
	movl	%esi, %eax
	popl	%esi
	popl	%edi
	popl	%ebx
	retl	$4
                                        # -- End function
	.def	 "??_3BigBase@ofw@@QAEAAV01@I@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"??_3BigBase@ofw@@QAEAAV01@I@Z" # -- Begin function ??_3BigBase@ofw@@QAEAAV01@I@Z
	.p2align	4, 0x90
"??_3BigBase@ofw@@QAEAAV01@I@Z":        # @"\01??_3BigBase@ofw@@QAEAAV01@I@Z"
# BB#0:                                 # %entry
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$28, %esp
	movl	%ecx, %ebp
	movl	4(%ebp), %edi
	testl	%edi, %edi
	je	LBB12_25
# BB#1:                                 # %if.end
	movl	48(%esp), %eax
	xorl	%ebx, %ebx
	movl	%eax, %ecx
	shrl	$5, %ecx
	andl	$31, %eax
	setne	%bl
	movl	%eax, (%esp)            # 4-byte Spill
	movl	%ecx, 16(%esp)          # 4-byte Spill
	leal	(%ecx,%ebx), %esi
	movl	$4, %ecx
	movl	%ebx, 20(%esp)          # 4-byte Spill
	addl	%edi, %esi
	movl	%esi, %eax
	mull	%ecx
	movl	$-1, %edx
	cmovnol	%eax, %edx
	pushl	%edx
	calll	"??_U@YAPAXI@Z"
	addl	$4, %esp
	movl	%eax, %ebx
	leal	(,%esi,4), %eax
	pushl	%eax
	pushl	$0
	pushl	%ebx
	calll	_memset
	addl	$12, %esp
	movl	%ebp, 12(%esp)          # 4-byte Spill
	leal	(,%edi,4), %eax
	movl	(%ebp), %ebp
	movl	%edi, 24(%esp)          # 4-byte Spill
	pushl	%eax
	pushl	%ebp
	pushl	%ebx
	calll	_memcpy
	addl	$12, %esp
	testl	%ebp, %ebp
	je	LBB12_3
# BB#2:                                 # %delete.notnull.i
	pushl	%ebp
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
LBB12_3:                                # %"\01?reallocate@BigBase@ofw@@AAEXI@Z.exit"
	movl	(%esp), %ecx            # 4-byte Reload
	movl	12(%esp), %edx          # 4-byte Reload
	movl	$32, %eax
	subl	%ecx, %eax
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	%ebx, (%edx)
	movl	%esi, 4(%edx)
	movl	16(%esp), %edx          # 4-byte Reload
	testl	%edx, %edx
	je	LBB12_15
# BB#4:                                 # %if.then6
	movl	8(%esp), %eax           # 4-byte Reload
	leal	-1(%esi), %ebp
	testl	%ecx, %ecx
	je	LBB12_6
# BB#5:                                 # %if.then6
	testl	%eax, %eax
	je	LBB12_6
# BB#10:                                # %if.else
	movl	%ebp, %eax
	movl	%esi, 4(%esp)           # 4-byte Spill
	movl	%edx, %esi
	subl	%edx, %eax
	jbe	LBB12_14
# BB#11:                                # %for.body31.lr.ph
	movl	(%esp), %ecx            # 4-byte Reload
	movl	-4(%ebx,%eax,4), %edx
	movl	(%ebx,%eax,4), %eax
                                        # kill: %CL<def> %CL<kill> %ECX<kill>
	shll	%cl, %eax
	movl	8(%esp), %ecx           # 4-byte Reload
                                        # kill: %CL<def> %CL<kill> %ECX<kill>
	shrl	%cl, %edx
	movl	(%esp), %ecx            # 4-byte Reload
	orl	%eax, %edx
	movl	4(%esp), %eax           # 4-byte Reload
	movl	%edx, -4(%ebx,%eax,4)
	leal	-2(%eax), %eax
	cmpl	%esi, %eax
	jbe	LBB12_14
# BB#12:                                # %for.body31.preheader
	movl	24(%esp), %ecx          # 4-byte Reload
	addl	20(%esp), %ecx          # 4-byte Folded Reload
	leal	-8(,%ecx,4), %edx
	.p2align	4, 0x90
LBB12_13:                               # %for.body31
                                        # =>This Inner Loop Header: Depth=1
	movl	(%esp), %ecx            # 4-byte Reload
	movl	(%ebx,%edx), %edi
	movl	-4(%ebx,%edx), %esi
	addl	$-4, %edx
                                        # kill: %CL<def> %CL<kill> %ECX<kill>
	shll	%cl, %edi
	movl	8(%esp), %ecx           # 4-byte Reload
                                        # kill: %CL<def> %CL<kill> %ECX<kill>
	shrl	%cl, %esi
	movl	(%esp), %ecx            # 4-byte Reload
	orl	%edi, %esi
	movl	%esi, (%ebx,%eax,4)
	movl	16(%esp), %esi          # 4-byte Reload
	decl	%eax
	cmpl	%esi, %eax
	ja	LBB12_13
LBB12_14:                               # %for.body53.lr.ph
	movl	(%ebx), %eax
                                        # kill: %CL<def> %CL<kill> %ECX<kill>
	shll	%cl, %eax
	movl	%eax, (%ebx,%esi,4)
	shll	$2, %esi
	pushl	%esi
	pushl	$0
	pushl	%ebx
	calll	_memset
	addl	$12, %esp
	jmp	LBB12_19
LBB12_15:                               # %if.else60
	movl	8(%esp), %edi           # 4-byte Reload
	leal	-1(%esi), %ebp
	movl	%esi, 4(%esp)           # 4-byte Spill
	testl	%ebp, %ebp
	jle	LBB12_18
# BB#16:                                # %for.body67.lr.ph
	movl	4(%esp), %esi           # 4-byte Reload
	movl	(%esp), %ecx            # 4-byte Reload
	movl	-4(%ebx,%esi,4), %edx
	movl	-8(%ebx,%esi,4), %eax
                                        # kill: %CL<def> %CL<kill> %ECX<kill>
	shll	%cl, %edx
	movl	%edi, %ecx
                                        # kill: %CL<def> %CL<kill> %ECX<kill>
	shrl	%cl, %eax
	movl	(%esp), %ecx            # 4-byte Reload
	orl	%edx, %eax
	movl	%eax, -4(%ebx,%esi,4)
	leal	-2(%esi), %eax
	testl	%eax, %eax
	jle	LBB12_18
	.p2align	4, 0x90
LBB12_26:                               # %for.body67
                                        # =>This Inner Loop Header: Depth=1
	movl	(%esp), %ecx            # 4-byte Reload
	movl	(%ebx,%eax,4), %esi
	movl	-4(%ebx,%eax,4), %edx
                                        # kill: %CL<def> %CL<kill> %ECX<kill>
	shll	%cl, %esi
	movl	%edi, %ecx
                                        # kill: %CL<def> %CL<kill> %ECX<kill>
	shrl	%cl, %edx
	movl	(%esp), %ecx            # 4-byte Reload
	orl	%esi, %edx
	movl	%edx, (%ebx,%eax,4)
	decl	%eax
	testl	%eax, %eax
	jg	LBB12_26
LBB12_18:                               # %for.cond.cleanup66
                                        # kill: %CL<def> %CL<kill> %ECX<kill>
	shll	%cl, (%ebx)
LBB12_19:                               # %if.end84
	movl	4(%esp), %esi           # 4-byte Reload
	testl	%ebp, %ebp
	js	LBB12_21
	.p2align	4, 0x90
LBB12_23:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %eax
	cmpl	$0, (%ebx,%eax,4)
	jne	LBB12_24
# BB#22:                                # %for.cond.i
                                        #   in Loop: Header=BB12_23 Depth=1
	movl	%eax, %ebp
	movl	%eax, %esi
	decl	%ebp
	jns	LBB12_23
LBB12_21:                               # %delete.notnull.i128
	movl	12(%esp), %ebp          # 4-byte Reload
	movl	$0, 4(%ebp)
	pushl	%ebx
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
	jmp	LBB12_25
LBB12_6:                                # %if.then9
	cmpl	%edx, %ebp
	jb	LBB12_9
# BB#7:                                 # %for.body.preheader
	movl	24(%esp), %eax          # 4-byte Reload
	movl	%ebp, %ecx
	addl	20(%esp), %eax          # 4-byte Folded Reload
	leal	-4(,%eax,4), %eax
	.p2align	4, 0x90
LBB12_8:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%ebx,%eax), %edx
	addl	$-4, %eax
	movl	%edx, (%ebx,%ecx,4)
	movl	16(%esp), %edx          # 4-byte Reload
	decl	%ecx
	cmpl	%edx, %ecx
	jae	LBB12_8
LBB12_9:                                # %for.body20.lr.ph
	shll	$2, %edx
	pushl	%edx
	pushl	$0
	pushl	%ebx
	calll	_memset
	addl	$12, %esp
	testl	%ebp, %ebp
	jns	LBB12_23
	jmp	LBB12_21
LBB12_24:                               # %if.then4.i
	movl	12(%esp), %ebp          # 4-byte Reload
	movl	%esi, 4(%ebp)
LBB12_25:                               # %return
	movl	%ebp, %eax
	addl	$28, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$4
                                        # -- End function
	.def	 "?reallocate@BigBase@ofw@@AAEXI@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?reallocate@BigBase@ofw@@AAEXI@Z" # -- Begin function ?reallocate@BigBase@ofw@@AAEXI@Z
	.p2align	4, 0x90
"?reallocate@BigBase@ofw@@AAEXI@Z":     # @"\01?reallocate@BigBase@ofw@@AAEXI@Z"
# BB#0:                                 # %entry
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	movl	20(%esp), %edi
	movl	%ecx, %esi
	movl	$4, %ecx
	movl	%edi, %eax
	mull	%ecx
	movl	$-1, %edx
	cmovnol	%eax, %edx
	pushl	%edx
	calll	"??_U@YAPAXI@Z"
	addl	$4, %esp
	movl	%eax, %ebx
	leal	(,%edi,4), %eax
	pushl	%eax
	pushl	$0
	pushl	%ebx
	calll	_memset
	addl	$12, %esp
	movl	4(%esi), %eax
	movl	(%esi), %ebp
	shll	$2, %eax
	pushl	%eax
	pushl	%ebp
	pushl	%ebx
	calll	_memcpy
	addl	$12, %esp
	testl	%ebp, %ebp
	je	LBB13_2
# BB#1:                                 # %delete.notnull
	pushl	%ebp
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
LBB13_2:                                # %delete.end
	movl	%ebx, (%esi)
	movl	%edi, 4(%esi)
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$4
                                        # -- End function
	.def	 "?trim@BigBase@ofw@@AAEXXZ";
	.scl	2;
	.type	32;
	.endef
	.globl	"?trim@BigBase@ofw@@AAEXXZ" # -- Begin function ?trim@BigBase@ofw@@AAEXXZ
	.p2align	4, 0x90
"?trim@BigBase@ofw@@AAEXXZ":            # @"\01?trim@BigBase@ofw@@AAEXXZ"
# BB#0:                                 # %entry
	movl	4(%ecx), %edx
	movl	(%ecx), %eax
	decl	%edx
	js	LBB14_5
	.p2align	4, 0x90
LBB14_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%eax,%edx,4)
	jne	LBB14_4
# BB#2:                                 # %for.cond
                                        #   in Loop: Header=BB14_1 Depth=1
	decl	%edx
	jns	LBB14_1
# BB#3:                                 # %if.else.thread
	movl	$0, 4(%ecx)
	jmp	LBB14_6
LBB14_5:                                # %if.else
	testl	%eax, %eax
	movl	$0, 4(%ecx)
	je	LBB14_7
LBB14_6:                                # %delete.notnull
	pushl	%eax
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
LBB14_7:                                # %if.end8
	retl
LBB14_4:                                # %if.then4
	incl	%edx
	movl	%edx, 4(%ecx)
	retl
                                        # -- End function
	.def	 "??6BigBase@ofw@@QBE?AV01@I@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"??6BigBase@ofw@@QBE?AV01@I@Z" # -- Begin function ??6BigBase@ofw@@QBE?AV01@I@Z
	.p2align	4, 0x90
"??6BigBase@ofw@@QBE?AV01@I@Z":         # @"\01??6BigBase@ofw@@QBE?AV01@I@Z"
Lfunc_begin5:
# BB#0:                                 # %entry
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	andl	$-8, %esp
	subl	$40, %esp
	movl	%esp, %esi
	movl	%ebp, 16(%esi)
	movl	%esp, 20(%esi)
	movl	$-1, 32(%esi)
	movl	$"___ehhandler$??6BigBase@ofw@@QBE?AV01@I@Z", 28(%esi)
	movl	%ecx, %edi
	leal	24(%esi), %eax
	movl	12(%ebp), %edx
	movl	%fs:0, %ecx
	movl	%ecx, 24(%esi)
	movl	%eax, %fs:0
	movl	$0, 4(%esi)
	movl	$0, (%esi)
	movl	4(%edi), %ebx
	testl	%ebx, %ebx
	je	LBB15_2
# BB#1:                                 # %if.then.i.i
	movl	$4, %ecx
	movl	%ebx, %eax
	mull	%ecx
	movl	$-1, %edx
	cmovnol	%eax, %edx
	pushl	%edx
	calll	"??_U@YAPAXI@Z"
	addl	$4, %esp
	movl	%eax, (%esi)
	movl	%ebx, 4(%esi)
	shll	$2, %ebx
	pushl	%ebx
	pushl	(%edi)
	pushl	%eax
	calll	_memcpy
	movl	12(%ebp), %edx
	addl	$12, %esp
LBB15_2:                                # %"\01??0BigBase@ofw@@QAE@ABV01@@Z.exit"
	movl	$0, 32(%esi)
	movl	%esi, %ecx
	pushl	%edx
	calll	"??_3BigBase@ofw@@QAEAAV01@I@Z"
# BB#3:                                 # %invoke.cont
	movl	4(%eax), %edx
	movl	8(%ebp), %ebx
	testl	%edx, %edx
	movl	$0, 4(%ebx)
	movl	$0, (%ebx)
	je	LBB15_4
# BB#5:                                 # %if.then.i.i11
	movl	%eax, 12(%esi)          # 4-byte Spill
	movl	$4, %ecx
	movl	%edx, %eax
	movl	%edx, 8(%esi)           # 4-byte Spill
	mull	%ecx
	movl	$-1, %edx
	cmovnol	%eax, %edx
	pushl	%edx
	calll	"??_U@YAPAXI@Z"
	movl	12(%esi), %ecx          # 4-byte Reload
	addl	$4, %esp
# BB#6:                                 # %call.i.i.i9.noexc
	movl	8(%ebp), %ebx
	movl	8(%esi), %edx           # 4-byte Reload
	movl	(%ecx), %edi
	movl	%eax, (%ebx)
	movl	%edx, 4(%ebx)
	shll	$2, %edx
	pushl	%edx
	pushl	%edi
	pushl	%eax
	calll	_memcpy
	addl	$12, %esp
	testl	%edi, %edi
	je	LBB15_9
LBB15_8:                                # %delete.notnull.i
	pushl	%edi
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
LBB15_9:                                # %"\01??1BigBase@ofw@@QAE@XZ.exit"
	movl	24(%esi), %eax
	movl	%eax, %fs:0
	movl	%ebx, %eax
	leal	-12(%ebp), %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$8
LBB15_4:                                # %invoke.cont.invoke.cont3_crit_edge
	movl	(%esi), %edi
	testl	%edi, %edi
	jne	LBB15_8
	jmp	LBB15_9
	.def	 "?dtor$10@?0???6BigBase@ofw@@QBE?AV01@I@Z@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$10@?0???6BigBase@ofw@@QBE?AV01@I@Z@4HA":
LBB15_10:                               # %ehcleanup
	pushl	%ebp
	subl	$12, %esp
	leal	-36(%ebp), %esi
	movl	16(%esi), %ebp
	movl	(%esi), %eax
	testl	%eax, %eax
	je	LBB15_12
# BB#11:                                # %delete.notnull.i16
	pushl	%eax
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
LBB15_12:                               # %"\01??1BigBase@ofw@@QAE@XZ.exit17"
	addl	$12, %esp
	popl	%ebp
	retl                            # CLEANUPRET
Lfunc_end5:
	.section	.xdata,"dr"
	.p2align	2
"L__ehtable$??6BigBase@ofw@@QBE?AV01@I@Z":
	.long	429065506               # MagicNumber
	.long	1                       # MaxState
	.long	("$stateUnwindMap$??6BigBase@ofw@@QBE?AV01@I@Z") # UnwindMap
	.long	0                       # NumTryBlocks
	.long	0                       # TryBlockMap
	.long	0                       # IPMapEntries
	.long	0                       # IPToStateXData
	.long	0                       # ESTypeList
	.long	1                       # EHFlags
"$stateUnwindMap$??6BigBase@ofw@@QBE?AV01@I@Z":
	.long	-1                      # ToState
	.long	"?dtor$10@?0???6BigBase@ofw@@QBE?AV01@I@Z@4HA" # Action
	.text
                                        # -- End function
	.def	 "??_2BigBase@ofw@@QAEAAV01@I@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"??_2BigBase@ofw@@QAEAAV01@I@Z" # -- Begin function ??_2BigBase@ofw@@QAEAAV01@I@Z
	.p2align	4, 0x90
"??_2BigBase@ofw@@QAEAAV01@I@Z":        # @"\01??_2BigBase@ofw@@QAEAAV01@I@Z"
# BB#0:                                 # %entry
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$12, %esp
	movl	%ecx, %esi
	movl	4(%esi), %ecx
	testl	%ecx, %ecx
	je	LBB16_29
# BB#1:                                 # %if.end
	movl	32(%esp), %ebx
	movl	$32, %edx
	movl	%ebx, %edi
	andl	$31, %ebx
	shrl	$5, %edi
	subl	%ebx, %edx
	leal	-1(%edi), %eax
	cmpl	%ecx, %eax
	jae	LBB16_16
# BB#2:                                 # %if.then5
	movl	%ecx, %eax
	subl	%edi, %eax
	testl	%ebx, %ebx
	je	LBB16_4
# BB#3:                                 # %if.then5
	testl	%edx, %edx
	je	LBB16_4
# BB#9:                                 # %if.else
	movl	%edx, 8(%esp)           # 4-byte Spill
	xorl	%edx, %edx
	cmpl	$1, %eax
	movl	(%esi), %eax
	movl	%ebx, 4(%esp)           # 4-byte Spill
	movl	%eax, (%esp)            # 4-byte Spill
	je	LBB16_13
# BB#10:                                # %for.body33.lr.ph
	movl	(%esp), %ebx            # 4-byte Reload
	movl	4(%esp), %ecx           # 4-byte Reload
	movl	(%ebx,%edi,4), %eax
                                        # kill: %CL<def> %CL<kill> %ECX<kill>
	movl	4(%ebx,%edi,4), %edx
	shrl	%cl, %eax
	movl	8(%esp), %ecx           # 4-byte Reload
                                        # kill: %CL<def> %CL<kill> %ECX<kill>
	shll	%cl, %edx
	orl	%eax, %edx
	movl	%edx, (%ebx)
	movl	4(%esi), %ecx
	movl	%ecx, %edx
	subl	%edi, %edx
	decl	%edx
	cmpl	$2, %edx
	jb	LBB16_13
# BB#11:                                # %for.body33.preheader
	movl	(%esp), %eax            # 4-byte Reload
	leal	4(%eax,%edi,4), %ebp
	movl	$1, %eax
	.p2align	4, 0x90
LBB16_12:                               # %for.body33
                                        # =>This Inner Loop Header: Depth=1
	movl	4(%esp), %ecx           # 4-byte Reload
	movl	-4(%ebp,%eax,4), %edx
	movl	(%ebp,%eax,4), %ebx
                                        # kill: %CL<def> %CL<kill> %ECX<kill>
	shrl	%cl, %edx
	movl	8(%esp), %ecx           # 4-byte Reload
                                        # kill: %CL<def> %CL<kill> %ECX<kill>
	shll	%cl, %ebx
	movl	(%esp), %ecx            # 4-byte Reload
	orl	%edx, %ebx
	movl	%ebx, (%ecx,%eax,4)
	incl	%eax
	movl	4(%esi), %ecx
	movl	%ecx, %edx
	subl	%edi, %edx
	decl	%edx
	cmpl	%edx, %eax
	jb	LBB16_12
LBB16_13:                               # %for.cond.cleanup32
	movl	(%esp), %ebx            # 4-byte Reload
	movl	-4(%ebx,%ecx,4), %eax
	movl	4(%esp), %ecx           # 4-byte Reload
	shrl	%cl, %eax
	testl	%edi, %edi
	movl	%eax, (%ebx,%edx,4)
	movl	%ecx, %ebx
	je	LBB16_15
# BB#14:                                # %for.body63.lr.ph
	movl	4(%esi), %eax
	movl	(%esp), %ecx            # 4-byte Reload
	subl	%edi, %eax
	leal	(%ecx,%eax,4), %eax
	leal	(,%edi,4), %ecx
	pushl	%ecx
	pushl	$0
	pushl	%eax
	calll	_memset
	addl	$12, %esp
LBB16_15:                               # %for.cond.cleanup62
	movl	(%esp), %eax            # 4-byte Reload
	leal	(%eax,%edi,4), %eax
	jmp	LBB16_21
LBB16_16:                               # %if.else74
	movl	%edx, 8(%esp)           # 4-byte Spill
	xorl	%ebp, %ebp
	cmpl	$1, %ecx
	movl	(%esi), %edx
	je	LBB16_20
# BB#17:                                # %for.body81.lr.ph
	movl	(%edx), %eax
	movl	4(%edx), %edi
	movl	%ebx, %ecx
	movl	%ebx, 4(%esp)           # 4-byte Spill
	shrl	%cl, %eax
	movl	8(%esp), %ecx           # 4-byte Reload
	movl	%edi, %ebx
                                        # kill: %CL<def> %CL<kill> %ECX<kill>
	shll	%cl, %ebx
	orl	%eax, %ebx
	movl	%ebx, (%edx)
	movl	4(%esi), %ebp
	movl	4(%esp), %ebx           # 4-byte Reload
	decl	%ebp
	cmpl	$2, %ebp
	jb	LBB16_20
# BB#18:                                # %for.body81.preheader
	movl	$1, %eax
	.p2align	4, 0x90
LBB16_19:                               # %for.body81
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ecx
	movl	4(%edx,%eax,4), %ebx
	shrl	%cl, %edi
	movl	8(%esp), %ecx           # 4-byte Reload
	movl	%ebx, %ebp
                                        # kill: %CL<def> %CL<kill> %ECX<kill>
	shll	%cl, %ebp
	orl	%edi, %ebp
	movl	%ebx, %edi
	movl	%ebp, (%edx,%eax,4)
	incl	%eax
	movl	4(%esi), %ebp
	movl	4(%esp), %ebx           # 4-byte Reload
	decl	%ebp
	cmpl	%ebp, %eax
	jb	LBB16_19
LBB16_20:                               # %for.cond.cleanup80
	leal	(%edx,%ebp,4), %eax
LBB16_21:                               # %if.end100.sink.split
	movl	%ebx, %ecx
	shrl	%cl, (%eax)
	jmp	LBB16_22
LBB16_4:                                # %if.then8
	testl	%eax, %eax
	je	LBB16_8
# BB#5:                                 # %for.body.lr.ph
	movl	(%esi), %eax
	xorl	%ebx, %ebx
	leal	(%eax,%edi,4), %edx
	.p2align	4, 0x90
LBB16_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%edx,%ebx,4), %ecx
	movl	%ecx, (%eax,%ebx,4)
	incl	%ebx
	movl	4(%esi), %ecx
	movl	%ecx, %ebp
	subl	%edi, %ebp
	cmpl	%ebp, %ebx
	jb	LBB16_6
# BB#7:                                 # %for.cond.cleanup
	testl	%edi, %edi
	je	LBB16_22
LBB16_8:                                # %for.body20.lr.ph
	movl	(%esi), %eax
	subl	%edi, %ecx
	shll	$2, %edi
	leal	(%eax,%ecx,4), %eax
	pushl	%edi
	pushl	$0
	pushl	%eax
	calll	_memset
	addl	$12, %esp
LBB16_22:                               # %if.end100
	movl	4(%esi), %ecx
	movl	(%esi), %eax
	decl	%ecx
	js	LBB16_27
	.p2align	4, 0x90
LBB16_23:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%eax,%ecx,4)
	jne	LBB16_26
# BB#24:                                # %for.cond.i
                                        #   in Loop: Header=BB16_23 Depth=1
	decl	%ecx
	jns	LBB16_23
# BB#25:                                # %if.else.thread.i
	movl	$0, 4(%esi)
	jmp	LBB16_28
LBB16_27:                               # %if.else.i
	testl	%eax, %eax
	movl	$0, 4(%esi)
	je	LBB16_29
LBB16_28:                               # %delete.notnull.i
	pushl	%eax
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
	jmp	LBB16_29
LBB16_26:                               # %if.then4.i
	incl	%ecx
	movl	%ecx, 4(%esi)
LBB16_29:                               # %return
	movl	%esi, %eax
	addl	$12, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$4
                                        # -- End function
	.def	 "??5BigBase@ofw@@QBE?AV01@I@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"??5BigBase@ofw@@QBE?AV01@I@Z" # -- Begin function ??5BigBase@ofw@@QBE?AV01@I@Z
	.p2align	4, 0x90
"??5BigBase@ofw@@QBE?AV01@I@Z":         # @"\01??5BigBase@ofw@@QBE?AV01@I@Z"
Lfunc_begin6:
# BB#0:                                 # %entry
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	andl	$-8, %esp
	subl	$40, %esp
	movl	%esp, %esi
	movl	%ebp, 16(%esi)
	movl	%esp, 20(%esi)
	movl	$-1, 32(%esi)
	movl	$"___ehhandler$??5BigBase@ofw@@QBE?AV01@I@Z", 28(%esi)
	movl	%ecx, %edi
	leal	24(%esi), %eax
	movl	12(%ebp), %edx
	movl	%fs:0, %ecx
	movl	%ecx, 24(%esi)
	movl	%eax, %fs:0
	movl	$0, 4(%esi)
	movl	$0, (%esi)
	movl	4(%edi), %ebx
	testl	%ebx, %ebx
	je	LBB17_2
# BB#1:                                 # %if.then.i.i
	movl	$4, %ecx
	movl	%ebx, %eax
	mull	%ecx
	movl	$-1, %edx
	cmovnol	%eax, %edx
	pushl	%edx
	calll	"??_U@YAPAXI@Z"
	addl	$4, %esp
	movl	%eax, (%esi)
	movl	%ebx, 4(%esi)
	shll	$2, %ebx
	pushl	%ebx
	pushl	(%edi)
	pushl	%eax
	calll	_memcpy
	movl	12(%ebp), %edx
	addl	$12, %esp
LBB17_2:                                # %invoke.cont
	movl	%esi, %ecx
	pushl	%edx
	calll	"??_2BigBase@ofw@@QAEAAV01@I@Z"
	movl	4(%eax), %edx
	movl	8(%ebp), %ebx
	testl	%edx, %edx
	movl	$0, 4(%ebx)
	movl	$0, (%ebx)
	je	LBB17_3
# BB#4:                                 # %if.then.i.i11
	movl	%eax, 8(%esi)           # 4-byte Spill
	movl	$4, %ecx
	movl	%edx, %eax
	movl	%edx, 12(%esi)          # 4-byte Spill
	movl	$0, 32(%esi)
	mull	%ecx
	movl	$-1, %edx
	cmovnol	%eax, %edx
	pushl	%edx
	calll	"??_U@YAPAXI@Z"
	addl	$4, %esp
# BB#5:                                 # %call.i.i.i9.noexc
	movl	8(%esi), %edx           # 4-byte Reload
	movl	8(%ebp), %ebx
	movl	12(%esi), %ecx          # 4-byte Reload
	movl	(%edx), %edi
	movl	%eax, (%ebx)
	movl	%ecx, 4(%ebx)
	shll	$2, %ecx
	pushl	%ecx
	pushl	%edi
	pushl	%eax
	calll	_memcpy
	addl	$12, %esp
	testl	%edi, %edi
	je	LBB17_8
LBB17_7:                                # %delete.notnull.i
	pushl	%edi
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
LBB17_8:                                # %"\01??1BigBase@ofw@@QAE@XZ.exit"
	movl	24(%esi), %eax
	movl	%eax, %fs:0
	movl	%ebx, %eax
	leal	-12(%ebp), %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$8
LBB17_3:                                # %invoke.cont.invoke.cont3_crit_edge
	movl	(%esi), %edi
	testl	%edi, %edi
	jne	LBB17_7
	jmp	LBB17_8
	.def	 "?dtor$9@?0???5BigBase@ofw@@QBE?AV01@I@Z@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$9@?0???5BigBase@ofw@@QBE?AV01@I@Z@4HA":
LBB17_9:                                # %ehcleanup
	pushl	%ebp
	subl	$12, %esp
	leal	-36(%ebp), %esi
	movl	16(%esi), %ebp
	movl	(%esi), %eax
	testl	%eax, %eax
	je	LBB17_11
# BB#10:                                # %delete.notnull.i16
	pushl	%eax
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
LBB17_11:                               # %"\01??1BigBase@ofw@@QAE@XZ.exit17"
	addl	$12, %esp
	popl	%ebp
	retl                            # CLEANUPRET
Lfunc_end6:
	.section	.xdata,"dr"
	.p2align	2
"L__ehtable$??5BigBase@ofw@@QBE?AV01@I@Z":
	.long	429065506               # MagicNumber
	.long	1                       # MaxState
	.long	("$stateUnwindMap$??5BigBase@ofw@@QBE?AV01@I@Z") # UnwindMap
	.long	0                       # NumTryBlocks
	.long	0                       # TryBlockMap
	.long	0                       # IPMapEntries
	.long	0                       # IPToStateXData
	.long	0                       # ESTypeList
	.long	1                       # EHFlags
"$stateUnwindMap$??5BigBase@ofw@@QBE?AV01@I@Z":
	.long	-1                      # ToState
	.long	"?dtor$9@?0???5BigBase@ofw@@QBE?AV01@I@Z@4HA" # Action
	.text
                                        # -- End function
	.def	 "??EBigBase@ofw@@QAEAAV01@XZ";
	.scl	2;
	.type	32;
	.endef
	.globl	"??EBigBase@ofw@@QAEAAV01@XZ" # -- Begin function ??EBigBase@ofw@@QAEAAV01@XZ
	.p2align	4, 0x90
"??EBigBase@ofw@@QAEAAV01@XZ":          # @"\01??EBigBase@ofw@@QAEAAV01@XZ"
# BB#0:                                 # %entry
	pushl	%esi
	movl	%ecx, %esi
	cmpl	$0, 4(%esi)
	je	LBB18_1
# BB#2:                                 # %if.end
	movl	(%esi), %eax
	incl	(%eax)
	movl	4(%esi), %ecx
	decl	%ecx
	js	LBB18_7
	.p2align	4, 0x90
LBB18_3:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%eax,%ecx,4)
	jne	LBB18_6
# BB#4:                                 # %for.cond.i
                                        #   in Loop: Header=BB18_3 Depth=1
	decl	%ecx
	jns	LBB18_3
# BB#5:                                 # %if.else.thread.i
	movl	$0, 4(%esi)
	jmp	LBB18_8
LBB18_1:                                # %if.then
	pushl	$4
	calll	"??_U@YAPAXI@Z"
	addl	$4, %esp
	movl	%eax, (%esi)
	movl	$1, 4(%esi)
	movl	$1, (%eax)
	jmp	LBB18_9
LBB18_7:                                # %if.else.i
	testl	%eax, %eax
	movl	$0, 4(%esi)
	je	LBB18_9
LBB18_8:                                # %delete.notnull.i
	pushl	%eax
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
	jmp	LBB18_9
LBB18_6:                                # %if.then4.i
	incl	%ecx
	movl	%ecx, 4(%esi)
LBB18_9:                                # %return
	movl	%esi, %eax
	popl	%esi
	retl
                                        # -- End function
	.def	 "??FBigBase@ofw@@QAEAAV01@XZ";
	.scl	2;
	.type	32;
	.endef
	.globl	"??FBigBase@ofw@@QAEAAV01@XZ" # -- Begin function ??FBigBase@ofw@@QAEAAV01@XZ
	.p2align	4, 0x90
"??FBigBase@ofw@@QAEAAV01@XZ":          # @"\01??FBigBase@ofw@@QAEAAV01@XZ"
# BB#0:                                 # %entry
	pushl	%esi
	movl	%ecx, %esi
	cmpl	$0, 4(%esi)
	movl	(%esi), %eax
	je	LBB19_1
# BB#4:                                 # %if.end
	decl	(%eax)
	movl	4(%esi), %ecx
	.p2align	4, 0x90
LBB19_5:                                # %if.end
                                        # =>This Inner Loop Header: Depth=1
	decl	%ecx
	js	LBB19_6
# BB#7:                                 # %for.body.i
                                        #   in Loop: Header=BB19_5 Depth=1
	cmpl	$0, (%eax,%ecx,4)
	je	LBB19_5
# BB#8:                                 # %if.then4.i
	incl	%ecx
	movl	%ecx, 4(%esi)
	jmp	LBB19_9
LBB19_6:                                # %delete.notnull.i37
	movl	$0, 4(%esi)
	pushl	%eax
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
	jmp	LBB19_9
LBB19_1:                                # %if.then
	testl	%eax, %eax
	je	LBB19_3
# BB#2:                                 # %delete.notnull.i
	pushl	%eax
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
LBB19_3:                                # %"\01?init@BigBase@ofw@@AAEXXZ.exit"
	movl	$0, (%esi)
	movl	$0, 4(%esi)
LBB19_9:                                # %return
	movl	%esi, %eax
	popl	%esi
	retl
                                        # -- End function
	.def	 "?init@BigBase@ofw@@AAEXXZ";
	.scl	2;
	.type	32;
	.endef
	.globl	"?init@BigBase@ofw@@AAEXXZ" # -- Begin function ?init@BigBase@ofw@@AAEXXZ
	.p2align	4, 0x90
"?init@BigBase@ofw@@AAEXXZ":            # @"\01?init@BigBase@ofw@@AAEXXZ"
# BB#0:                                 # %entry
	pushl	%esi
	movl	%ecx, %esi
	movl	(%esi), %eax
	testl	%eax, %eax
	je	LBB20_2
# BB#1:                                 # %delete.notnull
	pushl	%eax
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
LBB20_2:                                # %if.end
	movl	$0, (%esi)
	movl	$0, 4(%esi)
	popl	%esi
	retl
                                        # -- End function
	.def	 "??EBigBase@ofw@@QAE?AV01@H@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"??EBigBase@ofw@@QAE?AV01@H@Z" # -- Begin function ??EBigBase@ofw@@QAE?AV01@H@Z
	.p2align	4, 0x90
"??EBigBase@ofw@@QAE?AV01@H@Z":         # @"\01??EBigBase@ofw@@QAE?AV01@H@Z"
# BB#0:                                 # %entry
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	movl	20(%esp), %esi
	movl	%ecx, %edi
	movl	$0, 4(%esi)
	movl	$0, (%esi)
	movl	4(%edi), %ebx
	testl	%ebx, %ebx
	je	LBB21_1
# BB#2:                                 # %if.end.i
	movl	$4, %ecx
	movl	%ebx, %eax
	mull	%ecx
	movl	$-1, %edx
	cmovnol	%eax, %edx
	pushl	%edx
	calll	"??_U@YAPAXI@Z"
	addl	$4, %esp
	movl	%eax, (%esi)
	movl	%ebx, 4(%esi)
	shll	$2, %ebx
	movl	(%edi), %ebp
	pushl	%ebx
	pushl	%ebp
	pushl	%eax
	calll	_memcpy
	addl	$12, %esp
	incl	(%ebp)
	movl	4(%edi), %eax
	decl	%eax
	js	LBB21_7
	.p2align	4, 0x90
LBB21_3:                                # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%ebp,%eax,4)
	jne	LBB21_6
# BB#4:                                 # %for.cond.i.i
                                        #   in Loop: Header=BB21_3 Depth=1
	decl	%eax
	jns	LBB21_3
# BB#5:                                 # %if.else.thread.i.i
	movl	$0, 4(%edi)
	jmp	LBB21_8
LBB21_1:                                # %if.then.i
	pushl	$4
	calll	"??_U@YAPAXI@Z"
	addl	$4, %esp
	movl	%eax, (%edi)
	movl	$1, 4(%edi)
	movl	$1, (%eax)
	jmp	LBB21_9
LBB21_7:                                # %if.else.i.i
	testl	%ebp, %ebp
	movl	$0, 4(%edi)
	je	LBB21_9
LBB21_8:                                # %delete.notnull.i.i
	pushl	%ebp
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
	jmp	LBB21_9
LBB21_6:                                # %if.then4.i.i
	incl	%eax
	movl	%eax, 4(%edi)
LBB21_9:                                # %nrvo.skipdtor
	movl	%esi, %eax
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$8
                                        # -- End function
	.def	 "??FBigBase@ofw@@QAE?AV01@H@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"??FBigBase@ofw@@QAE?AV01@H@Z" # -- Begin function ??FBigBase@ofw@@QAE?AV01@H@Z
	.p2align	4, 0x90
"??FBigBase@ofw@@QAE?AV01@H@Z":         # @"\01??FBigBase@ofw@@QAE?AV01@H@Z"
# BB#0:                                 # %entry
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	movl	20(%esp), %esi
	movl	%ecx, %edi
	movl	$0, 4(%esi)
	movl	$0, (%esi)
	movl	4(%edi), %ebx
	testl	%ebx, %ebx
	je	LBB22_1
# BB#4:                                 # %if.end.i
	movl	$4, %ecx
	movl	%ebx, %eax
	mull	%ecx
	movl	$-1, %edx
	cmovnol	%eax, %edx
	pushl	%edx
	calll	"??_U@YAPAXI@Z"
	addl	$4, %esp
	movl	%eax, (%esi)
	movl	%ebx, 4(%esi)
	shll	$2, %ebx
	movl	(%edi), %ebp
	pushl	%ebx
	pushl	%ebp
	pushl	%eax
	calll	_memcpy
	addl	$12, %esp
	decl	(%ebp)
	movl	4(%edi), %eax
	.p2align	4, 0x90
LBB22_5:                                # %if.end.i
                                        # =>This Inner Loop Header: Depth=1
	decl	%eax
	js	LBB22_6
# BB#7:                                 # %for.body.i.i
                                        #   in Loop: Header=BB22_5 Depth=1
	cmpl	$0, (%ebp,%eax,4)
	je	LBB22_5
# BB#8:                                 # %if.then4.i.i
	incl	%eax
	movl	%eax, 4(%edi)
	jmp	LBB22_9
LBB22_6:                                # %delete.notnull.i37.i
	movl	$0, 4(%edi)
	pushl	%ebp
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
	jmp	LBB22_9
LBB22_1:                                # %if.then.i
	movl	(%edi), %eax
	testl	%eax, %eax
	je	LBB22_3
# BB#2:                                 # %delete.notnull.i.i
	pushl	%eax
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
LBB22_3:                                # %"\01?init@BigBase@ofw@@AAEXXZ.exit.i"
	movl	$0, (%edi)
	movl	$0, 4(%edi)
LBB22_9:                                # %nrvo.skipdtor
	movl	%esi, %eax
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$8
                                        # -- End function
	.def	 "??YBigBase@ofw@@QAEAAV01@ABV01@@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"??YBigBase@ofw@@QAEAAV01@ABV01@@Z" # -- Begin function ??YBigBase@ofw@@QAEAAV01@ABV01@@Z
	.p2align	4, 0x90
"??YBigBase@ofw@@QAEAAV01@ABV01@@Z":    # @"\01??YBigBase@ofw@@QAEAAV01@ABV01@@Z"
Lfunc_begin7:
# BB#0:                                 # %entry
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$32, %esp
	movl	%esp, -28(%ebp)
	movl	$-1, -16(%ebp)
	movl	$"___ehhandler$??YBigBase@ofw@@QAEAAV01@ABV01@@Z", -20(%ebp)
	movl	%ecx, %edi
	movl	8(%ebp), %ecx
	leal	-24(%ebp), %eax
	movl	%fs:0, %edx
	movl	%edx, -24(%ebp)
	movl	%eax, %fs:0
	movl	4(%edi), %edx
	movl	4(%ecx), %eax
	testl	%edx, %edx
	je	LBB23_19
# BB#1:                                 # %entry
	cmpl	%eax, %edx
	jb	LBB23_19
# BB#2:                                 # %if.then
	testl	%eax, %eax
	je	LBB23_6
# BB#3:                                 # %for.body.lr.ph
	movl	%edi, -32(%ebp)         # 4-byte Spill
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	(%edi), %esi
	movl	(%ecx), %edi
	.p2align	4, 0x90
LBB23_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	xorl	%ebx, %ebx
	addl	(%esi,%eax,4), %edx
	setb	%bl
	addl	(%edi,%eax,4), %edx
	movl	%edx, (%esi,%eax,4)
	movl	%ebx, %edx
	adcl	$0, %edx
	incl	%eax
	cmpl	4(%ecx), %eax
	jb	LBB23_4
# BB#5:                                 # %for.end
	movl	-32(%ebp), %edi         # 4-byte Reload
	testl	%edx, %edx
	je	LBB23_6
	.p2align	4, 0x90
LBB23_7:                                # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	movl	4(%edi), %ebx
	cmpl	%ebx, %eax
	jae	LBB23_9
# BB#8:                                 # %for.body19
                                        #   in Loop: Header=BB23_7 Depth=1
	movl	(%edi), %esi
	xorl	%ecx, %ecx
	addl	(%esi,%eax,4), %edx
	setb	%cl
	movl	%edx, (%esi,%eax,4)
	leal	1(%eax), %eax
	movl	%ecx, %edx
	jb	LBB23_7
	jmp	LBB23_12
LBB23_19:                               # %if.else
	testl	%eax, %eax
	je	LBB23_30
# BB#20:                                # %if.then43
	leal	-44(%ebp), %eax
	pushl	%edi
	pushl	%eax
	calll	"??HBigBase@ofw@@QBE?AV01@ABV01@@Z"
	movl	(%edi), %eax
	testl	%eax, %eax
	je	LBB23_22
# BB#21:                                # %delete.notnull.i.i.i
	pushl	%eax
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
LBB23_22:                               # %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i"
	movl	$0, (%edi)
	movl	$0, 4(%edi)
	movl	-40(%ebp), %eax
	testl	%eax, %eax
	je	LBB23_23
# BB#24:                                # %if.then.i.i
	movl	$4, %ecx
	movl	%eax, -36(%ebp)         # 4-byte Spill
	movl	%edi, -32(%ebp)         # 4-byte Spill
	movl	$0, -16(%ebp)
	mull	%ecx
	movl	$-1, %edx
	cmovnol	%eax, %edx
	pushl	%edx
	calll	"??_U@YAPAXI@Z"
	addl	$4, %esp
# BB#25:                                # %call.i.i.i.noexc
	movl	-32(%ebp), %edi         # 4-byte Reload
	movl	%eax, (%edi)
	movl	-36(%ebp), %ecx         # 4-byte Reload
	movl	%ecx, 4(%edi)
	shll	$2, %ecx
	movl	-44(%ebp), %esi
	pushl	%ecx
	pushl	%esi
	pushl	%eax
	calll	_memcpy
	addl	$12, %esp
	testl	%esi, %esi
	jne	LBB23_18
	jmp	LBB23_30
LBB23_6:                                # %for.end.if.end_crit_edge
	movl	(%edi), %esi
	jmp	LBB23_12
LBB23_23:                               # %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i.invoke.cont_crit_edge"
	movl	-44(%ebp), %esi
	testl	%esi, %esi
	jne	LBB23_18
	jmp	LBB23_30
LBB23_9:                                # %if.then35
	leal	1(%ebx), %eax
	movl	$4, %ecx
	movl	$-1, -16(%ebp)
	movl	%eax, -36(%ebp)         # 4-byte Spill
	mull	%ecx
	movl	$-1, %edx
	cmovnol	%eax, %edx
	pushl	%edx
	calll	"??_U@YAPAXI@Z"
	addl	$4, %esp
	movl	%eax, %esi
	leal	4(,%ebx,4), %eax
	pushl	%eax
	pushl	$0
	pushl	%esi
	calll	_memset
	addl	$12, %esp
	movl	(%edi), %edi
	leal	(,%ebx,4), %eax
	pushl	%eax
	pushl	%edi
	pushl	%esi
	calll	_memcpy
	addl	$12, %esp
	testl	%edi, %edi
	je	LBB23_11
# BB#10:                                # %delete.notnull.i68
	pushl	%edi
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
LBB23_11:                               # %"\01?reallocate@BigBase@ofw@@AAEXI@Z.exit"
	movl	-32(%ebp), %edi         # 4-byte Reload
	movl	%esi, (%edi)
	movl	-36(%ebp), %eax         # 4-byte Reload
	movl	%eax, 4(%edi)
	movl	$1, (%esi,%ebx,4)
LBB23_12:                               # %if.end
	movl	4(%edi), %eax
	decl	%eax
	js	LBB23_16
	.p2align	4, 0x90
LBB23_13:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%esi,%eax,4)
	jne	LBB23_29
# BB#14:                                # %for.cond.i
                                        #   in Loop: Header=BB23_13 Depth=1
	decl	%eax
	jns	LBB23_13
# BB#15:                                # %if.else.thread.i
	movl	$0, 4(%edi)
	jmp	LBB23_18
LBB23_16:                               # %if.else.i
	movl	$0, 4(%edi)
	testl	%esi, %esi
	je	LBB23_30
LBB23_18:                               # %delete.notnull.i72
	pushl	%esi
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
	jmp	LBB23_30
LBB23_29:                               # %if.then4.i
	incl	%eax
	movl	%eax, 4(%edi)
LBB23_30:                               # %return
	movl	-24(%ebp), %eax
	movl	%eax, %fs:0
	movl	%edi, %eax
	addl	$32, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$4
	.def	 "?dtor$26@?0???YBigBase@ofw@@QAEAAV01@ABV01@@Z@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$26@?0???YBigBase@ofw@@QAEAAV01@ABV01@@Z@4HA":
LBB23_26:                               # %ehcleanup
	pushl	%ebp
	subl	$12, %esp
	addl	$12, %ebp
	movl	-44(%ebp), %eax
	testl	%eax, %eax
	je	LBB23_28
# BB#27:                                # %delete.notnull.i
	pushl	%eax
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
LBB23_28:                               # %"\01??1BigBase@ofw@@QAE@XZ.exit"
	addl	$12, %esp
	popl	%ebp
	retl                            # CLEANUPRET
Lfunc_end7:
	.section	.xdata,"dr"
	.p2align	2
"L__ehtable$??YBigBase@ofw@@QAEAAV01@ABV01@@Z":
	.long	429065506               # MagicNumber
	.long	1                       # MaxState
	.long	("$stateUnwindMap$??YBigBase@ofw@@QAEAAV01@ABV01@@Z") # UnwindMap
	.long	0                       # NumTryBlocks
	.long	0                       # TryBlockMap
	.long	0                       # IPMapEntries
	.long	0                       # IPToStateXData
	.long	0                       # ESTypeList
	.long	1                       # EHFlags
"$stateUnwindMap$??YBigBase@ofw@@QAEAAV01@ABV01@@Z":
	.long	-1                      # ToState
	.long	"?dtor$26@?0???YBigBase@ofw@@QAEAAV01@ABV01@@Z@4HA" # Action
	.text
                                        # -- End function
	.def	 "??HBigBase@ofw@@QBE?AV01@ABV01@@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"??HBigBase@ofw@@QBE?AV01@ABV01@@Z" # -- Begin function ??HBigBase@ofw@@QBE?AV01@ABV01@@Z
	.p2align	4, 0x90
"??HBigBase@ofw@@QBE?AV01@ABV01@@Z":    # @"\01??HBigBase@ofw@@QBE?AV01@ABV01@@Z"
Lfunc_begin8:
# BB#0:                                 # %entry
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	andl	$-8, %esp
	subl	$40, %esp
	movl	%esp, %esi
	movl	%ebp, 16(%esi)
	movl	%esp, 20(%esi)
	movl	$-1, 32(%esi)
	movl	$"___ehhandler$??HBigBase@ofw@@QBE?AV01@ABV01@@Z", 28(%esi)
	movl	%ecx, %edi
	leal	24(%esi), %eax
	movl	12(%ebp), %edx
	movl	%fs:0, %ecx
	movl	%ecx, 24(%esi)
	movl	%eax, %fs:0
	movl	$0, 4(%esi)
	movl	$0, (%esi)
	movl	4(%edi), %ebx
	testl	%ebx, %ebx
	je	LBB24_2
# BB#1:                                 # %if.then.i.i
	movl	$4, %ecx
	movl	%ebx, %eax
	mull	%ecx
	movl	$-1, %edx
	cmovnol	%eax, %edx
	pushl	%edx
	calll	"??_U@YAPAXI@Z"
	addl	$4, %esp
	movl	%eax, (%esi)
	movl	%ebx, 4(%esi)
	shll	$2, %ebx
	pushl	%ebx
	pushl	(%edi)
	pushl	%eax
	calll	_memcpy
	movl	12(%ebp), %edx
	addl	$12, %esp
LBB24_2:                                # %"\01??0BigBase@ofw@@QAE@ABV01@@Z.exit"
	movl	$0, 32(%esi)
	movl	%esi, %ecx
	pushl	%edx
	calll	"??YBigBase@ofw@@QAEAAV01@ABV01@@Z"
# BB#3:                                 # %invoke.cont
	movl	4(%eax), %edx
	movl	8(%ebp), %ebx
	testl	%edx, %edx
	movl	$0, 4(%ebx)
	movl	$0, (%ebx)
	je	LBB24_4
# BB#5:                                 # %if.then.i.i11
	movl	%eax, 12(%esi)          # 4-byte Spill
	movl	$4, %ecx
	movl	%edx, %eax
	movl	%edx, 8(%esi)           # 4-byte Spill
	mull	%ecx
	movl	$-1, %edx
	cmovnol	%eax, %edx
	pushl	%edx
	calll	"??_U@YAPAXI@Z"
	movl	12(%esi), %ecx          # 4-byte Reload
	addl	$4, %esp
# BB#6:                                 # %call.i.i.i9.noexc
	movl	8(%ebp), %ebx
	movl	8(%esi), %edx           # 4-byte Reload
	movl	(%ecx), %edi
	movl	%eax, (%ebx)
	movl	%edx, 4(%ebx)
	shll	$2, %edx
	pushl	%edx
	pushl	%edi
	pushl	%eax
	calll	_memcpy
	addl	$12, %esp
	testl	%edi, %edi
	je	LBB24_9
LBB24_8:                                # %delete.notnull.i
	pushl	%edi
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
LBB24_9:                                # %"\01??1BigBase@ofw@@QAE@XZ.exit"
	movl	24(%esi), %eax
	movl	%eax, %fs:0
	movl	%ebx, %eax
	leal	-12(%ebp), %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$8
LBB24_4:                                # %invoke.cont.invoke.cont3_crit_edge
	movl	(%esi), %edi
	testl	%edi, %edi
	jne	LBB24_8
	jmp	LBB24_9
	.def	 "?dtor$10@?0???HBigBase@ofw@@QBE?AV01@ABV01@@Z@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$10@?0???HBigBase@ofw@@QBE?AV01@ABV01@@Z@4HA":
LBB24_10:                               # %ehcleanup
	pushl	%ebp
	subl	$12, %esp
	leal	-36(%ebp), %esi
	movl	16(%esi), %ebp
	movl	(%esi), %eax
	testl	%eax, %eax
	je	LBB24_12
# BB#11:                                # %delete.notnull.i16
	pushl	%eax
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
LBB24_12:                               # %"\01??1BigBase@ofw@@QAE@XZ.exit17"
	addl	$12, %esp
	popl	%ebp
	retl                            # CLEANUPRET
Lfunc_end8:
	.section	.xdata,"dr"
	.p2align	2
"L__ehtable$??HBigBase@ofw@@QBE?AV01@ABV01@@Z":
	.long	429065506               # MagicNumber
	.long	1                       # MaxState
	.long	("$stateUnwindMap$??HBigBase@ofw@@QBE?AV01@ABV01@@Z") # UnwindMap
	.long	0                       # NumTryBlocks
	.long	0                       # TryBlockMap
	.long	0                       # IPMapEntries
	.long	0                       # IPToStateXData
	.long	0                       # ESTypeList
	.long	1                       # EHFlags
"$stateUnwindMap$??HBigBase@ofw@@QBE?AV01@ABV01@@Z":
	.long	-1                      # ToState
	.long	"?dtor$10@?0???HBigBase@ofw@@QBE?AV01@ABV01@@Z@4HA" # Action
	.text
                                        # -- End function
	.def	 "??ZBigBase@ofw@@QAEAAV01@ABV01@@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"??ZBigBase@ofw@@QAEAAV01@ABV01@@Z" # -- Begin function ??ZBigBase@ofw@@QAEAAV01@ABV01@@Z
	.p2align	4, 0x90
"??ZBigBase@ofw@@QAEAAV01@ABV01@@Z":    # @"\01??ZBigBase@ofw@@QAEAAV01@ABV01@@Z"
# BB#0:                                 # %entry
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	pushl	%eax
	movl	%ecx, %esi
	movl	4(%esi), %eax
	testl	%eax, %eax
	je	LBB25_20
# BB#1:                                 # %entry
	movl	24(%esp), %edx
	movl	4(%edx), %ecx
	cmpl	%ecx, %eax
	jb	LBB25_20
# BB#2:                                 # %if.then
	testl	%ecx, %ecx
	je	LBB25_13
# BB#3:                                 # %for.body.lr.ph
	movl	%esi, (%esp)            # 4-byte Spill
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	movl	(%esi), %eax
	movl	(%edx), %edi
	.p2align	4, 0x90
LBB25_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%eax,%ecx,4), %ebp
	movl	$0, %esi
	subl	(%edi,%ecx,4), %ebp
	sbbl	$0, %esi
	subl	%ebx, %ebp
	sbbl	$0, %esi
	movl	%ebp, (%eax,%ecx,4)
	incl	%ecx
	movl	%esi, %ebx
	andl	$1, %ebx
	cmpl	4(%edx), %ecx
	jb	LBB25_4
# BB#5:                                 # %for.end
	movl	(%esp), %esi            # 4-byte Reload
	testl	%ebx, %ebx
	setne	%dl
	movl	4(%esi), %eax
	je	LBB25_10
# BB#6:                                 # %for.end
	cmpl	%eax, %ecx
	jae	LBB25_10
# BB#7:                                 # %for.body19.lr.ph
	movl	(%esi), %edi
	incl	%ecx
	.p2align	4, 0x90
LBB25_8:                                # %for.body19
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%edi,%ecx,4), %eax
	movl	$0, %edx
	addl	$-1, %eax
	movl	%eax, -4(%edi,%ecx,4)
	adcl	$-1, %edx
	movl	4(%esi), %eax
	andl	$1, %edx
	je	LBB25_10
# BB#9:                                 # %for.body19
                                        #   in Loop: Header=BB25_8 Depth=1
	cmpl	%eax, %ecx
	leal	1(%ecx), %ecx
	jb	LBB25_8
LBB25_10:                               # %for.end34
	testb	$1, %dl
	je	LBB25_13
# BB#11:                                # %if.then36
	movl	(%esi), %eax
	testl	%eax, %eax
	je	LBB25_23
# BB#12:                                # %delete.notnull.i
	pushl	%eax
	jmp	LBB25_22
LBB25_20:                               # %if.else37
	movl	(%esi), %eax
	testl	%eax, %eax
	je	LBB25_23
# BB#21:                                # %delete.notnull.i63
	pushl	%eax
LBB25_22:                               # %"\01?init@BigBase@ofw@@AAEXXZ.exit65"
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
LBB25_23:                               # %"\01?init@BigBase@ofw@@AAEXXZ.exit65"
	movl	$0, (%esi)
	movl	$0, 4(%esi)
	jmp	LBB25_24
LBB25_13:                               # %if.else
	movl	(%esi), %ecx
	decl	%eax
	js	LBB25_18
	.p2align	4, 0x90
LBB25_14:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%ecx,%eax,4)
	jne	LBB25_17
# BB#15:                                # %for.cond.i
                                        #   in Loop: Header=BB25_14 Depth=1
	decl	%eax
	jns	LBB25_14
# BB#16:                                # %if.else.thread.i
	movl	$0, 4(%esi)
	jmp	LBB25_19
LBB25_18:                               # %if.else.i
	testl	%ecx, %ecx
	movl	$0, 4(%esi)
	je	LBB25_24
LBB25_19:                               # %delete.notnull.i60
	pushl	%ecx
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
	jmp	LBB25_24
LBB25_17:                               # %if.then4.i
	incl	%eax
	movl	%eax, 4(%esi)
LBB25_24:                               # %return
	movl	%esi, %eax
	addl	$4, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$4
                                        # -- End function
	.def	 "??GBigBase@ofw@@QBE?AV01@ABV01@@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"??GBigBase@ofw@@QBE?AV01@ABV01@@Z" # -- Begin function ??GBigBase@ofw@@QBE?AV01@ABV01@@Z
	.p2align	4, 0x90
"??GBigBase@ofw@@QBE?AV01@ABV01@@Z":    # @"\01??GBigBase@ofw@@QBE?AV01@ABV01@@Z"
Lfunc_begin9:
# BB#0:                                 # %entry
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	andl	$-8, %esp
	subl	$40, %esp
	movl	%esp, %esi
	movl	%ebp, 16(%esi)
	movl	%esp, 20(%esi)
	movl	$-1, 32(%esi)
	movl	$"___ehhandler$??GBigBase@ofw@@QBE?AV01@ABV01@@Z", 28(%esi)
	movl	%ecx, %edi
	leal	24(%esi), %eax
	movl	12(%ebp), %edx
	movl	%fs:0, %ecx
	movl	%ecx, 24(%esi)
	movl	%eax, %fs:0
	movl	$0, 4(%esi)
	movl	$0, (%esi)
	movl	4(%edi), %ebx
	testl	%ebx, %ebx
	je	LBB26_2
# BB#1:                                 # %if.then.i.i
	movl	$4, %ecx
	movl	%ebx, %eax
	mull	%ecx
	movl	$-1, %edx
	cmovnol	%eax, %edx
	pushl	%edx
	calll	"??_U@YAPAXI@Z"
	addl	$4, %esp
	movl	%eax, (%esi)
	movl	%ebx, 4(%esi)
	shll	$2, %ebx
	pushl	%ebx
	pushl	(%edi)
	pushl	%eax
	calll	_memcpy
	movl	12(%ebp), %edx
	addl	$12, %esp
LBB26_2:                                # %invoke.cont
	movl	%esi, %ecx
	pushl	%edx
	calll	"??ZBigBase@ofw@@QAEAAV01@ABV01@@Z"
	movl	4(%eax), %edx
	movl	8(%ebp), %ebx
	testl	%edx, %edx
	movl	$0, 4(%ebx)
	movl	$0, (%ebx)
	je	LBB26_3
# BB#4:                                 # %if.then.i.i11
	movl	%eax, 8(%esi)           # 4-byte Spill
	movl	$4, %ecx
	movl	%edx, %eax
	movl	%edx, 12(%esi)          # 4-byte Spill
	movl	$0, 32(%esi)
	mull	%ecx
	movl	$-1, %edx
	cmovnol	%eax, %edx
	pushl	%edx
	calll	"??_U@YAPAXI@Z"
	addl	$4, %esp
# BB#5:                                 # %call.i.i.i9.noexc
	movl	8(%esi), %edx           # 4-byte Reload
	movl	8(%ebp), %ebx
	movl	12(%esi), %ecx          # 4-byte Reload
	movl	(%edx), %edi
	movl	%eax, (%ebx)
	movl	%ecx, 4(%ebx)
	shll	$2, %ecx
	pushl	%ecx
	pushl	%edi
	pushl	%eax
	calll	_memcpy
	addl	$12, %esp
	testl	%edi, %edi
	je	LBB26_8
LBB26_7:                                # %delete.notnull.i
	pushl	%edi
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
LBB26_8:                                # %"\01??1BigBase@ofw@@QAE@XZ.exit"
	movl	24(%esi), %eax
	movl	%eax, %fs:0
	movl	%ebx, %eax
	leal	-12(%ebp), %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$8
LBB26_3:                                # %invoke.cont.invoke.cont3_crit_edge
	movl	(%esi), %edi
	testl	%edi, %edi
	jne	LBB26_7
	jmp	LBB26_8
	.def	 "?dtor$9@?0???GBigBase@ofw@@QBE?AV01@ABV01@@Z@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$9@?0???GBigBase@ofw@@QBE?AV01@ABV01@@Z@4HA":
LBB26_9:                                # %ehcleanup
	pushl	%ebp
	subl	$12, %esp
	leal	-36(%ebp), %esi
	movl	16(%esi), %ebp
	movl	(%esi), %eax
	testl	%eax, %eax
	je	LBB26_11
# BB#10:                                # %delete.notnull.i16
	pushl	%eax
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
LBB26_11:                               # %"\01??1BigBase@ofw@@QAE@XZ.exit17"
	addl	$12, %esp
	popl	%ebp
	retl                            # CLEANUPRET
Lfunc_end9:
	.section	.xdata,"dr"
	.p2align	2
"L__ehtable$??GBigBase@ofw@@QBE?AV01@ABV01@@Z":
	.long	429065506               # MagicNumber
	.long	1                       # MaxState
	.long	("$stateUnwindMap$??GBigBase@ofw@@QBE?AV01@ABV01@@Z") # UnwindMap
	.long	0                       # NumTryBlocks
	.long	0                       # TryBlockMap
	.long	0                       # IPMapEntries
	.long	0                       # IPToStateXData
	.long	0                       # ESTypeList
	.long	1                       # EHFlags
"$stateUnwindMap$??GBigBase@ofw@@QBE?AV01@ABV01@@Z":
	.long	-1                      # ToState
	.long	"?dtor$9@?0???GBigBase@ofw@@QBE?AV01@ABV01@@Z@4HA" # Action
	.text
                                        # -- End function
	.def	 "??XBigBase@ofw@@QAEAAV01@ABV01@@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"??XBigBase@ofw@@QAEAAV01@ABV01@@Z" # -- Begin function ??XBigBase@ofw@@QAEAAV01@ABV01@@Z
	.p2align	4, 0x90
"??XBigBase@ofw@@QAEAAV01@ABV01@@Z":    # @"\01??XBigBase@ofw@@QAEAAV01@ABV01@@Z"
# BB#0:                                 # %entry
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$48, %esp
	movl	68(%esp), %eax
	movl	%ecx, %ebx
	movl	$4, %ecx
	movl	4(%ebx), %ebp
	movl	4(%eax), %esi
	leal	2(%esi,%ebp), %eax
	leal	(%esi,%ebp), %edi
	movl	%eax, 20(%esp)          # 4-byte Spill
	mull	%ecx
	movl	$-1, %edx
	cmovnol	%eax, %edx
	movl	%edx, 16(%esp)          # 4-byte Spill
	pushl	%edx
	calll	"??_U@YAPAXI@Z"
	addl	$4, %esp
	leal	8(,%edi,4), %ecx
	movl	%edi, 24(%esp)          # 4-byte Spill
	movl	%ecx, 12(%esp)          # 4-byte Spill
	pushl	%ecx
	pushl	$0
	movl	%eax, 8(%esp)           # 4-byte Spill
	pushl	%eax
	calll	_memset
	movl	%esi, %edx
	addl	$12, %esp
	testl	%ebp, %ebp
	movl	%ebp, 40(%esp)          # 4-byte Spill
	je	LBB27_8
# BB#1:                                 # %for.body.lr.ph
	movl	68(%esp), %eax
	movl	(%esp), %ecx            # 4-byte Reload
	xorl	%ebp, %ebp
	movl	(%eax), %eax
	leal	(%ecx,%edx,4), %esi
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	%ebx, 36(%esp)          # 4-byte Spill
	movl	%edx, 32(%esp)          # 4-byte Spill
	movl	%eax, 28(%esp)          # 4-byte Spill
	.p2align	4, 0x90
LBB27_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_4 Depth 2
                                        #     Child Loop BB27_6 Depth 2
	testl	%edx, %edx
	je	LBB27_7
# BB#3:                                 # %for.body10.lr.ph
                                        #   in Loop: Header=BB27_2 Depth=1
	movl	%esi, 44(%esp)          # 4-byte Spill
	movl	%ebp, 8(%esp)           # 4-byte Spill
	movl	28(%esp), %esi          # 4-byte Reload
	xorl	%edi, %edi
	movl	%edx, %ecx
	movl	(%ebx), %ebp
	movl	4(%esp), %ebx           # 4-byte Reload
	.p2align	4, 0x90
LBB27_4:                                # %for.body10
                                        #   Parent Loop BB27_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%esi), %eax
	movl	8(%esp), %edx           # 4-byte Reload
	mull	(%ebp,%edx,4)
	addl	%edi, %eax
	movl	%edx, %edi
	adcl	$0, %edi
	addl	(%ebx), %eax
	adcl	$0, %edi
	movl	%eax, (%ebx)
	addl	$4, %esi
	addl	$4, %ebx
	decl	%ecx
	jne	LBB27_4
# BB#5:                                 # %for.cond.cleanup9
                                        #   in Loop: Header=BB27_2 Depth=1
	movl	44(%esp), %esi          # 4-byte Reload
	movl	36(%esp), %ebx          # 4-byte Reload
	movl	32(%esp), %edx          # 4-byte Reload
	movl	8(%esp), %ebp           # 4-byte Reload
	testl	%edi, %edi
	movl	%esi, %eax
	je	LBB27_7
	.p2align	4, 0x90
LBB27_6:                                # %for.body26
                                        #   Parent Loop BB27_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%ecx, %ecx
	addl	(%eax), %edi
	setb	%cl
	movl	%edi, (%eax)
	leal	4(%eax), %eax
	movl	%ecx, %edi
	jb	LBB27_6
LBB27_7:                                # %for.end38
                                        #   in Loop: Header=BB27_2 Depth=1
	incl	%ebp
	addl	$4, 4(%esp)             # 4-byte Folded Spill
	addl	$4, %esi
	cmpl	40(%esp), %ebp          # 4-byte Folded Reload
	jne	LBB27_2
LBB27_8:                                # %for.cond.cleanup
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	LBB27_10
# BB#9:                                 # %delete.notnull.i
	pushl	%eax
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
LBB27_10:                               # %"\01?safe_allocate@BigBase@ofw@@AAEXI@Z.exit"
	pushl	16(%esp)                # 4-byte Folded Reload
	calll	"??_U@YAPAXI@Z"
	addl	$4, %esp
	movl	%eax, (%ebx)
	movl	20(%esp), %esi          # 4-byte Reload
	movl	%esi, 4(%ebx)
	pushl	12(%esp)                # 4-byte Folded Reload
	movl	4(%esp), %edi           # 4-byte Reload
	pushl	%edi
	pushl	%eax
	calll	_memcpy
	addl	$12, %esp
	pushl	%edi
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
	movl	%esi, 4(%ebx)
	movl	24(%esp), %ecx          # 4-byte Reload
	movl	(%ebx), %eax
	incl	%ecx
	js	LBB27_15
	.p2align	4, 0x90
LBB27_11:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%eax,%ecx,4)
	jne	LBB27_14
# BB#12:                                # %for.cond.i
                                        #   in Loop: Header=BB27_11 Depth=1
	decl	%ecx
	jns	LBB27_11
# BB#13:                                # %if.else.thread.i
	movl	$0, 4(%ebx)
	jmp	LBB27_16
LBB27_15:                               # %if.else.i
	testl	%eax, %eax
	movl	$0, 4(%ebx)
	je	LBB27_17
LBB27_16:                               # %delete.notnull.i82
	pushl	%eax
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
	jmp	LBB27_17
LBB27_14:                               # %if.then4.i
	incl	%ecx
	movl	%ecx, 4(%ebx)
LBB27_17:                               # %"\01?trim@BigBase@ofw@@AAEXXZ.exit"
	movl	%ebx, %eax
	addl	$48, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$4
                                        # -- End function
	.def	 "?safe_allocate@BigBase@ofw@@AAEXI@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?safe_allocate@BigBase@ofw@@AAEXI@Z" # -- Begin function ?safe_allocate@BigBase@ofw@@AAEXI@Z
	.p2align	4, 0x90
"?safe_allocate@BigBase@ofw@@AAEXI@Z":  # @"\01?safe_allocate@BigBase@ofw@@AAEXI@Z"
# BB#0:                                 # %entry
	pushl	%edi
	pushl	%esi
	movl	%ecx, %esi
	movl	12(%esp), %edi
	movl	(%esi), %eax
	testl	%eax, %eax
	je	LBB28_2
# BB#1:                                 # %delete.notnull
	pushl	%eax
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
LBB28_2:                                # %if.end
	movl	$4, %ecx
	movl	%edi, %eax
	mull	%ecx
	movl	$-1, %edx
	cmovnol	%eax, %edx
	pushl	%edx
	calll	"??_U@YAPAXI@Z"
	addl	$4, %esp
	movl	%eax, (%esi)
	movl	%edi, 4(%esi)
	popl	%esi
	popl	%edi
	retl	$4
                                        # -- End function
	.def	 "??_1BigBase@ofw@@QAEAAV01@ABV01@@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"??_1BigBase@ofw@@QAEAAV01@ABV01@@Z" # -- Begin function ??_1BigBase@ofw@@QAEAAV01@ABV01@@Z
	.p2align	4, 0x90
"??_1BigBase@ofw@@QAEAAV01@ABV01@@Z":   # @"\01??_1BigBase@ofw@@QAEAAV01@ABV01@@Z"
# BB#0:                                 # %entry
	pushl	%esi
	movl	%ecx, %esi
	pushl	$0
	pushl	$0
	pushl	16(%esp)
	calll	"?divideWithRemainder@BigBase@ofw@@AAEXABV12@_NPAI@Z"
	movl	4(%esi), %ecx
	movl	(%esi), %eax
	decl	%ecx
	js	LBB29_5
	.p2align	4, 0x90
LBB29_1:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%eax,%ecx,4)
	jne	LBB29_4
# BB#2:                                 # %for.cond.i
                                        #   in Loop: Header=BB29_1 Depth=1
	decl	%ecx
	jns	LBB29_1
# BB#3:                                 # %if.else.thread.i
	movl	$0, 4(%esi)
	jmp	LBB29_6
LBB29_5:                                # %if.else.i
	testl	%eax, %eax
	movl	$0, 4(%esi)
	je	LBB29_7
LBB29_6:                                # %delete.notnull.i
	pushl	%eax
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
	jmp	LBB29_7
LBB29_4:                                # %if.then4.i
	incl	%ecx
	movl	%ecx, 4(%esi)
LBB29_7:                                # %"\01?trim@BigBase@ofw@@AAEXXZ.exit"
	movl	%esi, %eax
	popl	%esi
	retl	$4
                                        # -- End function
	.def	 "?divideWithRemainder@BigBase@ofw@@AAEXABV12@_NPAI@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?divideWithRemainder@BigBase@ofw@@AAEXABV12@_NPAI@Z" # -- Begin function ?divideWithRemainder@BigBase@ofw@@AAEXABV12@_NPAI@Z
	.p2align	4, 0x90
"?divideWithRemainder@BigBase@ofw@@AAEXABV12@_NPAI@Z": # @"\01?divideWithRemainder@BigBase@ofw@@AAEXABV12@_NPAI@Z"
# BB#0:                                 # %entry
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$68, %esp
	movl	%ecx, %eax
	movl	88(%esp), %ecx
	movl	4(%eax), %edx           # [Perpect, Source: c1]
	movl	4(%ecx), %esi           # [Dominated, Source: c1]
                                        # [Perpect, Source: c2]
	movl	%edx, 4(%esp)           # 4-byte Spill
	cmpl	%esi, %edx              # [Dominated, Source: c1]
	jae	LBB30_3
# BB#1:                                 # %if.then
	cmpb	$0, 92(%esp)
	je	LBB30_56
# BB#2:                                 # %if.then3
	movl	4(%esp), %ecx           # 4-byte Reload
	shll	$2, %ecx
	pushl	%ecx
	pushl	$0
	pushl	(%eax)
	calll	_memset
	addl	$80, %esp
	jmp	LBB30_57
LBB30_3:                                # %if.else
	leal	-1(%esi), %edx          # [Dominated, Source: c1]
                                        # [Perpect, Source: c2]
	movl	%esi, %ebp
	movl	%edx, 8(%esp)           # 4-byte Spill
                                        # [Dominated, Source: c1]
                                        # [Perpect, Source: c2]
	movl	(%ecx), %ecx            # [Dominated, Source: c1]
                                        # [Perpect, Source: c2]
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	-4(%ecx,%esi,4), %edx   # [Dominated, Source: c1]
                                        # [Perpect, Source: c2]
	testl	%edx, %edx              # [Maybe, Source: c1]
	je	LBB30_4
# BB#5:                                 # %if.end.i
	movl	%edx, %esi              # [Dominated, Source: c1]
                                        # [Perpect, Source: c2]
	xorl	%ecx, %ecx              # [Dominated, Source: c1]
                                        # [Perpect, Source: c2]
	shll	$16, %esi               # [Dominated, Source: c1]
                                        # [Perpect, Source: c2]
	cmpl	$65536, %edx            # [Dominated, Source: c1]
                                        # [Perpect, Source: c2]
                                        # imm = 0x10000
	cmovael	%edx, %esi              # [Dominated, Source: c1]
                                        # [Perpect, Source: c2]
	setb	%cl                     # [Dominated, Source: c1]
                                        # [Perpect, Source: c2]
	movl	%esi, %edi              # [Dominated, Source: c1]
                                        # [Perpect, Source: c2]
	shll	$4, %ecx                # [Dominated, Source: c1]
                                        # [Perpect, Source: c2]
	shll	$8, %edi                # [Dominated, Source: c1]
                                        # [Perpect, Source: c2]
	cmpl	$16777216, %esi         # [Dominated, Source: c1]
                                        # [Perpect, Source: c2]
                                        # imm = 0x1000000
	leal	8(%ecx), %edx           # [Dominated, Source: c1]
                                        # [Perpect, Source: c2]
	cmovael	%esi, %edi              # [Dominated, Source: c1]
                                        # [Perpect, Source: c2]
	cmovael	%ecx, %edx              # [Dominated, Source: c1]
                                        # [Perpect, Source: c2]
	movl	%edx, %esi              # [Dominated, Source: c1]
                                        # [Perpect, Source: c2]
	movl	%edi, %ebx              # [Dominated, Source: c1]
                                        # [Perpect, Source: c2]
	orl	$4, %esi                # [Dominated, Source: c1]
                                        # [Perpect, Source: c2]
	shll	$4, %ebx                # [Dominated, Source: c1]
                                        # [Perpect, Source: c2]
	cmpl	$268435456, %edi        # [Dominated, Source: c1]
                                        # [Perpect, Source: c2]
                                        # imm = 0x10000000
	cmovael	%edx, %esi              # [Dominated, Source: c1]
                                        # [Perpect, Source: c2]
	cmovael	%edi, %ebx              # [Dominated, Source: c1]
                                        # [Perpect, Source: c2]
	movl	%esi, %edx              # [Dominated, Source: c1]
                                        # [Perpect, Source: c2]
	leal	(,%ebx,4), %ecx         # [Dominated, Source: c1]
                                        # [Perpect, Source: c2]
	orl	$2, %edx                # [Dominated, Source: c1]
                                        # [Perpect, Source: c2]
	cmpl	$1073741824, %ebx       # [Dominated, Source: c1]
                                        # [Perpect, Source: c2]
                                        # imm = 0x40000000
	cmovael	%ebx, %ecx              # [Dominated, Source: c1]
                                        # [Perpect, Source: c2]
	cmovael	%esi, %edx              # [Dominated, Source: c1]
                                        # [Perpect, Source: c2]
	movl	%ebp, %esi
	shrl	$31, %ecx               # [Dominated, Source: c1]
                                        # [Perpect, Source: c2]
	xorl	$1, %ecx                # [Dominated, Source: c1]
                                        # [Perpect, Source: c2]
	addl	%edx, %ecx              # [Dominated, Source: c1]
                                        # [Perpect, Source: c2]
	jmp	LBB30_6
LBB30_4:
	movl	$32, %ecx
LBB30_6:                                # %"\01?count_leading_zero@BigBase@ofw@@ABEHI@Z.exit"
	movl	12(%esp), %edx          # 4-byte Reload
	decl	4(%esp)                 # 4-byte Folded Spill
                                        # [Perpect, Source: c1]
	movl	%ecx, 60(%esp)
	movl	-4(%edx,%esi,4), %edx
	shll	%cl, %edx
	cmpl	$0, 8(%esp)             # 4-byte Folded Reload
                                        # [Dominated, Source: c1]
	movl	%edx, 24(%esp)          # 4-byte Spill
	je	LBB30_9
# BB#7:                                 # %"\01?count_leading_zero@BigBase@ofw@@ABEHI@Z.exit"
	testl	%ecx, %ecx
	jle	LBB30_9
# BB#8:                                 # %if.then.i310
	movl	12(%esp), %edx          # 4-byte Reload
	movl	-8(%edx,%esi,4), %esi
	movl	$32, %edx
	subl	%ecx, %edx
	movl	%edx, %ecx
	shrl	%cl, %esi
	orl	%esi, 24(%esp)          # 4-byte Folded Spill
LBB30_9:                                # %"\01?div_multiget@BigBase@ofw@@AAEIPBIIH@Z.exit313"
	cmpl	$0, 4(%esp)             # 4-byte Folded Reload
                                        # [Dominated, Source: c1]
	js	LBB30_56
# BB#10:                                # %"\01?div_multiget@BigBase@ofw@@AAEIPBIIH@Z.exit313"
	movl	8(%esp), %ecx           # 4-byte Reload
	cmpl	%ecx, 4(%esp)           # 4-byte Folded Reload
	jl	LBB30_56
# BB#11:                                # %for.body.lr.ph
	movl	(%eax), %edx            # [Perpect, Source: c1]
	movl	4(%esp), %ebx           # 4-byte Reload
	movl	$1, %eax
	subl	%ebp, %eax
	addl	$-2, %ebp
	movl	%ebp, 52(%esp)          # 4-byte Spill
	leal	(%edx,%eax,4), %eax
	movl	%edx, 36(%esp)          # 4-byte Spill
	movl	%eax, 48(%esp)          # 4-byte Spill
	.p2align	4, 0x90
LBB30_12:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_25 Depth 2
                                        #     Child Loop BB30_36 Depth 2
	movl	(%edx,%ebx,4), %ecx     # [Perpect, Source: c1]
	testl	%ecx, %ecx              # [Dominated, Source: c1]
	je	LBB30_54
# BB#13:                                # %"\01?count_leading_zero@BigBase@ofw@@ABEHI@Z.exit299"
                                        #   in Loop: Header=BB30_12 Depth=1
	movl	%ecx, %edx              # [Perpect, Source: c1]
	xorl	%eax, %eax              # [Perpect, Source: c1]
	shll	$16, %edx               # [Perpect, Source: c1]
	cmpl	$65536, %ecx            # [Perpect, Source: c1]
                                        # imm = 0x10000
	cmovael	%ecx, %edx              # [Perpect, Source: c1]
	setb	%al                     # [Perpect, Source: c1]
	movl	%edx, %esi              # [Perpect, Source: c1]
	shll	$4, %eax                # [Perpect, Source: c1]
	shll	$8, %esi                # [Perpect, Source: c1]
	cmpl	$16777216, %edx         # [Perpect, Source: c1]
                                        # imm = 0x1000000
	leal	8(%eax), %ecx           # [Perpect, Source: c1]
	cmovael	%edx, %esi              # [Perpect, Source: c1]
	cmovael	%eax, %ecx              # [Perpect, Source: c1]
	movl	36(%esp), %edx          # 4-byte Reload
	movl	%ecx, %eax              # [Perpect, Source: c1]
	movl	%esi, %edi              # [Perpect, Source: c1]
	orl	$4, %eax                # [Perpect, Source: c1]
	shll	$4, %edi                # [Perpect, Source: c1]
	cmpl	$268435456, %esi        # [Perpect, Source: c1]
                                        # imm = 0x10000000
	cmovael	%ecx, %eax              # [Perpect, Source: c1]
	cmovael	%esi, %edi              # [Perpect, Source: c1]
	movl	%eax, %esi              # [Perpect, Source: c1]
	leal	(,%edi,4), %ecx         # [Perpect, Source: c1]
	orl	$2, %esi                # [Perpect, Source: c1]
	cmpl	$1073741824, %edi       # [Perpect, Source: c1]
                                        # imm = 0x40000000
	cmovael	%edi, %ecx              # [Perpect, Source: c1]
	cmovael	%eax, %esi              # [Perpect, Source: c1]
	shrl	$31, %ecx               # [Perpect, Source: c1]
	xorl	$1, %ecx                # [Perpect, Source: c1]
	addl	%esi, %ecx              # [Annotated, Source: c1]
	movl	%ecx, 64(%esp)
	movl	(%edx,%ebx,4), %esi
	shll	%cl, %esi
	testl	%ebx, %ebx
	je	LBB30_14
# BB#15:                                # %"\01?count_leading_zero@BigBase@ofw@@ABEHI@Z.exit299"
                                        #   in Loop: Header=BB30_12 Depth=1
	testl	%ecx, %ecx
	movl	%ecx, %edi
	jle	LBB30_17
# BB#16:                                # %if.then.i270
                                        #   in Loop: Header=BB30_12 Depth=1
	movl	-4(%edx,%ebx,4), %eax
	movl	$32, %ecx
	subl	%edi, %ecx
                                        # kill: %CL<def> %CL<kill> %ECX<kill>
	shrl	%cl, %eax
	orl	%eax, %esi
	jmp	LBB30_17
LBB30_14:                               #   in Loop: Header=BB30_12 Depth=1
	movl	%ecx, %edi
LBB30_17:                               # %"\01?div_multiget@BigBase@ofw@@AAEIPBIIH@Z.exit273"
                                        #   in Loop: Header=BB30_12 Depth=1
	movl	60(%esp), %eax
	movl	%ebx, %ecx
	movl	%edi, 20(%esp)          # 4-byte Spill
	movl	%eax, 16(%esp)          # 4-byte Spill
	subl	%edi, %eax
	subl	8(%esp), %ecx           # 4-byte Folded Reload
	movl	%ecx, 44(%esp)          # 4-byte Spill
	jne	LBB30_21
# BB#18:                                # %land.lhs.true
                                        #   in Loop: Header=BB30_12 Depth=1
	testl	%eax, %eax
	js	LBB30_56
# BB#19:                                # %lor.lhs.false
                                        #   in Loop: Header=BB30_12 Depth=1
	cmpl	24(%esp), %esi          # 4-byte Folded Reload
	jae	LBB30_21
# BB#20:                                # %lor.lhs.false
                                        #   in Loop: Header=BB30_12 Depth=1
	testl	%eax, %eax
	je	LBB30_56
LBB30_21:                               # %if.end32
                                        #   in Loop: Header=BB30_12 Depth=1
	cmpl	24(%esp), %esi          # 4-byte Folded Reload
	movl	%ebx, 40(%esp)          # 4-byte Spill
	jne	LBB30_32
# BB#22:                                # %if.then34
                                        #   in Loop: Header=BB30_12 Depth=1
	cmpl	$0, 52(%esp)            # 4-byte Folded Reload
	js	LBB30_33
# BB#23:                                # %for.body39.lr.ph
                                        #   in Loop: Header=BB30_12 Depth=1
	movl	$32, %ecx
	movl	$32, %esi
	movl	8(%esp), %ebp           # 4-byte Reload
	leal	-1(%ebx), %edi
	subl	20(%esp), %ecx          # 4-byte Folded Reload
	subl	16(%esp), %esi          # 4-byte Folded Reload
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	%esi, 28(%esp)          # 4-byte Spill
	.p2align	4, 0x90
LBB30_25:                               # %for.body39
                                        #   Parent Loop BB30_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%edx,%edi,4), %esi
	movl	20(%esp), %ecx          # 4-byte Reload
	movl	%eax, (%esp)            # 4-byte Spill
	shll	%cl, %esi
	testl	%ecx, %ecx
	jle	LBB30_28
# BB#26:                                # %for.body39
                                        #   in Loop: Header=BB30_25 Depth=2
	testl	%edi, %edi
	je	LBB30_28
# BB#27:                                # %if.then.i256
                                        #   in Loop: Header=BB30_25 Depth=2
	movl	32(%esp), %ecx          # 4-byte Reload
	movl	-4(%edx,%edi,4), %ebx
                                        # kill: %CL<def> %CL<kill> %ECX<kill>
	shrl	%cl, %ebx
	orl	%ebx, %esi
LBB30_28:                               # %"\01?div_multiget@BigBase@ofw@@AAEIPBIIH@Z.exit259"
                                        #   in Loop: Header=BB30_25 Depth=2
	movl	12(%esp), %eax          # 4-byte Reload
	movl	16(%esp), %ecx          # 4-byte Reload
	movl	-4(%eax,%ebp,4), %ebx
	shll	%cl, %ebx
	testl	%ecx, %ecx
	jle	LBB30_31
# BB#29:                                # %"\01?div_multiget@BigBase@ofw@@AAEIPBIIH@Z.exit259"
                                        #   in Loop: Header=BB30_25 Depth=2
	cmpl	$1, %ebp
	je	LBB30_31
# BB#30:                                # %if.then.i244
                                        #   in Loop: Header=BB30_25 Depth=2
	movl	12(%esp), %eax          # 4-byte Reload
	movl	28(%esp), %ecx          # 4-byte Reload
	movl	-8(%eax,%ebp,4), %edx
                                        # kill: %CL<def> %CL<kill> %ECX<kill>
	shrl	%cl, %edx
	orl	%edx, %ebx
	movl	36(%esp), %edx          # 4-byte Reload
LBB30_31:                               # %"\01?div_multiget@BigBase@ofw@@AAEIPBIIH@Z.exit"
                                        #   in Loop: Header=BB30_25 Depth=2
	movl	(%esp), %eax            # 4-byte Reload
	cmpl	%ebx, %esi
	sbbl	$0, %eax
	cmpl	%ebx, %esi
	jne	LBB30_33
# BB#24:                                # %for.cond36
                                        #   in Loop: Header=BB30_25 Depth=2
	decl	%ebp
	decl	%edi
	testl	%ebp, %ebp
	jg	LBB30_25
	jmp	LBB30_33
	.p2align	4, 0x90
LBB30_32:                               # %if.else52
                                        #   in Loop: Header=BB30_12 Depth=1
	sbbl	$0, %eax
LBB30_33:                               # %if.end57
                                        #   in Loop: Header=BB30_12 Depth=1
	movl	44(%esp), %edx          # 4-byte Reload
	movl	%eax, %ecx
	shrl	$31, %ecx
	subl	%ecx, %edx
	cmpl	4(%esp), %edx           # 4-byte Folded Reload
	movl	%edx, 20(%esp)          # 4-byte Spill
	jg	LBB30_49
# BB#34:                                # %if.end57
                                        #   in Loop: Header=BB30_12 Depth=1
	movl	%ecx, %edx
	addl	8(%esp), %edx           # 4-byte Folded Reload
	movl	%edx, 16(%esp)          # 4-byte Spill
	js	LBB30_49
# BB#35:                                # %for.body70.lr.ph
                                        #   in Loop: Header=BB30_12 Depth=1
	xorl	%edx, %edx
	testl	%eax, %eax
	movl	%eax, (%esp)            # 4-byte Spill
	setg	%dl
	xorl	%esi, %esi
	shll	$5, %edx
	subl	%eax, %edx
	movl	%edx, 32(%esp)          # 4-byte Spill
	leal	32(%eax), %edx
	movl	%edx, 28(%esp)          # 4-byte Spill
	movl	%eax, %edx
	movl	48(%esp), %eax          # 4-byte Reload
	negl	%edx
	movl	%edx, 56(%esp)          # 4-byte Spill
	movl	40(%esp), %edx          # 4-byte Reload
	subl	%ecx, %edx
	leal	(%eax,%edx,4), %ebp
	movl	(%esp), %eax            # 4-byte Reload
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB30_36:                               # %for.body70
                                        #   Parent Loop BB30_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	8(%esp), %edx           # 4-byte Folded Reload
	movl	$0, %edi
	jg	LBB30_43
# BB#37:                                # %if.then72
                                        #   in Loop: Header=BB30_36 Depth=2
	movl	12(%esp), %ecx          # 4-byte Reload
	testl	%eax, %eax
	movl	(%ecx,%edx,4), %edi
	js	LBB30_41
# BB#38:                                # %if.then.i224
                                        #   in Loop: Header=BB30_36 Depth=2
	je	LBB30_40
# BB#39:                                # %if.then3.i226
                                        #   in Loop: Header=BB30_36 Depth=2
	movl	(%esp), %eax            # 4-byte Reload
	movl	%eax, %ecx
	shll	%cl, %edi
	jmp	LBB30_43
LBB30_41:                               # %if.else9.i236
                                        #   in Loop: Header=BB30_36 Depth=2
	movl	28(%esp), %ecx          # 4-byte Reload
                                        # kill: %CL<def> %CL<kill> %ECX<kill>
	shll	%cl, %edi
	jmp	LBB30_42
LBB30_40:                               # %if.else.i229
                                        #   in Loop: Header=BB30_36 Depth=2
	movl	56(%esp), %ecx          # 4-byte Reload
                                        # kill: %CL<def> %CL<kill> %ECX<kill>
	shrl	%cl, %edi
LBB30_42:                               # %if.end77
                                        #   in Loop: Header=BB30_36 Depth=2
	movl	(%esp), %eax            # 4-byte Reload
LBB30_43:                               # %if.end77
                                        #   in Loop: Header=BB30_36 Depth=2
	movl	20(%esp), %ecx          # 4-byte Reload
	testl	%edx, %edx
	leal	(%ecx,%edx), %ebx
	je	LBB30_47
# BB#44:                                # %switch.early.test
                                        #   in Loop: Header=BB30_36 Depth=2
	cmpl	$-32, %eax
	je	LBB30_47
# BB#45:                                # %switch.early.test
                                        #   in Loop: Header=BB30_36 Depth=2
	testl	%eax, %eax
	je	LBB30_47
# BB#46:                                # %if.then83
                                        #   in Loop: Header=BB30_36 Depth=2
	movl	12(%esp), %eax          # 4-byte Reload
	movl	32(%esp), %ecx          # 4-byte Reload
	movl	-4(%eax,%edx,4), %eax
                                        # kill: %CL<def> %CL<kill> %ECX<kill>
	shrl	%cl, %eax
	orl	%eax, %edi
LBB30_47:                               # %if.end89
                                        #   in Loop: Header=BB30_36 Depth=2
	movl	(%ebp,%edx,4), %eax
	movl	$0, %ecx
	subl	%edi, %eax
	sbbl	$0, %ecx
	subl	%esi, %eax
	movl	%eax, (%ebp,%edx,4)
	sbbl	$0, %ecx
	cmpl	4(%esp), %ebx           # 4-byte Folded Reload
	movl	(%esp), %eax            # 4-byte Reload
	jge	LBB30_49
# BB#48:                                # %if.end89
                                        #   in Loop: Header=BB30_36 Depth=2
	andl	$1, %ecx
	cmpl	16(%esp), %edx          # 4-byte Folded Reload
	leal	1(%edx), %edx
	movl	%ecx, %esi
	jl	LBB30_36
LBB30_49:                               # %for.cond.cleanup69
                                        #   in Loop: Header=BB30_12 Depth=1
	cmpb	$0, 92(%esp)
	movl	40(%esp), %ebx          # 4-byte Reload
	je	LBB30_53
# BB#50:                                # %if.then107
                                        #   in Loop: Header=BB30_12 Depth=1
	movl	%eax, %edx
	sarl	$31, %edx
	addl	44(%esp), %edx          # 4-byte Folded Reload
	testl	%eax, %eax
	jns	LBB30_52
# BB#51:                                #   in Loop: Header=BB30_12 Depth=1
	addl	$32, %eax
LBB30_52:                               # %if.then107
                                        #   in Loop: Header=BB30_12 Depth=1
	movl	%eax, %ecx
	movl	$1, %eax
                                        # kill: %CL<def> %CL<kill> %ECX<kill>
	shll	%cl, %eax
	movl	96(%esp), %ecx
	orl	%eax, (%ecx,%edx,4)
LBB30_53:                               # %if.end121
                                        #   in Loop: Header=BB30_12 Depth=1
	movl	36(%esp), %edx          # 4-byte Reload
	cmpl	$1, (%edx,%ebx,4)       # [Perpect, Source: c1]
	sbbl	$-1, %ebx               # [Perpect, Source: c1]
LBB30_54:                               # %for.inc132
                                        #   in Loop: Header=BB30_12 Depth=1
	testl	%ebx, %ebx              # [Maybe, Source: c1]
	jle	LBB30_56
# BB#55:                                # %for.inc132
                                        #   in Loop: Header=BB30_12 Depth=1
	cmpl	8(%esp), %ebx           # 4-byte Folded Reload
	leal	-1(%ebx), %ebx          # [Perpect, Source: c1]
	jg	LBB30_12
LBB30_56:                               # %if.end136
	addl	$68, %esp
LBB30_57:                               # %if.end136
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$12
                                        # -- End function
	.def	 "??_0BigBase@ofw@@QAEAAV01@ABV01@@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"??_0BigBase@ofw@@QAEAAV01@ABV01@@Z" # -- Begin function ??_0BigBase@ofw@@QAEAAV01@ABV01@@Z
	.p2align	4, 0x90
"??_0BigBase@ofw@@QAEAAV01@ABV01@@Z":   # @"\01??_0BigBase@ofw@@QAEAAV01@ABV01@@Z"
# BB#0:                                 # %entry
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	movl	%ecx, %esi
	movl	20(%esp), %ebp
	movl	$4, %ecx
	movl	4(%esi), %ebx
	movl	%ebx, %eax
	mull	%ecx
	movl	$-1, %edx
	cmovnol	%eax, %edx
	pushl	%edx
	calll	"??_U@YAPAXI@Z"
	addl	$4, %esp
	shll	$2, %ebx
	movl	%eax, %edi
	pushl	%ebx
	pushl	$0
	pushl	%edi
	calll	_memset
	addl	$12, %esp
	movl	%esi, %ecx
	pushl	%edi
	pushl	$1
	pushl	%ebp
	calll	"?divideWithRemainder@BigBase@ofw@@AAEXABV12@_NPAI@Z"
	movl	4(%esi), %eax
	shll	$2, %eax
	pushl	%eax
	pushl	%edi
	pushl	(%esi)
	calll	_memcpy
	addl	$12, %esp
	pushl	%edi
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
	movl	4(%esi), %ecx
	movl	(%esi), %eax
	decl	%ecx
	js	LBB31_5
	.p2align	4, 0x90
LBB31_1:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%eax,%ecx,4)
	jne	LBB31_4
# BB#2:                                 # %for.cond.i
                                        #   in Loop: Header=BB31_1 Depth=1
	decl	%ecx
	jns	LBB31_1
# BB#3:                                 # %if.else.thread.i
	movl	$0, 4(%esi)
	jmp	LBB31_6
LBB31_5:                                # %if.else.i
	testl	%eax, %eax
	movl	$0, 4(%esi)
	je	LBB31_7
LBB31_6:                                # %delete.notnull.i
	pushl	%eax
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
	jmp	LBB31_7
LBB31_4:                                # %if.then4.i
	incl	%ecx
	movl	%ecx, 4(%esi)
LBB31_7:                                # %"\01?trim@BigBase@ofw@@AAEXXZ.exit"
	movl	%esi, %eax
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$4
                                        # -- End function
	.def	 "??DBigBase@ofw@@QBE?AV01@ABV01@@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"??DBigBase@ofw@@QBE?AV01@ABV01@@Z" # -- Begin function ??DBigBase@ofw@@QBE?AV01@ABV01@@Z
	.p2align	4, 0x90
"??DBigBase@ofw@@QBE?AV01@ABV01@@Z":    # @"\01??DBigBase@ofw@@QBE?AV01@ABV01@@Z"
Lfunc_begin10:
# BB#0:                                 # %entry
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	andl	$-8, %esp
	subl	$40, %esp
	movl	%esp, %esi
	movl	%ebp, 16(%esi)
	movl	%esp, 20(%esi)
	movl	$-1, 32(%esi)
	movl	$"___ehhandler$??DBigBase@ofw@@QBE?AV01@ABV01@@Z", 28(%esi)
	movl	%ecx, %edi
	leal	24(%esi), %eax
	movl	12(%ebp), %edx
	movl	%fs:0, %ecx
	movl	%ecx, 24(%esi)
	movl	%eax, %fs:0
	movl	$0, 4(%esi)
	movl	$0, (%esi)
	movl	4(%edi), %ebx
	testl	%ebx, %ebx
	je	LBB32_2
# BB#1:                                 # %if.then.i.i
	movl	$4, %ecx
	movl	%ebx, %eax
	mull	%ecx
	movl	$-1, %edx
	cmovnol	%eax, %edx
	pushl	%edx
	calll	"??_U@YAPAXI@Z"
	addl	$4, %esp
	movl	%eax, (%esi)
	movl	%ebx, 4(%esi)
	shll	$2, %ebx
	pushl	%ebx
	pushl	(%edi)
	pushl	%eax
	calll	_memcpy
	movl	12(%ebp), %edx
	addl	$12, %esp
LBB32_2:                                # %"\01??0BigBase@ofw@@QAE@ABV01@@Z.exit"
	movl	$0, 32(%esi)
	movl	%esi, %ecx
	pushl	%edx
	calll	"??XBigBase@ofw@@QAEAAV01@ABV01@@Z"
# BB#3:                                 # %invoke.cont
	movl	4(%eax), %edx
	movl	8(%ebp), %ebx
	testl	%edx, %edx
	movl	$0, 4(%ebx)
	movl	$0, (%ebx)
	je	LBB32_4
# BB#5:                                 # %if.then.i.i11
	movl	%eax, 12(%esi)          # 4-byte Spill
	movl	$4, %ecx
	movl	%edx, %eax
	movl	%edx, 8(%esi)           # 4-byte Spill
	mull	%ecx
	movl	$-1, %edx
	cmovnol	%eax, %edx
	pushl	%edx
	calll	"??_U@YAPAXI@Z"
	movl	12(%esi), %ecx          # 4-byte Reload
	addl	$4, %esp
# BB#6:                                 # %call.i.i.i9.noexc
	movl	8(%ebp), %ebx
	movl	8(%esi), %edx           # 4-byte Reload
	movl	(%ecx), %edi
	movl	%eax, (%ebx)
	movl	%edx, 4(%ebx)
	shll	$2, %edx
	pushl	%edx
	pushl	%edi
	pushl	%eax
	calll	_memcpy
	addl	$12, %esp
	testl	%edi, %edi
	je	LBB32_9
LBB32_8:                                # %delete.notnull.i
	pushl	%edi
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
LBB32_9:                                # %"\01??1BigBase@ofw@@QAE@XZ.exit"
	movl	24(%esi), %eax
	movl	%eax, %fs:0
	movl	%ebx, %eax
	leal	-12(%ebp), %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$8
LBB32_4:                                # %invoke.cont.invoke.cont3_crit_edge
	movl	(%esi), %edi
	testl	%edi, %edi
	jne	LBB32_8
	jmp	LBB32_9
	.def	 "?dtor$10@?0???DBigBase@ofw@@QBE?AV01@ABV01@@Z@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$10@?0???DBigBase@ofw@@QBE?AV01@ABV01@@Z@4HA":
LBB32_10:                               # %ehcleanup
	pushl	%ebp
	subl	$12, %esp
	leal	-36(%ebp), %esi
	movl	16(%esi), %ebp
	movl	(%esi), %eax
	testl	%eax, %eax
	je	LBB32_12
# BB#11:                                # %delete.notnull.i16
	pushl	%eax
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
LBB32_12:                               # %"\01??1BigBase@ofw@@QAE@XZ.exit17"
	addl	$12, %esp
	popl	%ebp
	retl                            # CLEANUPRET
Lfunc_end10:
	.section	.xdata,"dr"
	.p2align	2
"L__ehtable$??DBigBase@ofw@@QBE?AV01@ABV01@@Z":
	.long	429065506               # MagicNumber
	.long	1                       # MaxState
	.long	("$stateUnwindMap$??DBigBase@ofw@@QBE?AV01@ABV01@@Z") # UnwindMap
	.long	0                       # NumTryBlocks
	.long	0                       # TryBlockMap
	.long	0                       # IPMapEntries
	.long	0                       # IPToStateXData
	.long	0                       # ESTypeList
	.long	1                       # EHFlags
"$stateUnwindMap$??DBigBase@ofw@@QBE?AV01@ABV01@@Z":
	.long	-1                      # ToState
	.long	"?dtor$10@?0???DBigBase@ofw@@QBE?AV01@ABV01@@Z@4HA" # Action
	.text
                                        # -- End function
	.def	 "??LBigBase@ofw@@QBE?AV01@ABV01@@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"??LBigBase@ofw@@QBE?AV01@ABV01@@Z" # -- Begin function ??LBigBase@ofw@@QBE?AV01@ABV01@@Z
	.p2align	4, 0x90
"??LBigBase@ofw@@QBE?AV01@ABV01@@Z":    # @"\01??LBigBase@ofw@@QBE?AV01@ABV01@@Z"
Lfunc_begin11:
# BB#0:                                 # %entry
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	andl	$-8, %esp
	subl	$48, %esp
	movl	%esp, %esi
	movl	%ebp, 24(%esi)
	movl	%esp, 28(%esi)
	movl	$-1, 40(%esi)
	movl	$"___ehhandler$??LBigBase@ofw@@QBE?AV01@ABV01@@Z", 36(%esi)
	leal	32(%esi), %eax
	movl	8(%ebp), %ebx
	movl	%fs:0, %edi
	movl	%edi, 32(%esi)
	movl	%eax, %fs:0
	movl	$0, 4(%esi)
	movl	$0, (%esi)
	movl	%ecx, 12(%esi)          # 4-byte Spill
	movl	4(%ecx), %edi
	testl	%edi, %edi
	je	LBB33_8
# BB#1:                                 # %"\01??0BigBase@ofw@@QAE@ABV01@@Z.exit"
	movl	$4, %ecx
	movl	%edi, %eax
	mull	%ecx
	movl	$-1, %edx
	cmovnol	%eax, %edx
	pushl	%edx
	calll	"??_U@YAPAXI@Z"
	addl	$4, %esp
	movl	%eax, %ebx
	leal	(,%edi,4), %eax
	movl	%ebx, (%esi)
	movl	%edi, 4(%esi)
	movl	%eax, 16(%esi)          # 4-byte Spill
	pushl	%eax
	movl	12(%esi), %eax          # 4-byte Reload
	pushl	(%eax)
	pushl	%ebx
	calll	_memcpy
	addl	$12, %esp
	movl	%esi, %ecx
	pushl	$0
	pushl	$0
	pushl	12(%ebp)
	calll	"?divideWithRemainder@BigBase@ofw@@AAEXABV12@_NPAI@Z"
	movl	%edi, %eax
	decl	%eax
	js	LBB33_7
# BB#2:                                 # %for.body.i.i.preheader
	movl	8(%ebp), %edi
	movl	16(%esi), %ecx          # 4-byte Reload
	.p2align	4, 0x90
LBB33_4:                                # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%ebx,%eax,4)
	jne	LBB33_5
# BB#3:                                 # %for.cond.i.i
                                        #   in Loop: Header=BB33_4 Depth=1
	addl	$-4, %ecx
	decl	%eax
	jns	LBB33_4
# BB#9:                                 # %invoke.cont3
	movl	$0, 4(%esi)
	pushl	%ebx
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
	jmp	LBB33_10
LBB33_8:                                # %invoke.cont3.thread
	movl	%esi, %ecx
	pushl	$0
	pushl	$0
	pushl	12(%ebp)
	calll	"?divideWithRemainder@BigBase@ofw@@AAEXABV12@_NPAI@Z"
	movl	$0, 4(%ebx)
	movl	$0, 4(%esi)
	movl	$0, (%ebx)
	movl	%ebx, %edi
	jmp	LBB33_12
LBB33_7:                                # %invoke.cont3.thread26
	movl	$0, 4(%esi)
	pushl	%ebx
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
	movl	8(%ebp), %edi
LBB33_10:                               # %delete.notnull.i
	movl	$0, 4(%edi)
	movl	$0, (%edi)
	jmp	LBB33_11
LBB33_5:                                # %if.then.i.i13
	incl	%eax
	movl	%ecx, 16(%esi)          # 4-byte Spill
	movl	$4, %ecx
	movl	$0, 4(%edi)
	movl	%ebx, 12(%esi)          # 4-byte Spill
	movl	$0, (%edi)
	movl	$0, 40(%esi)
	movl	%eax, 4(%esi)
	movl	%eax, 20(%esi)          # 4-byte Spill
	mull	%ecx
	movl	$-1, %edx
	cmovnol	%eax, %edx
	pushl	%edx
	calll	"??_U@YAPAXI@Z"
	addl	$4, %esp
# BB#6:                                 # %invoke.cont3.thread24
	movl	8(%ebp), %edi
	movl	20(%esi), %ecx          # 4-byte Reload
	movl	%eax, (%edi)
	movl	%ecx, 4(%edi)
	pushl	16(%esi)                # 4-byte Folded Reload
	movl	12(%esi), %ebx          # 4-byte Reload
	pushl	%ebx
	pushl	%eax
	calll	_memcpy
	addl	$12, %esp
LBB33_11:                               # %delete.notnull.i
	pushl	%ebx
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
LBB33_12:                               # %"\01??1BigBase@ofw@@QAE@XZ.exit"
	movl	32(%esi), %eax
	movl	%eax, %fs:0
	movl	%edi, %eax
	leal	-12(%ebp), %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$8
	.def	 "?dtor$13@?0???LBigBase@ofw@@QBE?AV01@ABV01@@Z@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$13@?0???LBigBase@ofw@@QBE?AV01@ABV01@@Z@4HA":
LBB33_13:                               # %"\01??1BigBase@ofw@@QAE@XZ.exit19"
	pushl	%ebp
	subl	$12, %esp
	leal	-44(%ebp), %esi
	movl	24(%esi), %ebp
	pushl	12(%esi)                # 4-byte Folded Reload
	calll	"??_V@YAXPAX@Z"
	addl	$16, %esp
	popl	%ebp
	retl                            # CLEANUPRET
Lfunc_end11:
	.section	.xdata,"dr"
	.p2align	2
"L__ehtable$??LBigBase@ofw@@QBE?AV01@ABV01@@Z":
	.long	429065506               # MagicNumber
	.long	1                       # MaxState
	.long	("$stateUnwindMap$??LBigBase@ofw@@QBE?AV01@ABV01@@Z") # UnwindMap
	.long	0                       # NumTryBlocks
	.long	0                       # TryBlockMap
	.long	0                       # IPMapEntries
	.long	0                       # IPToStateXData
	.long	0                       # ESTypeList
	.long	1                       # EHFlags
"$stateUnwindMap$??LBigBase@ofw@@QBE?AV01@ABV01@@Z":
	.long	-1                      # ToState
	.long	"?dtor$13@?0???LBigBase@ofw@@QBE?AV01@ABV01@@Z@4HA" # Action
	.text
                                        # -- End function
	.def	 "??KBigBase@ofw@@QBE?AV01@ABV01@@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"??KBigBase@ofw@@QBE?AV01@ABV01@@Z" # -- Begin function ??KBigBase@ofw@@QBE?AV01@ABV01@@Z
	.p2align	4, 0x90
"??KBigBase@ofw@@QBE?AV01@ABV01@@Z":    # @"\01??KBigBase@ofw@@QBE?AV01@ABV01@@Z"
Lfunc_begin12:
# BB#0:                                 # %entry
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	andl	$-8, %esp
	subl	$40, %esp
	movl	%esp, %esi
	movl	%ebp, 16(%esi)
	movl	%esp, 20(%esi)
	movl	$-1, 32(%esi)
	movl	$"___ehhandler$??KBigBase@ofw@@QBE?AV01@ABV01@@Z", 28(%esi)
	movl	%ecx, %edi
	leal	24(%esi), %eax
	movl	12(%ebp), %edx
	movl	%fs:0, %ecx
	movl	%ecx, 24(%esi)
	movl	%eax, %fs:0
	movl	$0, 4(%esi)
	movl	$0, (%esi)
	movl	4(%edi), %ebx
	testl	%ebx, %ebx
	je	LBB34_2
# BB#1:                                 # %if.then.i.i
	movl	$4, %ecx
	movl	%ebx, %eax
	mull	%ecx
	movl	$-1, %edx
	cmovnol	%eax, %edx
	pushl	%edx
	calll	"??_U@YAPAXI@Z"
	addl	$4, %esp
	movl	%eax, (%esi)
	movl	%ebx, 4(%esi)
	shll	$2, %ebx
	pushl	%ebx
	pushl	(%edi)
	pushl	%eax
	calll	_memcpy
	movl	12(%ebp), %edx
	addl	$12, %esp
LBB34_2:                                # %"\01??0BigBase@ofw@@QAE@ABV01@@Z.exit"
	movl	$0, 32(%esi)
	movl	%esi, %ecx
	pushl	%edx
	calll	"??_0BigBase@ofw@@QAEAAV01@ABV01@@Z"
# BB#3:                                 # %invoke.cont
	movl	4(%eax), %edx
	movl	8(%ebp), %ebx
	testl	%edx, %edx
	movl	$0, 4(%ebx)
	movl	$0, (%ebx)
	je	LBB34_4
# BB#5:                                 # %if.then.i.i11
	movl	%eax, 12(%esi)          # 4-byte Spill
	movl	$4, %ecx
	movl	%edx, %eax
	movl	%edx, 8(%esi)           # 4-byte Spill
	mull	%ecx
	movl	$-1, %edx
	cmovnol	%eax, %edx
	pushl	%edx
	calll	"??_U@YAPAXI@Z"
	movl	12(%esi), %ecx          # 4-byte Reload
	addl	$4, %esp
# BB#6:                                 # %call.i.i.i9.noexc
	movl	8(%ebp), %ebx
	movl	8(%esi), %edx           # 4-byte Reload
	movl	(%ecx), %edi
	movl	%eax, (%ebx)
	movl	%edx, 4(%ebx)
	shll	$2, %edx
	pushl	%edx
	pushl	%edi
	pushl	%eax
	calll	_memcpy
	addl	$12, %esp
	testl	%edi, %edi
	je	LBB34_9
LBB34_8:                                # %delete.notnull.i
	pushl	%edi
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
LBB34_9:                                # %"\01??1BigBase@ofw@@QAE@XZ.exit"
	movl	24(%esi), %eax
	movl	%eax, %fs:0
	movl	%ebx, %eax
	leal	-12(%ebp), %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$8
LBB34_4:                                # %invoke.cont.invoke.cont3_crit_edge
	movl	(%esi), %edi
	testl	%edi, %edi
	jne	LBB34_8
	jmp	LBB34_9
	.def	 "?dtor$10@?0???KBigBase@ofw@@QBE?AV01@ABV01@@Z@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$10@?0???KBigBase@ofw@@QBE?AV01@ABV01@@Z@4HA":
LBB34_10:                               # %ehcleanup
	pushl	%ebp
	subl	$12, %esp
	leal	-36(%ebp), %esi
	movl	16(%esi), %ebp
	movl	(%esi), %eax
	testl	%eax, %eax
	je	LBB34_12
# BB#11:                                # %delete.notnull.i16
	pushl	%eax
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
LBB34_12:                               # %"\01??1BigBase@ofw@@QAE@XZ.exit17"
	addl	$12, %esp
	popl	%ebp
	retl                            # CLEANUPRET
Lfunc_end12:
	.section	.xdata,"dr"
	.p2align	2
"L__ehtable$??KBigBase@ofw@@QBE?AV01@ABV01@@Z":
	.long	429065506               # MagicNumber
	.long	1                       # MaxState
	.long	("$stateUnwindMap$??KBigBase@ofw@@QBE?AV01@ABV01@@Z") # UnwindMap
	.long	0                       # NumTryBlocks
	.long	0                       # TryBlockMap
	.long	0                       # IPMapEntries
	.long	0                       # IPToStateXData
	.long	0                       # ESTypeList
	.long	1                       # EHFlags
"$stateUnwindMap$??KBigBase@ofw@@QBE?AV01@ABV01@@Z":
	.long	-1                      # ToState
	.long	"?dtor$10@?0???KBigBase@ofw@@QBE?AV01@ABV01@@Z@4HA" # Action
	.text
                                        # -- End function
	.def	 "??8BigBase@ofw@@QBE_NABV01@@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"??8BigBase@ofw@@QBE_NABV01@@Z" # -- Begin function ??8BigBase@ofw@@QBE_NABV01@@Z
	.p2align	4, 0x90
"??8BigBase@ofw@@QBE_NABV01@@Z":        # @"\01??8BigBase@ofw@@QBE_NABV01@@Z"
# BB#0:                                 # %entry
	movl	4(%esp), %eax
	movl	4(%ecx), %edx
	cmpl	4(%eax), %edx
	jne	LBB35_1
# BB#2:                                 # %if.then
	shll	$2, %edx
	pushl	%edx
	pushl	(%eax)
	pushl	(%ecx)
	calll	_memcmp
	addl	$12, %esp
	testl	%eax, %eax
	sete	%al
                                        # kill: %AL<def> %AL<kill> %EAX<kill>
	retl	$4
LBB35_1:
	xorl	%eax, %eax
                                        # kill: %AL<def> %AL<kill> %EAX<kill>
	retl	$4
                                        # -- End function
	.def	 "??9BigBase@ofw@@QBE_NABV01@@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"??9BigBase@ofw@@QBE_NABV01@@Z" # -- Begin function ??9BigBase@ofw@@QBE_NABV01@@Z
	.p2align	4, 0x90
"??9BigBase@ofw@@QBE_NABV01@@Z":        # @"\01??9BigBase@ofw@@QBE_NABV01@@Z"
# BB#0:                                 # %entry
	pushl	%esi
	movl	8(%esp), %edx
	movl	4(%ecx), %esi
	movb	$1, %al
	cmpl	4(%edx), %esi
	jne	LBB36_2
# BB#1:                                 # %if.then.i
	shll	$2, %esi
	pushl	%esi
	pushl	(%edx)
	pushl	(%ecx)
	calll	_memcmp
	addl	$12, %esp
	testl	%eax, %eax
	setne	%al
LBB36_2:                                # %"\01??8BigBase@ofw@@QBE_NABV01@@Z.exit"
	popl	%esi
	retl	$4
                                        # -- End function
	.def	 "??MBigBase@ofw@@QBE_NABV01@@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"??MBigBase@ofw@@QBE_NABV01@@Z" # -- Begin function ??MBigBase@ofw@@QBE_NABV01@@Z
	.p2align	4, 0x90
"??MBigBase@ofw@@QBE_NABV01@@Z":        # @"\01??MBigBase@ofw@@QBE_NABV01@@Z"
# BB#0:                                 # %entry
	pushl	%edi
	pushl	%esi
	movl	12(%esp), %esi
	movl	4(%ecx), %edx
	movl	4(%esi), %edi
	cmpl	%edi, %edx
	jbe	LBB37_2
LBB37_6:
	xorl	%eax, %eax
	jmp	LBB37_7
LBB37_2:                                # %if.else
	movb	$1, %al
	jb	LBB37_7
# BB#3:                                 # %if.else7
	orl	%edx, %edi
	je	LBB37_6
# BB#4:                                 # %if.else13
	movl	(%esi), %esi
	leal	-4(,%edx,4), %edx
	addl	%edx, %esi
	addl	(%ecx), %edx
	.p2align	4, 0x90
LBB37_5:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	(%edx), %ecx
	addl	$-4, %edx
	cmpl	(%esi), %ecx
	leal	-4(%esi), %esi
	jae	LBB37_5
LBB37_7:                                # %return
                                        # kill: %AL<def> %AL<kill> %EAX<kill>
	popl	%esi
	popl	%edi
	retl	$4
                                        # -- End function
	.def	 "??OBigBase@ofw@@QBE_NABV01@@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"??OBigBase@ofw@@QBE_NABV01@@Z" # -- Begin function ??OBigBase@ofw@@QBE_NABV01@@Z
	.p2align	4, 0x90
"??OBigBase@ofw@@QBE_NABV01@@Z":        # @"\01??OBigBase@ofw@@QBE_NABV01@@Z"
# BB#0:                                 # %entry
	pushl	%edi
	pushl	%esi
	movl	12(%esp), %esi
	movl	4(%ecx), %edi
	movl	4(%esi), %edx
	cmpl	%edi, %edx
	jbe	LBB38_2
LBB38_6:
	xorl	%eax, %eax
	jmp	LBB38_7
LBB38_2:                                # %if.else.i
	movb	$1, %al
	jb	LBB38_7
# BB#3:                                 # %if.else7.i
	orl	%edx, %edi
	je	LBB38_6
# BB#4:                                 # %if.else13.i
	movl	(%ecx), %ecx
	leal	-4(,%edx,4), %edx
	addl	%edx, %ecx
	addl	(%esi), %edx
	.p2align	4, 0x90
LBB38_5:                                # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movl	(%edx), %esi
	addl	$-4, %edx
	cmpl	(%ecx), %esi
	leal	-4(%ecx), %ecx
	jae	LBB38_5
LBB38_7:                                # %"\01??MBigBase@ofw@@QBE_NABV01@@Z.exit"
                                        # kill: %AL<def> %AL<kill> %EAX<kill>
	popl	%esi
	popl	%edi
	retl	$4
                                        # -- End function
	.def	 "??NBigBase@ofw@@QBE_NABV01@@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"??NBigBase@ofw@@QBE_NABV01@@Z" # -- Begin function ??NBigBase@ofw@@QBE_NABV01@@Z
	.p2align	4, 0x90
"??NBigBase@ofw@@QBE_NABV01@@Z":        # @"\01??NBigBase@ofw@@QBE_NABV01@@Z"
# BB#0:                                 # %entry
	pushl	%edi
	pushl	%esi
	movl	12(%esp), %edx
	movl	4(%ecx), %edi
	movb	$1, %al
	movl	4(%edx), %esi
	cmpl	%edi, %esi
	ja	LBB39_6
# BB#1:                                 # %if.else.i
	cmpl	%edi, %esi
	jb	LBB39_5
# BB#2:                                 # %if.else7.i
	orl	%esi, %edi
	je	LBB39_6
# BB#3:                                 # %if.else13.i
	movl	(%ecx), %ecx
	leal	-4(,%esi,4), %eax
	addl	%eax, %ecx
	addl	(%edx), %eax
	.p2align	4, 0x90
LBB39_4:                                # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movl	(%eax), %edx
	addl	$-4, %eax
	cmpl	(%ecx), %edx
	leal	-4(%ecx), %ecx
	jae	LBB39_4
LBB39_5:
	xorl	%eax, %eax
LBB39_6:                                # %"\01??MBigBase@ofw@@QBE_NABV01@@Z.exit"
                                        # kill: %AL<def> %AL<kill> %EAX<kill>
	popl	%esi
	popl	%edi
	retl	$4
                                        # -- End function
	.def	 "??PBigBase@ofw@@QBE_NABV01@@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"??PBigBase@ofw@@QBE_NABV01@@Z" # -- Begin function ??PBigBase@ofw@@QBE_NABV01@@Z
	.p2align	4, 0x90
"??PBigBase@ofw@@QBE_NABV01@@Z":        # @"\01??PBigBase@ofw@@QBE_NABV01@@Z"
# BB#0:                                 # %entry
	pushl	%edi
	pushl	%esi
	movl	12(%esp), %edx
	movl	4(%ecx), %esi
	movb	$1, %al
	movl	4(%edx), %edi
	cmpl	%edi, %esi
	ja	LBB40_6
# BB#1:                                 # %if.else.i
	cmpl	%edi, %esi
	jb	LBB40_5
# BB#2:                                 # %if.else7.i
	orl	%esi, %edi
	je	LBB40_6
# BB#3:                                 # %if.else13.i
	movl	(%edx), %edx
	leal	-4(,%esi,4), %eax
	addl	%eax, %edx
	addl	(%ecx), %eax
	.p2align	4, 0x90
LBB40_4:                                # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movl	(%eax), %ecx
	addl	$-4, %eax
	cmpl	(%edx), %ecx
	leal	-4(%edx), %edx
	jae	LBB40_4
LBB40_5:
	xorl	%eax, %eax
LBB40_6:                                # %"\01??MBigBase@ofw@@QBE_NABV01@@Z.exit"
                                        # kill: %AL<def> %AL<kill> %EAX<kill>
	popl	%esi
	popl	%edi
	retl	$4
                                        # -- End function
	.def	 "?iszero@BigBase@ofw@@QBE_NXZ";
	.scl	2;
	.type	32;
	.endef
	.globl	"?iszero@BigBase@ofw@@QBE_NXZ" # -- Begin function ?iszero@BigBase@ofw@@QBE_NXZ
	.p2align	4, 0x90
"?iszero@BigBase@ofw@@QBE_NXZ":         # @"\01?iszero@BigBase@ofw@@QBE_NXZ"
# BB#0:                                 # %entry
	cmpl	$0, 4(%ecx)
	sete	%al
	retl
                                        # -- End function
	.def	 "?gcd@BigBase@ofw@@QBE?AV12@ABV12@@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?gcd@BigBase@ofw@@QBE?AV12@ABV12@@Z" # -- Begin function ?gcd@BigBase@ofw@@QBE?AV12@ABV12@@Z
	.p2align	4, 0x90
"?gcd@BigBase@ofw@@QBE?AV12@ABV12@@Z":  # @"\01?gcd@BigBase@ofw@@QBE?AV12@ABV12@@Z"
Lfunc_begin13:
# BB#0:                                 # %entry
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$80, %esp
	movl	%esp, -28(%ebp)
	movl	$-1, -16(%ebp)
	movl	$"___ehhandler$?gcd@BigBase@ofw@@QBE?AV12@ABV12@@Z", -20(%ebp)
	movl	8(%ebp), %esi
	movl	12(%ebp), %ebx
	leal	-24(%ebp), %eax
	movl	%fs:0, %edx
	movl	%edx, -24(%ebp)
	movl	%eax, %fs:0
	movl	$0, (%esi)
	movl	$0, -80(%ebp)
	movl	$0, 4(%esi)
	movl	$0, -76(%ebp)
	movl	4(%ecx), %eax
	movl	4(%ebx), %edi
	movl	%ecx, -36(%ebp)         # 4-byte Spill
	cmpl	%edi, %eax
	movl	%eax, -40(%ebp)         # 4-byte Spill
	movl	%edi, -32(%ebp)         # 4-byte Spill
	jbe	LBB42_4
# BB#1:                                 # %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i74.thread"
	movl	$0, (%esi)
	movl	$0, 4(%esi)
LBB42_2:                                # %if.then.i.i76
	movl	$4, %ecx
	movl	$0, -52(%ebp)
	movl	$0, -56(%ebp)
	movl	$0, -60(%ebp)
	movl	$0, -64(%ebp)
	movl	$0, -68(%ebp)
	movl	$0, -72(%ebp)
	movl	$0, -16(%ebp)
	mull	%ecx
	movl	$-1, %edx
	cmovnol	%eax, %edx
	pushl	%edx
	calll	"??_U@YAPAXI@Z"
	addl	$4, %esp
	movl	%eax, %ebx
# BB#3:                                 # %call.i.i.i.noexc77
	movl	-40(%ebp), %edi         # 4-byte Reload
	movl	8(%ebp), %esi
	leal	(,%edi,4), %eax
	movl	%ebx, (%esi)
	movl	%edi, 4(%esi)
	pushl	%eax
	movl	-36(%ebp), %eax         # 4-byte Reload
	pushl	(%eax)
	pushl	%ebx
	calll	_memcpy
	addl	$12, %esp
LBB42_18:                               # %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i86"
	cmpl	$0, -32(%ebp)           # 4-byte Folded Reload
	movl	$0, -80(%ebp)
	movl	$0, -76(%ebp)
	je	LBB42_29
# BB#19:                                # %if.then.i.i88
	movl	-32(%ebp), %eax         # 4-byte Reload
	movl	$4, %ecx
	movl	%edi, -40(%ebp)         # 4-byte Spill
	movl	%ebx, -52(%ebp)
	movl	%ebx, -56(%ebp)
	movl	$0, -60(%ebp)
	movl	$0, -64(%ebp)
	movl	$0, -68(%ebp)
	movl	$0, -72(%ebp)
	movl	$0, -16(%ebp)
	mull	%ecx
	movl	$-1, %edx
	cmovnol	%eax, %edx
	pushl	%edx
	movl	%ebx, -44(%ebp)         # 4-byte Spill
	calll	"??_U@YAPAXI@Z"
	movl	-44(%ebp), %ebx         # 4-byte Reload
	addl	$4, %esp
# BB#20:                                # %call.i.i.i.noexc89
	movl	-32(%ebp), %esi         # 4-byte Reload
	movl	%eax, -80(%ebp)
	leal	(,%esi,4), %ecx
	movl	%esi, -76(%ebp)
	pushl	%ecx
	movl	12(%ebp), %ecx
	pushl	(%ecx)
	movl	%eax, -36(%ebp)         # 4-byte Spill
	pushl	%eax
	calll	_memcpy
	addl	$12, %esp
	movl	-40(%ebp), %eax         # 4-byte Reload
	movl	%esi, %edi
	jmp	LBB42_21
LBB42_4:                                # %if.else.i
	jae	LBB42_8
# BB#5:                                 # %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i.thread"
	movl	$0, (%esi)
	movl	$0, 4(%esi)
	jmp	LBB42_6
LBB42_8:                                # %if.else7.i
	movl	%edi, %edx
	orl	%eax, %edx
	je	LBB42_16
# BB#9:                                 # %if.else13.i
	movl	(%ebx), %ebx
	leal	-4(,%eax,4), %edi
	addl	%edi, %ebx
	addl	(%ecx), %edi
	.p2align	4, 0x90
LBB42_10:                               # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movl	(%edi), %edx
	addl	$-4, %edi
	cmpl	(%ebx), %edx
	leal	-4(%ebx), %ebx
	jae	LBB42_10
# BB#11:                                # %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i"
	movl	-32(%ebp), %edi         # 4-byte Reload
	movl	$0, (%esi)
	movl	$0, 4(%esi)
	testl	%edi, %edi
	je	LBB42_12
LBB42_6:                                # %if.then.i.i
	movl	$4, %ecx
	movl	%edi, %eax
	movl	$0, -52(%ebp)
	movl	$0, -56(%ebp)
	movl	$0, -60(%ebp)
	movl	$0, -64(%ebp)
	movl	$0, -68(%ebp)
	movl	$0, -72(%ebp)
	movl	$0, -16(%ebp)
	mull	%ecx
	movl	$-1, %edx
	cmovnol	%eax, %edx
	pushl	%edx
	calll	"??_U@YAPAXI@Z"
	addl	$4, %esp
	movl	%eax, %edi
# BB#7:                                 # %call.i.i.i.noexc
	movl	8(%ebp), %esi
	movl	-32(%ebp), %eax         # 4-byte Reload
	movl	%edi, (%esi)
	movl	%eax, 4(%esi)
	leal	(,%eax,4), %eax
	pushl	%eax
	movl	12(%ebp), %eax
	pushl	(%eax)
	pushl	%edi
	calll	_memcpy
	addl	$12, %esp
	movl	-40(%ebp), %eax         # 4-byte Reload
LBB42_13:                               # %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i62"
	testl	%eax, %eax
	movl	$0, -80(%ebp)
	movl	$0, -76(%ebp)
	je	LBB42_29
# BB#14:                                # %if.then.i.i64
	movl	$4, %ecx
	movl	%edi, -52(%ebp)
	movl	%edi, -56(%ebp)
	movl	$0, -60(%ebp)
	movl	$0, -64(%ebp)
	movl	$0, -68(%ebp)
	movl	$0, -72(%ebp)
	movl	$0, -16(%ebp)
	mull	%ecx
	movl	$-1, %edx
	cmovnol	%eax, %edx
	pushl	%edx
	movl	%edi, -44(%ebp)         # 4-byte Spill
	calll	"??_U@YAPAXI@Z"
	movl	-44(%ebp), %ebx         # 4-byte Reload
	addl	$4, %esp
# BB#15:                                # %call.i.i.i.noexc65
	movl	-40(%ebp), %edi         # 4-byte Reload
	movl	%eax, -80(%ebp)
	leal	(,%edi,4), %ecx
	movl	%edi, -76(%ebp)
	pushl	%ecx
	movl	-36(%ebp), %ecx         # 4-byte Reload
	pushl	(%ecx)
	movl	%eax, -36(%ebp)         # 4-byte Spill
	pushl	%eax
	calll	_memcpy
	addl	$12, %esp
	movl	-32(%ebp), %eax         # 4-byte Reload
LBB42_21:                               # %while.body.lr.ph
	movl	8(%ebp), %esi
	movl	$0, -48(%ebp)           # 4-byte Folded Spill
	movl	$0, -32(%ebp)           # 4-byte Folded Spill
	cmpl	%edi, %eax
	jne	LBB42_30
	jmp	LBB42_23
	.p2align	4, 0x90
LBB42_45:                               # %invoke.cont27
                                        #   in Loop: Header=BB42_30 Depth=1
	movl	-84(%ebp), %esi         # 4-byte Reload
	movl	%eax, -80(%ebp)
	leal	(,%esi,4), %ecx
	movl	%esi, -76(%ebp)
	pushl	%ecx
	pushl	-32(%ebp)               # 4-byte Folded Reload
	movl	%eax, -36(%ebp)         # 4-byte Spill
	pushl	%eax
	calll	_memcpy
	addl	$12, %esp
	movl	%esi, %edi
	movl	-40(%ebp), %eax         # 4-byte Reload
	movl	8(%ebp), %esi
	cmpl	%edi, %eax
	jne	LBB42_30
LBB42_23:                               # %invoke.cont17
	shll	$2, %eax
	pushl	%eax
	pushl	-36(%ebp)               # 4-byte Folded Reload
	pushl	%ebx
	calll	_memcmp
	addl	$12, %esp
	testl	%eax, %eax
	je	LBB42_24
LBB42_30:                               # %if.end20
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%ebp), %eax         # 4-byte Reload
	movl	%edi, -40(%ebp)         # 4-byte Spill
	movl	%ebx, -52(%ebp)
	movl	%ebx, -56(%ebp)
	movl	%esi, %ecx
	movl	%eax, -60(%ebp)
	movl	%eax, -64(%ebp)
	movl	-32(%ebp), %eax         # 4-byte Reload
	movl	%eax, -68(%ebp)
	movl	-48(%ebp), %eax         # 4-byte Reload
	movl	%eax, -72(%ebp)
	leal	-80(%ebp), %eax
	pushl	%eax
	leal	-92(%ebp), %eax
	pushl	%eax
	movl	%ebx, -44(%ebp)         # 4-byte Spill
	calll	"??LBigBase@ofw@@QBE?AV01@ABV01@@Z"
	movl	-44(%ebp), %ebx         # 4-byte Reload
# BB#31:                                # %invoke.cont21
                                        #   in Loop: Header=BB42_30 Depth=1
	cmpl	$0, -48(%ebp)           # 4-byte Folded Reload
	je	LBB42_33
# BB#32:                                # %delete.notnull.i.i.i99
                                        #   in Loop: Header=BB42_30 Depth=1
	pushl	-32(%ebp)               # 4-byte Folded Reload
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
LBB42_33:                               # %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i103"
                                        #   in Loop: Header=BB42_30 Depth=1
	movl	-88(%ebp), %eax
	testl	%eax, %eax
	je	LBB42_34
# BB#35:                                # %if.then.i.i105
                                        #   in Loop: Header=BB42_30 Depth=1
	movl	$4, %ecx
	movl	%eax, -84(%ebp)         # 4-byte Spill
	movl	$1, -16(%ebp)
	mull	%ecx
	movl	$-1, %edx
	cmovol	%edx, %eax
	pushl	%eax
	calll	"??_U@YAPAXI@Z"
	addl	$4, %esp
	movl	%eax, %edi
# BB#36:                                # %call.i.i.i.noexc106
                                        #   in Loop: Header=BB42_30 Depth=1
	movl	-84(%ebp), %eax         # 4-byte Reload
	movl	-92(%ebp), %esi
	leal	(,%eax,4), %eax
	pushl	%eax
	pushl	%esi
	pushl	%edi
	calll	_memcpy
	addl	$12, %esp
	movl	-44(%ebp), %ebx         # 4-byte Reload
	movl	%edi, -32(%ebp)         # 4-byte Spill
	movl	%edi, -48(%ebp)         # 4-byte Spill
	jmp	LBB42_37
	.p2align	4, 0x90
LBB42_34:                               # %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i103.invoke.cont22_crit_edge"
                                        #   in Loop: Header=BB42_30 Depth=1
	movl	-92(%ebp), %esi
	movl	$0, -84(%ebp)           # 4-byte Folded Spill
	movl	$0, -32(%ebp)           # 4-byte Folded Spill
	movl	$0, -48(%ebp)           # 4-byte Folded Spill
LBB42_37:                               # %invoke.cont22
                                        #   in Loop: Header=BB42_30 Depth=1
	movl	-40(%ebp), %edi         # 4-byte Reload
	testl	%esi, %esi
	je	LBB42_39
# BB#38:                                # %delete.notnull.i111
                                        #   in Loop: Header=BB42_30 Depth=1
	pushl	%esi
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
LBB42_39:                               # %"\01??1BigBase@ofw@@QAE@XZ.exit112"
                                        #   in Loop: Header=BB42_30 Depth=1
	testl	%ebx, %ebx
	je	LBB42_41
# BB#40:                                # %delete.notnull.i.i.i115
                                        #   in Loop: Header=BB42_30 Depth=1
	pushl	%ebx
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
	movl	$0, -16(%ebp)
LBB42_41:                               # %if.then.i.i121
                                        #   in Loop: Header=BB42_30 Depth=1
	movl	8(%ebp), %eax
	movl	$4, %ecx
	movl	$-1, %esi
	movl	$0, -52(%ebp)
	movl	$0, -56(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	%edi, %eax
	mull	%ecx
	movl	-36(%ebp), %edx         # 4-byte Reload
	cmovol	%esi, %eax
	movl	-32(%ebp), %esi         # 4-byte Reload
	movl	%edx, -60(%ebp)
	movl	%edx, -36(%ebp)         # 4-byte Spill
	movl	%edx, -64(%ebp)
	movl	-48(%ebp), %edx         # 4-byte Reload
	movl	%esi, -68(%ebp)
	movl	%edx, -72(%ebp)
	pushl	%eax
	calll	"??_U@YAPAXI@Z"
	addl	$4, %esp
	movl	-84(%ebp), %ebx         # 4-byte Reload
	movl	%eax, %edi
# BB#42:                                # %invoke.cont25
                                        #   in Loop: Header=BB42_30 Depth=1
	movl	8(%ebp), %esi
	movl	-40(%ebp), %eax         # 4-byte Reload
	movl	%edi, (%esi)
	movl	%eax, 4(%esi)
	leal	(,%eax,4), %eax
	pushl	%eax
	movl	-36(%ebp), %esi         # 4-byte Reload
	pushl	%esi
	pushl	%edi
	calll	_memcpy
	addl	$12, %esp
	pushl	%esi
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
	testl	%ebx, %ebx
	movl	$0, -80(%ebp)
	movl	$0, -76(%ebp)
	je	LBB42_43
# BB#44:                                # %if.then.i.i133
                                        #   in Loop: Header=BB42_30 Depth=1
	movl	%ebx, %eax
	movl	$4, %ecx
	movl	-32(%ebp), %esi         # 4-byte Reload
	movl	%edi, -52(%ebp)
	movl	%edi, -56(%ebp)
	movl	$0, -60(%ebp)
	movl	$0, -64(%ebp)
	movl	%eax, -84(%ebp)         # 4-byte Spill
	mull	%ecx
	movl	$-1, %edx
	cmovol	%edx, %eax
	movl	-48(%ebp), %edx         # 4-byte Reload
	movl	%esi, -68(%ebp)
	movl	%edx, -72(%ebp)
	pushl	%eax
	movl	%edi, -44(%ebp)         # 4-byte Spill
	calll	"??_U@YAPAXI@Z"
	movl	-44(%ebp), %ebx         # 4-byte Reload
	addl	$4, %esp
	jmp	LBB42_45
LBB42_43:
	movl	-48(%ebp), %eax         # 4-byte Reload
	movl	8(%ebp), %esi
	xorl	%edi, %edi
	testl	%eax, %eax
	je	LBB42_27
LBB42_26:                               # %delete.notnull.i143
	pushl	-32(%ebp)               # 4-byte Folded Reload
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
LBB42_27:                               # %"\01??1BigBase@ofw@@QAE@XZ.exit144"
	testl	%edi, %edi
	je	LBB42_29
# BB#28:                                # %delete.notnull.i53
	pushl	%edi
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
LBB42_29:                               # %"\01??1BigBase@ofw@@QAE@XZ.exit54"
	movl	-24(%ebp), %eax
	movl	%eax, %fs:0
	movl	%esi, %eax
	addl	$80, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$8
LBB42_16:                               # %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i74"
	testl	%eax, %eax
	movl	$0, (%esi)
	movl	$0, 4(%esi)
	jne	LBB42_2
# BB#17:
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	jmp	LBB42_18
LBB42_24:
	movl	-36(%ebp), %edi         # 4-byte Reload
	movl	-48(%ebp), %eax         # 4-byte Reload
	testl	%eax, %eax
	jne	LBB42_26
	jmp	LBB42_27
LBB42_12:
	xorl	%edi, %edi
	movl	$0, -32(%ebp)           # 4-byte Folded Spill
	jmp	LBB42_13
	.def	 "?dtor$46@?0??gcd@BigBase@ofw@@QBE?AV12@ABV12@@Z@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$46@?0??gcd@BigBase@ofw@@QBE?AV12@ABV12@@Z@4HA":
LBB42_46:                               # %ehcleanup
	pushl	%ebp
	subl	$12, %esp
	addl	$12, %ebp
	movl	-92(%ebp), %eax
	testl	%eax, %eax
	je	LBB42_48
# BB#47:                                # %delete.notnull.i139
	pushl	%eax
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
LBB42_48:                               # %"\01??1BigBase@ofw@@QAE@XZ.exit140"
	movl	-44(%ebp), %eax         # 4-byte Reload
	movl	-36(%ebp), %ecx         # 4-byte Reload
	movl	$0, -68(%ebp)
	movl	$0, -72(%ebp)
	movl	%eax, -52(%ebp)
	movl	%eax, -56(%ebp)
	movl	%ecx, -60(%ebp)
	movl	%ecx, -64(%ebp)
	addl	$12, %esp
	popl	%ebp
	retl                            # CLEANUPRET
	.def	 "?dtor$49@?0??gcd@BigBase@ofw@@QBE?AV12@ABV12@@Z@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$49@?0??gcd@BigBase@ofw@@QBE?AV12@ABV12@@Z@4HA":
LBB42_49:                               # %ehcleanup29
	pushl	%ebp
	subl	$12, %esp
	addl	$12, %ebp
	movl	-52(%ebp), %eax
	movl	-64(%ebp), %esi
	movl	-60(%ebp), %ebx
	movl	-56(%ebp), %edi
	cmpl	$0, -72(%ebp)
	movl	%eax, -32(%ebp)         # 4-byte Spill
	je	LBB42_51
# BB#50:                                # %delete.notnull.i47
	pushl	-68(%ebp)
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
LBB42_51:                               # %"\01??1BigBase@ofw@@QAE@XZ.exit48"
	testl	%esi, %esi
	je	LBB42_53
# BB#52:                                # %delete.notnull.i41
	pushl	%ebx
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
LBB42_53:                               # %"\01??1BigBase@ofw@@QAE@XZ.exit42"
	testl	%edi, %edi
	je	LBB42_55
# BB#54:                                # %delete.notnull.i
	pushl	-32(%ebp)               # 4-byte Folded Reload
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
LBB42_55:                               # %"\01??1BigBase@ofw@@QAE@XZ.exit"
	addl	$12, %esp
	popl	%ebp
	retl                            # CLEANUPRET
Lfunc_end13:
	.section	.xdata,"dr"
	.p2align	2
"L__ehtable$?gcd@BigBase@ofw@@QBE?AV12@ABV12@@Z":
	.long	429065506               # MagicNumber
	.long	2                       # MaxState
	.long	("$stateUnwindMap$?gcd@BigBase@ofw@@QBE?AV12@ABV12@@Z") # UnwindMap
	.long	0                       # NumTryBlocks
	.long	0                       # TryBlockMap
	.long	0                       # IPMapEntries
	.long	0                       # IPToStateXData
	.long	0                       # ESTypeList
	.long	1                       # EHFlags
"$stateUnwindMap$?gcd@BigBase@ofw@@QBE?AV12@ABV12@@Z":
	.long	-1                      # ToState
	.long	"?dtor$49@?0??gcd@BigBase@ofw@@QBE?AV12@ABV12@@Z@4HA" # Action
	.long	0                       # ToState
	.long	"?dtor$46@?0??gcd@BigBase@ofw@@QBE?AV12@ABV12@@Z@4HA" # Action
	.text
                                        # -- End function
	.def	 "?lcm@BigBase@ofw@@QBE?AV12@ABV12@@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?lcm@BigBase@ofw@@QBE?AV12@ABV12@@Z" # -- Begin function ?lcm@BigBase@ofw@@QBE?AV12@ABV12@@Z
	.p2align	4, 0x90
"?lcm@BigBase@ofw@@QBE?AV12@ABV12@@Z":  # @"\01?lcm@BigBase@ofw@@QBE?AV12@ABV12@@Z"
Lfunc_begin14:
# BB#0:                                 # %entry
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$32, %esp
	movl	%esp, -28(%ebp)
	movl	$-1, -16(%ebp)
	movl	$"___ehhandler$?lcm@BigBase@ofw@@QBE?AV12@ABV12@@Z", -20(%ebp)
	movl	%ecx, %esi
	movl	12(%ebp), %edi
	leal	-24(%ebp), %eax
	movl	%fs:0, %ecx
	movl	%ecx, -24(%ebp)
	movl	%eax, %fs:0
	leal	-44(%ebp), %eax
	movl	%esi, %ecx
	pushl	%edi
	pushl	%eax
	calll	"??DBigBase@ofw@@QBE?AV01@ABV01@@Z"
	movl	$0, -16(%ebp)
	leal	-36(%ebp), %eax
	movl	%esi, %ecx
	pushl	%edi
	pushl	%eax
	calll	"?gcd@BigBase@ofw@@QBE?AV12@ABV12@@Z"
# BB#1:                                 # %invoke.cont
	leal	-36(%ebp), %eax
	movl	$1, -16(%ebp)
	leal	-44(%ebp), %ecx
	pushl	%eax
	pushl	8(%ebp)
	calll	"??KBigBase@ofw@@QBE?AV01@ABV01@@Z"
# BB#2:                                 # %invoke.cont2
	movl	-36(%ebp), %eax
	testl	%eax, %eax
	je	LBB43_4
# BB#3:                                 # %delete.notnull.i
	pushl	%eax
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
LBB43_4:                                # %"\01??1BigBase@ofw@@QAE@XZ.exit"
	movl	-44(%ebp), %eax
	testl	%eax, %eax
	je	LBB43_6
# BB#5:                                 # %delete.notnull.i8
	pushl	%eax
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
LBB43_6:                                # %"\01??1BigBase@ofw@@QAE@XZ.exit9"
	movl	-24(%ebp), %eax
	movl	%eax, %fs:0
	movl	8(%ebp), %eax
	addl	$32, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$8
	.def	 "?dtor$7@?0??lcm@BigBase@ofw@@QBE?AV12@ABV12@@Z@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$7@?0??lcm@BigBase@ofw@@QBE?AV12@ABV12@@Z@4HA":
LBB43_7:                                # %ehcleanup
	pushl	%ebp
	subl	$8, %esp
	addl	$12, %ebp
	movl	-36(%ebp), %eax
	testl	%eax, %eax
	je	LBB43_9
# BB#8:                                 # %delete.notnull.i12
	pushl	%eax
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
LBB43_9:                                # %"\01??1BigBase@ofw@@QAE@XZ.exit13"
	addl	$8, %esp
	popl	%ebp
	retl                            # CLEANUPRET
	.def	 "?dtor$10@?0??lcm@BigBase@ofw@@QBE?AV12@ABV12@@Z@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$10@?0??lcm@BigBase@ofw@@QBE?AV12@ABV12@@Z@4HA":
LBB43_10:                               # %ehcleanup3
	pushl	%ebp
	subl	$8, %esp
	addl	$12, %ebp
	movl	-44(%ebp), %eax
	testl	%eax, %eax
	je	LBB43_12
# BB#11:                                # %delete.notnull.i16
	pushl	%eax
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
LBB43_12:                               # %"\01??1BigBase@ofw@@QAE@XZ.exit17"
	addl	$8, %esp
	popl	%ebp
	retl                            # CLEANUPRET
Lfunc_end14:
	.section	.xdata,"dr"
	.p2align	2
"L__ehtable$?lcm@BigBase@ofw@@QBE?AV12@ABV12@@Z":
	.long	429065506               # MagicNumber
	.long	2                       # MaxState
	.long	("$stateUnwindMap$?lcm@BigBase@ofw@@QBE?AV12@ABV12@@Z") # UnwindMap
	.long	0                       # NumTryBlocks
	.long	0                       # TryBlockMap
	.long	0                       # IPMapEntries
	.long	0                       # IPToStateXData
	.long	0                       # ESTypeList
	.long	1                       # EHFlags
"$stateUnwindMap$?lcm@BigBase@ofw@@QBE?AV12@ABV12@@Z":
	.long	-1                      # ToState
	.long	"?dtor$10@?0??lcm@BigBase@ofw@@QBE?AV12@ABV12@@Z@4HA" # Action
	.long	0                       # ToState
	.long	"?dtor$7@?0??lcm@BigBase@ofw@@QBE?AV12@ABV12@@Z@4HA" # Action
	.text
                                        # -- End function
	.def	 "?to_string@BigBase@ofw@@QBE?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@XZ";
	.scl	2;
	.type	32;
	.endef
	.globl	"?to_string@BigBase@ofw@@QBE?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@XZ" # -- Begin function ?to_string@BigBase@ofw@@QBE?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@XZ
	.p2align	4, 0x90
"?to_string@BigBase@ofw@@QBE?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@XZ": # @"\01?to_string@BigBase@ofw@@QBE?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@XZ"
# BB#0:                                 # %entry
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$52, %esp
	movl	%ecx, %ebx
	movl	72(%esp), %edi
	movl	4(%ebx), %esi
	testl	%esi, %esi
	je	LBB44_29
# BB#1:                                 # %entry
	cmpl	$1, %esi
	jne	LBB44_8
# BB#2:                                 # %if.then
	movl	(%ebx), %eax
	leal	48(%esp), %edi
	xorl	%esi, %esi
	movl	$-858993459, %ebx       # imm = 0xCCCCCCCD
	movl	(%eax), %ebp
	.p2align	4, 0x90
LBB44_3:                                # %do.body.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %eax
	movl	%ebp, %ecx
	incl	%esi
	mull	%ebx
	shrl	$3, %edx
	leal	(%edx,%edx), %eax
	leal	(%eax,%eax,4), %eax
	subl	%eax, %ecx
	orb	$48, %cl
	movb	%cl, (%edi)
	decl	%edi
	cmpl	$9, %ebp
	movl	%edx, %ebp
	ja	LBB44_3
# BB#4:                                 # %"\01??$_UIntegral_to_buff@DI@std@@YAPADPADI@Z.exit.i.i"
	movl	72(%esp), %edi
	testl	%esi, %esi
	movl	$0, 16(%edi)
	movl	$15, 20(%edi)
	movb	$0, (%edi)
	je	LBB44_30
# BB#5:                                 # %if.then.i.i.i.i
	leal	28(%esp), %eax
	subl	%esi, %eax
	addl	$21, %eax
	cmpl	$15, %esi
	jbe	LBB44_6
# BB#7:                                 # %if.end.i.i.i.i.i
	subl	$12, %esp
	movb	28(%esp), %cl
	movb	%cl, 4(%esp)
	movl	%edi, %ecx
	movl	%eax, 8(%esp)
	movl	%esi, (%esp)
	calll	"??$_Reallocate_for@V<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV34@QBDI@Z@PBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV01@IV<lambda_1>@?0??assign@01@QAEAAV01@QBDI@Z@PBD@Z"
	jmp	LBB44_30
LBB44_29:                               # %if.then4
	movl	$15, 20(%edi)
	movl	$1, 16(%edi)
	movw	$48, (%edi)
	jmp	LBB44_30
LBB44_8:                                # %if.end7
	leal	(%esi,%esi), %eax
	movl	$954437177, %ecx        # imm = 0x38E38E39
	leal	(%eax,%eax,4), %eax
	mull	%ecx
	andl	$2147483646, %edx       # imm = 0x7FFFFFFE
	leal	8(%edx,%edx), %edi
	pushl	%edi
	calll	"??_U@YAPAXI@Z"
	addl	$4, %esp
	movl	%eax, %ebp
	pushl	%edi
	pushl	$0
	pushl	%ebp
	calll	_memset
	addl	$12, %esp
	testl	%esi, %esi
	movl	%ebp, 8(%esp)           # 4-byte Spill
	jle	LBB44_9
# BB#19:                                # %for.body.lr.ph
	movl	(%ebx), %eax
	xorl	%edi, %edi
	movl	%eax, 12(%esp)          # 4-byte Spill
	.p2align	4, 0x90
LBB44_20:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB44_23 Depth 2
	movl	12(%esp), %eax          # 4-byte Reload
	movl	%esi, (%esp)            # 4-byte Spill
	testl	%edi, %edi
	movl	-4(%eax,%esi,4), %ebx
	movl	%edi, 4(%esp)           # 4-byte Spill
	jle	LBB44_21
	.p2align	4, 0x90
LBB44_23:                               # %for.body17
                                        #   Parent Loop BB44_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%ebp), %esi
	pushl	$0
	pushl	$1000000000             # imm = 0x3B9ACA00
	pushl	%esi
	pushl	%ebx
	calll	__aullrem
	movl	%eax, (%ebp)
	pushl	$0
	pushl	$1000000000             # imm = 0x3B9ACA00
	pushl	%esi
	pushl	%ebx
	calll	__aulldiv
	addl	$4, %ebp
	movl	%eax, %ebx
	decl	%edi
	jne	LBB44_23
LBB44_21:                               # %for.cond.cleanup16
                                        #   in Loop: Header=BB44_20 Depth=1
	testl	%ebx, %ebx
	je	LBB44_22
# BB#24:                                # %if.then25
                                        #   in Loop: Header=BB44_20 Depth=1
	movl	%ebx, %ecx
	movl	$281475, %esi           # imm = 0x44B83
	movl	8(%esp), %ebp           # 4-byte Reload
	movl	4(%esp), %edi           # 4-byte Reload
	shrl	$9, %ecx
	movl	%ecx, %eax
	mull	%esi
	shrl	$7, %edx
	imull	$1000000000, %edx, %eax # imm = 0x3B9ACA00
	movl	%ebx, %edx
	subl	%eax, %edx
	cmpl	$1000000000, %ebx       # imm = 0x3B9ACA00
	movl	%edx, (%ebp,%edi,4)
	jb	LBB44_25
# BB#26:                                # %if.then31
                                        #   in Loop: Header=BB44_20 Depth=1
	movl	%ecx, %eax
	mull	%esi
	shrl	$7, %edx
	movl	%edx, 4(%ebp,%edi,4)
	addl	$2, %edi
	jmp	LBB44_27
	.p2align	4, 0x90
LBB44_22:                               #   in Loop: Header=BB44_20 Depth=1
	movl	8(%esp), %ebp           # 4-byte Reload
	movl	4(%esp), %edi           # 4-byte Reload
	jmp	LBB44_27
	.p2align	4, 0x90
LBB44_25:                               #   in Loop: Header=BB44_20 Depth=1
	incl	%edi
LBB44_27:                               # %if.end35
                                        #   in Loop: Header=BB44_20 Depth=1
	movl	(%esp), %esi            # 4-byte Reload
	cmpl	$1, %esi
	leal	-1(%esi), %esi
	jg	LBB44_20
	jmp	LBB44_10
LBB44_9:
	xorl	%edi, %edi
LBB44_10:                               # %for.cond.cleanup
	leal	(%edi,%edi,8), %esi
	leal	1(%edi,%edi,8), %eax
	pushl	%eax
	calll	"??_U@YAPAXI@Z"
	addl	$4, %esp
	movl	%esi, %ecx
	movl	%eax, %ebx
	cmpl	$2, %edi
	movl	%ecx, 20(%esp)          # 4-byte Spill
	jl	LBB44_14
# BB#11:                                # %for.body45.preheader
	movl	20(%esp), %ecx          # 4-byte Reload
	movl	%ebp, %eax
	movl	%edi, 4(%esp)           # 4-byte Spill
	leal	-1(%edi), %edx
	movl	$-858993459, %edi       # imm = 0xCCCCCCCD
	movl	%ebx, 24(%esp)          # 4-byte Spill
	leal	-1(%ebx,%ecx), %ebp
	.p2align	4, 0x90
LBB44_12:                               # %for.body45
                                        # =>This Inner Loop Header: Depth=1
	movl	(%eax), %ecx
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	%edx, (%esp)            # 4-byte Spill
	movl	$-858993459, %edx       # imm = 0xCCCCCCCD
	movl	%ecx, %eax
	movl	%ecx, %esi
	mull	%edx
	shrl	$5, %esi
	movl	%edx, %ebx
	movl	%ecx, %edx
	shrl	$3, %ebx
	leal	(%ebx,%ebx), %eax
	leal	(%eax,%eax,4), %eax
	subl	%eax, %edx
	movl	%ebx, %eax
	orb	$48, %dl
	movb	%dl, (%ebp)
	mull	%edi
	shrl	$2, %edx
	andl	$1073741822, %edx       # imm = 0x3FFFFFFE
	leal	(%edx,%edx,4), %eax
	movl	$1374389535, %edx       # imm = 0x51EB851F
	subl	%eax, %ebx
	movl	%ecx, %eax
	orb	$48, %bl
	mull	%edx
	movb	%bl, -1(%ebp)
	movl	%edx, %ebx
	shrl	$5, %ebx
	movl	%ebx, %eax
	mull	%edi
	shrl	$2, %edx
	andl	$1073741822, %edx       # imm = 0x3FFFFFFE
	leal	(%edx,%edx,4), %eax
	movl	$274877907, %edx        # imm = 0x10624DD3
	subl	%eax, %ebx
	movl	%ecx, %eax
	orb	$48, %bl
	mull	%edx
	movb	%bl, -2(%ebp)
	movl	%edx, %ebx
	shrl	$6, %ebx
	movl	%ebx, %eax
	mull	%edi
	shrl	$2, %edx
	andl	$1073741822, %edx       # imm = 0x3FFFFFFE
	leal	(%edx,%edx,4), %eax
	movl	$-776530087, %edx       # imm = 0xD1B71759
	subl	%eax, %ebx
	movl	%ecx, %eax
	orb	$48, %bl
	mull	%edx
	movb	%bl, -3(%ebp)
	movl	%edx, %ebx
	shrl	$13, %ebx
	movl	%ebx, %eax
	mull	%edi
	shrl	$2, %edx
	andl	$1073741822, %edx       # imm = 0x3FFFFFFE
	leal	(%edx,%edx,4), %eax
	movl	$175921861, %edx        # imm = 0xA7C5AC5
	subl	%eax, %ebx
	movl	%esi, %eax
	movl	$-858993459, %esi       # imm = 0xCCCCCCCD
	orb	$48, %bl
	mull	%edx
	movb	%bl, -4(%ebp)
	movl	%edx, %ebx
	shrl	$7, %ebx
	movl	%ebx, %eax
	mull	%edi
	shrl	$2, %edx
	andl	$1073741822, %edx       # imm = 0x3FFFFFFE
	leal	(%edx,%edx,4), %eax
	movl	$1125899907, %edx       # imm = 0x431BDE83
	subl	%eax, %ebx
	movl	%ecx, %eax
	orb	$48, %bl
	mull	%edx
	movb	%bl, -5(%ebp)
	movl	%edx, %ebx
	shrl	$18, %ebx
	movl	%ebx, %eax
	mull	%esi
	shrl	$2, %edx
	andl	$1073741822, %edx       # imm = 0x3FFFFFFE
	leal	(%edx,%edx,4), %eax
	movl	$1801439851, %edx       # imm = 0x6B5FCA6B
	subl	%eax, %ebx
	movl	%ecx, %eax
	orb	$48, %bl
	mull	%edx
	movb	%bl, -6(%ebp)
	movl	%edx, %ebx
	shrl	$22, %ebx
	movl	%ebx, %eax
	mull	%esi
	shrl	$2, %edx
	andl	$1073741822, %edx       # imm = 0x3FFFFFFE
	leal	(%edx,%edx,4), %eax
	subl	%eax, %ebx
	movl	%ecx, %eax
	movl	$1441151881, %ecx       # imm = 0x55E63B89
	mull	%ecx
	orb	$48, %bl
	movl	%edx, %ecx
	movb	%bl, -7(%ebp)
	shrl	$25, %ecx
	movl	%ecx, %eax
	mull	%esi
	shrl	$2, %edx
	andl	$1073741822, %edx       # imm = 0x3FFFFFFE
	leal	(%edx,%edx,4), %eax
	movl	(%esp), %edx            # 4-byte Reload
	subl	%eax, %ecx
	movl	12(%esp), %eax          # 4-byte Reload
	orb	$48, %cl
	movb	%cl, -8(%ebp)
	addl	$-9, %ebp
	addl	$4, %eax
	decl	%edx
	jne	LBB44_12
# BB#13:
	movl	8(%esp), %ebp           # 4-byte Reload
	movl	4(%esp), %edi           # 4-byte Reload
	movl	24(%esp), %ebx          # 4-byte Reload
	movl	$9, %esi
LBB44_14:                               # %for.cond.cleanup44
	movl	-4(%ebp,%edi,4), %ecx
	testl	%ecx, %ecx
	je	LBB44_17
# BB#15:
	movl	$1717986919, %edi       # imm = 0x66666667
	.p2align	4, 0x90
LBB44_16:                               # %for.body69
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %eax
	imull	%edi
	movl	%edx, %eax
	sarl	$2, %edx
	shrl	$31, %eax
	addl	%eax, %edx
	leal	(%edx,%edx), %eax
	leal	(%eax,%eax,4), %eax
	negl	%eax
	leal	48(%ecx,%eax), %eax
	addl	$9, %ecx
	movb	%al, -1(%ebx,%esi)
	decl	%esi
	cmpl	$19, %ecx
	movl	%edx, %ecx
	jae	LBB44_16
LBB44_17:                               # %for.cond.cleanup68
	movl	20(%esp), %eax          # 4-byte Reload
	movb	$0, (%ebx,%eax)
	addl	%esi, %ebx
	pushl	%ebp
	calll	"??_V@YAXPAX@Z"
	addl	$4, %esp
	movl	72(%esp), %esi
	movl	$0, 16(%esi)
	movl	$15, 20(%esi)
	movb	$0, (%esi)
	pushl	%ebx
	calll	_strlen
	addl	$4, %esp
	movl	%eax, %edi
	cmpl	$15, %edi
	jbe	LBB44_18
# BB#28:                                # %if.end.i.i.i174
	subl	$12, %esp
	movb	40(%esp), %al
	movl	%esi, %ecx
	movb	%al, 4(%esp)
	movl	%ebx, 8(%esp)
	movl	%edi, (%esp)
	calll	"??$_Reallocate_for@V<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV34@QBDI@Z@PBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV01@IV<lambda_1>@?0??assign@01@QAEAAV01@QBDI@Z@PBD@Z"
	movl	%esi, %edi
	jmp	LBB44_30
LBB44_18:                               # %"\01?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QAEPADXZ.exit.i.i.i173"
	movl	%edi, 16(%esi)
	pushl	%edi
	pushl	%ebx
	pushl	%esi
	calll	_memcpy
	addl	$12, %esp
	movb	$0, (%esi,%edi)
	movl	%esi, %edi
	jmp	LBB44_30
LBB44_6:                                # %"\01?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QAEPADXZ.exit.i.i.i.i.i"
	movl	%esi, 16(%edi)
	pushl	%esi
	pushl	%eax
	pushl	%edi
	calll	_memcpy
	addl	$12, %esp
	movb	$0, (%edi,%esi)
LBB44_30:                               # %"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit203"
	movl	%edi, %eax
	addl	$52, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$4
                                        # -- End function
	.def	 "?to_hex@BigBase@ofw@@QBE?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@XZ";
	.scl	2;
	.type	32;
	.endef
	.globl	__real@3fd34413509f79ff # -- Begin function ?to_hex@BigBase@ofw@@QBE?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@XZ
	.section	.rdata,"dr",discard,__real@3fd34413509f79ff
	.p2align	3
__real@3fd34413509f79ff:
	.quad	4599094494223104511     # double 0.3010299956639812
	.globl	__real@41e0000000000000
	.section	.rdata,"dr",discard,__real@41e0000000000000
	.p2align	3
__real@41e0000000000000:
	.quad	4746794007248502784     # double 2147483648
	.text
	.globl	"?to_hex@BigBase@ofw@@QBE?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@XZ"
	.p2align	4, 0x90
"?to_hex@BigBase@ofw@@QBE?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@XZ": # @"\01?to_hex@BigBase@ofw@@QBE?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@XZ"
# BB#0:                                 # %entry
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	pushl	%eax
	movl	%ecx, %edi
	movq	__real@4330000000000000, %xmm0 # xmm0 = mem[0],zero
	movl	24(%esp), %esi
	movl	4(%edi), %ebx
	movl	%ebx, %eax
	shll	$5, %eax
	movd	%eax, %xmm1
	por	%xmm0, %xmm1
	subsd	%xmm0, %xmm1
	movsd	__real@41e0000000000000, %xmm0 # xmm0 = mem[0],zero
	mulsd	__real@3fd34413509f79ff, %xmm1
	movapd	%xmm1, %xmm2
	cvttsd2si	%xmm1, %eax
	subsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %ecx
	xorl	$-2147483648, %ecx      # imm = 0x80000000
	ucomisd	%xmm0, %xmm1
	cmovbl	%eax, %ecx
	incl	%ecx
	pushl	%ecx
	calll	"??_U@YAPAXI@Z"
	addl	$4, %esp
	testl	%ebx, %ebx
	movl	%eax, %edx
	je	LBB45_6
# BB#1:                                 # %for.body.lr.ph
	xorl	%edx, %edx
	movl	$-1, %ebp
	.p2align	4, 0x90
LBB45_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%edi), %ebx
	movl	(%ebx,%edx,4), %ebx
	andl	$15, %ebx
	cmpl	$10, %ebx
	leal	87(%ebx), %ecx
	leal	48(%ebx), %ebx
	cmovbl	%ebx, %ecx
	movb	%cl, (%eax,%edx,8)
	movl	(%edi), %ecx
	movl	(%ecx,%edx,4), %ecx
	shrl	$4, %ecx
	andl	$15, %ecx
	cmpl	$10, %ecx
	leal	87(%ecx), %ebx
	leal	48(%ecx), %ecx
	cmovbl	%ecx, %ebx
	movb	%bl, 1(%eax,%edx,8)
	movl	(%edi), %ecx
	movl	(%ecx,%edx,4), %ecx
	shrl	$8, %ecx
	andl	$15, %ecx
	cmpl	$10, %ecx
	leal	87(%ecx), %ebx
	leal	48(%ecx), %ecx
	cmovbl	%ecx, %ebx
	movb	%bl, 2(%eax,%edx,8)
	movl	(%edi), %ecx
	movl	(%ecx,%edx,4), %ecx
	shrl	$12, %ecx
	andl	$15, %ecx
	cmpl	$10, %ecx
	leal	87(%ecx), %ebx
	leal	48(%ecx), %ecx
	cmovbl	%ecx, %ebx
	movb	%bl, 3(%eax,%edx,8)
	movl	(%edi), %ecx
	movzwl	2(%ecx,%edx,4), %ecx
	andl	$15, %ecx
	cmpl	$10, %ecx
	leal	87(%ecx), %ebx
	leal	48(%ecx), %ecx
	cmovbl	%ecx, %ebx
	movb	%bl, 4(%eax,%edx,8)
	movl	(%edi), %ecx
	movl	(%ecx,%edx,4), %ecx
	shrl	$20, %ecx
	andl	$15, %ecx
	cmpl	$10, %ecx
	leal	87(%ecx), %ebx
	leal	48(%ecx), %ecx
	cmovbl	%ecx, %ebx
	movb	%bl, 5(%eax,%edx,8)
	movl	(%edi), %ecx
	movzbl	3(%ecx,%edx,4), %ecx
	andl	$15, %ecx
	cmpl	$10, %ecx
	leal	87(%ecx), %ebx
	leal	48(%ecx), %ecx
	cmovbl	%ecx, %ebx
	movb	%bl, 6(%eax,%edx,8)
	movl	(%edi), %ecx
	movl	(%ecx,%edx,4), %ecx
	movl	%ecx, %ebx
	shrl	$28, %ebx
	leal	87(%ebx), %esi
	orl	$48, %ebx
	cmpl	$-1610612736, %ecx      # imm = 0xA0000000
	cmovael	%esi, %ebx
	addl	$-8, %ebp
	movb	%bl, 7(%eax,%edx,8)
	incl	%edx
	cmpl	4(%edi), %edx
	jb	LBB45_2
# BB#3:                                 # %for.cond.cleanup
	movl	24(%esp), %esi
	cmpl	$-1, %ebp
	movl	%eax, %edx
	je	LBB45_6
# BB#4:
	movl	%eax, %edx
	subl	%ebp, %edx
	.p2align	4, 0x90
LBB45_5:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpb	$48, -2(%edx)
	leal	-1(%edx), %edx
	je	LBB45_5
LBB45_6:                                # %if.end25
	movb	$0, (%edx)
	pushl	%eax
	calll	__strrev
	addl	$4, %esp
	movl	%eax, %edi
	movl	$0, 16(%esi)
	movl	$15, 20(%esi)
	movb	$0, (%esi)
	pushl	%edi
	calll	_strlen
	addl	$4, %esp
	movl	%eax, %ebx
	cmpl	$15, %ebx
	jbe	LBB45_7
# BB#8:                                 # %if.end.i.i.i
	subl	$12, %esp
	movb	12(%esp), %al
	movl	%esi, %ecx
	movb	%al, 4(%esp)
	movl	%edi, 8(%esp)
	movl	%ebx, (%esp)
	calll	"??$_Reallocate_for@V<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV34@QBDI@Z@PBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV01@IV<lambda_1>@?0??assign@01@QAEAAV01@QBDI@Z@PBD@Z"
	jmp	LBB45_9
LBB45_7:                                # %"\01?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QAEPADXZ.exit.i.i.i"
	movl	%ebx, 16(%esi)
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	calll	_memmove
	addl	$12, %esp
	movb	$0, (%esi,%ebx)
LBB45_9:                                # %"\01??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@QBD@Z.exit"
	movl	%esi, %eax
	addl	$4, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$4
                                        # -- End function
	.def	 "?to_binary@BigBase@ofw@@QBE?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@XZ";
	.scl	2;
	.type	32;
	.endef
	.globl	"?to_binary@BigBase@ofw@@QBE?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@XZ" # -- Begin function ?to_binary@BigBase@ofw@@QBE?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@XZ
	.p2align	4, 0x90
"?to_binary@BigBase@ofw@@QBE?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@XZ": # @"\01?to_binary@BigBase@ofw@@QBE?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@XZ"
# BB#0:                                 # %entry
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	pushl	%eax
	movl	%ecx, %edi
	movl	4(%edi), %esi
	movl	%esi, %eax
	shll	$5, %eax
	orl	$1, %eax
	pushl	%eax
	calll	"??_U@YAPAXI@Z"
	addl	$4, %esp
	testl	%esi, %esi
	movl	%eax, %ecx
	je	LBB46_8
# BB#1:                                 # %for.body.lr.ph
	leal	33(%eax), %ecx
	xorl	%esi, %esi
	movl	%eax, %ebx
	.p2align	4, 0x90
LBB46_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB46_3 Depth 2
	movl	%ecx, %ebp
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB46_3:                                # %for.body6
                                        #   Parent Loop BB46_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%edi), %edx
	movl	(%edx,%esi,4), %edx
	shrl	%cl, %edx
	andb	$1, %dl
	orb	$48, %dl
	movb	%dl, (%ebx,%ecx)
	incl	%ecx
	cmpl	$32, %ecx
	jne	LBB46_3
# BB#4:                                 # %for.cond.cleanup5
                                        #   in Loop: Header=BB46_2 Depth=1
	incl	%esi
	addl	$32, %ebx
	leal	32(%ebp), %ecx
	cmpl	4(%edi), %esi
	jb	LBB46_2
# BB#5:                                 # %for.cond.cleanup
	cmpl	%eax, %ebx
	movl	%eax, %ecx
	je	LBB46_8
# BB#6:
	movl	%ebp, %ecx
	.p2align	4, 0x90
LBB46_7:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpb	$48, -2(%ecx)
	leal	-1(%ecx), %ecx
	je	LBB46_7
LBB46_8:                                # %if.end
	movb	$0, (%ecx)
	pushl	%eax
	calll	__strrev
	addl	$4, %esp
	movl	24(%esp), %esi
	movl	%eax, %edi
	movl	$0, 16(%esi)
	movl	$15, 20(%esi)
	movb	$0, (%esi)
	pushl	%edi
	calll	_strlen
	addl	$4, %esp
	movl	%eax, %ebx
	cmpl	$15, %ebx
	jbe	LBB46_9
# BB#10:                                # %if.end.i.i.i
	subl	$12, %esp
	movb	12(%esp), %al
	movl	%esi, %ecx
	movb	%al, 4(%esp)
	movl	%edi, 8(%esp)
	movl	%ebx, (%esp)
	calll	"??$_Reallocate_for@V<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV34@QBDI@Z@PBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV01@IV<lambda_1>@?0??assign@01@QAEAAV01@QBDI@Z@PBD@Z"
	jmp	LBB46_11
LBB46_9:                                # %"\01?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QAEPADXZ.exit.i.i.i"
	movl	%ebx, 16(%esi)
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	calll	_memmove
	addl	$12, %esp
	movb	$0, (%esi,%ebx)
LBB46_11:                               # %"\01??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@QBD@Z.exit"
	movl	%esi, %eax
	addl	$4, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$4
                                        # -- End function
	.def	 "?swap@BigBase@ofw@@QAEXAAV12@@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?swap@BigBase@ofw@@QAEXAAV12@@Z" # -- Begin function ?swap@BigBase@ofw@@QAEXAAV12@@Z
	.p2align	4, 0x90
"?swap@BigBase@ofw@@QAEXAAV12@@Z":      # @"\01?swap@BigBase@ofw@@QAEXAAV12@@Z"
# BB#0:                                 # %entry
	pushl	%esi
	movl	8(%esp), %eax
	movl	(%ecx), %edx
	movl	(%eax), %esi
	movl	%esi, (%ecx)
	movl	%edx, (%eax)
	movl	4(%ecx), %edx
	movl	4(%eax), %esi
	movl	%esi, 4(%ecx)
	movl	%edx, 4(%eax)
	popl	%esi
	retl	$4
                                        # -- End function
	.def	 "?_length@BigBase@ofw@@QBEIXZ";
	.scl	2;
	.type	32;
	.endef
	.globl	"?_length@BigBase@ofw@@QBEIXZ" # -- Begin function ?_length@BigBase@ofw@@QBEIXZ
	.p2align	4, 0x90
"?_length@BigBase@ofw@@QBEIXZ":         # @"\01?_length@BigBase@ofw@@QBEIXZ"
# BB#0:                                 # %entry
	movl	4(%ecx), %eax
	retl
                                        # -- End function
	.def	 "?count_leading_zero@BigBase@ofw@@ABEHI@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?count_leading_zero@BigBase@ofw@@ABEHI@Z" # -- Begin function ?count_leading_zero@BigBase@ofw@@ABEHI@Z
	.p2align	4, 0x90
"?count_leading_zero@BigBase@ofw@@ABEHI@Z": # @"\01?count_leading_zero@BigBase@ofw@@ABEHI@Z"
# BB#0:                                 # %entry
	pushl	%edi
	pushl	%esi
	movl	12(%esp), %ecx
	testl	%ecx, %ecx
	je	LBB49_1
# BB#2:                                 # %if.end
	movl	%ecx, %edx
	xorl	%eax, %eax
	shll	$16, %edx
	cmpl	$65536, %ecx            # imm = 0x10000
	cmovael	%ecx, %edx
	setb	%al
	movl	%edx, %esi
	shll	$4, %eax
	shll	$8, %esi
	cmpl	$16777216, %edx         # imm = 0x1000000
	leal	8(%eax), %ecx
	cmovael	%edx, %esi
	cmovael	%eax, %ecx
	movl	%ecx, %edx
	movl	%esi, %edi
	orl	$4, %edx
	shll	$4, %edi
	cmpl	$268435456, %esi        # imm = 0x10000000
	cmovael	%ecx, %edx
	cmovael	%esi, %edi
	movl	%edx, %ecx
	leal	(,%edi,4), %eax
	orl	$2, %ecx
	cmpl	$1073741824, %edi       # imm = 0x40000000
	cmovael	%edi, %eax
	cmovael	%edx, %ecx
	shrl	$31, %eax
	xorl	$1, %eax
	addl	%ecx, %eax
	jmp	LBB49_3
LBB49_1:
	movl	$32, %eax
LBB49_3:                                # %return
	popl	%esi
	popl	%edi
	retl	$4
                                        # -- End function
	.def	 "?count_tailing_zero@BigBase@ofw@@ABEHI@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?count_tailing_zero@BigBase@ofw@@ABEHI@Z" # -- Begin function ?count_tailing_zero@BigBase@ofw@@ABEHI@Z
	.p2align	4, 0x90
"?count_tailing_zero@BigBase@ofw@@ABEHI@Z": # @"\01?count_tailing_zero@BigBase@ofw@@ABEHI@Z"
# BB#0:                                 # %entry
	pushl	%edi
	pushl	%esi
	movl	12(%esp), %ecx
	testl	%ecx, %ecx
	je	LBB50_1
# BB#2:                                 # %if.end
	movl	%ecx, %eax
	movl	$32, %edx
	shrl	$16, %eax
	testw	%cx, %cx
	cmovnel	%ecx, %eax
	movl	$16, %ecx
	movl	%eax, %esi
	cmovel	%ecx, %edx
	shrl	$8, %esi
	testb	%al, %al
	leal	-8(%edx), %ecx
	cmovnel	%eax, %esi
	cmovnel	%edx, %ecx
	movl	%esi, %edx
	movl	%esi, %edi
	leal	-4(%ecx), %eax
	shrl	$4, %edx
	andl	$15, %edi
	cmovnel	%ecx, %eax
	testl	%edi, %edi
	cmovnel	%esi, %edx
	leal	-2(%eax), %ecx
	movl	%edx, %esi
	movl	%edx, %edi
	shrl	$2, %esi
	andl	$3, %edi
	cmovnel	%eax, %ecx
	testl	%edi, %edi
	cmovnel	%edx, %esi
	andl	$1, %esi
	leal	-1(%ecx,%esi), %eax
	jmp	LBB50_3
LBB50_1:
	xorl	%eax, %eax
LBB50_3:                                # %return
	popl	%esi
	popl	%edi
	retl	$4
                                        # -- End function
	.def	 "??$_Reallocate_for@V<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV34@QBDI@Z@PBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV01@IV<lambda_1>@?0??assign@01@QAEAAV01@QBDI@Z@PBD@Z";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"??$_Reallocate_for@V<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV34@QBDI@Z@PBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV01@IV<lambda_1>@?0??assign@01@QAEAAV01@QBDI@Z@PBD@Z"
	.globl	"??$_Reallocate_for@V<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV34@QBDI@Z@PBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV01@IV<lambda_1>@?0??assign@01@QAEAAV01@QBDI@Z@PBD@Z" # -- Begin function ??$_Reallocate_for@V<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV34@QBDI@Z@PBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV01@IV<lambda_1>@?0??assign@01@QAEAAV01@QBDI@Z@PBD@Z
	.p2align	4, 0x90
"??$_Reallocate_for@V<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV34@QBDI@Z@PBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV01@IV<lambda_1>@?0??assign@01@QAEAAV01@QBDI@Z@PBD@Z": # @"\01??$_Reallocate_for@V<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV34@QBDI@Z@PBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV01@IV<lambda_1>@?0??assign@01@QAEAAV01@QBDI@Z@PBD@Z"
# BB#0:                                 # %entry
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	pushl	%eax
	movl	%ecx, %esi
	movl	24(%esp), %ecx
	testl	%ecx, %ecx
	js	LBB51_18
# BB#1:                                 # %if.end
	movl	20(%esi), %ebx
	orl	$15, %ecx
	movl	$2147483647, %ebp       # imm = 0x7FFFFFFF
	movl	$-2147483648, %eax      # imm = 0x80000000
	movl	%ebx, (%esp)            # 4-byte Spill
	js	LBB51_7
# BB#2:                                 # %if.end.i
	movl	%ebx, %edx
	shrl	%edx
	movl	%edx, %edi
	xorl	$2147483647, %edi       # imm = 0x7FFFFFFF
	cmpl	%edi, %ebx
	ja	LBB51_7
# BB#3:                                 # %"\01?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QBEII@Z.exit"
	addl	%ebx, %edx
	cmpl	%edx, %ecx
	movl	%edx, %ebp
	cmovael	%ecx, %ebp
	movl	%ebp, %eax
	incl	%eax
	je	LBB51_4
# BB#5:                                 # %if.end.i.i
	cmpl	$4096, %eax             # imm = 0x1000
	jb	LBB51_8
# BB#6:                                 # %if.then5.i.i
	cmpl	$-35, %eax
	jae	LBB51_19
LBB51_7:                                # %if.end8.i.i
	addl	$35, %eax
	pushl	%eax
	calll	"??2@YAPAXI@Z"
	addl	$4, %esp
	leal	35(%eax), %edi
	andl	$-32, %edi
	movl	%eax, -4(%edi)
LBB51_9:                                # %"\01?allocate@?$allocator@D@std@@QAEPADI@Z.exit"
	movl	24(%esp), %ebx
	movl	32(%esp), %eax
	movl	%ebx, 16(%esi)
	movl	%ebp, 20(%esi)
	pushl	%ebx
	pushl	%eax
	pushl	%edi
	calll	_memcpy
	addl	$12, %esp
	movb	$0, (%edi,%ebx)
	movl	(%esp), %ebx            # 4-byte Reload
	cmpl	$16, %ebx
	jb	LBB51_17
# BB#10:                                # %if.then9
	movl	(%esi), %eax
	leal	1(%ebx), %edx
	cmpl	$4096, %edx             # imm = 0x1000
	jb	LBB51_16
# BB#11:                                # %if.then2.i.i
	cmpl	$-36, %edx
	ja	LBB51_20
# BB#12:                                # %if.end5.i.i
	testb	$31, %al
	jne	LBB51_20
# BB#13:                                # %if.end9.i.i
	movl	-4(%eax), %ecx
	cmpl	%eax, %ecx
	jae	LBB51_20
# BB#14:                                # %if.end12.i.i
	addl	$-4, %eax
	subl	%ecx, %eax
	cmpl	$32, %eax
	jae	LBB51_20
# BB#15:
	addl	$36, %ebx
	movl	%ecx, %eax
	movl	%ebx, %edx
LBB51_16:                               # %"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit"
	pushl	%edx
	pushl	%eax
	calll	"??3@YAXPAXI@Z"
	addl	$8, %esp
LBB51_17:                               # %if.end16
	movl	%edi, (%esi)
	movl	%esi, %eax
	addl	$4, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$12
LBB51_4:
	xorl	%edi, %edi
	movl	$-1, %ebp
	jmp	LBB51_9
LBB51_8:                                # %if.end13.i.i
	pushl	%eax
	calll	"??2@YAPAXI@Z"
	addl	$4, %esp
	movl	%eax, %edi
	jmp	LBB51_9
LBB51_18:                               # %if.then
	calll	"?_Xlen@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@SAXXZ"
LBB51_20:                               # %_Invalid_parameter.i.i
	calll	__invalid_parameter_noinfo_noreturn
LBB51_19:                               # %if.then7.i.i
	calll	"?_Xbad_alloc@std@@YAXXZ"
                                        # -- End function
	.def	 "?_Xlen@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@SAXXZ";
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,"?_Xlen@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@SAXXZ"
	.globl	"?_Xlen@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@SAXXZ" # -- Begin function ?_Xlen@?$bas