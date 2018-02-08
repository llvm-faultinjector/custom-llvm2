=========================================================================================
    Dependency Info
=========================================================================================

Function - ?foo@@YAHH@Z
    Annotated Variable List :
        - Annotated : a(message: xxx)

    Annotated-Variable : a
        (Perpect)  %add2 = add nsw i32 %3, %call
        (Perpect)  %3 = load i32, i32* %a, align 4, !tbaa !3
        (Perpect)  %a = alloca i32, align 4
        (Perpect)  %cmp7 = icmp sgt i32 %k, 0
        (Maybe)  %exitcond = icmp eq i32 %lsr.iv.next, 0
        (Maybe)  %lsr.iv.next = add i32 %lsr.iv, -1
        (Maybe)  %lsr.iv = phi i32 [ %lsr.iv.next, %for.body ], [ %k, %for.body.lr.ph ]
        (Perpect)  %call = call i32 @"\01?foo_called@@YAHH@Z"(i32 %add)
        (Perpect)  %add = add nsw i32 %2, %k
        (Perpect)  %2 = phi i32 [ %.pre, %for.body.lr.ph ], [ %add2, %for.body ]
        (Perpect)  %.pre = load i32, i32* %a, align 4, !tbaa !3

  %a = alloca i32, align 4, !dbg !3(-2)
  %cmp7 = icmp sgt i32 %k, 0, !dbg !3(-2)
  %.pre = load i32, i32* %a, align 4, !dbg !3, !tbaa !7(-2)
  %lsr.iv = phi i32 [ %lsr.iv.next, %for.body ], [ %k, %for.body.lr.ph ], !dbg !11(-1)
  %2 = phi i32 [ %.pre, %for.body.lr.ph ], [ %add2, %for.body ], !dbg !3(-2)
  %add = add nsw i32 %2, %k, !dbg !3(-2)
  %call = call i32 @"\01?foo_called@@YAHH@Z"(i32 %add), !dbg !3(-2)
  %3 = load i32, i32* %a, align 4, !dbg !3, !tbaa !7(-2)
  %add2 = add nsw i32 %3, %call, !dbg !3(-2)
  %lsr.iv.next = add i32 %lsr.iv, -1, !dbg !11(-1)
  %exitcond = icmp eq i32 %lsr.iv.next, 0, !dbg !11(-1)

=========================================================================================
    Machine Instruction (before RegisterAllocation)
=========================================================================================

Function: ?foo@@YAHH@Z
    BB# entry
        %vreg5<def> = MOV32rm <fi#-1>, 1, %noreg, 0, %noreg; mem:LD4[FixedStack-1] GR32:%vreg5
        LIFETIME_START <fi#0>
    (-2)TEST32rr %vreg5, %vreg5, %EFLAGS<imp-def>; GR32:%vreg5
        JLE_1 <BB#2>, %EFLAGS<imp-use>
        JMP_1 <BB#1>

    BB# for.body.lr.ph
    (-2)%vreg0<def> = MOV32rm <fi#0>, 1, %noreg, 0, %noreg; mem:LD4[%a](tbaa=!8)(dereferenceable) GR32:%vreg0
        JMP_1 <BB#3>

    BB# for.cond.cleanup
        LIFETIME_END <fi#0>
        %vreg9<def> = MOV32r0 %EFLAGS<imp-def,dead>; GR32:%vreg9
        %EAX<def> = COPY %vreg9; GR32:%vreg9
        RET 0, %EAX

    BB# for.body
        %vreg1<def> = PHI %vreg5, <BB#1>, %vreg4, <BB#3>; GR32:%vreg1,%vreg5,%vreg4
        %vreg2<def> = PHI %vreg0, <BB#1>, %vreg3, <BB#3>; GR32:%vreg2,%vreg0,%vreg3
    (-2)%vreg6<def,tied1> = ADD32rr %vreg2<tied0>, %vreg5, %EFLAGS<imp-def,dead>; GR32:%vreg6,%vreg2,%vreg5
    (-2)ADJCALLSTACKDOWN32 4, 0, 0, %ESP<imp-def,dead>, %EFLAGS<imp-def,dead>, %ESP<imp-use>
    (-2)%vreg7<def> = COPY %ESP; GR32:%vreg7
    (-2)MOV32mr %vreg7, 1, %noreg, 0, %noreg, %vreg6<kill>; mem:ST4[Stack] GR32:%vreg7,%vreg6
    (-2)CALLpcrel32 <ga:@"\01?foo_called@@YAHH@Z">, <regmask %BH %BL %BP %BPL %BX %DI %DIL %EBP %EBX %EDI %ESI %SI %SIL>, %ESP<imp-use>, %ESP<imp-def>, %EAX<imp-def>
    (-2)ADJCALLSTACKUP32 4, 0, %ESP<imp-def,dead>, %EFLAGS<imp-def,dead>, %ESP<imp-use>
    (-2)%vreg8<def> = COPY %EAX; GR32:%vreg8
    (-2)%vreg3<def,tied1> = ADD32rm %vreg8<tied0>, <fi#0>, 1, %noreg, 0, %noreg, %EFLAGS<imp-def,dead>; mem:LD4[%a](tbaa=!8)(dereferenceable) GR32:%vreg3,%vreg8
        MOV32mr <fi#0>, 1, %noreg, 0, %noreg, %vreg3; mem:ST4[%a](tbaa=!8) GR32:%vreg3
    (-1)%vreg4<def,tied1> = DEC32r %vreg1<tied0>, %EFLAGS<imp-def>; GR32:%vreg4,%vreg1
        JE_1 <BB#2>, %EFLAGS<imp-use>
        JMP_1 <BB#3>