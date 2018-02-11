; ModuleID = 'Sha256.c'
source_filename = "Sha256.c"
target datalayout = "e-m:x-p:32:32-i64:64-f80:32-n8:16:32-a:0:32-S32"
target triple = "i686-pc-windows-msvc19.12.25834"

%struct._sha256_context = type { [8 x i32], [64 x i8], i32, i32 }

@SHA_256_K = local_unnamed_addr constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 4
@SHA_256_H = local_unnamed_addr constant [8 x i32] [i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534, i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225], align 4
@.str = private unnamed_addr constant [3 x i8] c"t1\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [9 x i8] c"Sha256.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [3 x i8] c"t2\00", section "llvm.metadata"
@SHA256.cnxt = internal global %struct._sha256_context zeroinitializer, align 16

; Function Attrs: nounwind
define void @SHA256_Mixing(i32* nocapture readonly %indexs, i32* nocapture %outdexs) local_unnamed_addr #0 {
entry:
  %w = alloca [64 x i32], align 4
  %a = alloca i32, align 4
  %t2 = alloca i32, align 4
  %0 = bitcast [64 x i32]* %w to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #2
  %1 = bitcast i32* %a to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #2
  call void @llvm.var.annotation(i8* nonnull %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 72)
  %2 = bitcast i32* %t2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #2
  call void @llvm.var.annotation(i8* nonnull %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 72)
  %3 = bitcast i32* %indexs to <4 x i32>*
  %4 = load <4 x i32>, <4 x i32>* %3, align 4, !tbaa !3
  %5 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %4)
  %6 = bitcast [64 x i32]* %w to <4 x i32>*
  store <4 x i32> %5, <4 x i32>* %6, align 4, !tbaa !3
  %arrayidx.4 = getelementptr inbounds i32, i32* %indexs, i32 4
  %arrayidx13.4 = getelementptr inbounds [64 x i32], [64 x i32]* %w, i32 0, i32 4
  %7 = bitcast i32* %arrayidx.4 to <4 x i32>*
  %8 = load <4 x i32>, <4 x i32>* %7, align 4, !tbaa !3
  %9 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %8)
  %10 = bitcast i32* %arrayidx13.4 to <4 x i32>*
  store <4 x i32> %9, <4 x i32>* %10, align 4, !tbaa !3
  %arrayidx.8 = getelementptr inbounds i32, i32* %indexs, i32 8
  %arrayidx13.8 = getelementptr inbounds [64 x i32], [64 x i32]* %w, i32 0, i32 8
  %11 = bitcast i32* %arrayidx.8 to <4 x i32>*
  %12 = load <4 x i32>, <4 x i32>* %11, align 4, !tbaa !3
  %13 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %12)
  %14 = bitcast i32* %arrayidx13.8 to <4 x i32>*
  store <4 x i32> %13, <4 x i32>* %14, align 4, !tbaa !3
  %arrayidx.12 = getelementptr inbounds i32, i32* %indexs, i32 12
  %arrayidx13.12 = getelementptr inbounds [64 x i32], [64 x i32]* %w, i32 0, i32 12
  %15 = bitcast i32* %arrayidx.12 to <4 x i32>*
  %16 = load <4 x i32>, <4 x i32>* %15, align 4, !tbaa !3
  %17 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %16)
  %18 = bitcast i32* %arrayidx13.12 to <4 x i32>*
  store <4 x i32> %17, <4 x i32>* %18, align 4, !tbaa !3
  %19 = extractelement <4 x i32> %5, i32 0
  br label %for.body16

for.body16:                                       ; preds = %for.body16, %entry
  %20 = phi i32 [ %19, %entry ], [ %21, %for.body16 ]
  %i.1216 = phi i32 [ 16, %entry ], [ %inc61, %for.body16 ]
  %sub = add nsw i32 %i.1216, -15
  %arrayidx17 = getelementptr inbounds [64 x i32], [64 x i32]* %w, i32 0, i32 %sub
  %21 = load i32, i32* %arrayidx17, align 4, !tbaa !3
  %shr18 = lshr i32 %21, 7
  %shl21 = shl i32 %21, 25
  %or22 = or i32 %shr18, %shl21
  %shr25 = lshr i32 %21, 18
  %shl28 = shl i32 %21, 14
  %or29 = or i32 %shr25, %shl28
  %shr32 = lshr i32 %21, 3
  %xor = xor i32 %or29, %shr32
  %xor33 = xor i32 %xor, %or22
  %sub36 = add nsw i32 %i.1216, -7
  %arrayidx37 = getelementptr inbounds [64 x i32], [64 x i32]* %w, i32 0, i32 %sub36
  %22 = load i32, i32* %arrayidx37, align 4, !tbaa !3
  %sub39 = add nsw i32 %i.1216, -2
  %arrayidx40 = getelementptr inbounds [64 x i32], [64 x i32]* %w, i32 0, i32 %sub39
  %23 = load i32, i32* %arrayidx40, align 4, !tbaa !3
  %shr41 = lshr i32 %23, 17
  %shl44 = shl i32 %23, 15
  %or45 = or i32 %shr41, %shl44
  %shr48 = lshr i32 %23, 19
  %shl51 = shl i32 %23, 13
  %or52 = or i32 %shr48, %shl51
  %shr56 = lshr i32 %23, 10
  %xor53 = xor i32 %or52, %shr56
  %xor57 = xor i32 %xor53, %or45
  %add = add i32 %22, %20
  %add38 = add i32 %add, %xor33
  %add58 = add i32 %add38, %xor57
  %arrayidx59 = getelementptr inbounds [64 x i32], [64 x i32]* %w, i32 0, i32 %i.1216
  store i32 %add58, i32* %arrayidx59, align 4, !tbaa !3
  %inc61 = add nuw nsw i32 %i.1216, 1
  %exitcond218 = icmp eq i32 %inc61, 64
  br i1 %exitcond218, label %for.end62, label %for.body16

for.end62:                                        ; preds = %for.body16
  %24 = bitcast i32* %outdexs to <4 x i32>*
  %25 = load <4 x i32>, <4 x i32>* %24, align 4, !tbaa !3
  %26 = extractelement <4 x i32> %25, i32 0
  store i32 %26, i32* %a, align 4, !tbaa !3
  %arrayidx67 = getelementptr inbounds i32, i32* %outdexs, i32 4
  %27 = bitcast i32* %arrayidx67 to <4 x i32>*
  %28 = load <4 x i32>, <4 x i32>* %27, align 4, !tbaa !3
  %29 = extractelement <4 x i32> %25, i32 1
  %30 = extractelement <4 x i32> %25, i32 2
  %31 = extractelement <4 x i32> %25, i32 3
  %32 = extractelement <4 x i32> %28, i32 0
  %33 = extractelement <4 x i32> %28, i32 1
  %34 = extractelement <4 x i32> %28, i32 2
  %35 = extractelement <4 x i32> %28, i32 3
  br label %for.body73

for.body73:                                       ; preds = %for.body73, %for.end62
  %add112215 = phi i32 [ %26, %for.end62 ], [ %add112, %for.body73 ]
  %i.2214 = phi i32 [ 0, %for.end62 ], [ %inc114, %for.body73 ]
  %h.0213 = phi i32 [ %35, %for.end62 ], [ %g.0212, %for.body73 ]
  %g.0212 = phi i32 [ %34, %for.end62 ], [ %f.0211, %for.body73 ]
  %f.0211 = phi i32 [ %33, %for.end62 ], [ %e.0210, %for.body73 ]
  %e.0210 = phi i32 [ %32, %for.end62 ], [ %add111, %for.body73 ]
  %d.0209 = phi i32 [ %31, %for.end62 ], [ %c.0208, %for.body73 ]
  %c.0208 = phi i32 [ %30, %for.end62 ], [ %b.0207, %for.body73 ]
  %b.0207 = phi i32 [ %29, %for.end62 ], [ %add112215, %for.body73 ]
  %shr74 = lshr i32 %e.0210, 6
  %shl75 = shl i32 %e.0210, 26
  %or76 = or i32 %shr74, %shl75
  %shr77 = lshr i32 %e.0210, 11
  %shl78 = shl i32 %e.0210, 21
  %or79 = or i32 %shr77, %shl78
  %xor80 = xor i32 %or76, %or79
  %shr81 = lshr i32 %e.0210, 25
  %shl82 = shl i32 %e.0210, 7
  %or83 = or i32 %shr81, %shl82
  %xor84 = xor i32 %xor80, %or83
  %add85 = add i32 %xor84, %h.0213
  %and86 = and i32 %f.0211, %e.0210
  %neg = xor i32 %e.0210, -1
  %and87 = and i32 %g.0212, %neg
  %xor88 = xor i32 %and87, %and86
  %add89 = add i32 %add85, %xor88
  %arrayidx90 = getelementptr inbounds [64 x i32], [64 x i32]* @SHA_256_K, i32 0, i32 %i.2214
  %36 = load i32, i32* %arrayidx90, align 4, !tbaa !3
  %add91 = add i32 %add89, %36
  %arrayidx92 = getelementptr inbounds [64 x i32], [64 x i32]* %w, i32 0, i32 %i.2214
  %37 = load i32, i32* %arrayidx92, align 4, !tbaa !3
  %add93 = add i32 %add91, %37
  %shr94 = lshr i32 %add112215, 2
  %shl95 = shl i32 %add112215, 30
  %or96 = or i32 %shr94, %shl95
  %shr97 = lshr i32 %add112215, 13
  %shl98 = shl i32 %add112215, 19
  %or99 = or i32 %shr97, %shl98
  %xor100 = xor i32 %or96, %or99
  %shr101 = lshr i32 %add112215, 22
  %shl102 = shl i32 %add112215, 10
  %or103 = or i32 %shr101, %shl102
  %xor104 = xor i32 %xor100, %or103
  %and105206 = xor i32 %add112215, %c.0208
  %xor107 = and i32 %and105206, %b.0207
  %and108 = and i32 %add112215, %c.0208
  %xor109 = xor i32 %xor107, %and108
  %add110 = add i32 %xor104, %xor109
  %add111 = add i32 %add93, %d.0209
  %add112 = add i32 %add110, %add93
  %inc114 = add nuw nsw i32 %i.2214, 1
  %exitcond = icmp eq i32 %inc114, 64
  br i1 %exitcond, label %for.end115, label %for.body73

for.end115:                                       ; preds = %for.body73
  %38 = insertelement <4 x i32> undef, i32 %add112, i32 0
  %39 = insertelement <4 x i32> %38, i32 %add112215, i32 1
  %40 = insertelement <4 x i32> %39, i32 %b.0207, i32 2
  %41 = insertelement <4 x i32> %40, i32 %c.0208, i32 3
  %42 = add <4 x i32> %41, %25
  %43 = bitcast i32* %outdexs to <4 x i32>*
  store <4 x i32> %42, <4 x i32>* %43, align 4, !tbaa !3
  %44 = insertelement <4 x i32> undef, i32 %add111, i32 0
  %45 = insertelement <4 x i32> %44, i32 %e.0210, i32 1
  %46 = insertelement <4 x i32> %45, i32 %f.0211, i32 2
  %47 = insertelement <4 x i32> %46, i32 %g.0212, i32 3
  %48 = add <4 x i32> %47, %28
  %49 = bitcast i32* %arrayidx67 to <4 x i32>*
  store <4 x i32> %48, <4 x i32>* %49, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #2
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #2
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #2
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.var.annotation(i8*, i8*, i8*, i32) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: norecurse nounwind
define void @SHA256_Init(%struct._sha256_context* nocapture %init_tgt) local_unnamed_addr #3 {
entry:
  %residue = getelementptr inbounds %struct._sha256_context, %struct._sha256_context* %init_tgt, i32 0, i32 2
  store i32 0, i32* %residue, align 4, !tbaa !7
  %inces = getelementptr inbounds %struct._sha256_context, %struct._sha256_context* %init_tgt, i32 0, i32 3
  store i32 0, i32* %inces, align 4, !tbaa !9
  %0 = bitcast %struct._sha256_context* %init_tgt to <4 x i32>*
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, <4 x i32>* %0, align 4, !tbaa !3
  %arrayidx8 = getelementptr inbounds %struct._sha256_context, %struct._sha256_context* %init_tgt, i32 0, i32 0, i32 4
  %1 = bitcast i32* %arrayidx8 to <4 x i32>*
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, <4 x i32>* %1, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind
define void @SHA256_Update(%struct._sha256_context* nocapture %cnxt, i8* nocapture readonly %target, i32 %size) local_unnamed_addr #0 {
entry:
  %shl = shl i32 %size, 3
  %inces = getelementptr inbounds %struct._sha256_context, %struct._sha256_context* %cnxt, i32 0, i32 3
  %0 = load i32, i32* %inces, align 4, !tbaa !9
  %add = add i32 %0, %shl
  store i32 %add, i32* %inces, align 4, !tbaa !9
  %shr = lshr i32 %size, 29
  %residue2 = getelementptr inbounds %struct._sha256_context, %struct._sha256_context* %cnxt, i32 0, i32 2
  %1 = load i32, i32* %residue2, align 4, !tbaa !7
  %add3 = add i32 %1, %shr
  store i32 %add3, i32* %residue2, align 4, !tbaa !7
  %cmp420 = icmp ugt i32 %size, 63
  %arraydecay = getelementptr inbounds %struct._sha256_context, %struct._sha256_context* %cnxt, i32 0, i32 1, i32 0
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %arraydecay, i8* %target, i32 %size, i32 1, i1 false)
  br i1 %cmp420, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %arraydecay5 = getelementptr inbounds %struct._sha256_context, %struct._sha256_context* %cnxt, i32 0, i32 0, i32 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %size.addr.022 = phi i32 [ %size, %while.body.lr.ph ], [ %sub, %while.body ]
  %target.addr.021 = phi i8* [ %target, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %2 = bitcast i8* %target.addr.021 to i32*
  tail call void @SHA256_Mixing(i32* %2, i32* %arraydecay5)
  %add.ptr = getelementptr inbounds i8, i8* %target.addr.021, i32 64
  %sub = add i32 %size.addr.022, -64
  %cmp4 = icmp ugt i32 %sub, 63
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %arraydecay, i8* %add.ptr, i32 %sub, i32 1, i1 false)
  br i1 %cmp4, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind
define void @SHA256_Final(%struct._sha256_context* %cnxt, i8* nocapture %bytes) local_unnamed_addr #0 {
entry:
  %inces = getelementptr inbounds %struct._sha256_context, %struct._sha256_context* %cnxt, i32 0, i32 3
  %0 = load i32, i32* %inces, align 4, !tbaa !9
  %shr = lshr i32 %0, 3
  %rem = and i32 %shr, 63
  %buffer = getelementptr inbounds %struct._sha256_context, %struct._sha256_context* %cnxt, i32 0, i32 1
  %arrayidx = getelementptr inbounds %struct._sha256_context, %struct._sha256_context* %cnxt, i32 0, i32 1, i32 %rem
  store i8 -128, i8* %arrayidx, align 1, !tbaa !10
  %cmp = icmp ugt i32 %rem, 55
  %1 = ptrtoint [64 x i8]* %buffer to i32
  %inc = add i32 %1, 1
  %add = add i32 %inc, %rem
  %2 = inttoptr i32 %add to i8*
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %buffer, i32 0, i32 0
  %sub = xor i32 %rem, 63
  tail call void @llvm.memset.p0i8.i32(i8* %2, i8 0, i32 %sub, i32 1, i1 false)
  %arraydecay2 = getelementptr inbounds %struct._sha256_context, %struct._sha256_context* %cnxt, i32 0, i32 0, i32 0
  %3 = bitcast [64 x i8]* %buffer to i32*
  tail call void @SHA256_Mixing(i32* %3, i32* %arraydecay2)
  tail call void @llvm.memset.p0i8.i32(i8* %arraydecay, i8 0, i32 56, i32 1, i1 false)
  br label %if.end

if.else:                                          ; preds = %entry
  %sub10 = sub nsw i32 55, %rem
  tail call void @llvm.memset.p0i8.i32(i8* %2, i8 0, i32 %sub10, i32 1, i1 false)
  %.pre = getelementptr inbounds %struct._sha256_context, %struct._sha256_context* %cnxt, i32 0, i32 0, i32 0
  %.pre107 = bitcast [64 x i8]* %buffer to i32*
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.pre-phi = phi i32* [ %.pre107, %if.else ], [ %3, %if.then ]
  %arraydecay43.pre-phi = phi i32* [ %.pre, %if.else ], [ %arraydecay2, %if.then ]
  %residue = getelementptr inbounds %struct._sha256_context, %struct._sha256_context* %cnxt, i32 0, i32 2
  %4 = load i32, i32* %residue, align 4, !tbaa !7
  %shr20 = lshr i32 %4, 24
  %conv = trunc i32 %shr20 to i8
  %arrayidx23 = getelementptr inbounds %struct._sha256_context, %struct._sha256_context* %cnxt, i32 0, i32 1, i32 14
  store i8 %conv, i8* %arrayidx23, align 2, !tbaa !10
  %5 = load i32, i32* %inces, align 4, !tbaa !9
  %shr37 = lshr i32 %5, 24
  %conv39 = trunc i32 %shr37 to i8
  %arrayidx41 = getelementptr inbounds %struct._sha256_context, %struct._sha256_context* %cnxt, i32 0, i32 1, i32 15
  store i8 %conv39, i8* %arrayidx41, align 1, !tbaa !10
  tail call void @SHA256_Mixing(i32* %.pre-phi, i32* %arraydecay43.pre-phi)
  %6 = load i32, i32* %arraydecay43.pre-phi, align 4, !tbaa !3
  %or69 = tail call i32 @llvm.bswap.i32(i32 %6)
  %7 = bitcast i8* %bytes to i32*
  store i32 %or69, i32* %7, align 4, !tbaa !3
  %arrayidx49.1 = getelementptr inbounds %struct._sha256_context, %struct._sha256_context* %cnxt, i32 0, i32 0, i32 1
  %8 = load i32, i32* %arrayidx49.1, align 4, !tbaa !3
  %or69.1 = tail call i32 @llvm.bswap.i32(i32 %8)
  %arrayidx70.1 = getelementptr inbounds i8, i8* %bytes, i32 4
  %9 = bitcast i8* %arrayidx70.1 to i32*
  store i32 %or69.1, i32* %9, align 4, !tbaa !3
  %arrayidx49.2 = getelementptr inbounds %struct._sha256_context, %struct._sha256_context* %cnxt, i32 0, i32 0, i32 2
  %10 = load i32, i32* %arrayidx49.2, align 4, !tbaa !3
  %or69.2 = tail call i32 @llvm.bswap.i32(i32 %10)
  %arrayidx70.2 = getelementptr inbounds i8, i8* %bytes, i32 8
  %11 = bitcast i8* %arrayidx70.2 to i32*
  store i32 %or69.2, i32* %11, align 4, !tbaa !3
  %arrayidx49.3 = getelementptr inbounds %struct._sha256_context, %struct._sha256_context* %cnxt, i32 0, i32 0, i32 3
  %12 = load i32, i32* %arrayidx49.3, align 4, !tbaa !3
  %or69.3 = tail call i32 @llvm.bswap.i32(i32 %12)
  %arrayidx70.3 = getelementptr inbounds i8, i8* %bytes, i32 12
  %13 = bitcast i8* %arrayidx70.3 to i32*
  store i32 %or69.3, i32* %13, align 4, !tbaa !3
  %arrayidx49.4 = getelementptr inbounds %struct._sha256_context, %struct._sha256_context* %cnxt, i32 0, i32 0, i32 4
  %14 = load i32, i32* %arrayidx49.4, align 4, !tbaa !3
  %or69.4 = tail call i32 @llvm.bswap.i32(i32 %14)
  %arrayidx70.4 = getelementptr inbounds i8, i8* %bytes, i32 16
  %15 = bitcast i8* %arrayidx70.4 to i32*
  store i32 %or69.4, i32* %15, align 4, !tbaa !3
  %arrayidx49.5 = getelementptr inbounds %struct._sha256_context, %struct._sha256_context* %cnxt, i32 0, i32 0, i32 5
  %16 = load i32, i32* %arrayidx49.5, align 4, !tbaa !3
  %or69.5 = tail call i32 @llvm.bswap.i32(i32 %16)
  %arrayidx70.5 = getelementptr inbounds i8, i8* %bytes, i32 20
  %17 = bitcast i8* %arrayidx70.5 to i32*
  store i32 %or69.5, i32* %17, align 4, !tbaa !3
  %arrayidx49.6 = getelementptr inbounds %struct._sha256_context, %struct._sha256_context* %cnxt, i32 0, i32 0, i32 6
  %18 = load i32, i32* %arrayidx49.6, align 4, !tbaa !3
  %or69.6 = tail call i32 @llvm.bswap.i32(i32 %18)
  %arrayidx70.6 = getelementptr inbounds i8, i8* %bytes, i32 24
  %19 = bitcast i8* %arrayidx70.6 to i32*
  store i32 %or69.6, i32* %19, align 4, !tbaa !3
  %arrayidx49.7 = getelementptr inbounds %struct._sha256_context, %struct._sha256_context* %cnxt, i32 0, i32 0, i32 7
  %20 = load i32, i32* %arrayidx49.7, align 4, !tbaa !3
  %or69.7 = tail call i32 @llvm.bswap.i32(i32 %20)
  %arrayidx70.7 = getelementptr inbounds i8, i8* %bytes, i32 28
  %21 = bitcast i8* %arrayidx70.7 to i32*
  store i32 %or69.7, i32* %21, align 4, !tbaa !3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #1

; Function Attrs: nounwind
define void @SHA256(i8* nocapture readonly %target, i32 %len, i8* nocapture %source) local_unnamed_addr #0 {
entry:
  store <4 x i32> <i32 1779033703, i32 -1150833019, i32 1013904242, i32 -1521486534>, <4 x i32>* bitcast (%struct._sha256_context* @SHA256.cnxt to <4 x i32>*), align 16, !tbaa !3
  store <4 x i32> <i32 1359893119, i32 -1694144372, i32 528734635, i32 1541459225>, <4 x i32>* bitcast (i32* getelementptr inbounds (%struct._sha256_context, %struct._sha256_context* @SHA256.cnxt, i32 0, i32 0, i32 4) to <4 x i32>*), align 16, !tbaa !3
  %shl.i = shl i32 %len, 3
  store i32 %shl.i, i32* getelementptr inbounds (%struct._sha256_context, %struct._sha256_context* @SHA256.cnxt, i32 0, i32 3), align 4, !tbaa !9
  %shr.i = lshr i32 %len, 29
  store i32 %shr.i, i32* getelementptr inbounds (%struct._sha256_context, %struct._sha256_context* @SHA256.cnxt, i32 0, i32 2), align 16, !tbaa !7
  %cmp420.i = icmp ugt i32 %len, 63
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* getelementptr inbounds (%struct._sha256_context, %struct._sha256_context* @SHA256.cnxt, i32 0, i32 1, i32 0), i8* %target, i32 %len, i32 1, i1 false) #2
  br i1 %cmp420.i, label %while.body.i.preheader, label %SHA256_Update.exit

while.body.i.preheader:                           ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.preheader, %while.body.i
  %size.addr.022.i = phi i32 [ %sub.i, %while.body.i ], [ %len, %while.body.i.preheader ]
  %target.addr.021.i = phi i8* [ %add.ptr.i, %while.body.i ], [ %target, %while.body.i.preheader ]
  %0 = bitcast i8* %target.addr.021.i to i32*
  tail call void @SHA256_Mixing(i32* %0, i32* getelementptr inbounds (%struct._sha256_context, %struct._sha256_context* @SHA256.cnxt, i32 0, i32 0, i32 0)) #2
  %add.ptr.i = getelementptr inbounds i8, i8* %target.addr.021.i, i32 64
  %sub.i = add i32 %size.addr.022.i, -64
  %cmp4.i = icmp ugt i32 %sub.i, 63
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* getelementptr inbounds (%struct._sha256_context, %struct._sha256_context* @SHA256.cnxt, i32 0, i32 1, i32 0), i8* %add.ptr.i, i32 %sub.i, i32 1, i1 false) #2
  br i1 %cmp4.i, label %while.body.i, label %SHA256_Update.exit

SHA256_Update.exit:                               ; preds = %while.body.i, %entry
  tail call void @SHA256_Final(%struct._sha256_context* nonnull @SHA256.cnxt, i8* %source)
  ret void
}

; Function Attrs: nounwind readnone speculatable
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind readnone speculatable
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #4

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind }
attributes #3 = { norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"long", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 96}
!8 = !{!"_sha256_context", !5, i64 0, !5, i64 32, !4, i64 96, !4, i64 100}
!9 = !{!8, !4, i64 100}
!10 = !{!5, !5, i64 0}
