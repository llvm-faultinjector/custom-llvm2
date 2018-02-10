C:\Users\rollrat\Desktop\Project\llvm-project\Debug\bin>clang -S -emit-llvm -O2 BigBase.cpp -o BigBase.ll
BigBase.cpp:454:37: warning: comparison of unsigned expression >= 0 is always true [-Wtautological-compare]
    for (size_t ptr = length; --ptr >= 0; )
                              ~~~~~ ^  ~
1 warning generated.

C:\Users\rollrat\Desktop\Project\llvm-project\Debug\bin>llc BigBase.ll -o BigBase.s
Function - ?divideWithRemainder@BigBase@ofw@@AAEXABV12@_NPAI@Z
    Annotated Variable List :
        - Annotated : c1(message: twice)
        - Annotated : c2(message: twice)

    Annotated-Variable : c2
        (Perpect)  %retval.0.i = phi i32 [ %add26.n.3.i, %if.end.i ], [ 32, %if.else ], !dbg !53
        (Perpect)  %add26.n.3.i = add nsw i32 %val.addr.3.lobit.not.i, %n.3.i, !dbg !52
        (Perpect)  %val.addr.3.lobit.not.i = xor i32 %val.addr.3.lobit.i, 1, !dbg !51
        (Perpect)  %val.addr.3.lobit.i = lshr i32 %val.addr.3.i, 31, !dbg !50
        (Perpect)  %val.addr.3.i = select i1 %cmp18.i, i32 %shl21.i, i32 %val.addr.2.i, !dbg !48
        (Perpect)  %cmp18.i = icmp ult i32 %val.addr.2.i, 1073741824, !dbg !45
        (Perpect)  %val.addr.2.i = select i1 %cmp12.i, i32 %shl15.i, i32 %val.addr.1.i, !dbg !43
        (Perpect)  %cmp12.i = icmp ult i32 %val.addr.1.i, 268435456, !dbg !40
        (Perpect)  %val.addr.1.i = select i1 %cmp6.i, i32 %shl9.i, i32 %shl.val.i, !dbg !38
        (Perpect)  %cmp6.i = icmp ult i32 %shl.val.i, 16777216, !dbg !35
        (Perpect)  %shl.val.i = select i1 %cmp2.i, i32 %shl.i, i32 %7, !dbg !33
        (Perpect)  %cmp2.i = icmp ult i32 %7, 65536, !dbg !31
        (Perpect)  %7 = load i32, i32* %arrayidx, align 4, !dbg !28, !tbaa !29
        (Perpect)  %arrayidx = getelementptr inbounds i32, i32* %6, i32 %sub7, !dbg !27
        (Perpect)  %6 = load i32*, i32** %blocks1015, align 4, !dbg !26, !tbaa !22
        (Perpect)  %blocks1015 = bitcast %"class.ofw::BigBase"* %integer to i32**, !dbg !25
        (Perpect)  %sub7 = add i32 %1, -1, !dbg !24
        (Perpect)  %1 = load i32, i32* %length2, align 4, !dbg !20, !tbaa !13
        (Perpect)  %length2 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %integer, i32 0, i32 1, !dbg !19
        (Perpect)  %shl.i = shl i32 %7, 16, !dbg !32
        (Perpect)  %shl9.i = shl i32 %shl.val.i, 8, !dbg !37
        (Perpect)  %shl15.i = shl i32 %val.addr.1.i, 4, !dbg !42
        (Perpect)  %shl21.i = shl i32 %val.addr.2.i, 2, !dbg !47
        (Perpect)  %n.3.i = select i1 %cmp18.i, i32 %add20.i, i32 %n.2.i, !dbg !49
        (Perpect)  %add20.i = or i32 %n.2.i, 2, !dbg !46
        (Perpect)  %n.2.i = select i1 %cmp12.i, i32 %add14.i, i32 %n.1.i, !dbg !44
        (Perpect)  %add14.i = or i32 %n.1.i, 4, !dbg !41
        (Perpect)  %n.1.i = select i1 %cmp6.i, i32 %add8.i, i32 %..i, !dbg !39
        (Perpect)  %add8.i = or i32 %..i, 8, !dbg !36
        (Perpect)  %..i = select i1 %cmp2.i, i32 16, i32 0, !dbg !34

    Annotated-Variable : c1
        (Perpect)  %add26.n.3.i296 = add nsw i32 %val.addr.3.lobit.not.i295, %n.3.i293, !dbg !87
        (Perpect)  %val.addr.3.lobit.not.i295 = xor i32 %val.addr.3.lobit.i294, 1, !dbg !86
        (Perpect)  %val.addr.3.lobit.i294 = lshr i32 %val.addr.3.i292, 31, !dbg !85
        (Perpect)  %val.addr.3.i292 = select i1 %cmp18.i289, i32 %shl21.i291, i32 %val.addr.2.i287, !dbg !83
        (Perpect)  %cmp18.i289 = icmp ult i32 %val.addr.2.i287, 1073741824, !dbg !80
        (Perpect)  %val.addr.2.i287 = select i1 %cmp12.i284, i32 %shl15.i286, i32 %val.addr.1.i282, !dbg !78
        (Perpect)  %cmp12.i284 = icmp ult i32 %val.addr.1.i282, 268435456, !dbg !75
        (Perpect)  %val.addr.1.i282 = select i1 %cmp6.i279, i32 %shl9.i281, i32 %shl.val.i277, !dbg !73
        (Perpect)  %cmp6.i279 = icmp ult i32 %shl.val.i277, 16777216, !dbg !70
        (Perpect)  %shl.val.i277 = select i1 %cmp2.i275, i32 %shl.i276, i32 %16, !dbg !68
        (Perpect)  %cmp2.i275 = icmp ult i32 %16, 65536, !dbg !66
        (Perpect)  %16 = load i32, i32* %arrayidx16, align 4, !dbg !64, !tbaa !29
        (Perpect)  %arrayidx16 = getelementptr inbounds i32, i32* %12, i32 %i.0328, !dbg !63
        (Perpect)  %12 = load i32*, i32** %blocks1518, align 4, !dbg !61, !tbaa !22
        (Perpect)  %blocks1518 = bitcast %"class.ofw::BigBase"* %this to i32**, !dbg !60
        (Perpect)  %i.0328 = phi i32 [ %sub, %for.body.lr.ph ], [ %dec133, %for.inc132 ], !dbg !62
        (Perpect)  %sub = add i32 %0, -1, !dbg !23
        (Perpect)  %0 = load i32, i32* %length, align 4, !dbg !12, !tbaa !13
        (Perpect)  %length = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1, !dbg !8
        (Perpect)  %dec133 = add nsw i32 %i.3, -1, !dbg !97
        (Perpect)  %i.3 = phi i32 [ %i.0328, %for.body ], [ %i.0.inc126, %if.end121 ], !dbg !96
        (Perpect)  %i.0.inc126 = add nsw i32 %i.0328, %inc126, !dbg !95
        (Perpect)  %inc126 = zext i1 %cmp124 to i32, !dbg !94
        (Perpect)  %cmp124 = icmp ne i32 %41, 0, !dbg !93
        (Perpect)  %41 = load i32, i32* %40, align 4, !dbg !92, !tbaa !29
        (Perpect)  %40 = bitcast i8* %sunkaddr22 to i32*, !dbg !91
        (Perpect)  %sunkaddr22 = getelementptr i8, i8* %39, i32 %sunkaddr21, !dbg !90
        (Perpect)  %39 = bitcast i32* %12 to i8*, !dbg !89
        (Perpect)  %sunkaddr21 = mul i32 %i.0328, 4, !dbg !88
        (Perpect)  %shl.i276 = shl i32 %16, 16, !dbg !67
        (Perpect)  %shl9.i281 = shl i32 %shl.val.i277, 8, !dbg !72
        (Perpect)  %shl15.i286 = shl i32 %val.addr.1.i282, 4, !dbg !77
        (Perpect)  %shl21.i291 = shl i32 %val.addr.2.i287, 2, !dbg !82
        (Perpect)  %n.3.i293 = select i1 %cmp18.i289, i32 %add20.i290, i32 %n.2.i288, !dbg !84
        (Perpect)  %add20.i290 = or i32 %n.2.i288, 2, !dbg !81
        (Perpect)  %n.2.i288 = select i1 %cmp12.i284, i32 %add14.i285, i32 %n.1.i283, !dbg !79
        (Perpect)  %add14.i285 = or i32 %n.1.i283, 4, !dbg !76
        (Perpect)  %n.1.i283 = select i1 %cmp6.i279, i32 %add8.i280, i32 %..i278, !dbg !74
        (Perpect)  %add8.i280 = or i32 %..i278, 8, !dbg !71
        (Perpect)  %..i278 = select i1 %cmp2.i275, i32 16, i32 0, !dbg !69
        (Perpect)  %cmp17 = icmp eq i32 %16, 0, !dbg !65
        (Perpect)  %or.cond217327 = or i1 %cmp13325, %cmp14326, !dbg !59
        (Perpect)  %cmp13325 = icmp slt i32 %sub, 0, !dbg !57
        (Perpect)  %cmp = icmp ult i32 %0, %1, !dbg !21
        (Perpect)  %1 = load i32, i32* %length2, align 4, !dbg !20, !tbaa !13
        (Perpect)  %length2 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %integer, i32 0, i32 1, !dbg !19
        (Perpect)  %or.cond.i304 = and i1 %cmp.i302, %cmp2.i303, !dbg !56
        (Perpect)  %cmp.i302 = icmp ne i32 %sub7, 0, !dbg !54
        (Perpect)  %sub7 = add i32 %1, -1, !dbg !24
        (Maybe)  %cmp.i = icmp eq i32 %7, 0, !dbg !30
        (Perpect)  %7 = load i32, i32* %arrayidx, align 4, !dbg !28, !tbaa !29
        (Perpect)  %arrayidx = getelementptr inbounds i32, i32* %6, i32 %sub7, !dbg !27
        (Perpect)  %6 = load i32*, i32** %blocks1015, align 4, !dbg !26, !tbaa !22
        (Perpect)  %blocks1015 = bitcast %"class.ofw::BigBase"* %integer to i32**, !dbg !25
        (Perpect)  %cmp2.i303 = icmp sgt i32 %retval.0.i, 0, !dbg !55
        (Perpect)  %retval.0.i = phi i32 [ %add26.n.3.i, %if.end.i ], [ 32, %if.else ], !dbg !53
        (Perpect)  %add26.n.3.i = add nsw i32 %val.addr.3.lobit.not.i, %n.3.i, !dbg !52
        (Perpect)  %val.addr.3.lobit.not.i = xor i32 %val.addr.3.lobit.i, 1, !dbg !51
        (Perpect)  %val.addr.3.lobit.i = lshr i32 %val.addr.3.i, 31, !dbg !50
        (Perpect)  %val.addr.3.i = select i1 %cmp18.i, i32 %shl21.i, i32 %val.addr.2.i, !dbg !48
        (Perpect)  %cmp18.i = icmp ult i32 %val.addr.2.i, 1073741824, !dbg !45
        (Perpect)  %val.addr.2.i = select i1 %cmp12.i, i32 %shl15.i, i32 %val.addr.1.i, !dbg !43
        (Perpect)  %cmp12.i = icmp ult i32 %val.addr.1.i, 268435456, !dbg !40
        (Perpect)  %val.addr.1.i = select i1 %cmp6.i, i32 %shl9.i, i32 %shl.val.i, !dbg !38
        (Perpect)  %cmp6.i = icmp ult i32 %shl.val.i, 16777216, !dbg !35
        (Perpect)  %shl.val.i = select i1 %cmp2.i, i32 %shl.i, i32 %7, !dbg !33
        (Perpect)  %cmp2.i = icmp ult i32 %7, 65536, !dbg !31
        (Perpect)  %shl.i = shl i32 %7, 16, !dbg !32
        (Perpect)  %shl9.i = shl i32 %shl.val.i, 8, !dbg !37
        (Perpect)  %shl15.i = shl i32 %val.addr.1.i, 4, !dbg !42
        (Perpect)  %shl21.i = shl i32 %val.addr.2.i, 2, !dbg !47
        (Perpect)  %n.3.i = select i1 %cmp18.i, i32 %add20.i, i32 %n.2.i, !dbg !49
        (Perpect)  %add20.i = or i32 %n.2.i, 2, !dbg !46
        (Perpect)  %n.2.i = select i1 %cmp12.i, i32 %add14.i, i32 %n.1.i, !dbg !44
        (Perpect)  %add14.i = or i32 %n.1.i, 4, !dbg !41
        (Perpect)  %n.1.i = select i1 %cmp6.i, i32 %add8.i, i32 %..i, !dbg !39
        (Perpect)  %add8.i = or i32 %..i, 8, !dbg !36
        (Perpect)  %..i = select i1 %cmp2.i, i32 16, i32 0, !dbg !34
        (Perpect)  %cmp14326 = icmp slt i32 %sub, %sub7, !dbg !58
        (Maybe)  %or.cond217 = or i1 %cmp13, %cmp14, !dbg !100
        (Maybe)  %cmp13 = icmp slt i32 %i.3, 1, !dbg !98
        (Maybe)  %cmp14 = icmp sle i32 %i.3, %sub7, !dbg !99