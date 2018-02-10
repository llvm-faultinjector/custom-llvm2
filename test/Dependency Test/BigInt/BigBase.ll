; ModuleID = 'BigBase.cpp'
source_filename = "BigBase.cpp"
target datalayout = "e-m:x-p:32:32-i64:64-f80:32-n8:16:32-a:0:32-S32"
target triple = "i686-pc-windows-msvc19.12.25834"

%"class.ofw::BigBase" = type { i32*, i32 }
%class.anon = type { i8 }
%"class.std::basic_string" = type { %"class.std::_String_alloc" }
%"class.std::_String_alloc" = type { %"class.std::_Compressed_pair" }
%"class.std::_Compressed_pair" = type { %"class.std::_String_val" }
%"class.std::_String_val" = type { %"union.std::_String_val<std::_Simple_types<char> >::_Bxty", i32, i32 }
%"union.std::_String_val<std::_Simple_types<char> >::_Bxty" = type { i8*, [12 x i8] }

$"\01??$_Reallocate_for@V<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV34@QBDI@Z@PBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV01@IV<lambda_1>@?0??assign@01@QAEAAV01@QBDI@Z@PBD@Z" = comdat any

$"\01?_Xlen@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@SAXXZ" = comdat any

$"\01??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@" = comdat any

@.str = private unnamed_addr constant [6 x i8] c"twice\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [12 x i8] c"BigBase.cpp\00", section "llvm.metadata"
@"\01??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@" = linkonce_odr unnamed_addr constant [16 x i8] c"string too long\00", comdat, align 1

; Function Attrs: norecurse nounwind
define x86_thiscallcc %"class.ofw::BigBase"* @"\01??0BigBase@ofw@@QAE@XZ"(%"class.ofw::BigBase"* returned %this) unnamed_addr #0 align 2 {
entry:
  %blocks = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 0
  store i32* null, i32** %blocks, align 4, !tbaa !8
  %length = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  store i32 0, i32* %length, align 4, !tbaa !14
  ret %"class.ofw::BigBase"* %this
}

define x86_thiscallcc %"class.ofw::BigBase"* @"\01??0BigBase@ofw@@QAE@I@Z"(%"class.ofw::BigBase"* returned %this, i32 %uiptr) unnamed_addr #1 align 2 {
entry:
  %blocks = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 0
  store i32* null, i32** %blocks, align 4, !tbaa !8
  %length = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  store i32 0, i32* %length, align 4, !tbaa !14
  %cmp = icmp eq i32 %uiptr, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call i8* @"\01??_U@YAPAXI@Z"(i32 4) #17
  %0 = bitcast %"class.ofw::BigBase"* %this to i8**
  store i8* %call.i, i8** %0, align 4, !tbaa !8
  store i32 1, i32* %length, align 4, !tbaa !14
  %.cast = bitcast i8* %call.i to i32*
  store i32 %uiptr, i32* %.cast, align 4, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret %"class.ofw::BigBase"* %this
}

define x86_thiscallcc void @"\01?allocate@BigBase@ofw@@AAEXI@Z"(%"class.ofw::BigBase"* nocapture %this, i32 %i) local_unnamed_addr #1 align 2 {
entry:
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i, i32 4)
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %3 = select i1 %1, i32 -1, i32 %2
  %call = tail call i8* @"\01??_U@YAPAXI@Z"(i32 %3) #17
  %4 = bitcast %"class.ofw::BigBase"* %this to i8**
  store i8* %call, i8** %4, align 4, !tbaa !8
  %length = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  store i32 %i, i32* %length, align 4, !tbaa !14
  ret void
}

define x86_thiscallcc %"class.ofw::BigBase"* @"\01??0BigBase@ofw@@QAE@ABV01@@Z"(%"class.ofw::BigBase"* returned %this, %"class.ofw::BigBase"* nocapture readonly dereferenceable(8) %refer) unnamed_addr #1 align 2 {
"\01?init@BigBase@ofw@@AAEXXZ.exit.i":
  %length.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %refer, i32 0, i32 1
  %0 = bitcast %"class.ofw::BigBase"* %this to i64*
  store i64 0, i64* %0, align 4
  %1 = load i32, i32* %length.i, align 4, !tbaa !14
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %"\01?copy@BigBase@ofw@@AAEXABV12@@Z.exit", label %if.then.i

if.then.i:                                        ; preds = %"\01?init@BigBase@ofw@@AAEXXZ.exit.i"
  %length = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4)
  %3 = extractvalue { i32, i1 } %2, 1
  %4 = extractvalue { i32, i1 } %2, 0
  %5 = select i1 %3, i32 -1, i32 %4
  %call.i.i = tail call i8* @"\01??_U@YAPAXI@Z"(i32 %5) #17
  %6 = bitcast %"class.ofw::BigBase"* %this to i8**
  store i8* %call.i.i, i8** %6, align 4, !tbaa !8
  store i32 %1, i32* %length, align 4, !tbaa !14
  %7 = bitcast %"class.ofw::BigBase"* %refer to i8**
  %8 = load i8*, i8** %7, align 4, !tbaa !8
  %9 = load i32, i32* %length.i, align 4, !tbaa !14
  %mul.i = shl i32 %9, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %call.i.i, i8* %8, i32 %mul.i, i32 4, i1 false)
  br label %"\01?copy@BigBase@ofw@@AAEXABV12@@Z.exit"

"\01?copy@BigBase@ofw@@AAEXABV12@@Z.exit":        ; preds = %"\01?init@BigBase@ofw@@AAEXXZ.exit.i", %if.then.i
  ret %"class.ofw::BigBase"* %this
}

define x86_thiscallcc void @"\01?copy@BigBase@ofw@@AAEXABV12@@Z"(%"class.ofw::BigBase"* nocapture %this, %"class.ofw::BigBase"* nocapture readonly dereferenceable(8) %g) local_unnamed_addr #1 align 2 {
entry:
  %blocks.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 0
  %0 = load i32*, i32** %blocks.i, align 4, !tbaa !8
  %cmp.i = icmp eq i32* %0, null
  br i1 %cmp.i, label %"\01?init@BigBase@ofw@@AAEXXZ.exit", label %delete.notnull.i

delete.notnull.i:                                 ; preds = %entry
  %1 = bitcast i32* %0 to i8*
  tail call void @"\01??_V@YAXPAX@Z"(i8* %1) #18
  br label %"\01?init@BigBase@ofw@@AAEXXZ.exit"

"\01?init@BigBase@ofw@@AAEXXZ.exit":              ; preds = %entry, %delete.notnull.i
  store i32* null, i32** %blocks.i, align 4, !tbaa !8
  %length.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  store i32 0, i32* %length.i, align 4, !tbaa !14
  %length = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %g, i32 0, i32 1
  %2 = load i32, i32* %length, align 4, !tbaa !14
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %"\01?init@BigBase@ofw@@AAEXXZ.exit"
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 4)
  %4 = extractvalue { i32, i1 } %3, 1
  %5 = extractvalue { i32, i1 } %3, 0
  %6 = select i1 %4, i32 -1, i32 %5
  %call.i = tail call i8* @"\01??_U@YAPAXI@Z"(i32 %6) #17
  %7 = bitcast %"class.ofw::BigBase"* %this to i8**
  store i8* %call.i, i8** %7, align 4, !tbaa !8
  store i32 %2, i32* %length.i, align 4, !tbaa !14
  %8 = bitcast %"class.ofw::BigBase"* %g to i8**
  %9 = load i8*, i8** %8, align 4, !tbaa !8
  %10 = load i32, i32* %length, align 4, !tbaa !14
  %mul = shl i32 %10, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %call.i, i8* %9, i32 %mul, i32 4, i1 false)
  br label %if.end

if.end:                                           ; preds = %"\01?init@BigBase@ofw@@AAEXXZ.exit", %if.then
  ret void
}

define x86_thiscallcc %"class.ofw::BigBase"* @"\01??0BigBase@ofw@@QAE@PBD@Z"(%"class.ofw::BigBase"* returned %this, i8* %str) unnamed_addr #1 align 2 personality i32 (...)* @__CxxFrameHandler3 {
entry:
  %agg.tmp.i.i.i = alloca %class.anon, align 4
  %argmem = alloca inalloca <{ %"class.std::basic_string" }>, align 4
  %_Mysize.i.i.i.i = getelementptr inbounds <{ %"class.std::basic_string" }>, <{ %"class.std::basic_string" }>* %argmem, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %_Myres.i.i.i.i = getelementptr inbounds <{ %"class.std::basic_string" }>, <{ %"class.std::basic_string" }>* %argmem, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %0 = bitcast i32* %_Mysize.i.i.i.i to i64*
  store i64 0, i64* %0, align 4
  store i32 15, i32* %_Myres.i.i.i.i, align 4, !tbaa !16
  %arrayidx.i.i = bitcast <{ %"class.std::basic_string" }>* %argmem to i8*
  store i8 0, i8* %arrayidx.i.i, align 4, !tbaa !18
  %call.i.i.i = tail call i32 @strlen(i8* %str) #2
  %1 = getelementptr inbounds %class.anon, %class.anon* %agg.tmp.i.i.i, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1)
  %cmp.i.i.i = icmp ugt i32 %call.i.i.i, 15
  br i1 %cmp.i.i.i, label %if.end.i.i.i, label %"\01?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QAEPADXZ.exit.i.i.i"

"\01?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QAEPADXZ.exit.i.i.i": ; preds = %entry
  store i32 %call.i.i.i, i32* %_Mysize.i.i.i.i, align 4, !tbaa !19
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %arrayidx.i.i, i8* %str, i32 %call.i.i.i, i32 1, i1 false) #2
  %arrayidx.i.i.i = getelementptr inbounds i8, i8* %arrayidx.i.i, i32 %call.i.i.i
  store i8 0, i8* %arrayidx.i.i.i, align 1, !tbaa !18
  br label %"\01??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@QBD@Z.exit"

if.end.i.i.i:                                     ; preds = %entry
  %2 = getelementptr inbounds <{ %"class.std::basic_string" }>, <{ %"class.std::basic_string" }>* %argmem, i32 0, i32 0
  %call4.i.i4.i = call x86_thiscallcc dereferenceable(24) %"class.std::basic_string"* @"\01??$_Reallocate_for@V<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV34@QBDI@Z@PBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV01@IV<lambda_1>@?0??assign@01@QAEAAV01@QBDI@Z@PBD@Z"(%"class.std::basic_string"* nonnull %2, i32 %call.i.i.i, %class.anon* byval nonnull align 4 %agg.tmp.i.i.i, i8* %str)
  br label %"\01??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@QBD@Z.exit"

"\01??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@QBD@Z.exit": ; preds = %"\01?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QAEPADXZ.exit.i.i.i", %if.end.i.i.i
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1)
  %call2 = call x86_thiscallcc %"class.ofw::BigBase"* @"\01??0BigBase@ofw@@QAE@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z"(%"class.ofw::BigBase"* %this, <{ %"class.std::basic_string" }>* inalloca nonnull %argmem)
  ret %"class.ofw::BigBase"* %this
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

define x86_thiscallcc %"class.ofw::BigBase"* @"\01??0BigBase@ofw@@QAE@V?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z"(%"class.ofw::BigBase"* returned %this, <{ %"class.std::basic_string" }>* inalloca nocapture) unnamed_addr #1 align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %blocks = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 0
  store i32* null, i32** %blocks, align 4, !tbaa !8
  %length = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  store i32 0, i32* %length, align 4, !tbaa !14
  %arraydecay.i.i = bitcast <{ %"class.std::basic_string" }>* %0 to i8*
  %_Myres.i.i.i = getelementptr inbounds <{ %"class.std::basic_string" }>, <{ %"class.std::basic_string" }>* %0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %1 = load i32, i32* %_Myres.i.i.i, align 4, !tbaa !16
  %cmp.i.i.i = icmp ugt i32 %1, 15
  %_Ptr.i.i = getelementptr inbounds <{ %"class.std::basic_string" }>, <{ %"class.std::basic_string" }>* %0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  br i1 %cmp.i.i.i, label %if.then.i.i, label %"\01??A?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QBEABDI@Z.exit"

if.then.i.i:                                      ; preds = %entry
  %2 = load i8*, i8** %_Ptr.i.i, align 4, !tbaa !18
  br label %"\01??A?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QBEABDI@Z.exit"

"\01??A?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QBEABDI@Z.exit": ; preds = %entry, %if.then.i.i
  %_Result.0.i.i = phi i8* [ %2, %if.then.i.i ], [ %arraydecay.i.i, %entry ]
  %3 = load i8, i8* %_Result.0.i.i, align 1, !tbaa !18
  %cmp = icmp eq i8 %3, 120
  %inalloca.save = tail call i8* @llvm.stacksave()
  %argmem = alloca inalloca <{ %"class.std::basic_string" }>, align 4
  %_Mysize.i.i.i.i = getelementptr inbounds <{ %"class.std::basic_string" }>, <{ %"class.std::basic_string" }>* %argmem, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  store i32 0, i32* %_Mysize.i.i.i.i, align 4, !tbaa !19
  %_Myres.i.i.i6.i = getelementptr inbounds <{ %"class.std::basic_string" }>, <{ %"class.std::basic_string" }>* %argmem, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  store i32 0, i32* %_Myres.i.i.i6.i, align 4, !tbaa !16
  %_Mysize.i.i13 = getelementptr inbounds <{ %"class.std::basic_string" }>, <{ %"class.std::basic_string" }>* %0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %4 = load i32, i32* %_Mysize.i.i13, align 4, !tbaa !19
  %5 = load i32, i32* %_Myres.i.i.i, align 4, !tbaa !16
  %cmp.i.i41.i.i = icmp ugt i32 %5, 15
  %6 = load i8*, i8** %_Ptr.i.i, align 4
  %_Result.0.i.i.i = select i1 %cmp.i.i41.i.i, i8* %6, i8* %arraydecay.i.i
  %cmp.i.i = icmp ult i32 %4, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %"\01??A?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QBEABDI@Z.exit"
  br i1 %cmp.i.i, label %if.then.i.i15, label %if.end.i.i.i.i

if.then.i.i15:                                    ; preds = %if.then
  %arraydecay.i.i14 = bitcast <{ %"class.std::basic_string" }>* %argmem to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %arraydecay.i.i14, i8* %_Result.0.i.i.i, i32 16, i32 1, i1 false) #2
  br label %invoke.cont2

if.end.i.i.i.i:                                   ; preds = %if.then
  %or.i.i = or i32 %4, 15
  %7 = icmp ult i32 %or.i.i, 2147483647
  %.sroa.speculated.i.i = select i1 %7, i32 %or.i.i, i32 2147483647
  %cmp4.i.i.i.i = icmp ugt i32 %.sroa.speculated.i.i, 4094
  br i1 %cmp4.i.i.i.i, label %if.end8.i.i.i.i, label %if.end13.i.i.i.i

if.end8.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  %add.i.i.i.i16 = add nuw i32 %.sroa.speculated.i.i, 36
  %call.i.i.i4.i19 = invoke i8* @"\01??2@YAPAXI@Z"(i32 %add.i.i.i.i16)
          to label %call.i.i.i4.i.noexc unwind label %ehcleanup

call.i.i.i4.i.noexc:                              ; preds = %if.end8.i.i.i.i
  %8 = ptrtoint i8* %call.i.i.i4.i19 to i32
  %add12.i.i.i.i = add i32 %8, 35
  %and.i.i.i.i17 = and i32 %add12.i.i.i.i, -32
  %9 = inttoptr i32 %and.i.i.i.i17 to i8*
  %10 = inttoptr i32 %and.i.i.i.i17 to i32*
  %arrayidx.i.i.i.i = getelementptr inbounds i32, i32* %10, i32 -1
  store i32 %8, i32* %arrayidx.i.i.i.i, align 4, !tbaa !15
  br label %"\01?allocate@?$allocator@D@std@@QAEPADI@Z.exit.i.i"

if.end13.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  %add.i.i18 = add nuw i32 %.sroa.speculated.i.i, 1
  %call.i.i.i.i5.i20 = invoke i8* @"\01??2@YAPAXI@Z"(i32 %add.i.i18)
          to label %"\01?allocate@?$allocator@D@std@@QAEPADI@Z.exit.i.i" unwind label %ehcleanup

"\01?allocate@?$allocator@D@std@@QAEPADI@Z.exit.i.i": ; preds = %if.end13.i.i.i.i, %call.i.i.i4.i.noexc
  %retval.1.i.i.i.i = phi i8* [ %9, %call.i.i.i4.i.noexc ], [ %call.i.i.i.i5.i20, %if.end13.i.i.i.i ]
  %11 = ptrtoint i8* %retval.1.i.i.i.i to i32
  %12 = bitcast <{ %"class.std::basic_string" }>* %argmem to i32*
  store i32 %11, i32* %12, align 4, !tbaa !20
  %add13.i.i = add i32 %4, 1
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %retval.1.i.i.i.i, i8* %_Result.0.i.i.i, i32 %add13.i.i, i32 1, i1 false) #2
  br label %invoke.cont2

invoke.cont2:                                     ; preds = %"\01?allocate@?$allocator@D@std@@QAEPADI@Z.exit.i.i", %if.then.i.i15
  %.sroa.speculated.sink.i.i = phi i32 [ %.sroa.speculated.i.i, %"\01?allocate@?$allocator@D@std@@QAEPADI@Z.exit.i.i" ], [ 15, %if.then.i.i15 ]
  store i32 %4, i32* %_Mysize.i.i.i.i, align 4, !tbaa !19
  store i32 %.sroa.speculated.sink.i.i, i32* %_Myres.i.i.i6.i, align 4, !tbaa !16
  invoke x86_thiscallcc void @"\01?init_hex@BigBase@ofw@@AAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z"(%"class.ofw::BigBase"* nonnull %this, <{ %"class.std::basic_string" }>* inalloca nonnull %argmem)
          to label %invoke.cont4 unwind label %ehcleanup

invoke.cont4:                                     ; preds = %invoke.cont2
  tail call void @llvm.stackrestore(i8* %inalloca.save)
  br label %if.end

if.else:                                          ; preds = %"\01??A?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QBEABDI@Z.exit"
  br i1 %cmp.i.i, label %if.then.i.i31, label %if.end.i.i.i.i35

if.then.i.i31:                                    ; preds = %if.else
  %arraydecay.i.i30 = bitcast <{ %"class.std::basic_string" }>* %argmem to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %arraydecay.i.i30, i8* %_Result.0.i.i.i, i32 16, i32 1, i1 false) #2
  br label %invoke.cont6

if.end.i.i.i.i35:                                 ; preds = %if.else
  %or.i.i32 = or i32 %4, 15
  %13 = icmp ult i32 %or.i.i32, 2147483647
  %.sroa.speculated.i.i33 = select i1 %13, i32 %or.i.i32, i32 2147483647
  %cmp4.i.i.i.i34 = icmp ugt i32 %.sroa.speculated.i.i33, 4094
  br i1 %cmp4.i.i.i.i34, label %if.end8.i.i.i.i40, label %if.end13.i.i.i.i42

if.end8.i.i.i.i40:                                ; preds = %if.end.i.i.i.i35
  %add.i.i.i.i36 = add nuw i32 %.sroa.speculated.i.i33, 36
  %call.i.i.i4.i48 = invoke i8* @"\01??2@YAPAXI@Z"(i32 %add.i.i.i.i36)
          to label %call.i.i.i4.i.noexc47 unwind label %ehcleanup

call.i.i.i4.i.noexc47:                            ; preds = %if.end8.i.i.i.i40
  %14 = ptrtoint i8* %call.i.i.i4.i48 to i32
  %add12.i.i.i.i37 = add i32 %14, 35
  %and.i.i.i.i38 = and i32 %add12.i.i.i.i37, -32
  %15 = inttoptr i32 %and.i.i.i.i38 to i8*
  %16 = inttoptr i32 %and.i.i.i.i38 to i32*
  %arrayidx.i.i.i.i39 = getelementptr inbounds i32, i32* %16, i32 -1
  store i32 %14, i32* %arrayidx.i.i.i.i39, align 4, !tbaa !15
  br label %"\01?allocate@?$allocator@D@std@@QAEPADI@Z.exit.i.i45"

if.end13.i.i.i.i42:                               ; preds = %if.end.i.i.i.i35
  %add.i.i41 = add nuw i32 %.sroa.speculated.i.i33, 1
  %call.i.i.i.i5.i50 = invoke i8* @"\01??2@YAPAXI@Z"(i32 %add.i.i41)
          to label %"\01?allocate@?$allocator@D@std@@QAEPADI@Z.exit.i.i45" unwind label %ehcleanup

"\01?allocate@?$allocator@D@std@@QAEPADI@Z.exit.i.i45": ; preds = %if.end13.i.i.i.i42, %call.i.i.i4.i.noexc47
  %retval.1.i.i.i.i43 = phi i8* [ %15, %call.i.i.i4.i.noexc47 ], [ %call.i.i.i.i5.i50, %if.end13.i.i.i.i42 ]
  %17 = ptrtoint i8* %retval.1.i.i.i.i43 to i32
  %18 = bitcast <{ %"class.std::basic_string" }>* %argmem to i32*
  store i32 %17, i32* %18, align 4, !tbaa !20
  %add13.i.i44 = add i32 %4, 1
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %retval.1.i.i.i.i43, i8* %_Result.0.i.i.i, i32 %add13.i.i44, i32 1, i1 false) #2
  br label %invoke.cont6

invoke.cont6:                                     ; preds = %"\01?allocate@?$allocator@D@std@@QAEPADI@Z.exit.i.i45", %if.then.i.i31
  %.sroa.speculated.sink.i.i46 = phi i32 [ %.sroa.speculated.i.i33, %"\01?allocate@?$allocator@D@std@@QAEPADI@Z.exit.i.i45" ], [ 15, %if.then.i.i31 ]
  store i32 %4, i32* %_Mysize.i.i.i.i, align 4, !tbaa !19
  store i32 %.sroa.speculated.sink.i.i46, i32* %_Myres.i.i.i6.i, align 4, !tbaa !16
  invoke x86_thiscallcc void @"\01?init_decimal@BigBase@ofw@@AAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z"(%"class.ofw::BigBase"* nonnull %this, <{ %"class.std::basic_string" }>* inalloca nonnull %argmem)
          to label %invoke.cont9 unwind label %ehcleanup

invoke.cont9:                                     ; preds = %invoke.cont6
  tail call void @llvm.stackrestore(i8* %inalloca.save)
  br label %if.end

if.end:                                           ; preds = %invoke.cont9, %invoke.cont4
  %19 = load i32, i32* %_Myres.i.i.i, align 4, !tbaa !16
  %cmp.i.i.i53 = icmp ugt i32 %19, 15
  br i1 %cmp.i.i.i53, label %if.then.i.i57, label %"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit77"

if.then.i.i57:                                    ; preds = %if.end
  %20 = load i8*, i8** %_Ptr.i.i, align 4, !tbaa !18
  %add.i.i55 = add i32 %19, 1
  %cmp1.i.i.i.i56 = icmp ugt i32 %add.i.i55, 4095
  br i1 %cmp1.i.i.i.i56, label %if.then2.i.i.i.i60, label %"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i73"

if.then2.i.i.i.i60:                               ; preds = %if.then.i.i57
  %add.i.i.i.i58 = add i32 %19, 36
  %cmp3.i.i.i.i59 = icmp ugt i32 %add.i.i55, -36
  br i1 %cmp3.i.i.i.i59, label %_Invalid_parameter.i.i.i.i69, label %if.end5.i.i.i.i63

if.end5.i.i.i.i63:                                ; preds = %if.then2.i.i.i.i60
  %21 = ptrtoint i8* %20 to i32
  %and.i.i.i.i61 = and i32 %21, 31
  %cmp7.i.i.i.i62 = icmp eq i32 %and.i.i.i.i61, 0
  br i1 %cmp7.i.i.i.i62, label %if.end9.i.i.i.i66, label %_Invalid_parameter.i.i.i.i69

if.end9.i.i.i.i66:                                ; preds = %if.end5.i.i.i.i63
  %sub.i.i.i.i64 = add i32 %21, -4
  %22 = inttoptr i32 %sub.i.i.i.i64 to i32*
  %23 = load i32, i32* %22, align 4, !tbaa !15
  %cmp10.i.i.i.i65 = icmp ult i32 %23, %21
  br i1 %cmp10.i.i.i.i65, label %if.end12.i.i.i.i68, label %_Invalid_parameter.i.i.i.i69

if.end12.i.i.i.i68:                               ; preds = %if.end9.i.i.i.i66
  %sub13.off.i.i.i.i67 = sub i32 %sub.i.i.i.i64, %23
  %24 = icmp ugt i32 %sub13.off.i.i.i.i67, 31
  %25 = inttoptr i32 %23 to i8*
  br i1 %24, label %_Invalid_parameter.i.i.i.i69, label %"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i73"

_Invalid_parameter.i.i.i.i69:                     ; preds = %if.end12.i.i.i.i68, %if.end9.i.i.i.i66, %if.end5.i.i.i.i63, %if.then2.i.i.i.i60
  invoke void @_invalid_parameter_noinfo_noreturn() #19
          to label %.noexc.i70 unwind label %ehcleanup.i76

.noexc.i70:                                       ; preds = %_Invalid_parameter.i.i.i.i69
  unreachable

"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i73": ; preds = %if.end12.i.i.i.i68, %if.then.i.i57
  %_Allocated_size.0.i.i.i.i71 = phi i32 [ %add.i.i55, %if.then.i.i57 ], [ %add.i.i.i.i58, %if.end12.i.i.i.i68 ]
  %_Ptr.addr.2.i.i.i.i72 = phi i8* [ %20, %if.then.i.i57 ], [ %25, %if.end12.i.i.i.i68 ]
  tail call void @"\01??3@YAXPAXI@Z"(i8* %_Ptr.addr.2.i.i.i.i72, i32 %_Allocated_size.0.i.i.i.i71) #2
  br label %"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit77"

ehcleanup.i76:                                    ; preds = %_Invalid_parameter.i.i.i.i69
  %26 = cleanuppad within none []
  call void @__std_terminate() #20 [ "funclet"(token %26) ]
  unreachable

"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit77": ; preds = %if.end, %"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i73"
  ret %"class.ofw::BigBase"* %this

ehcleanup:                                        ; preds = %if.end13.i.i.i.i42, %if.end8.i.i.i.i40, %if.end13.i.i.i.i, %if.end8.i.i.i.i, %invoke.cont6, %invoke.cont2
  %27 = cleanuppad within none []
  %28 = load i32, i32* %_Myres.i.i.i, align 4, !tbaa !16
  %cmp.i.i.i11 = icmp ugt i32 %28, 15
  br i1 %cmp.i.i.i11, label %if.then.i.i12, label %"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit"

if.then.i.i12:                                    ; preds = %ehcleanup
  %29 = load i8*, i8** %_Ptr.i.i, align 4, !tbaa !18
  %add.i.i = add i32 %28, 1
  %cmp1.i.i.i.i = icmp ugt i32 %add.i.i, 4095
  br i1 %cmp1.i.i.i.i, label %if.then2.i.i.i.i, label %"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i"

if.then2.i.i.i.i:                                 ; preds = %if.then.i.i12
  %add.i.i.i.i = add i32 %28, 36
  %cmp3.i.i.i.i = icmp ugt i32 %add.i.i, -36
  br i1 %cmp3.i.i.i.i, label %_Invalid_parameter.i.i.i.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then2.i.i.i.i
  %30 = ptrtoint i8* %29 to i32
  %and.i.i.i.i = and i32 %30, 31
  %cmp7.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %cmp7.i.i.i.i, label %if.end9.i.i.i.i, label %_Invalid_parameter.i.i.i.i

if.end9.i.i.i.i:                                  ; preds = %if.end5.i.i.i.i
  %sub.i.i.i.i = add i32 %30, -4
  %31 = inttoptr i32 %sub.i.i.i.i to i32*
  %32 = load i32, i32* %31, align 4, !tbaa !15
  %cmp10.i.i.i.i = icmp ult i32 %32, %30
  br i1 %cmp10.i.i.i.i, label %if.end12.i.i.i.i, label %_Invalid_parameter.i.i.i.i

if.end12.i.i.i.i:                                 ; preds = %if.end9.i.i.i.i
  %sub13.off.i.i.i.i = sub i32 %sub.i.i.i.i, %32
  %33 = icmp ugt i32 %sub13.off.i.i.i.i, 31
  %34 = inttoptr i32 %32 to i8*
  br i1 %33, label %_Invalid_parameter.i.i.i.i, label %"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i"

_Invalid_parameter.i.i.i.i:                       ; preds = %if.end12.i.i.i.i, %if.end9.i.i.i.i, %if.end5.i.i.i.i, %if.then2.i.i.i.i
  invoke void @_invalid_parameter_noinfo_noreturn() #19 [ "funclet"(token %27) ]
          to label %.noexc.i unwind label %ehcleanup.i

.noexc.i:                                         ; preds = %_Invalid_parameter.i.i.i.i
  unreachable

"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i": ; preds = %if.end12.i.i.i.i, %if.then.i.i12
  %_Allocated_size.0.i.i.i.i = phi i32 [ %add.i.i, %if.then.i.i12 ], [ %add.i.i.i.i, %if.end12.i.i.i.i ]
  %_Ptr.addr.2.i.i.i.i = phi i8* [ %29, %if.then.i.i12 ], [ %34, %if.end12.i.i.i.i ]
  call void @"\01??3@YAXPAXI@Z"(i8* %_Ptr.addr.2.i.i.i.i, i32 %_Allocated_size.0.i.i.i.i) #2 [ "funclet"(token %27) ]
  br label %"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit"

ehcleanup.i:                                      ; preds = %_Invalid_parameter.i.i.i.i
  %35 = cleanuppad within %27 []
  call void @__std_terminate() #20 [ "funclet"(token %35) ]
  unreachable

"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit": ; preds = %ehcleanup, %"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i"
  cleanupret from %27 unwind to caller
}

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare i32 @__CxxFrameHandler3(...)

define x86_thiscallcc void @"\01?init_hex@BigBase@ofw@@AAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z"(%"class.ofw::BigBase"* nocapture %this, <{ %"class.std::basic_string" }>* inalloca nocapture) local_unnamed_addr #1 align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %_Mysize.i = getelementptr inbounds <{ %"class.std::basic_string" }>, <{ %"class.std::basic_string" }>* %0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %1 = load i32, i32* %_Mysize.i, align 4, !tbaa !19
  %sub = add i32 %1, -1
  %div = lshr i32 %sub, 3
  %add = add nuw nsw i32 %div, 1
  %2 = shl nuw i32 %add, 2
  %call.i72 = invoke i8* @"\01??_U@YAPAXI@Z"(i32 %2) #17
          to label %invoke.cont unwind label %ehcleanup43

invoke.cont:                                      ; preds = %entry
  %3 = bitcast %"class.ofw::BigBase"* %this to i8**
  store i8* %call.i72, i8** %3, align 4, !tbaa !8
  %length.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  store i32 %add, i32* %length.i, align 4, !tbaa !14
  tail call void @llvm.memset.p0i8.i32(i8* nonnull %call.i72, i8 0, i32 %2, i32 4, i1 false)
  %conv = uitofp i32 %sub to float
  %div2 = fmul float %conv, 1.250000e-01
  %conv1.i = tail call float @llvm.ceil.f32(float %div2) #2
  %conv4 = fptosi float %conv1.i to i32
  %cmp123 = icmp sgt i32 %conv4, 0
  %4 = bitcast i8* %call.i72 to i32*
  br i1 %cmp123, label %for.body.lr.ph, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %for.cond.cleanup10, %invoke.cont
  br label %for.body.i

for.body.lr.ph:                                   ; preds = %invoke.cont
  %sub5 = add nsw i32 %conv4, -1
  %rem = and i32 %sub, 7
  %tobool = icmp eq i32 %rem, 0
  %.rem = select i1 %tobool, i32 8, i32 %rem
  %arraydecay.i.i = bitcast <{ %"class.std::basic_string" }>* %0 to i8*
  %_Myres.i.i.i100 = getelementptr inbounds <{ %"class.std::basic_string" }>, <{ %"class.std::basic_string" }>* %0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %_Ptr.i.i = getelementptr inbounds <{ %"class.std::basic_string" }>, <{ %"class.std::basic_string" }>* %0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  br label %for.body11.lr.ph

for.cond.i:                                       ; preds = %for.body.i
  %i.0.i = add i32 %i.018.i, -1
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %for.body.i, label %delete.notnull.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.cond.i
  %i.018.i = phi i32 [ %i.0.i, %for.cond.i ], [ %div, %for.body.i.preheader ]
  %i.0.in17.i = phi i32 [ %i.018.i, %for.cond.i ], [ %add, %for.body.i.preheader ]
  %arrayidx.i = getelementptr inbounds i32, i32* %4, i32 %i.018.i
  %5 = load i32, i32* %arrayidx.i, align 4, !tbaa !15
  %cmp2.i = icmp eq i32 %5, 0
  br i1 %cmp2.i, label %for.cond.i, label %if.then4.i

if.then4.i:                                       ; preds = %for.body.i
  store i32 %i.0.in17.i, i32* %length.i, align 4, !tbaa !14
  br label %"\01?trim@BigBase@ofw@@AAEXXZ.exit"

delete.notnull.i:                                 ; preds = %for.cond.i
  store i32 0, i32* %length.i, align 4, !tbaa !14
  tail call void @"\01??_V@YAXPAX@Z"(i8* nonnull %call.i72) #18
  br label %"\01?trim@BigBase@ofw@@AAEXXZ.exit"

"\01?trim@BigBase@ofw@@AAEXXZ.exit":              ; preds = %if.then4.i, %delete.notnull.i
  %_Myres.i.i.i74 = getelementptr inbounds <{ %"class.std::basic_string" }>, <{ %"class.std::basic_string" }>* %0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %6 = load i32, i32* %_Myres.i.i.i74, align 4, !tbaa !16
  %cmp.i.i.i75 = icmp ugt i32 %6, 15
  br i1 %cmp.i.i.i75, label %if.then.i.i79, label %"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit99"

if.then.i.i79:                                    ; preds = %"\01?trim@BigBase@ofw@@AAEXXZ.exit"
  %_Ptr3.i.i76 = getelementptr inbounds <{ %"class.std::basic_string" }>, <{ %"class.std::basic_string" }>* %0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %7 = load i8*, i8** %_Ptr3.i.i76, align 4, !tbaa !18
  %add.i.i77 = add i32 %6, 1
  %cmp1.i.i.i.i78 = icmp ugt i32 %add.i.i77, 4095
  br i1 %cmp1.i.i.i.i78, label %if.then2.i.i.i.i82, label %"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i95"

if.then2.i.i.i.i82:                               ; preds = %if.then.i.i79
  %add.i.i.i.i80 = add i32 %6, 36
  %cmp3.i.i.i.i81 = icmp ugt i32 %add.i.i77, -36
  br i1 %cmp3.i.i.i.i81, label %_Invalid_parameter.i.i.i.i91, label %if.end5.i.i.i.i85

if.end5.i.i.i.i85:                                ; preds = %if.then2.i.i.i.i82
  %8 = ptrtoint i8* %7 to i32
  %and.i.i.i.i83 = and i32 %8, 31
  %cmp7.i.i.i.i84 = icmp eq i32 %and.i.i.i.i83, 0
  br i1 %cmp7.i.i.i.i84, label %if.end9.i.i.i.i88, label %_Invalid_parameter.i.i.i.i91

if.end9.i.i.i.i88:                                ; preds = %if.end5.i.i.i.i85
  %sub.i.i.i.i86 = add i32 %8, -4
  %9 = inttoptr i32 %sub.i.i.i.i86 to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !15
  %cmp10.i.i.i.i87 = icmp ult i32 %10, %8
  br i1 %cmp10.i.i.i.i87, label %if.end12.i.i.i.i90, label %_Invalid_parameter.i.i.i.i91

if.end12.i.i.i.i90:                               ; preds = %if.end9.i.i.i.i88
  %sub13.off.i.i.i.i89 = sub i32 %sub.i.i.i.i86, %10
  %11 = icmp ugt i32 %sub13.off.i.i.i.i89, 31
  %12 = inttoptr i32 %10 to i8*
  br i1 %11, label %_Invalid_parameter.i.i.i.i91, label %"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i95"

_Invalid_parameter.i.i.i.i91:                     ; preds = %if.end12.i.i.i.i90, %if.end9.i.i.i.i88, %if.end5.i.i.i.i85, %if.then2.i.i.i.i82
  invoke void @_invalid_parameter_noinfo_noreturn() #19
          to label %.noexc.i92 unwind label %ehcleanup.i98

.noexc.i92:                                       ; preds = %_Invalid_parameter.i.i.i.i91
  unreachable

"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i95": ; preds = %if.end12.i.i.i.i90, %if.then.i.i79
  %_Allocated_size.0.i.i.i.i93 = phi i32 [ %add.i.i77, %if.then.i.i79 ], [ %add.i.i.i.i80, %if.end12.i.i.i.i90 ]
  %_Ptr.addr.2.i.i.i.i94 = phi i8* [ %7, %if.then.i.i79 ], [ %12, %if.end12.i.i.i.i90 ]
  tail call void @"\01??3@YAXPAXI@Z"(i8* %_Ptr.addr.2.i.i.i.i94, i32 %_Allocated_size.0.i.i.i.i93) #2
  br label %"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit99"

ehcleanup.i98:                                    ; preds = %_Invalid_parameter.i.i.i.i91
  %13 = cleanuppad within none []
  call void @__std_terminate() #20 [ "funclet"(token %13) ]
  unreachable

"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit99": ; preds = %"\01?trim@BigBase@ofw@@AAEXXZ.exit", %"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i95"
  ret void

for.body11.lr.ph:                                 ; preds = %for.body.lr.ph, %for.cond.cleanup10
  %i.0124 = phi i32 [ 0, %for.body.lr.ph ], [ %inc38, %for.cond.cleanup10 ]
  %cmp6 = icmp eq i32 %i.0124, %sub5
  %.rem. = select i1 %cmp6, i32 %.rem, i32 8
  %mul12 = shl nsw i32 %i.0124, 3
  %sub13 = sub i32 %sub, %mul12
  %arrayidx = getelementptr inbounds i32, i32* %4, i32 %i.0124
  br label %for.body11

for.cond.cleanup10:                               ; preds = %if.end31
  %inc38 = add nuw nsw i32 %i.0124, 1
  %exitcond = icmp eq i32 %inc38, %conv4
  br i1 %exitcond, label %for.body.i.preheader, label %for.body11.lr.ph

for.body11:                                       ; preds = %for.body11.lr.ph, %if.end31
  %k.0122 = phi i32 [ 0, %for.body11.lr.ph ], [ %inc, %if.end31 ]
  %sub14 = sub i32 %sub13, %k.0122
  %14 = load i32, i32* %_Myres.i.i.i100, align 4, !tbaa !16
  %cmp.i.i.i101 = icmp ugt i32 %14, 15
  br i1 %cmp.i.i.i101, label %if.then.i.i102, label %invoke.cont15

if.then.i.i102:                                   ; preds = %for.body11
  %15 = load i8*, i8** %_Ptr.i.i, align 4, !tbaa !18
  br label %invoke.cont15

invoke.cont15:                                    ; preds = %if.then.i.i102, %for.body11
  %_Result.0.i.i = phi i8* [ %15, %if.then.i.i102 ], [ %arraydecay.i.i, %for.body11 ]
  %arrayidx.i103 = getelementptr inbounds i8, i8* %_Result.0.i.i, i32 %sub14
  %16 = load i8, i8* %arrayidx.i103, align 1, !tbaa !18
  %conv17 = sext i8 %16 to i32
  %isdigittmp = add nsw i32 %conv17, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %if.then20, label %if.else

if.then20:                                        ; preds = %invoke.cont15
  br i1 %cmp.i.i.i101, label %if.then.i.i108, label %invoke.cont21

if.then.i.i108:                                   ; preds = %if.then20
  %17 = load i8*, i8** %_Ptr.i.i, align 4, !tbaa !18
  br label %invoke.cont21

invoke.cont21:                                    ; preds = %if.then.i.i108, %if.then20
  %_Result.0.i.i109 = phi i8* [ %17, %if.then.i.i108 ], [ %arraydecay.i.i, %if.then20 ]
  %arrayidx.i110 = getelementptr inbounds i8, i8* %_Result.0.i.i109, i32 %sub14
  %18 = load i8, i8* %arrayidx.i110, align 1, !tbaa !18
  %conv23 = sext i8 %18 to i32
  %sub24 = add nsw i32 %conv23, -48
  br label %if.end31

if.else:                                          ; preds = %invoke.cont15
  br i1 %cmp.i.i.i101, label %if.then.i.i116, label %invoke.cont25

if.then.i.i116:                                   ; preds = %if.else
  %19 = load i8*, i8** %_Ptr.i.i, align 4, !tbaa !18
  br label %invoke.cont25

invoke.cont25:                                    ; preds = %if.then.i.i116, %if.else
  %_Result.0.i.i117 = phi i8* [ %19, %if.then.i.i116 ], [ %arraydecay.i.i, %if.else ]
  %arrayidx.i118 = getelementptr inbounds i8, i8* %_Result.0.i.i117, i32 %sub14
  %20 = load i8, i8* %arrayidx.i118, align 1, !tbaa !18
  %conv27 = sext i8 %20 to i32
  %call28 = tail call i32 @tolower(i32 %conv27) #21
  %add30 = add nsw i32 %call28, -87
  br label %if.end31

if.end31:                                         ; preds = %invoke.cont25, %invoke.cont21
  %s.0 = phi i32 [ %sub24, %invoke.cont21 ], [ %add30, %invoke.cont25 ]
  %mul32 = shl nsw i32 %k.0122, 2
  %shl = shl i32 %s.0, %mul32
  %21 = load i32, i32* %arrayidx, align 4, !tbaa !15
  %or = or i32 %21, %shl
  store i32 %or, i32* %arrayidx, align 4, !tbaa !15
  %inc = add nuw nsw i32 %k.0122, 1
  %cmp9 = icmp slt i32 %inc, %.rem.
  br i1 %cmp9, label %for.body11, label %for.cond.cleanup10

ehcleanup43:                                      ; preds = %entry
  %22 = cleanuppad within none []
  %_Myres.i.i.i = getelementptr inbounds <{ %"class.std::basic_string" }>, <{ %"class.std::basic_string" }>* %0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %23 = load i32, i32* %_Myres.i.i.i, align 4, !tbaa !16
  %cmp.i.i.i = icmp ugt i32 %23, 15
  br i1 %cmp.i.i.i, label %if.then.i.i, label %"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit"

if.then.i.i:                                      ; preds = %ehcleanup43
  %_Ptr3.i.i = getelementptr inbounds <{ %"class.std::basic_string" }>, <{ %"class.std::basic_string" }>* %0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %24 = load i8*, i8** %_Ptr3.i.i, align 4, !tbaa !18
  %add.i.i = add i32 %23, 1
  %cmp1.i.i.i.i = icmp ugt i32 %add.i.i, 4095
  br i1 %cmp1.i.i.i.i, label %if.then2.i.i.i.i, label %"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i"

if.then2.i.i.i.i:                                 ; preds = %if.then.i.i
  %add.i.i.i.i = add i32 %23, 36
  %cmp3.i.i.i.i = icmp ugt i32 %add.i.i, -36
  br i1 %cmp3.i.i.i.i, label %_Invalid_parameter.i.i.i.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then2.i.i.i.i
  %25 = ptrtoint i8* %24 to i32
  %and.i.i.i.i = and i32 %25, 31
  %cmp7.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %cmp7.i.i.i.i, label %if.end9.i.i.i.i, label %_Invalid_parameter.i.i.i.i

if.end9.i.i.i.i:                                  ; preds = %if.end5.i.i.i.i
  %sub.i.i.i.i = add i32 %25, -4
  %26 = inttoptr i32 %sub.i.i.i.i to i32*
  %27 = load i32, i32* %26, align 4, !tbaa !15
  %cmp10.i.i.i.i = icmp ult i32 %27, %25
  br i1 %cmp10.i.i.i.i, label %if.end12.i.i.i.i, label %_Invalid_parameter.i.i.i.i

if.end12.i.i.i.i:                                 ; preds = %if.end9.i.i.i.i
  %sub13.off.i.i.i.i = sub i32 %sub.i.i.i.i, %27
  %28 = icmp ugt i32 %sub13.off.i.i.i.i, 31
  %29 = inttoptr i32 %27 to i8*
  br i1 %28, label %_Invalid_parameter.i.i.i.i, label %"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i"

_Invalid_parameter.i.i.i.i:                       ; preds = %if.end12.i.i.i.i, %if.end9.i.i.i.i, %if.end5.i.i.i.i, %if.then2.i.i.i.i
  invoke void @_invalid_parameter_noinfo_noreturn() #19 [ "funclet"(token %22) ]
          to label %.noexc.i unwind label %ehcleanup.i

.noexc.i:                                         ; preds = %_Invalid_parameter.i.i.i.i
  unreachable

"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i": ; preds = %if.end12.i.i.i.i, %if.then.i.i
  %_Allocated_size.0.i.i.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %add.i.i.i.i, %if.end12.i.i.i.i ]
  %_Ptr.addr.2.i.i.i.i = phi i8* [ %24, %if.then.i.i ], [ %29, %if.end12.i.i.i.i ]
  call void @"\01??3@YAXPAXI@Z"(i8* %_Ptr.addr.2.i.i.i.i, i32 %_Allocated_size.0.i.i.i.i) #2 [ "funclet"(token %22) ]
  br label %"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit"

ehcleanup.i:                                      ; preds = %_Invalid_parameter.i.i.i.i
  %30 = cleanuppad within %22 []
  call void @__std_terminate() #20 [ "funclet"(token %30) ]
  unreachable

"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit": ; preds = %ehcleanup43, %"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i"
  cleanupret from %22 unwind to caller
}

define x86_thiscallcc void @"\01?init_decimal@BigBase@ofw@@AAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z"(%"class.ofw::BigBase"* nocapture %this, <{ %"class.std::basic_string" }>* inalloca nocapture) local_unnamed_addr #1 align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %_Mysize.i = getelementptr inbounds <{ %"class.std::basic_string" }>, <{ %"class.std::basic_string" }>* %0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %1 = load i32, i32* %_Mysize.i, align 4, !tbaa !19
  %mul = shl i32 %1, 2
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul, i32 4)
  %3 = extractvalue { i32, i1 } %2, 1
  %4 = extractvalue { i32, i1 } %2, 0
  %5 = select i1 %3, i32 -1, i32 %4
  %call.i59 = invoke i8* @"\01??_U@YAPAXI@Z"(i32 %5) #17
          to label %invoke.cont unwind label %ehcleanup30

invoke.cont:                                      ; preds = %entry
  %6 = bitcast %"class.ofw::BigBase"* %this to i8**
  store i8* %call.i59, i8** %6, align 4, !tbaa !8
  %length.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  store i32 %mul, i32* %length.i, align 4, !tbaa !14
  %mul2 = shl i32 %1, 4
  tail call void @llvm.memset.p0i8.i32(i8* nonnull %call.i59, i8 0, i32 %mul2, i32 4, i1 false)
  %rem = urem i32 %1, 9
  %cmp = icmp eq i32 %rem, 0
  %7 = bitcast i8* %call.i59 to i32*
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %invoke.cont
  %cmp13.i = icmp eq i32 %1, 0
  br i1 %cmp13.i, label %invoke.cont3, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.then
  %arraydecay.i.i.i = bitcast <{ %"class.std::basic_string" }>* %0 to i8*
  %_Myres.i.i.i.i = getelementptr inbounds <{ %"class.std::basic_string" }>, <{ %"class.std::basic_string" }>* %0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %8 = load i32, i32* %_Myres.i.i.i.i, align 4, !tbaa !16
  %cmp.i.i.i.i = icmp ugt i32 %8, 15
  %_Ptr.i.i.i = getelementptr inbounds <{ %"class.std::basic_string" }>, <{ %"class.std::basic_string" }>* %0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %9 = load i8*, i8** %_Ptr.i.i.i, align 4
  %_Result.0.i.i.i = select i1 %cmp.i.i.i.i, i8* %9, i8* %arraydecay.i.i.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %i.017.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i ]
  %c.016.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add3.i, %for.body.i ]
  %mul.i = mul i32 %c.016.i, 10
  %arrayidx.i.i61 = getelementptr inbounds i8, i8* %_Result.0.i.i.i, i32 %i.017.i
  %10 = load i8, i8* %arrayidx.i.i61, align 1, !tbaa !18
  %conv.i = sext i8 %10 to i32
  %sub.i = add i32 %mul.i, -48
  %add3.i = add i32 %sub.i, %conv.i
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %cmp.i = icmp ult i32 %inc.i, %1
  %cmp1.i = icmp ult i32 %inc.i, %rem
  %or.cond.i = and i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %for.body.i, label %invoke.cont3

invoke.cont3:                                     ; preds = %for.body.i, %if.then
  %c.0.lcssa.i = phi i32 [ 0, %if.then ], [ %add3.i, %for.body.i ]
  store i32 %c.0.lcssa.i, i32* %7, align 4, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %invoke.cont, %invoke.cont3
  %11 = icmp ugt i32 %1, 8
  br i1 %11, label %if.then6, label %if.end27

if.then6:                                         ; preds = %if.end
  %sub = sub i32 %1, %rem
  %cmp7120 = icmp eq i32 %sub, 0
  br i1 %cmp7120, label %if.end27, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.then6
  %arraydecay.i.i.i66 = bitcast <{ %"class.std::basic_string" }>* %0 to i8*
  %_Myres.i.i.i.i67 = getelementptr inbounds <{ %"class.std::basic_string" }>, <{ %"class.std::basic_string" }>* %0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %_Ptr.i.i.i69 = getelementptr inbounds <{ %"class.std::basic_string" }>, <{ %"class.std::basic_string" }>* %0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.cond.cleanup12, %for.body.lr.ph
  %i.0121 = phi i32 [ 0, %for.body.lr.ph ], [ %add24, %for.cond.cleanup12 ]
  %add = add i32 %i.0121, %rem
  %cmp13.i63 = icmp ugt i32 %1, %add
  %add.i = add i32 %add, 9
  %cmp114.i64 = icmp ult i32 %add, -9
  %or.cond15.i65 = and i1 %cmp114.i64, %cmp13.i63
  br i1 %or.cond15.i65, label %for.body.lr.ph.i71, label %for.cond.cleanup12

for.body.lr.ph.i71:                               ; preds = %for.body
  %12 = load i32, i32* %_Myres.i.i.i.i67, align 4, !tbaa !16
  %cmp.i.i.i.i68 = icmp ugt i32 %12, 15
  %13 = load i8*, i8** %_Ptr.i.i.i69, align 4
  %_Result.0.i.i.i70 = select i1 %cmp.i.i.i.i68, i8* %13, i8* %arraydecay.i.i.i66
  br label %for.body.i84

for.body.i84:                                     ; preds = %for.body.i84, %for.body.lr.ph.i71
  %i.017.i73 = phi i32 [ %add, %for.body.lr.ph.i71 ], [ %inc.i80, %for.body.i84 ]
  %c.016.i74 = phi i32 [ 0, %for.body.lr.ph.i71 ], [ %add3.i79, %for.body.i84 ]
  %mul.i75 = mul i32 %c.016.i74, 10
  %arrayidx.i.i76 = getelementptr inbounds i8, i8* %_Result.0.i.i.i70, i32 %i.017.i73
  %14 = load i8, i8* %arrayidx.i.i76, align 1, !tbaa !18
  %conv.i77 = sext i8 %14 to i32
  %sub.i78 = add i32 %mul.i75, -48
  %add3.i79 = add i32 %sub.i78, %conv.i77
  %inc.i80 = add nuw i32 %i.017.i73, 1
  %cmp.i81 = icmp ult i32 %inc.i80, %1
  %cmp1.i82 = icmp ult i32 %inc.i80, %add.i
  %or.cond.i83 = and i1 %cmp1.i82, %cmp.i81
  br i1 %or.cond.i83, label %for.body.i84, label %invoke.cont8

invoke.cont8:                                     ; preds = %for.body.i84
  %tobool11117 = icmp eq i32 %add3.i79, 0
  br i1 %tobool11117, label %for.cond.cleanup12, label %for.body13.lr.ph

for.body13.lr.ph:                                 ; preds = %invoke.cont8
  %conv = zext i32 %add3.i79 to i64
  br label %for.body13

for.cond.cleanup12:                               ; preds = %for.body13, %for.body, %invoke.cont8
  %add24 = add nuw nsw i32 %i.0121, 9
  %cmp7 = icmp ult i32 %add24, %sub
  br i1 %cmp7, label %for.body, label %if.end27

for.body13:                                       ; preds = %for.body13.lr.ph, %for.body13
  %j.0119 = phi i32 [ 0, %for.body13.lr.ph ], [ %inc, %for.body13 ]
  %carry.0118 = phi i64 [ %conv, %for.body13.lr.ph ], [ %div22, %for.body13 ]
  %arrayidx15 = getelementptr inbounds i32, i32* %7, i32 %j.0119
  %15 = load i32, i32* %arrayidx15, align 4, !tbaa !15
  %conv16 = zext i32 %15 to i64
  %mul17 = mul nuw nsw i64 %conv16, 1000000000
  %add18 = add nuw nsw i64 %mul17, %carry.0118
  %conv19 = trunc i64 %add18 to i32
  store i32 %conv19, i32* %arrayidx15, align 4, !tbaa !15
  %div22 = udiv i64 %add18, 4294967295
  %inc = add nuw nsw i32 %j.0119, 1
  %16 = icmp ult i64 %add18, 4294967295
  br i1 %16, label %for.cond.cleanup12, label %for.body13

if.end27:                                         ; preds = %for.cond.cleanup12, %if.then6, %if.end
  %i.015.i = add i32 %mul, -1
  %cmp16.i = icmp sgt i32 %i.015.i, -1
  br i1 %cmp16.i, label %for.body.i89.preheader, label %delete.notnull.i

for.body.i89.preheader:                           ; preds = %if.end27
  br label %for.body.i89

for.cond.i:                                       ; preds = %for.body.i89
  %i.0.i = add i32 %i.018.i, -1
  %cmp.i88 = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i88, label %for.body.i89, label %delete.notnull.i

for.body.i89:                                     ; preds = %for.body.i89.preheader, %for.cond.i
  %i.018.i = phi i32 [ %i.0.i, %for.cond.i ], [ %i.015.i, %for.body.i89.preheader ]
  %i.0.in17.i = phi i32 [ %i.018.i, %for.cond.i ], [ %mul, %for.body.i89.preheader ]
  %arrayidx.i = getelementptr inbounds i32, i32* %7, i32 %i.018.i
  %17 = load i32, i32* %arrayidx.i, align 4, !tbaa !15
  %cmp2.i = icmp eq i32 %17, 0
  br i1 %cmp2.i, label %for.cond.i, label %if.then4.i

if.then4.i:                                       ; preds = %for.body.i89
  store i32 %i.0.in17.i, i32* %length.i, align 4, !tbaa !14
  br label %"\01?trim@BigBase@ofw@@AAEXXZ.exit"

delete.notnull.i:                                 ; preds = %for.cond.i, %if.end27
  store i32 0, i32* %length.i, align 4, !tbaa !14
  tail call void @"\01??_V@YAXPAX@Z"(i8* nonnull %call.i59) #18
  br label %"\01?trim@BigBase@ofw@@AAEXXZ.exit"

"\01?trim@BigBase@ofw@@AAEXXZ.exit":              ; preds = %if.then4.i, %delete.notnull.i
  %_Myres.i.i.i90 = getelementptr inbounds <{ %"class.std::basic_string" }>, <{ %"class.std::basic_string" }>* %0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %18 = load i32, i32* %_Myres.i.i.i90, align 4, !tbaa !16
  %cmp.i.i.i91 = icmp ugt i32 %18, 15
  br i1 %cmp.i.i.i91, label %if.then.i.i95, label %"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit115"

if.then.i.i95:                                    ; preds = %"\01?trim@BigBase@ofw@@AAEXXZ.exit"
  %_Ptr3.i.i92 = getelementptr inbounds <{ %"class.std::basic_string" }>, <{ %"class.std::basic_string" }>* %0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %19 = load i8*, i8** %_Ptr3.i.i92, align 4, !tbaa !18
  %add.i.i93 = add i32 %18, 1
  %cmp1.i.i.i.i94 = icmp ugt i32 %add.i.i93, 4095
  br i1 %cmp1.i.i.i.i94, label %if.then2.i.i.i.i98, label %"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i111"

if.then2.i.i.i.i98:                               ; preds = %if.then.i.i95
  %add.i.i.i.i96 = add i32 %18, 36
  %cmp3.i.i.i.i97 = icmp ugt i32 %add.i.i93, -36
  br i1 %cmp3.i.i.i.i97, label %_Invalid_parameter.i.i.i.i107, label %if.end5.i.i.i.i101

if.end5.i.i.i.i101:                               ; preds = %if.then2.i.i.i.i98
  %20 = ptrtoint i8* %19 to i32
  %and.i.i.i.i99 = and i32 %20, 31
  %cmp7.i.i.i.i100 = icmp eq i32 %and.i.i.i.i99, 0
  br i1 %cmp7.i.i.i.i100, label %if.end9.i.i.i.i104, label %_Invalid_parameter.i.i.i.i107

if.end9.i.i.i.i104:                               ; preds = %if.end5.i.i.i.i101
  %sub.i.i.i.i102 = add i32 %20, -4
  %21 = inttoptr i32 %sub.i.i.i.i102 to i32*
  %22 = load i32, i32* %21, align 4, !tbaa !15
  %cmp10.i.i.i.i103 = icmp ult i32 %22, %20
  br i1 %cmp10.i.i.i.i103, label %if.end12.i.i.i.i106, label %_Invalid_parameter.i.i.i.i107

if.end12.i.i.i.i106:                              ; preds = %if.end9.i.i.i.i104
  %sub13.off.i.i.i.i105 = sub i32 %sub.i.i.i.i102, %22
  %23 = icmp ugt i32 %sub13.off.i.i.i.i105, 31
  %24 = inttoptr i32 %22 to i8*
  br i1 %23, label %_Invalid_parameter.i.i.i.i107, label %"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i111"

_Invalid_parameter.i.i.i.i107:                    ; preds = %if.end12.i.i.i.i106, %if.end9.i.i.i.i104, %if.end5.i.i.i.i101, %if.then2.i.i.i.i98
  invoke void @_invalid_parameter_noinfo_noreturn() #19
          to label %.noexc.i108 unwind label %ehcleanup.i114

.noexc.i108:                                      ; preds = %_Invalid_parameter.i.i.i.i107
  unreachable

"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i111": ; preds = %if.end12.i.i.i.i106, %if.then.i.i95
  %_Allocated_size.0.i.i.i.i109 = phi i32 [ %add.i.i93, %if.then.i.i95 ], [ %add.i.i.i.i96, %if.end12.i.i.i.i106 ]
  %_Ptr.addr.2.i.i.i.i110 = phi i8* [ %19, %if.then.i.i95 ], [ %24, %if.end12.i.i.i.i106 ]
  tail call void @"\01??3@YAXPAXI@Z"(i8* %_Ptr.addr.2.i.i.i.i110, i32 %_Allocated_size.0.i.i.i.i109) #2
  br label %"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit115"

ehcleanup.i114:                                   ; preds = %_Invalid_parameter.i.i.i.i107
  %25 = cleanuppad within none []
  call void @__std_terminate() #20 [ "funclet"(token %25) ]
  unreachable

"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit115": ; preds = %"\01?trim@BigBase@ofw@@AAEXXZ.exit", %"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i111"
  ret void

ehcleanup30:                                      ; preds = %entry
  %26 = cleanuppad within none []
  %_Myres.i.i.i = getelementptr inbounds <{ %"class.std::basic_string" }>, <{ %"class.std::basic_string" }>* %0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %27 = load i32, i32* %_Myres.i.i.i, align 4, !tbaa !16
  %cmp.i.i.i = icmp ugt i32 %27, 15
  br i1 %cmp.i.i.i, label %if.then.i.i, label %"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit"

if.then.i.i:                                      ; preds = %ehcleanup30
  %_Ptr3.i.i = getelementptr inbounds <{ %"class.std::basic_string" }>, <{ %"class.std::basic_string" }>* %0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %28 = load i8*, i8** %_Ptr3.i.i, align 4, !tbaa !18
  %add.i.i = add i32 %27, 1
  %cmp1.i.i.i.i = icmp ugt i32 %add.i.i, 4095
  br i1 %cmp1.i.i.i.i, label %if.then2.i.i.i.i, label %"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i"

if.then2.i.i.i.i:                                 ; preds = %if.then.i.i
  %add.i.i.i.i = add i32 %27, 36
  %cmp3.i.i.i.i = icmp ugt i32 %add.i.i, -36
  br i1 %cmp3.i.i.i.i, label %_Invalid_parameter.i.i.i.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then2.i.i.i.i
  %29 = ptrtoint i8* %28 to i32
  %and.i.i.i.i = and i32 %29, 31
  %cmp7.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %cmp7.i.i.i.i, label %if.end9.i.i.i.i, label %_Invalid_parameter.i.i.i.i

if.end9.i.i.i.i:                                  ; preds = %if.end5.i.i.i.i
  %sub.i.i.i.i = add i32 %29, -4
  %30 = inttoptr i32 %sub.i.i.i.i to i32*
  %31 = load i32, i32* %30, align 4, !tbaa !15
  %cmp10.i.i.i.i = icmp ult i32 %31, %29
  br i1 %cmp10.i.i.i.i, label %if.end12.i.i.i.i, label %_Invalid_parameter.i.i.i.i

if.end12.i.i.i.i:                                 ; preds = %if.end9.i.i.i.i
  %sub13.off.i.i.i.i = sub i32 %sub.i.i.i.i, %31
  %32 = icmp ugt i32 %sub13.off.i.i.i.i, 31
  %33 = inttoptr i32 %31 to i8*
  br i1 %32, label %_Invalid_parameter.i.i.i.i, label %"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i"

_Invalid_parameter.i.i.i.i:                       ; preds = %if.end12.i.i.i.i, %if.end9.i.i.i.i, %if.end5.i.i.i.i, %if.then2.i.i.i.i
  invoke void @_invalid_parameter_noinfo_noreturn() #19 [ "funclet"(token %26) ]
          to label %.noexc.i unwind label %ehcleanup.i

.noexc.i:                                         ; preds = %_Invalid_parameter.i.i.i.i
  unreachable

"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i": ; preds = %if.end12.i.i.i.i, %if.then.i.i
  %_Allocated_size.0.i.i.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %add.i.i.i.i, %if.end12.i.i.i.i ]
  %_Ptr.addr.2.i.i.i.i = phi i8* [ %28, %if.then.i.i ], [ %33, %if.end12.i.i.i.i ]
  call void @"\01??3@YAXPAXI@Z"(i8* %_Ptr.addr.2.i.i.i.i, i32 %_Allocated_size.0.i.i.i.i) #2 [ "funclet"(token %26) ]
  br label %"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit"

ehcleanup.i:                                      ; preds = %_Invalid_parameter.i.i.i.i
  %34 = cleanuppad within %26 []
  call void @__std_terminate() #20 [ "funclet"(token %34) ]
  unreachable

"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit": ; preds = %ehcleanup30, %"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i"
  cleanupret from %26 unwind to caller
}

define x86_thiscallcc void @"\01?aly_hex@BigBase@ofw@@QAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z"(%"class.ofw::BigBase"* nocapture %this, <{ %"class.std::basic_string" }>* inalloca nocapture) local_unnamed_addr #1 align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %inalloca.save = tail call i8* @llvm.stacksave()
  %argmem = alloca inalloca <{ %"class.std::basic_string" }>, align 4
  %_Mysize.i.i.i.i = getelementptr inbounds <{ %"class.std::basic_string" }>, <{ %"class.std::basic_string" }>* %argmem, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  store i32 0, i32* %_Mysize.i.i.i.i, align 4, !tbaa !19
  %_Myres.i.i.i6.i = getelementptr inbounds <{ %"class.std::basic_string" }>, <{ %"class.std::basic_string" }>* %argmem, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  store i32 0, i32* %_Myres.i.i.i6.i, align 4, !tbaa !16
  %_Mysize.i.i = getelementptr inbounds <{ %"class.std::basic_string" }>, <{ %"class.std::basic_string" }>* %0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %1 = load i32, i32* %_Mysize.i.i, align 4, !tbaa !19
  %arraydecay.i.i.i = bitcast <{ %"class.std::basic_string" }>* %0 to i8*
  %_Myres.i.i.i.i = getelementptr inbounds <{ %"class.std::basic_string" }>, <{ %"class.std::basic_string" }>* %0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %2 = load i32, i32* %_Myres.i.i.i.i, align 4, !tbaa !16
  %cmp.i.i41.i.i = icmp ugt i32 %2, 15
  %_Ptr.i.i.i = getelementptr inbounds <{ %"class.std::basic_string" }>, <{ %"class.std::basic_string" }>* %0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %3 = load i8*, i8** %_Ptr.i.i.i, align 4
  %_Result.0.i.i.i = select i1 %cmp.i.i41.i.i, i8* %3, i8* %arraydecay.i.i.i
  %cmp.i.i = icmp ult i32 %1, 16
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i.i.i

if.then.i.i:                                      ; preds = %entry
  %arraydecay.i.i = bitcast <{ %"class.std::basic_string" }>* %argmem to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %arraydecay.i.i, i8* %_Result.0.i.i.i, i32 16, i32 1, i1 false) #2
  br label %invoke.cont

if.end.i.i.i.i:                                   ; preds = %entry
  %or.i.i = or i32 %1, 15
  %4 = icmp ult i32 %or.i.i, 2147483647
  %.sroa.speculated.i.i = select i1 %4, i32 %or.i.i, i32 2147483647
  %cmp4.i.i.i.i = icmp ugt i32 %.sroa.speculated.i.i, 4094
  br i1 %cmp4.i.i.i.i, label %if.end8.i.i.i.i, label %if.end13.i.i.i.i

if.end8.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  %add.i.i.i.i = add nuw i32 %.sroa.speculated.i.i, 36
  %call.i.i.i4.i3 = invoke i8* @"\01??2@YAPAXI@Z"(i32 %add.i.i.i.i)
          to label %call.i.i.i4.i.noexc unwind label %ehcleanup

call.i.i.i4.i.noexc:                              ; preds = %if.end8.i.i.i.i
  %5 = ptrtoint i8* %call.i.i.i4.i3 to i32
  %add12.i.i.i.i = add i32 %5, 35
  %and.i.i.i.i = and i32 %add12.i.i.i.i, -32
  %6 = inttoptr i32 %and.i.i.i.i to i8*
  %7 = inttoptr i32 %and.i.i.i.i to i32*
  %arrayidx.i.i.i.i = getelementptr inbounds i32, i32* %7, i32 -1
  store i32 %5, i32* %arrayidx.i.i.i.i, align 4, !tbaa !15
  br label %"\01?allocate@?$allocator@D@std@@QAEPADI@Z.exit.i.i"

if.end13.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  %add.i.i = add nuw i32 %.sroa.speculated.i.i, 1
  %call.i.i.i.i5.i4 = invoke i8* @"\01??2@YAPAXI@Z"(i32 %add.i.i)
          to label %"\01?allocate@?$allocator@D@std@@QAEPADI@Z.exit.i.i" unwind label %ehcleanup

"\01?allocate@?$allocator@D@std@@QAEPADI@Z.exit.i.i": ; preds = %if.end13.i.i.i.i, %call.i.i.i4.i.noexc
  %retval.1.i.i.i.i = phi i8* [ %6, %call.i.i.i4.i.noexc ], [ %call.i.i.i.i5.i4, %if.end13.i.i.i.i ]
  %8 = ptrtoint i8* %retval.1.i.i.i.i to i32
  %9 = bitcast <{ %"class.std::basic_string" }>* %argmem to i32*
  store i32 %8, i32* %9, align 4, !tbaa !20
  %add13.i.i = add i32 %1, 1
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %retval.1.i.i.i.i, i8* %_Result.0.i.i.i, i32 %add13.i.i, i32 1, i1 false) #2
  br label %invoke.cont

invoke.cont:                                      ; preds = %"\01?allocate@?$allocator@D@std@@QAEPADI@Z.exit.i.i", %if.then.i.i
  %.sroa.speculated.sink.i.i = phi i32 [ %.sroa.speculated.i.i, %"\01?allocate@?$allocator@D@std@@QAEPADI@Z.exit.i.i" ], [ 15, %if.then.i.i ]
  store i32 %1, i32* %_Mysize.i.i.i.i, align 4, !tbaa !19
  store i32 %.sroa.speculated.sink.i.i, i32* %_Myres.i.i.i6.i, align 4, !tbaa !16
  invoke x86_thiscallcc void @"\01?init_hex@BigBase@ofw@@AAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z"(%"class.ofw::BigBase"* %this, <{ %"class.std::basic_string" }>* inalloca nonnull %argmem)
          to label %invoke.cont2 unwind label %ehcleanup

invoke.cont2:                                     ; preds = %invoke.cont
  tail call void @llvm.stackrestore(i8* %inalloca.save)
  %10 = load i32, i32* %_Myres.i.i.i.i, align 4, !tbaa !16
  %cmp.i.i.i = icmp ugt i32 %10, 15
  br i1 %cmp.i.i.i, label %if.then.i.i6, label %"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit"

if.then.i.i6:                                     ; preds = %invoke.cont2
  %11 = load i8*, i8** %_Ptr.i.i.i, align 4, !tbaa !18
  %add.i.i5 = add i32 %10, 1
  %cmp1.i.i.i.i = icmp ugt i32 %add.i.i5, 4095
  br i1 %cmp1.i.i.i.i, label %if.then2.i.i.i.i, label %"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i"

if.then2.i.i.i.i:                                 ; preds = %if.then.i.i6
  %add.i.i.i.i7 = add i32 %10, 36
  %cmp3.i.i.i.i = icmp ugt i32 %add.i.i5, -36
  br i1 %cmp3.i.i.i.i, label %_Invalid_parameter.i.i.i.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then2.i.i.i.i
  %12 = ptrtoint i8* %11 to i32
  %and.i.i.i.i8 = and i32 %12, 31
  %cmp7.i.i.i.i = icmp eq i32 %and.i.i.i.i8, 0
  br i1 %cmp7.i.i.i.i, label %if.end9.i.i.i.i, label %_Invalid_parameter.i.i.i.i

if.end9.i.i.i.i:                                  ; preds = %if.end5.i.i.i.i
  %sub.i.i.i.i = add i32 %12, -4
  %13 = inttoptr i32 %sub.i.i.i.i to i32*
  %14 = load i32, i32* %13, align 4, !tbaa !15
  %cmp10.i.i.i.i = icmp ult i32 %14, %12
  br i1 %cmp10.i.i.i.i, label %if.end12.i.i.i.i, label %_Invalid_parameter.i.i.i.i

if.end12.i.i.i.i:                                 ; preds = %if.end9.i.i.i.i
  %sub13.off.i.i.i.i = sub i32 %sub.i.i.i.i, %14
  %15 = icmp ugt i32 %sub13.off.i.i.i.i, 31
  %16 = inttoptr i32 %14 to i8*
  br i1 %15, label %_Invalid_parameter.i.i.i.i, label %"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i"

_Invalid_parameter.i.i.i.i:                       ; preds = %if.end12.i.i.i.i, %if.end9.i.i.i.i, %if.end5.i.i.i.i, %if.then2.i.i.i.i
  invoke void @_invalid_parameter_noinfo_noreturn() #19
          to label %.noexc.i unwind label %ehcleanup.i

.noexc.i:                                         ; preds = %_Invalid_parameter.i.i.i.i
  unreachable

"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i": ; preds = %if.end12.i.i.i.i, %if.then.i.i6
  %_Allocated_size.0.i.i.i.i = phi i32 [ %add.i.i5, %if.then.i.i6 ], [ %add.i.i.i.i7, %if.end12.i.i.i.i ]
  %_Ptr.addr.2.i.i.i.i = phi i8* [ %11, %if.then.i.i6 ], [ %16, %if.end12.i.i.i.i ]
  tail call void @"\01??3@YAXPAXI@Z"(i8* %_Ptr.addr.2.i.i.i.i, i32 %_Allocated_size.0.i.i.i.i) #2
  br label %"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit"

ehcleanup.i:                                      ; preds = %_Invalid_parameter.i.i.i.i
  %17 = cleanuppad within none []
  call void @__std_terminate() #20 [ "funclet"(token %17) ]
  unreachable

"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit": ; preds = %invoke.cont2, %"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i"
  ret void

ehcleanup:                                        ; preds = %if.end13.i.i.i.i, %if.end8.i.i.i.i, %invoke.cont
  %18 = cleanuppad within none []
  %19 = load i32, i32* %_Myres.i.i.i.i, align 4, !tbaa !16
  %cmp.i.i.i11 = icmp ugt i32 %19, 15
  br i1 %cmp.i.i.i11, label %if.then.i.i15, label %"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit35"

if.then.i.i15:                                    ; preds = %ehcleanup
  %20 = load i8*, i8** %_Ptr.i.i.i, align 4, !tbaa !18
  %add.i.i13 = add i32 %19, 1
  %cmp1.i.i.i.i14 = icmp ugt i32 %add.i.i13, 4095
  br i1 %cmp1.i.i.i.i14, label %if.then2.i.i.i.i18, label %"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i31"

if.then2.i.i.i.i18:                               ; preds = %if.then.i.i15
  %add.i.i.i.i16 = add i32 %19, 36
  %cmp3.i.i.i.i17 = icmp ugt i32 %add.i.i13, -36
  br i1 %cmp3.i.i.i.i17, label %_Invalid_parameter.i.i.i.i27, label %if.end5.i.i.i.i21

if.end5.i.i.i.i21:                                ; preds = %if.then2.i.i.i.i18
  %21 = ptrtoint i8* %20 to i32
  %and.i.i.i.i19 = and i32 %21, 31
  %cmp7.i.i.i.i20 = icmp eq i32 %and.i.i.i.i19, 0
  br i1 %cmp7.i.i.i.i20, label %if.end9.i.i.i.i24, label %_Invalid_parameter.i.i.i.i27

if.end9.i.i.i.i24:                                ; preds = %if.end5.i.i.i.i21
  %sub.i.i.i.i22 = add i32 %21, -4
  %22 = inttoptr i32 %sub.i.i.i.i22 to i32*
  %23 = load i32, i32* %22, align 4, !tbaa !15
  %cmp10.i.i.i.i23 = icmp ult i32 %23, %21
  br i1 %cmp10.i.i.i.i23, label %if.end12.i.i.i.i26, label %_Invalid_parameter.i.i.i.i27

if.end12.i.i.i.i26:                               ; preds = %if.end9.i.i.i.i24
  %sub13.off.i.i.i.i25 = sub i32 %sub.i.i.i.i22, %23
  %24 = icmp ugt i32 %sub13.off.i.i.i.i25, 31
  %25 = inttoptr i32 %23 to i8*
  br i1 %24, label %_Invalid_parameter.i.i.i.i27, label %"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i31"

_Invalid_parameter.i.i.i.i27:                     ; preds = %if.end12.i.i.i.i26, %if.end9.i.i.i.i24, %if.end5.i.i.i.i21, %if.then2.i.i.i.i18
  invoke void @_invalid_parameter_noinfo_noreturn() #19 [ "funclet"(token %18) ]
          to label %.noexc.i28 unwind label %ehcleanup.i34

.noexc.i28:                                       ; preds = %_Invalid_parameter.i.i.i.i27
  unreachable

"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i31": ; preds = %if.end12.i.i.i.i26, %if.then.i.i15
  %_Allocated_size.0.i.i.i.i29 = phi i32 [ %add.i.i13, %if.then.i.i15 ], [ %add.i.i.i.i16, %if.end12.i.i.i.i26 ]
  %_Ptr.addr.2.i.i.i.i30 = phi i8* [ %20, %if.then.i.i15 ], [ %25, %if.end12.i.i.i.i26 ]
  call void @"\01??3@YAXPAXI@Z"(i8* %_Ptr.addr.2.i.i.i.i30, i32 %_Allocated_size.0.i.i.i.i29) #2 [ "funclet"(token %18) ]
  br label %"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit35"

ehcleanup.i34:                                    ; preds = %_Invalid_parameter.i.i.i.i27
  %26 = cleanuppad within %18 []
  call void @__std_terminate() #20 [ "funclet"(token %26) ]
  unreachable

"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit35": ; preds = %ehcleanup, %"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i31"
  cleanupret from %18 unwind to caller
}

define x86_thiscallcc void @"\01?aly_dec@BigBase@ofw@@QAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z"(%"class.ofw::BigBase"* nocapture %this, <{ %"class.std::basic_string" }>* inalloca nocapture) local_unnamed_addr #1 align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %inalloca.save = tail call i8* @llvm.stacksave()
  %argmem = alloca inalloca <{ %"class.std::basic_string" }>, align 4
  %_Mysize.i.i.i.i = getelementptr inbounds <{ %"class.std::basic_string" }>, <{ %"class.std::basic_string" }>* %argmem, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  store i32 0, i32* %_Mysize.i.i.i.i, align 4, !tbaa !19
  %_Myres.i.i.i6.i = getelementptr inbounds <{ %"class.std::basic_string" }>, <{ %"class.std::basic_string" }>* %argmem, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  store i32 0, i32* %_Myres.i.i.i6.i, align 4, !tbaa !16
  %_Mysize.i.i = getelementptr inbounds <{ %"class.std::basic_string" }>, <{ %"class.std::basic_string" }>* %0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %1 = load i32, i32* %_Mysize.i.i, align 4, !tbaa !19
  %arraydecay.i.i.i = bitcast <{ %"class.std::basic_string" }>* %0 to i8*
  %_Myres.i.i.i.i = getelementptr inbounds <{ %"class.std::basic_string" }>, <{ %"class.std::basic_string" }>* %0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %2 = load i32, i32* %_Myres.i.i.i.i, align 4, !tbaa !16
  %cmp.i.i41.i.i = icmp ugt i32 %2, 15
  %_Ptr.i.i.i = getelementptr inbounds <{ %"class.std::basic_string" }>, <{ %"class.std::basic_string" }>* %0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %3 = load i8*, i8** %_Ptr.i.i.i, align 4
  %_Result.0.i.i.i = select i1 %cmp.i.i41.i.i, i8* %3, i8* %arraydecay.i.i.i
  %cmp.i.i = icmp ult i32 %1, 16
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i.i.i

if.then.i.i:                                      ; preds = %entry
  %arraydecay.i.i = bitcast <{ %"class.std::basic_string" }>* %argmem to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %arraydecay.i.i, i8* %_Result.0.i.i.i, i32 16, i32 1, i1 false) #2
  br label %invoke.cont

if.end.i.i.i.i:                                   ; preds = %entry
  %or.i.i = or i32 %1, 15
  %4 = icmp ult i32 %or.i.i, 2147483647
  %.sroa.speculated.i.i = select i1 %4, i32 %or.i.i, i32 2147483647
  %cmp4.i.i.i.i = icmp ugt i32 %.sroa.speculated.i.i, 4094
  br i1 %cmp4.i.i.i.i, label %if.end8.i.i.i.i, label %if.end13.i.i.i.i

if.end8.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  %add.i.i.i.i = add nuw i32 %.sroa.speculated.i.i, 36
  %call.i.i.i4.i3 = invoke i8* @"\01??2@YAPAXI@Z"(i32 %add.i.i.i.i)
          to label %call.i.i.i4.i.noexc unwind label %ehcleanup

call.i.i.i4.i.noexc:                              ; preds = %if.end8.i.i.i.i
  %5 = ptrtoint i8* %call.i.i.i4.i3 to i32
  %add12.i.i.i.i = add i32 %5, 35
  %and.i.i.i.i = and i32 %add12.i.i.i.i, -32
  %6 = inttoptr i32 %and.i.i.i.i to i8*
  %7 = inttoptr i32 %and.i.i.i.i to i32*
  %arrayidx.i.i.i.i = getelementptr inbounds i32, i32* %7, i32 -1
  store i32 %5, i32* %arrayidx.i.i.i.i, align 4, !tbaa !15
  br label %"\01?allocate@?$allocator@D@std@@QAEPADI@Z.exit.i.i"

if.end13.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  %add.i.i = add nuw i32 %.sroa.speculated.i.i, 1
  %call.i.i.i.i5.i4 = invoke i8* @"\01??2@YAPAXI@Z"(i32 %add.i.i)
          to label %"\01?allocate@?$allocator@D@std@@QAEPADI@Z.exit.i.i" unwind label %ehcleanup

"\01?allocate@?$allocator@D@std@@QAEPADI@Z.exit.i.i": ; preds = %if.end13.i.i.i.i, %call.i.i.i4.i.noexc
  %retval.1.i.i.i.i = phi i8* [ %6, %call.i.i.i4.i.noexc ], [ %call.i.i.i.i5.i4, %if.end13.i.i.i.i ]
  %8 = ptrtoint i8* %retval.1.i.i.i.i to i32
  %9 = bitcast <{ %"class.std::basic_string" }>* %argmem to i32*
  store i32 %8, i32* %9, align 4, !tbaa !20
  %add13.i.i = add i32 %1, 1
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %retval.1.i.i.i.i, i8* %_Result.0.i.i.i, i32 %add13.i.i, i32 1, i1 false) #2
  br label %invoke.cont

invoke.cont:                                      ; preds = %"\01?allocate@?$allocator@D@std@@QAEPADI@Z.exit.i.i", %if.then.i.i
  %.sroa.speculated.sink.i.i = phi i32 [ %.sroa.speculated.i.i, %"\01?allocate@?$allocator@D@std@@QAEPADI@Z.exit.i.i" ], [ 15, %if.then.i.i ]
  store i32 %1, i32* %_Mysize.i.i.i.i, align 4, !tbaa !19
  store i32 %.sroa.speculated.sink.i.i, i32* %_Myres.i.i.i6.i, align 4, !tbaa !16
  invoke x86_thiscallcc void @"\01?init_decimal@BigBase@ofw@@AAEXV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@@Z"(%"class.ofw::BigBase"* %this, <{ %"class.std::basic_string" }>* inalloca nonnull %argmem)
          to label %invoke.cont2 unwind label %ehcleanup

invoke.cont2:                                     ; preds = %invoke.cont
  tail call void @llvm.stackrestore(i8* %inalloca.save)
  %10 = load i32, i32* %_Myres.i.i.i.i, align 4, !tbaa !16
  %cmp.i.i.i = icmp ugt i32 %10, 15
  br i1 %cmp.i.i.i, label %if.then.i.i6, label %"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit"

if.then.i.i6:                                     ; preds = %invoke.cont2
  %11 = load i8*, i8** %_Ptr.i.i.i, align 4, !tbaa !18
  %add.i.i5 = add i32 %10, 1
  %cmp1.i.i.i.i = icmp ugt i32 %add.i.i5, 4095
  br i1 %cmp1.i.i.i.i, label %if.then2.i.i.i.i, label %"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i"

if.then2.i.i.i.i:                                 ; preds = %if.then.i.i6
  %add.i.i.i.i7 = add i32 %10, 36
  %cmp3.i.i.i.i = icmp ugt i32 %add.i.i5, -36
  br i1 %cmp3.i.i.i.i, label %_Invalid_parameter.i.i.i.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then2.i.i.i.i
  %12 = ptrtoint i8* %11 to i32
  %and.i.i.i.i8 = and i32 %12, 31
  %cmp7.i.i.i.i = icmp eq i32 %and.i.i.i.i8, 0
  br i1 %cmp7.i.i.i.i, label %if.end9.i.i.i.i, label %_Invalid_parameter.i.i.i.i

if.end9.i.i.i.i:                                  ; preds = %if.end5.i.i.i.i
  %sub.i.i.i.i = add i32 %12, -4
  %13 = inttoptr i32 %sub.i.i.i.i to i32*
  %14 = load i32, i32* %13, align 4, !tbaa !15
  %cmp10.i.i.i.i = icmp ult i32 %14, %12
  br i1 %cmp10.i.i.i.i, label %if.end12.i.i.i.i, label %_Invalid_parameter.i.i.i.i

if.end12.i.i.i.i:                                 ; preds = %if.end9.i.i.i.i
  %sub13.off.i.i.i.i = sub i32 %sub.i.i.i.i, %14
  %15 = icmp ugt i32 %sub13.off.i.i.i.i, 31
  %16 = inttoptr i32 %14 to i8*
  br i1 %15, label %_Invalid_parameter.i.i.i.i, label %"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i"

_Invalid_parameter.i.i.i.i:                       ; preds = %if.end12.i.i.i.i, %if.end9.i.i.i.i, %if.end5.i.i.i.i, %if.then2.i.i.i.i
  invoke void @_invalid_parameter_noinfo_noreturn() #19
          to label %.noexc.i unwind label %ehcleanup.i

.noexc.i:                                         ; preds = %_Invalid_parameter.i.i.i.i
  unreachable

"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i": ; preds = %if.end12.i.i.i.i, %if.then.i.i6
  %_Allocated_size.0.i.i.i.i = phi i32 [ %add.i.i5, %if.then.i.i6 ], [ %add.i.i.i.i7, %if.end12.i.i.i.i ]
  %_Ptr.addr.2.i.i.i.i = phi i8* [ %11, %if.then.i.i6 ], [ %16, %if.end12.i.i.i.i ]
  tail call void @"\01??3@YAXPAXI@Z"(i8* %_Ptr.addr.2.i.i.i.i, i32 %_Allocated_size.0.i.i.i.i) #2
  br label %"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit"

ehcleanup.i:                                      ; preds = %_Invalid_parameter.i.i.i.i
  %17 = cleanuppad within none []
  call void @__std_terminate() #20 [ "funclet"(token %17) ]
  unreachable

"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit": ; preds = %invoke.cont2, %"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i"
  ret void

ehcleanup:                                        ; preds = %if.end13.i.i.i.i, %if.end8.i.i.i.i, %invoke.cont
  %18 = cleanuppad within none []
  %19 = load i32, i32* %_Myres.i.i.i.i, align 4, !tbaa !16
  %cmp.i.i.i11 = icmp ugt i32 %19, 15
  br i1 %cmp.i.i.i11, label %if.then.i.i15, label %"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit35"

if.then.i.i15:                                    ; preds = %ehcleanup
  %20 = load i8*, i8** %_Ptr.i.i.i, align 4, !tbaa !18
  %add.i.i13 = add i32 %19, 1
  %cmp1.i.i.i.i14 = icmp ugt i32 %add.i.i13, 4095
  br i1 %cmp1.i.i.i.i14, label %if.then2.i.i.i.i18, label %"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i31"

if.then2.i.i.i.i18:                               ; preds = %if.then.i.i15
  %add.i.i.i.i16 = add i32 %19, 36
  %cmp3.i.i.i.i17 = icmp ugt i32 %add.i.i13, -36
  br i1 %cmp3.i.i.i.i17, label %_Invalid_parameter.i.i.i.i27, label %if.end5.i.i.i.i21

if.end5.i.i.i.i21:                                ; preds = %if.then2.i.i.i.i18
  %21 = ptrtoint i8* %20 to i32
  %and.i.i.i.i19 = and i32 %21, 31
  %cmp7.i.i.i.i20 = icmp eq i32 %and.i.i.i.i19, 0
  br i1 %cmp7.i.i.i.i20, label %if.end9.i.i.i.i24, label %_Invalid_parameter.i.i.i.i27

if.end9.i.i.i.i24:                                ; preds = %if.end5.i.i.i.i21
  %sub.i.i.i.i22 = add i32 %21, -4
  %22 = inttoptr i32 %sub.i.i.i.i22 to i32*
  %23 = load i32, i32* %22, align 4, !tbaa !15
  %cmp10.i.i.i.i23 = icmp ult i32 %23, %21
  br i1 %cmp10.i.i.i.i23, label %if.end12.i.i.i.i26, label %_Invalid_parameter.i.i.i.i27

if.end12.i.i.i.i26:                               ; preds = %if.end9.i.i.i.i24
  %sub13.off.i.i.i.i25 = sub i32 %sub.i.i.i.i22, %23
  %24 = icmp ugt i32 %sub13.off.i.i.i.i25, 31
  %25 = inttoptr i32 %23 to i8*
  br i1 %24, label %_Invalid_parameter.i.i.i.i27, label %"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i31"

_Invalid_parameter.i.i.i.i27:                     ; preds = %if.end12.i.i.i.i26, %if.end9.i.i.i.i24, %if.end5.i.i.i.i21, %if.then2.i.i.i.i18
  invoke void @_invalid_parameter_noinfo_noreturn() #19 [ "funclet"(token %18) ]
          to label %.noexc.i28 unwind label %ehcleanup.i34

.noexc.i28:                                       ; preds = %_Invalid_parameter.i.i.i.i27
  unreachable

"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i31": ; preds = %if.end12.i.i.i.i26, %if.then.i.i15
  %_Allocated_size.0.i.i.i.i29 = phi i32 [ %add.i.i13, %if.then.i.i15 ], [ %add.i.i.i.i16, %if.end12.i.i.i.i26 ]
  %_Ptr.addr.2.i.i.i.i30 = phi i8* [ %20, %if.then.i.i15 ], [ %25, %if.end12.i.i.i.i26 ]
  call void @"\01??3@YAXPAXI@Z"(i8* %_Ptr.addr.2.i.i.i.i30, i32 %_Allocated_size.0.i.i.i.i29) #2 [ "funclet"(token %18) ]
  br label %"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit35"

ehcleanup.i34:                                    ; preds = %_Invalid_parameter.i.i.i.i27
  %26 = cleanuppad within %18 []
  call void @__std_terminate() #20 [ "funclet"(token %26) ]
  unreachable

"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit35": ; preds = %ehcleanup, %"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit.i.i31"
  cleanupret from %18 unwind to caller
}

define x86_thiscallcc dereferenceable(8) %"class.ofw::BigBase"* @"\01??4BigBase@ofw@@QAEAAV01@ABV01@@Z"(%"class.ofw::BigBase"* returned %this, %"class.ofw::BigBase"* nocapture readonly dereferenceable(8) %integer) local_unnamed_addr #1 align 2 {
entry:
  %blocks.i.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 0
  %0 = load i32*, i32** %blocks.i.i, align 4, !tbaa !8
  %cmp.i.i = icmp eq i32* %0, null
  br i1 %cmp.i.i, label %"\01?init@BigBase@ofw@@AAEXXZ.exit.i", label %delete.notnull.i.i

delete.notnull.i.i:                               ; preds = %entry
  %1 = bitcast i32* %0 to i8*
  tail call void @"\01??_V@YAXPAX@Z"(i8* %1) #18
  br label %"\01?init@BigBase@ofw@@AAEXXZ.exit.i"

"\01?init@BigBase@ofw@@AAEXXZ.exit.i":            ; preds = %delete.notnull.i.i, %entry
  store i32* null, i32** %blocks.i.i, align 4, !tbaa !8
  %length.i.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  store i32 0, i32* %length.i.i, align 4, !tbaa !14
  %length.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %integer, i32 0, i32 1
  %2 = load i32, i32* %length.i, align 4, !tbaa !14
  %cmp.i = icmp eq i32 %2, 0
  br i1 %cmp.i, label %"\01?copy@BigBase@ofw@@AAEXABV12@@Z.exit", label %if.then.i

if.then.i:                                        ; preds = %"\01?init@BigBase@ofw@@AAEXXZ.exit.i"
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 4)
  %4 = extractvalue { i32, i1 } %3, 1
  %5 = extractvalue { i32, i1 } %3, 0
  %6 = select i1 %4, i32 -1, i32 %5
  %call.i.i = tail call i8* @"\01??_U@YAPAXI@Z"(i32 %6) #17
  %7 = bitcast %"class.ofw::BigBase"* %this to i8**
  store i8* %call.i.i, i8** %7, align 4, !tbaa !8
  store i32 %2, i32* %length.i.i, align 4, !tbaa !14
  %8 = bitcast %"class.ofw::BigBase"* %integer to i8**
  %9 = load i8*, i8** %8, align 4, !tbaa !8
  %10 = load i32, i32* %length.i, align 4, !tbaa !14
  %mul.i = shl i32 %10, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %call.i.i, i8* %9, i32 %mul.i, i32 4, i1 false)
  br label %"\01?copy@BigBase@ofw@@AAEXABV12@@Z.exit"

"\01?copy@BigBase@ofw@@AAEXABV12@@Z.exit":        ; preds = %"\01?init@BigBase@ofw@@AAEXXZ.exit.i", %if.then.i
  ret %"class.ofw::BigBase"* %this
}

define x86_thiscallcc dereferenceable(8) %"class.ofw::BigBase"* @"\01??_3BigBase@ofw@@QAEAAV01@I@Z"(%"class.ofw::BigBase"* returned %this, i32 %len) local_unnamed_addr #1 align 2 {
entry:
  %length = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  %0 = load i32, i32* %length, align 4, !tbaa !14
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %div = lshr i32 %len, 5
  %rem = and i32 %len, 31
  %sub = sub nsw i32 32, %rem
  %cmp3 = icmp ne i32 %rem, 0
  %conv = zext i1 %cmp3 to i32
  %add = add nuw nsw i32 %div, %conv
  %add4 = add i32 %add, %0
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add4, i32 4)
  %2 = extractvalue { i32, i1 } %1, 1
  %3 = extractvalue { i32, i1 } %1, 0
  %4 = select i1 %2, i32 -1, i32 %3
  %call.i = tail call i8* @"\01??_U@YAPAXI@Z"(i32 %4) #17
  %mul.i = shl i32 %add4, 2
  tail call void @llvm.memset.p0i8.i32(i8* nonnull %call.i, i8 0, i32 %mul.i, i32 4, i1 false)
  %5 = bitcast %"class.ofw::BigBase"* %this to i8**
  %6 = load i8*, i8** %5, align 4, !tbaa !8
  %mul2.i = shl i32 %0, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %call.i, i8* %6, i32 %mul2.i, i32 4, i1 false)
  %isnull.i = icmp eq i8* %6, null
  br i1 %isnull.i, label %"\01?reallocate@BigBase@ofw@@AAEXI@Z.exit", label %delete.notnull.i

delete.notnull.i:                                 ; preds = %if.end
  tail call void @"\01??_V@YAXPAX@Z"(i8* nonnull %6) #18
  br label %"\01?reallocate@BigBase@ofw@@AAEXI@Z.exit"

"\01?reallocate@BigBase@ofw@@AAEXI@Z.exit":       ; preds = %if.end, %delete.notnull.i
  store i8* %call.i, i8** %5, align 4, !tbaa !8
  store i32 %add4, i32* %length, align 4, !tbaa !14
  %cmp5 = icmp eq i32 %div, 0
  %7 = bitcast i8* %call.i to i32*
  br i1 %cmp5, label %if.else60, label %if.then6

if.then6:                                         ; preds = %"\01?reallocate@BigBase@ofw@@AAEXI@Z.exit"
  %cmp7 = icmp eq i32 %sub, 0
  %cmp8 = icmp eq i32 %rem, 0
  %or.cond = or i1 %cmp8, %cmp7
  %i.0138 = add i32 %add4, -1
  br i1 %or.cond, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then6
  %cmp12139 = icmp ult i32 %i.0138, %div
  br i1 %cmp12139, label %for.body20.lr.ph, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then9
  br label %for.body

for.body20.lr.ph:                                 ; preds = %for.body, %if.then9
  %8 = shl nuw nsw i32 %div, 2
  call void @llvm.memset.p0i8.i32(i8* nonnull %call.i, i8 0, i32 %8, i32 4, i1 false)
  br label %if.end84

for.body:                                         ; preds = %for.body.preheader, %for.body
  %i.0140 = phi i32 [ %i.0, %for.body ], [ %i.0138, %for.body.preheader ]
  %sub13 = sub i32 %i.0140, %div
  %arrayidx = getelementptr inbounds i32, i32* %7, i32 %sub13
  %9 = load i32, i32* %arrayidx, align 4, !tbaa !15
  %arrayidx15 = getelementptr inbounds i32, i32* %7, i32 %i.0140
  store i32 %9, i32* %arrayidx15, align 4, !tbaa !15
  %i.0 = add i32 %i.0140, -1
  %cmp12 = icmp ult i32 %i.0, %div
  br i1 %cmp12, label %for.body20.lr.ph, label %for.body

if.else:                                          ; preds = %if.then6
  %cmp29144 = icmp ugt i32 %i.0138, %div
  br i1 %cmp29144, label %for.body31.lr.ph, label %for.body53.lr.ph

for.body31.lr.ph:                                 ; preds = %if.else
  %sub33.peel = sub i32 %i.0138, %div
  %arrayidx34.peel = getelementptr inbounds i32, i32* %7, i32 %sub33.peel
  %10 = load i32, i32* %arrayidx34.peel, align 4, !tbaa !15
  %shl.peel = shl i32 %10, %rem
  %sub37.peel = add i32 %sub33.peel, -1
  %arrayidx38.peel = getelementptr inbounds i32, i32* %7, i32 %sub37.peel
  %11 = load i32, i32* %arrayidx38.peel, align 4, !tbaa !15
  %shr.peel = lshr i32 %11, %sub
  %or.peel = or i32 %shr.peel, %shl.peel
  %arrayidx40.peel = getelementptr inbounds i32, i32* %7, i32 %i.0138
  store i32 %or.peel, i32* %arrayidx40.peel, align 4, !tbaa !15
  %i25.0.peel = add i32 %add4, -2
  %cmp29.peel = icmp ugt i32 %i25.0.peel, %div
  br i1 %cmp29.peel, label %for.body31.preheader, label %for.body53.lr.ph

for.body31.preheader:                             ; preds = %for.body31.lr.ph
  br label %for.body31

for.body53.lr.ph:                                 ; preds = %for.body31, %if.else, %for.body31.lr.ph
  %12 = load i32, i32* %7, align 4, !tbaa !15
  %shl46 = shl i32 %12, %rem
  %arrayidx48 = getelementptr inbounds i32, i32* %7, i32 %div
  store i32 %shl46, i32* %arrayidx48, align 4, !tbaa !15
  %13 = shl nuw nsw i32 %div, 2
  call void @llvm.memset.p0i8.i32(i8* nonnull %call.i, i8 0, i32 %13, i32 4, i1 false)
  br label %if.end84

for.body31:                                       ; preds = %for.body31.preheader, %for.body31
  %i25.0145 = phi i32 [ %i25.0, %for.body31 ], [ %i25.0.peel, %for.body31.preheader ]
  %sub33 = sub i32 %i25.0145, %div
  %arrayidx34 = getelementptr inbounds i32, i32* %7, i32 %sub33
  %14 = load i32, i32* %arrayidx34, align 4, !tbaa !15
  %shl = shl i32 %14, %rem
  %sub37 = add i32 %sub33, -1
  %arrayidx38 = getelementptr inbounds i32, i32* %7, i32 %sub37
  %15 = load i32, i32* %arrayidx38, align 4, !tbaa !15
  %shr = lshr i32 %15, %sub
  %or = or i32 %shr, %shl
  %arrayidx40 = getelementptr inbounds i32, i32* %7, i32 %i25.0145
  store i32 %or, i32* %arrayidx40, align 4, !tbaa !15
  %i25.0 = add i32 %i25.0145, -1
  %cmp29 = icmp ugt i32 %i25.0, %div
  br i1 %cmp29, label %for.body31, label %for.body53.lr.ph, !llvm.loop !21

if.else60:                                        ; preds = %"\01?reallocate@BigBase@ofw@@AAEXI@Z.exit"
  %i61.0132 = add i32 %add4, -1
  %cmp65133 = icmp sgt i32 %i61.0132, 0
  br i1 %cmp65133, label %for.body67.lr.ph, label %for.cond.cleanup66

for.body67.lr.ph:                                 ; preds = %if.else60
  %arrayidx69.peel = getelementptr inbounds i32, i32* %7, i32 %i61.0132
  %16 = load i32, i32* %arrayidx69.peel, align 4, !tbaa !15
  %shl70.peel = shl i32 %16, %rem
  %sub72.peel = add i32 %add4, -2
  %arrayidx73.peel = getelementptr inbounds i32, i32* %7, i32 %sub72.peel
  %17 = load i32, i32* %arrayidx73.peel, align 4, !tbaa !15
  %shr74.peel = lshr i32 %17, %sub
  %or75.peel = or i32 %shr74.peel, %shl70.peel
  store i32 %or75.peel, i32* %arrayidx69.peel, align 4, !tbaa !15
  %i61.0.peel = add i32 %add4, -2
  %cmp65.peel = icmp sgt i32 %i61.0.peel, 0
  br i1 %cmp65.peel, label %for.body67.preheader, label %for.cond.cleanup66

for.body67.preheader:                             ; preds = %for.body67.lr.ph
  br label %for.body67

for.cond.cleanup66:                               ; preds = %for.body67, %for.body67.lr.ph, %if.else60
  %18 = load i32, i32* %7, align 4, !tbaa !15
  %shl83 = shl i32 %18, %rem
  store i32 %shl83, i32* %7, align 4, !tbaa !15
  br label %if.end84

for.body67:                                       ; preds = %for.body67.preheader, %for.body67
  %i61.0135 = phi i32 [ %i61.0, %for.body67 ], [ %i61.0.peel, %for.body67.preheader ]
  %i61.0.in134 = phi i32 [ %i61.0135, %for.body67 ], [ %i61.0132, %for.body67.preheader ]
  %arrayidx69 = getelementptr inbounds i32, i32* %7, i32 %i61.0135
  %19 = load i32, i32* %arrayidx69, align 4, !tbaa !15
  %shl70 = shl i32 %19, %rem
  %sub72 = add i32 %i61.0.in134, -2
  %arrayidx73 = getelementptr inbounds i32, i32* %7, i32 %sub72
  %20 = load i32, i32* %arrayidx73, align 4, !tbaa !15
  %shr74 = lshr i32 %20, %sub
  %or75 = or i32 %shr74, %shl70
  store i32 %or75, i32* %arrayidx69, align 4, !tbaa !15
  %i61.0 = add i32 %i61.0135, -1
  %cmp65 = icmp sgt i32 %i61.0, 0
  br i1 %cmp65, label %for.body67, label %for.cond.cleanup66, !llvm.loop !23

if.end84:                                         ; preds = %for.body53.lr.ph, %for.body20.lr.ph, %for.cond.cleanup66
  %i.015.i.pre-phi = phi i32 [ %i.0138, %for.body53.lr.ph ], [ %i.0138, %for.body20.lr.ph ], [ %i61.0132, %for.cond.cleanup66 ]
  %cmp16.i = icmp sgt i32 %i.015.i.pre-phi, -1
  br i1 %cmp16.i, label %for.body.i.preheader, label %delete.notnull.i128

for.body.i.preheader:                             ; preds = %if.end84
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %i.0.i = add i32 %i.018.i, -1
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %for.body.i, label %delete.notnull.i128

for.body.i:                                       ; preds = %for.body.i.preheader, %for.cond.i
  %i.018.i = phi i32 [ %i.0.i, %for.cond.i ], [ %i.015.i.pre-phi, %for.body.i.preheader ]
  %i.0.in17.i = phi i32 [ %i.018.i, %for.cond.i ], [ %add4, %for.body.i.preheader ]
  %arrayidx.i = getelementptr inbounds i32, i32* %7, i32 %i.018.i
  %21 = load i32, i32* %arrayidx.i, align 4, !tbaa !15
  %cmp2.i = icmp eq i32 %21, 0
  br i1 %cmp2.i, label %for.cond.i, label %if.then4.i

if.then4.i:                                       ; preds = %for.body.i
  store i32 %i.0.in17.i, i32* %length, align 4, !tbaa !14
  br label %return

delete.notnull.i128:                              ; preds = %for.cond.i, %if.end84
  store i32 0, i32* %length, align 4, !tbaa !14
  tail call void @"\01??_V@YAXPAX@Z"(i8* nonnull %call.i) #18
  br label %return

return:                                           ; preds = %delete.notnull.i128, %if.then4.i, %entry
  ret %"class.ofw::BigBase"* %this
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

define x86_thiscallcc void @"\01?reallocate@BigBase@ofw@@AAEXI@Z"(%"class.ofw::BigBase"* nocapture %this, i32 %i) local_unnamed_addr #1 align 2 {
entry:
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i, i32 4)
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %3 = select i1 %1, i32 -1, i32 %2
  %call = tail call i8* @"\01??_U@YAPAXI@Z"(i32 %3) #17
  %mul = shl i32 %i, 2
  tail call void @llvm.memset.p0i8.i32(i8* nonnull %call, i8 0, i32 %mul, i32 4, i1 false)
  %4 = bitcast %"class.ofw::BigBase"* %this to i8**
  %5 = load i8*, i8** %4, align 4, !tbaa !8
  %length = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  %6 = load i32, i32* %length, align 4, !tbaa !14
  %mul2 = shl i32 %6, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %call, i8* %5, i32 %mul2, i32 4, i1 false)
  %isnull = icmp eq i8* %5, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  tail call void @"\01??_V@YAXPAX@Z"(i8* nonnull %5) #18
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  store i8* %call, i8** %4, align 4, !tbaa !8
  store i32 %i, i32* %length, align 4, !tbaa !14
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind
define x86_thiscallcc void @"\01?trim@BigBase@ofw@@AAEXXZ"(%"class.ofw::BigBase"* nocapture %this) local_unnamed_addr #4 align 2 {
entry:
  %length = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  %0 = load i32, i32* %length, align 4, !tbaa !14
  %i.015 = add i32 %0, -1
  %cmp16 = icmp sgt i32 %i.015, -1
  %blocks = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 0
  %1 = load i32*, i32** %blocks, align 4, !tbaa !8
  br i1 %cmp16, label %for.body.preheader, label %if.else

for.body.preheader:                               ; preds = %entry
  br label %for.body

for.cond:                                         ; preds = %for.body
  %i.0 = add i32 %i.018, -1
  %cmp = icmp sgt i32 %i.0, -1
  br i1 %cmp, label %for.body, label %if.else.thread

if.else.thread:                                   ; preds = %for.cond
  store i32 0, i32* %length, align 4, !tbaa !14
  br label %delete.notnull

for.body:                                         ; preds = %for.body.preheader, %for.cond
  %i.018 = phi i32 [ %i.0, %for.cond ], [ %i.015, %for.body.preheader ]
  %i.0.in17 = phi i32 [ %i.018, %for.cond ], [ %0, %for.body.preheader ]
  %arrayidx = getelementptr inbounds i32, i32* %1, i32 %i.018
  %2 = load i32, i32* %arrayidx, align 4, !tbaa !15
  %cmp2 = icmp eq i32 %2, 0
  br i1 %cmp2, label %for.cond, label %if.then4

if.then4:                                         ; preds = %for.body
  store i32 %i.0.in17, i32* %length, align 4, !tbaa !14
  br label %if.end8

if.else:                                          ; preds = %entry
  store i32 0, i32* %length, align 4, !tbaa !14
  %isnull = icmp eq i32* %1, null
  br i1 %isnull, label %if.end8, label %delete.notnull

delete.notnull:                                   ; preds = %if.else.thread, %if.else
  %3 = bitcast i32* %1 to i8*
  tail call void @"\01??_V@YAXPAX@Z"(i8* %3) #18
  br label %if.end8

if.end8:                                          ; preds = %if.else, %delete.notnull, %if.then4
  ret void
}

define x86_thiscallcc void @"\01??6BigBase@ofw@@QBE?AV01@I@Z"(%"class.ofw::BigBase"* nocapture readonly %this, %"class.ofw::BigBase"* noalias nocapture sret %agg.result, i32 %len) local_unnamed_addr #1 align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %tmp = alloca i64, align 4
  %tmpcast = bitcast i64* %tmp to %"class.ofw::BigBase"*
  %0 = bitcast i64* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #2
  %length.i.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  store i64 0, i64* %tmp, align 4
  %1 = load i32, i32* %length.i.i, align 4, !tbaa !14
  %cmp.i.i = icmp eq i32 %1, 0
  br i1 %cmp.i.i, label %"\01??0BigBase@ofw@@QAE@ABV01@@Z.exit", label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  %length.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %tmpcast, i32 0, i32 1
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4)
  %3 = extractvalue { i32, i1 } %2, 1
  %4 = extractvalue { i32, i1 } %2, 0
  %5 = select i1 %3, i32 -1, i32 %4
  %call.i.i.i = tail call i8* @"\01??_U@YAPAXI@Z"(i32 %5) #17
  %6 = bitcast i64* %tmp to i8**
  store i8* %call.i.i.i, i8** %6, align 4, !tbaa !8
  store i32 %1, i32* %length.i, align 4, !tbaa !14
  %7 = bitcast %"class.ofw::BigBase"* %this to i8**
  %8 = load i8*, i8** %7, align 4, !tbaa !8
  %mul.i.i = shl i32 %1, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %call.i.i.i, i8* %8, i32 %mul.i.i, i32 4, i1 false)
  br label %"\01??0BigBase@ofw@@QAE@ABV01@@Z.exit"

"\01??0BigBase@ofw@@QAE@ABV01@@Z.exit":           ; preds = %entry, %if.then.i.i
  %call2 = invoke x86_thiscallcc dereferenceable(8) %"class.ofw::BigBase"* @"\01??_3BigBase@ofw@@QAEAAV01@I@Z"(%"class.ofw::BigBase"* nonnull %tmpcast, i32 %len)
          to label %invoke.cont unwind label %ehcleanup

invoke.cont:                                      ; preds = %"\01??0BigBase@ofw@@QAE@ABV01@@Z.exit"
  %length.i.i6 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %call2, i32 0, i32 1
  %9 = bitcast %"class.ofw::BigBase"* %agg.result to i64*
  store i64 0, i64* %9, align 4
  %10 = load i32, i32* %length.i.i6, align 4, !tbaa !14
  %cmp.i.i7 = icmp eq i32 %10, 0
  br i1 %cmp.i.i7, label %invoke.cont.invoke.cont3_crit_edge, label %if.then.i.i11

invoke.cont.invoke.cont3_crit_edge:               ; preds = %invoke.cont
  %blocks.i.phi.trans.insert = bitcast i64* %tmp to i32**
  %.pre = load i32*, i32** %blocks.i.phi.trans.insert, align 4, !tbaa !8
  %11 = bitcast i32* %.pre to i8*
  br label %invoke.cont3

if.then.i.i11:                                    ; preds = %invoke.cont
  %12 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %10, i32 4)
  %13 = extractvalue { i32, i1 } %12, 1
  %14 = extractvalue { i32, i1 } %12, 0
  %15 = select i1 %13, i32 -1, i32 %14
  %call.i.i.i912 = invoke i8* @"\01??_U@YAPAXI@Z"(i32 %15) #17
          to label %call.i.i.i9.noexc unwind label %ehcleanup

call.i.i.i9.noexc:                                ; preds = %if.then.i.i11
  %length.i8 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %agg.result, i32 0, i32 1
  %16 = bitcast %"class.ofw::BigBase"* %agg.result to i8**
  store i8* %call.i.i.i912, i8** %16, align 4, !tbaa !8
  store i32 %10, i32* %length.i8, align 4, !tbaa !14
  %17 = bitcast %"class.ofw::BigBase"* %call2 to i8**
  %18 = load i8*, i8** %17, align 4, !tbaa !8
  %mul.i.i10 = shl i32 %10, 2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %call.i.i.i912, i8* %18, i32 %mul.i.i10, i32 4, i1 false)
  %19 = bitcast i8* %18 to i32*
  br label %invoke.cont3

invoke.cont3:                                     ; preds = %invoke.cont.invoke.cont3_crit_edge, %call.i.i.i9.noexc
  %20 = phi i8* [ %11, %invoke.cont.invoke.cont3_crit_edge ], [ %18, %call.i.i.i9.noexc ]
  %21 = phi i32* [ %.pre, %invoke.cont.invoke.cont3_crit_edge ], [ %19, %call.i.i.i9.noexc ]
  %isnull.i = icmp eq i32* %21, null
  br i1 %isnull.i, label %"\01??1BigBase@ofw@@QAE@XZ.exit", label %delete.notnull.i

delete.notnull.i:                                 ; preds = %invoke.cont3
  call void @"\01??_V@YAXPAX@Z"(i8* %20) #18
  br label %"\01??1BigBase@ofw@@QAE@XZ.exit"

"\01??1BigBase@ofw@@QAE@XZ.exit":                 ; preds = %invoke.cont3, %delete.notnull.i
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #2
  ret void

ehcleanup:                                        ; preds = %if.then.i.i11, %"\01??0BigBase@ofw@@QAE@ABV01@@Z.exit"
  %22 = cleanuppad within none []
  %blocks.i14 = bitcast i64* %tmp to i32**
  %23 = load i32*, i32** %blocks.i14, align 4, !tbaa !8
  %isnull.i15 = icmp eq i32* %23, null
  br i1 %isnull.i15, label %"\01??1BigBase@ofw@@QAE@XZ.exit17", label %delete.notnull.i16

delete.notnull.i16:                               ; preds = %ehcleanup
  %24 = bitcast i32* %23 to i8*
  call void @"\01??_V@YAXPAX@Z"(i8* %24) #18 [ "funclet"(token %22) ]
  br label %"\01??1BigBase@ofw@@QAE@XZ.exit17"

"\01??1BigBase@ofw@@QAE@XZ.exit17":               ; preds = %ehcleanup, %delete.notnull.i16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #2
  cleanupret from %22 unwind to caller
}

; Function Attrs: nounwind
define x86_thiscallcc dereferenceable(8) %"class.ofw::BigBase"* @"\01??_2BigBase@ofw@@QAEAAV01@I@Z"(%"class.ofw::BigBase"* returned %this, i32 %len) local_unnamed_addr #4 align 2 {
entry:
  %length = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  %0 = load i32, i32* %length, align 4, !tbaa !14
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %div = lshr i32 %len, 5
  %rem = and i32 %len, 31
  %sub = sub nsw i32 32, %rem
  %1 = add nsw i32 %div, -1
  %2 = icmp ult i32 %1, %0
  br i1 %2, label %if.then5, label %if.else74

if.then5:                                         ; preds = %if.end
  %cmp6 = icmp eq i32 %rem, 0
  %cmp7 = icmp eq i32 %sub, 0
  %or.cond = or i1 %cmp6, %cmp7
  %sub10155 = sub i32 %0, %div
  br i1 %or.cond, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then5
  %cmp11156 = icmp eq i32 %sub10155, 0
  br i1 %cmp11156, label %for.body20.lr.ph, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.then8
  %blocks = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 0
  %3 = load i32*, i32** %blocks, align 4, !tbaa !8
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body
  %cmp18152 = icmp eq i32 %div, 0
  br i1 %cmp18152, label %if.end100, label %for.body20.lr.ph

for.body20.lr.ph:                                 ; preds = %if.then8, %for.cond.cleanup
  %.lcssa185 = phi i32 [ %8, %for.cond.cleanup ], [ %0, %if.then8 ]
  %blocks21 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 0
  %4 = load i32*, i32** %blocks21, align 4, !tbaa !8
  %5 = sub i32 %.lcssa185, %div
  %scevgep = getelementptr i32, i32* %4, i32 %5
  %scevgep179 = bitcast i32* %scevgep to i8*
  %6 = shl nuw nsw i32 %div, 2
  call void @llvm.memset.p0i8.i32(i8* %scevgep179, i8 0, i32 %6, i32 4, i1 false)
  br label %if.end100

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.0157 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %add = add i32 %i.0157, %div
  %arrayidx = getelementptr inbounds i32, i32* %3, i32 %add
  %7 = load i32, i32* %arrayidx, align 4, !tbaa !15
  %arrayidx13 = getelementptr inbounds i32, i32* %3, i32 %i.0157
  store i32 %7, i32* %arrayidx13, align 4, !tbaa !15
  %inc = add nuw nsw i32 %i.0157, 1
  %8 = load i32, i32* %length, align 4, !tbaa !14
  %sub10 = sub i32 %8, %div
  %cmp11 = icmp ult i32 %inc, %sub10
  br i1 %cmp11, label %for.body, label %for.cond.cleanup

if.else:                                          ; preds = %if.then5
  %cmp31164 = icmp eq i32 %sub10155, 1
  %blocks34 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 0
  %9 = load i32*, i32** %blocks34, align 4, !tbaa !8
  br i1 %cmp31164, label %for.cond.cleanup32, label %for.body33.lr.ph

for.body33.lr.ph:                                 ; preds = %if.else
  %arrayidx36.peel = getelementptr inbounds i32, i32* %9, i32 %div
  %10 = load i32, i32* %arrayidx36.peel, align 4, !tbaa !15
  %shr.peel = lshr i32 %10, %rem
  %add39.peel = add nuw nsw i32 %div, 1
  %arrayidx40.peel = getelementptr inbounds i32, i32* %9, i32 %add39.peel
  %11 = load i32, i32* %arrayidx40.peel, align 4, !tbaa !15
  %shl.peel = shl i32 %11, %sub
  %or.peel = or i32 %shl.peel, %shr.peel
  store i32 %or.peel, i32* %9, align 4, !tbaa !15
  %12 = load i32, i32* %length, align 4, !tbaa !14
  %sub29.peel = sub i32 %12, %div
  %sub30.peel = add i32 %sub29.peel, -1
  %cmp31.peel = icmp ugt i32 %sub30.peel, 1
  br i1 %cmp31.peel, label %for.body33.preheader, label %for.cond.cleanup32

for.body33.preheader:                             ; preds = %for.body33.lr.ph
  br label %for.body33

for.cond.cleanup32:                               ; preds = %for.body33, %for.body33.lr.ph, %if.else
  %.lcssa149 = phi i32 [ %0, %if.else ], [ %12, %for.body33.lr.ph ], [ %19, %for.body33 ]
  %sub30.lcssa = phi i32 [ 0, %if.else ], [ %sub30.peel, %for.body33.lr.ph ], [ %sub30, %for.body33 ]
  %sub48 = add i32 %.lcssa149, -1
  %arrayidx49 = getelementptr inbounds i32, i32* %9, i32 %sub48
  %13 = load i32, i32* %arrayidx49, align 4, !tbaa !15
  %shr50 = lshr i32 %13, %rem
  %arrayidx55 = getelementptr inbounds i32, i32* %9, i32 %sub30.lcssa
  store i32 %shr50, i32* %arrayidx55, align 4, !tbaa !15
  %cmp61159 = icmp eq i32 %div, 0
  br i1 %cmp61159, label %for.cond.cleanup62, label %for.body63.lr.ph

for.body63.lr.ph:                                 ; preds = %for.cond.cleanup32
  %14 = load i32, i32* %length, align 4, !tbaa !14
  %15 = sub i32 %14, %div
  %scevgep180 = getelementptr i32, i32* %9, i32 %15
  %scevgep180181 = bitcast i32* %scevgep180 to i8*
  %16 = shl nuw nsw i32 %div, 2
  call void @llvm.memset.p0i8.i32(i8* %scevgep180181, i8 0, i32 %16, i32 4, i1 false)
  br label %for.cond.cleanup62

for.body33:                                       ; preds = %for.body33.preheader, %for.body33
  %i26.0165 = phi i32 [ %inc44, %for.body33 ], [ 1, %for.body33.preheader ]
  %add35 = add i32 %i26.0165, %div
  %arrayidx36 = getelementptr inbounds i32, i32* %9, i32 %add35
  %17 = load i32, i32* %arrayidx36, align 4, !tbaa !15
  %shr = lshr i32 %17, %rem
  %add39 = add i32 %add35, 1
  %arrayidx40 = getelementptr inbounds i32, i32* %9, i32 %add39
  %18 = load i32, i32* %arrayidx40, align 4, !tbaa !15
  %shl = shl i32 %18, %sub
  %or = or i32 %shl, %shr
  %arrayidx42 = getelementptr inbounds i32, i32* %9, i32 %i26.0165
  store i32 %or, i32* %arrayidx42, align 4, !tbaa !15
  %inc44 = add nuw nsw i32 %i26.0165, 1
  %19 = load i32, i32* %length, align 4, !tbaa !14
  %sub29 = sub i32 %19, %div
  %sub30 = add i32 %sub29, -1
  %cmp31 = icmp ult i32 %inc44, %sub30
  br i1 %cmp31, label %for.body33, label %for.cond.cleanup32, !llvm.loop !24

for.cond.cleanup62:                               ; preds = %for.body63.lr.ph, %for.cond.cleanup32
  %arrayidx71 = getelementptr inbounds i32, i32* %9, i32 %div
  br label %if.end100.sink.split

if.else74:                                        ; preds = %if.end
  %cmp79170 = icmp eq i32 %0, 1
  %blocks82 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 0
  %20 = load i32*, i32** %blocks82, align 4, !tbaa !8
  br i1 %cmp79170, label %for.cond.cleanup80, label %for.body81.lr.ph

for.body81.lr.ph:                                 ; preds = %if.else74
  %21 = load i32, i32* %20, align 4, !tbaa !15
  %shr84.peel = lshr i32 %21, %rem
  %arrayidx87.peel = getelementptr inbounds i32, i32* %20, i32 1
  %22 = load i32, i32* %arrayidx87.peel, align 4, !tbaa !15
  %shl88.peel = shl i32 %22, %sub
  %or89.peel = or i32 %shl88.peel, %shr84.peel
  store i32 %or89.peel, i32* %20, align 4, !tbaa !15
  %23 = load i32, i32* %length, align 4, !tbaa !14
  %sub78.peel = add i32 %23, -1
  %cmp79.peel = icmp ugt i32 %sub78.peel, 1
  br i1 %cmp79.peel, label %for.body81.preheader, label %for.cond.cleanup80

for.body81.preheader:                             ; preds = %for.body81.lr.ph
  br label %for.body81

for.cond.cleanup80:                               ; preds = %for.body81, %for.body81.lr.ph, %if.else74
  %sub78.lcssa = phi i32 [ 0, %if.else74 ], [ %sub78.peel, %for.body81.lr.ph ], [ %sub78, %for.body81 ]
  %arrayidx98 = getelementptr inbounds i32, i32* %20, i32 %sub78.lcssa
  br label %if.end100.sink.split

for.body81:                                       ; preds = %for.body81.preheader, %for.body81
  %24 = phi i32 [ %25, %for.body81 ], [ %22, %for.body81.preheader ]
  %i75.0171 = phi i32 [ %add86, %for.body81 ], [ 1, %for.body81.preheader ]
  %arrayidx83 = getelementptr inbounds i32, i32* %20, i32 %i75.0171
  %shr84 = lshr i32 %24, %rem
  %add86 = add nuw nsw i32 %i75.0171, 1
  %arrayidx87 = getelementptr inbounds i32, i32* %20, i32 %add86
  %25 = load i32, i32* %arrayidx87, align 4, !tbaa !15
  %shl88 = shl i32 %25, %sub
  %or89 = or i32 %shl88, %shr84
  store i32 %or89, i32* %arrayidx83, align 4, !tbaa !15
  %26 = load i32, i32* %length, align 4, !tbaa !14
  %sub78 = add i32 %26, -1
  %cmp79 = icmp ult i32 %add86, %sub78
  br i1 %cmp79, label %for.body81, label %for.cond.cleanup80, !llvm.loop !25

if.end100.sink.split:                             ; preds = %for.cond.cleanup80, %for.cond.cleanup62
  %arrayidx71.sink146 = phi i32* [ %arrayidx71, %for.cond.cleanup62 ], [ %arrayidx98, %for.cond.cleanup80 ]
  %27 = load i32, i32* %arrayidx71.sink146, align 4, !tbaa !15
  %shr72 = lshr i32 %27, %rem
  store i32 %shr72, i32* %arrayidx71.sink146, align 4, !tbaa !15
  br label %if.end100

if.end100:                                        ; preds = %for.body20.lr.ph, %for.cond.cleanup, %if.end100.sink.split
  %28 = load i32, i32* %length, align 4, !tbaa !14
  %i.015.i = add i32 %28, -1
  %cmp16.i = icmp sgt i32 %i.015.i, -1
  %blocks.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 0
  %29 = load i32*, i32** %blocks.i, align 4, !tbaa !8
  br i1 %cmp16.i, label %for.body.i.preheader, label %if.else.i

for.body.i.preheader:                             ; preds = %if.end100
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %i.0.i = add i32 %i.018.i, -1
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %for.body.i, label %if.else.thread.i

if.else.thread.i:                                 ; preds = %for.cond.i
  store i32 0, i32* %length, align 4, !tbaa !14
  br label %delete.notnull.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.cond.i
  %i.018.i = phi i32 [ %i.0.i, %for.cond.i ], [ %i.015.i, %for.body.i.preheader ]
  %i.0.in17.i = phi i32 [ %i.018.i, %for.cond.i ], [ %28, %for.body.i.preheader ]
  %arrayidx.i = getelementptr inbounds i32, i32* %29, i32 %i.018.i
  %30 = load i32, i32* %arrayidx.i, align 4, !tbaa !15
  %cmp2.i = icmp eq i32 %30, 0
  br i1 %cmp2.i, label %for.cond.i, label %if.then4.i

if.then4.i:                                       ; preds = %for.body.i
  store i32 %i.0.in17.i, i32* %length, align 4, !tbaa !14
  br label %return

if.else.i:                                        ; preds = %if.end100
  store i32 0, i32* %length, align 4, !tbaa !14
  %isnull.i = icmp eq i32* %29, null
  br i1 %isnull.i, label %return, label %delete.notnull.i

delete.notnull.i:                                 ; preds = %if.else.i, %if.else.thread.i
  %31 = bitcast i32* %29 to i8*
  tail call void @"\01??_V@YAXPAX@Z"(i8* %31) #18
  br label %return

return:                                           ; preds = %delete.notnull.i, %if.else.i, %if.then4.i, %entry
  ret %"class.ofw::BigBase"* %this
}

define x86_thiscallcc void @"\01??5BigBase@ofw@@QBE?AV01@I@Z"(%"class.ofw::BigBase"* nocapture readonly %this, %"class.ofw::BigBase"* noalias nocapture sret %agg.result, i32 %len) local_unnamed_addr #1 align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %tmp = alloca i64, align 4
  %tmpcast = bitcast i64* %tmp to %"class.ofw::BigBase"*
  %0 = bitcast i64* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #2
  %length.i.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  store i64 0, i64* %tmp, align 4
  %1 = load i32, i32* %length.i.i, align 4, !tbaa !14
  %cmp.i.i = icmp eq i32 %1, 0
  br i1 %cmp.i.i, label %invoke.cont, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  %length.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %tmpcast, i32 0, i32 1
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4)
  %3 = extractvalue { i32, i1 } %2, 1
  %4 = extractvalue { i32, i1 } %2, 0
  %5 = select i1 %3, i32 -1, i32 %4
  %call.i.i.i = tail call i8* @"\01??_U@YAPAXI@Z"(i32 %5) #17
  %6 = bitcast i64* %tmp to i8**
  store i8* %call.i.i.i, i8** %6, align 4, !tbaa !8
  store i32 %1, i32* %length.i, align 4, !tbaa !14
  %7 = bitcast %"class.ofw::BigBase"* %this to i8**
  %8 = load i8*, i8** %7, align 4, !tbaa !8
  %mul.i.i = shl i32 %1, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %call.i.i.i, i8* %8, i32 %mul.i.i, i32 4, i1 false)
  br label %invoke.cont

invoke.cont:                                      ; preds = %if.then.i.i, %entry
  %call2 = call x86_thiscallcc dereferenceable(8) %"class.ofw::BigBase"* @"\01??_2BigBase@ofw@@QAEAAV01@I@Z"(%"class.ofw::BigBase"* nonnull %tmpcast, i32 %len)
  %length.i.i6 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %call2, i32 0, i32 1
  %9 = bitcast %"class.ofw::BigBase"* %agg.result to i64*
  store i64 0, i64* %9, align 4
  %10 = load i32, i32* %length.i.i6, align 4, !tbaa !14
  %cmp.i.i7 = icmp eq i32 %10, 0
  br i1 %cmp.i.i7, label %invoke.cont.invoke.cont3_crit_edge, label %if.then.i.i11

invoke.cont.invoke.cont3_crit_edge:               ; preds = %invoke.cont
  %blocks.i.phi.trans.insert = bitcast i64* %tmp to i32**
  %.pre = load i32*, i32** %blocks.i.phi.trans.insert, align 4, !tbaa !8
  %11 = bitcast i32* %.pre to i8*
  br label %invoke.cont3

if.then.i.i11:                                    ; preds = %invoke.cont
  %12 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %10, i32 4)
  %13 = extractvalue { i32, i1 } %12, 1
  %14 = extractvalue { i32, i1 } %12, 0
  %15 = select i1 %13, i32 -1, i32 %14
  %call.i.i.i912 = invoke i8* @"\01??_U@YAPAXI@Z"(i32 %15) #17
          to label %call.i.i.i9.noexc unwind label %ehcleanup

call.i.i.i9.noexc:                                ; preds = %if.then.i.i11
  %length.i8 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %agg.result, i32 0, i32 1
  %16 = bitcast %"class.ofw::BigBase"* %agg.result to i8**
  store i8* %call.i.i.i912, i8** %16, align 4, !tbaa !8
  store i32 %10, i32* %length.i8, align 4, !tbaa !14
  %17 = bitcast %"class.ofw::BigBase"* %call2 to i8**
  %18 = load i8*, i8** %17, align 4, !tbaa !8
  %mul.i.i10 = shl i32 %10, 2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %call.i.i.i912, i8* %18, i32 %mul.i.i10, i32 4, i1 false)
  %19 = bitcast i8* %18 to i32*
  br label %invoke.cont3

invoke.cont3:                                     ; preds = %invoke.cont.invoke.cont3_crit_edge, %call.i.i.i9.noexc
  %20 = phi i8* [ %11, %invoke.cont.invoke.cont3_crit_edge ], [ %18, %call.i.i.i9.noexc ]
  %21 = phi i32* [ %.pre, %invoke.cont.invoke.cont3_crit_edge ], [ %19, %call.i.i.i9.noexc ]
  %isnull.i = icmp eq i32* %21, null
  br i1 %isnull.i, label %"\01??1BigBase@ofw@@QAE@XZ.exit", label %delete.notnull.i

delete.notnull.i:                                 ; preds = %invoke.cont3
  call void @"\01??_V@YAXPAX@Z"(i8* %20) #18
  br label %"\01??1BigBase@ofw@@QAE@XZ.exit"

"\01??1BigBase@ofw@@QAE@XZ.exit":                 ; preds = %invoke.cont3, %delete.notnull.i
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #2
  ret void

ehcleanup:                                        ; preds = %if.then.i.i11
  %22 = cleanuppad within none []
  %blocks.i14 = bitcast i64* %tmp to i32**
  %23 = load i32*, i32** %blocks.i14, align 4, !tbaa !8
  %isnull.i15 = icmp eq i32* %23, null
  br i1 %isnull.i15, label %"\01??1BigBase@ofw@@QAE@XZ.exit17", label %delete.notnull.i16

delete.notnull.i16:                               ; preds = %ehcleanup
  %24 = bitcast i32* %23 to i8*
  call void @"\01??_V@YAXPAX@Z"(i8* %24) #18 [ "funclet"(token %22) ]
  br label %"\01??1BigBase@ofw@@QAE@XZ.exit17"

"\01??1BigBase@ofw@@QAE@XZ.exit17":               ; preds = %ehcleanup, %delete.notnull.i16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #2
  cleanupret from %22 unwind to caller
}

define x86_thiscallcc dereferenceable(8) %"class.ofw::BigBase"* @"\01??EBigBase@ofw@@QAEAAV01@XZ"(%"class.ofw::BigBase"* returned %this) local_unnamed_addr #1 align 2 {
entry:
  %length = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  %0 = load i32, i32* %length, align 4, !tbaa !14
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i8* @"\01??_U@YAPAXI@Z"(i32 4) #17
  %1 = bitcast %"class.ofw::BigBase"* %this to i8**
  store i8* %call.i, i8** %1, align 4, !tbaa !8
  store i32 1, i32* %length, align 4, !tbaa !14
  %.cast = bitcast i8* %call.i to i32*
  store i32 1, i32* %.cast, align 4, !tbaa !15
  br label %return

if.end:                                           ; preds = %entry
  %blocks2 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 0
  %2 = load i32*, i32** %blocks2, align 4, !tbaa !8
  %3 = load i32, i32* %2, align 4, !tbaa !15
  %add = add i32 %3, 1
  store i32 %add, i32* %2, align 4, !tbaa !15
  %4 = load i32, i32* %length, align 4, !tbaa !14
  %i.015.i = add i32 %4, -1
  %cmp16.i = icmp sgt i32 %i.015.i, -1
  br i1 %cmp16.i, label %for.body.i.preheader, label %if.else.i

for.body.i.preheader:                             ; preds = %if.end
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %i.0.i = add i32 %i.018.i, -1
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %for.body.i, label %if.else.thread.i

if.else.thread.i:                                 ; preds = %for.cond.i
  store i32 0, i32* %length, align 4, !tbaa !14
  br label %delete.notnull.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.cond.i
  %i.018.i = phi i32 [ %i.0.i, %for.cond.i ], [ %i.015.i, %for.body.i.preheader ]
  %i.0.in17.i = phi i32 [ %i.018.i, %for.cond.i ], [ %4, %for.body.i.preheader ]
  %arrayidx.i = getelementptr inbounds i32, i32* %2, i32 %i.018.i
  %5 = load i32, i32* %arrayidx.i, align 4, !tbaa !15
  %cmp2.i = icmp eq i32 %5, 0
  br i1 %cmp2.i, label %for.cond.i, label %if.then4.i

if.then4.i:                                       ; preds = %for.body.i
  store i32 %i.0.in17.i, i32* %length, align 4, !tbaa !14
  br label %return

if.else.i:                                        ; preds = %if.end
  store i32 0, i32* %length, align 4, !tbaa !14
  %isnull.i = icmp eq i32* %2, null
  br i1 %isnull.i, label %return, label %delete.notnull.i

delete.notnull.i:                                 ; preds = %if.else.i, %if.else.thread.i
  %6 = bitcast i32* %2 to i8*
  tail call void @"\01??_V@YAXPAX@Z"(i8* %6) #18
  br label %return

return:                                           ; preds = %delete.notnull.i, %if.else.i, %if.then4.i, %if.then
  ret %"class.ofw::BigBase"* %this
}

; Function Attrs: nounwind
define x86_thiscallcc dereferenceable(8) %"class.ofw::BigBase"* @"\01??FBigBase@ofw@@QAEAAV01@XZ"(%"class.ofw::BigBase"* returned %this) local_unnamed_addr #4 align 2 {
entry:
  %length = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  %0 = load i32, i32* %length, align 4, !tbaa !14
  %cmp = icmp eq i32 %0, 0
  %blocks.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 0
  %1 = load i32*, i32** %blocks.i, align 4, !tbaa !8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %cmp.i = icmp eq i32* %1, null
  br i1 %cmp.i, label %"\01?init@BigBase@ofw@@AAEXXZ.exit", label %delete.notnull.i

delete.notnull.i:                                 ; preds = %if.then
  %2 = bitcast i32* %1 to i8*
  tail call void @"\01??_V@YAXPAX@Z"(i8* %2) #18
  br label %"\01?init@BigBase@ofw@@AAEXXZ.exit"

"\01?init@BigBase@ofw@@AAEXXZ.exit":              ; preds = %if.then, %delete.notnull.i
  store i32* null, i32** %blocks.i, align 4, !tbaa !8
  store i32 0, i32* %length, align 4, !tbaa !14
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %1, align 4, !tbaa !15
  %sub = add i32 %3, -1
  store i32 %sub, i32* %1, align 4, !tbaa !15
  %4 = load i32, i32* %length, align 4, !tbaa !14
  %i.015.i = add i32 %4, -1
  %cmp16.i = icmp sgt i32 %i.015.i, -1
  br i1 %cmp16.i, label %for.body.i.preheader, label %delete.notnull.i37

for.body.i.preheader:                             ; preds = %if.end
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %i.0.i = add i32 %i.018.i, -1
  %cmp.i36 = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i36, label %for.body.i, label %delete.notnull.i37

for.body.i:                                       ; preds = %for.body.i.preheader, %for.cond.i
  %i.018.i = phi i32 [ %i.0.i, %for.cond.i ], [ %i.015.i, %for.body.i.preheader ]
  %i.0.in17.i = phi i32 [ %i.018.i, %for.cond.i ], [ %4, %for.body.i.preheader ]
  %arrayidx.i = getelementptr inbounds i32, i32* %1, i32 %i.018.i
  %5 = load i32, i32* %arrayidx.i, align 4, !tbaa !15
  %cmp2.i = icmp eq i32 %5, 0
  br i1 %cmp2.i, label %for.cond.i, label %if.then4.i

if.then4.i:                                       ; preds = %for.body.i
  store i32 %i.0.in17.i, i32* %length, align 4, !tbaa !14
  br label %return

delete.notnull.i37:                               ; preds = %for.cond.i, %if.end
  store i32 0, i32* %length, align 4, !tbaa !14
  %6 = bitcast i32* %1 to i8*
  tail call void @"\01??_V@YAXPAX@Z"(i8* %6) #18
  br label %return

return:                                           ; preds = %delete.notnull.i37, %if.then4.i, %"\01?init@BigBase@ofw@@AAEXXZ.exit"
  ret %"class.ofw::BigBase"* %this
}

; Function Attrs: nounwind
define x86_thiscallcc void @"\01?init@BigBase@ofw@@AAEXXZ"(%"class.ofw::BigBase"* nocapture %this) local_unnamed_addr #4 align 2 {
entry:
  %blocks = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 0
  %0 = load i32*, i32** %blocks, align 4, !tbaa !8
  %cmp = icmp eq i32* %0, null
  br i1 %cmp, label %if.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  %1 = bitcast i32* %0 to i8*
  tail call void @"\01??_V@YAXPAX@Z"(i8* %1) #18
  br label %if.end

if.end:                                           ; preds = %entry, %delete.notnull
  store i32* null, i32** %blocks, align 4, !tbaa !8
  %length = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  store i32 0, i32* %length, align 4, !tbaa !14
  ret void
}

define x86_thiscallcc void @"\01??EBigBase@ofw@@QAE?AV01@H@Z"(%"class.ofw::BigBase"* nocapture %this, %"class.ofw::BigBase"* noalias nocapture sret %agg.result, i32) local_unnamed_addr #1 align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %length.i.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  %1 = bitcast %"class.ofw::BigBase"* %agg.result to i64*
  store i64 0, i64* %1, align 4
  %2 = load i32, i32* %length.i.i, align 4, !tbaa !14
  %cmp.i.i = icmp eq i32 %2, 0
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %call.i.i5 = call i8* @"\01??_U@YAPAXI@Z"(i32 4) #17
  %3 = bitcast %"class.ofw::BigBase"* %this to i8**
  store i8* %call.i.i5, i8** %3, align 4, !tbaa !8
  store i32 1, i32* %length.i.i, align 4, !tbaa !14
  %.cast.i = bitcast i8* %call.i.i5 to i32*
  store i32 1, i32* %.cast.i, align 4, !tbaa !15
  br label %nrvo.skipdtor

if.end.i:                                         ; preds = %entry
  %length.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %agg.result, i32 0, i32 1
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 4)
  %5 = extractvalue { i32, i1 } %4, 1
  %6 = extractvalue { i32, i1 } %4, 0
  %7 = select i1 %5, i32 -1, i32 %6
  %call.i.i.i = tail call i8* @"\01??_U@YAPAXI@Z"(i32 %7) #17
  %8 = bitcast %"class.ofw::BigBase"* %agg.result to i8**
  store i8* %call.i.i.i, i8** %8, align 4, !tbaa !8
  store i32 %2, i32* %length.i, align 4, !tbaa !14
  %9 = bitcast %"class.ofw::BigBase"* %this to i8**
  %10 = load i8*, i8** %9, align 4, !tbaa !8
  %mul.i.i = shl i32 %2, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %call.i.i.i, i8* %10, i32 %mul.i.i, i32 4, i1 false)
  %.cast = bitcast i8* %10 to i32*
  %11 = load i32, i32* %.cast, align 4, !tbaa !15
  %add.i = add i32 %11, 1
  store i32 %add.i, i32* %.cast, align 4, !tbaa !15
  %12 = load i32, i32* %length.i.i, align 4, !tbaa !14
  %i.015.i.i = add i32 %12, -1
  %cmp16.i.i = icmp sgt i32 %i.015.i.i, -1
  br i1 %cmp16.i.i, label %for.body.i.i.preheader, label %if.else.i.i

for.body.i.i.preheader:                           ; preds = %if.end.i
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %i.0.i.i = add i32 %i.018.i.i, -1
  %cmp.i.i4 = icmp sgt i32 %i.0.i.i, -1
  br i1 %cmp.i.i4, label %for.body.i.i, label %if.else.thread.i.i

if.else.thread.i.i:                               ; preds = %for.cond.i.i
  store i32 0, i32* %length.i.i, align 4, !tbaa !14
  br label %delete.notnull.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.preheader, %for.cond.i.i
  %i.018.i.i = phi i32 [ %i.0.i.i, %for.cond.i.i ], [ %i.015.i.i, %for.body.i.i.preheader ]
  %i.0.in17.i.i = phi i32 [ %i.018.i.i, %for.cond.i.i ], [ %12, %for.body.i.i.preheader ]
  %arrayidx.i.i = getelementptr inbounds i32, i32* %.cast, i32 %i.018.i.i
  %13 = load i32, i32* %arrayidx.i.i, align 4, !tbaa !15
  %cmp2.i.i = icmp eq i32 %13, 0
  br i1 %cmp2.i.i, label %for.cond.i.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %for.body.i.i
  store i32 %i.0.in17.i.i, i32* %length.i.i, align 4, !tbaa !14
  br label %nrvo.skipdtor

if.else.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %length.i.i, align 4, !tbaa !14
  %isnull.i.i = icmp eq i8* %10, null
  br i1 %isnull.i.i, label %nrvo.skipdtor, label %delete.notnull.i.i

delete.notnull.i.i:                               ; preds = %if.else.i.i, %if.else.thread.i.i
  tail call void @"\01??_V@YAXPAX@Z"(i8* nonnull %10) #18
  br label %nrvo.skipdtor

nrvo.skipdtor:                                    ; preds = %delete.notnull.i.i, %if.else.i.i, %if.then4.i.i, %if.then.i
  ret void
}

define x86_thiscallcc void @"\01??FBigBase@ofw@@QAE?AV01@H@Z"(%"class.ofw::BigBase"* nocapture %this, %"class.ofw::BigBase"* noalias nocapture sret %agg.result, i32) local_unnamed_addr #1 align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %length.i.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  %1 = bitcast %"class.ofw::BigBase"* %agg.result to i64*
  store i64 0, i64* %1, align 4
  %2 = load i32, i32* %length.i.i, align 4, !tbaa !14
  %cmp.i.i = icmp eq i32 %2, 0
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %blocks.i.i5 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 0
  %3 = load i32*, i32** %blocks.i.i5, align 4, !tbaa !8
  %cmp.i.i4 = icmp eq i32* %3, null
  br i1 %cmp.i.i4, label %"\01?init@BigBase@ofw@@AAEXXZ.exit.i", label %delete.notnull.i.i

delete.notnull.i.i:                               ; preds = %if.then.i
  %4 = bitcast i32* %3 to i8*
  tail call void @"\01??_V@YAXPAX@Z"(i8* %4) #18
  br label %"\01?init@BigBase@ofw@@AAEXXZ.exit.i"

"\01?init@BigBase@ofw@@AAEXXZ.exit.i":            ; preds = %delete.notnull.i.i, %if.then.i
  store i32* null, i32** %blocks.i.i5, align 4, !tbaa !8
  store i32 0, i32* %length.i.i, align 4, !tbaa !14
  br label %nrvo.skipdtor

if.end.i:                                         ; preds = %entry
  %length.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %agg.result, i32 0, i32 1
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 4)
  %6 = extractvalue { i32, i1 } %5, 1
  %7 = extractvalue { i32, i1 } %5, 0
  %8 = select i1 %6, i32 -1, i32 %7
  %call.i.i.i = tail call i8* @"\01??_U@YAPAXI@Z"(i32 %8) #17
  %9 = bitcast %"class.ofw::BigBase"* %agg.result to i8**
  store i8* %call.i.i.i, i8** %9, align 4, !tbaa !8
  store i32 %2, i32* %length.i, align 4, !tbaa !14
  %10 = bitcast %"class.ofw::BigBase"* %this to i8**
  %11 = load i8*, i8** %10, align 4, !tbaa !8
  %mul.i.i = shl i32 %2, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %call.i.i.i, i8* %11, i32 %mul.i.i, i32 4, i1 false)
  %.cast = bitcast i8* %11 to i32*
  %12 = load i32, i32* %.cast, align 4, !tbaa !15
  %sub.i = add i32 %12, -1
  store i32 %sub.i, i32* %.cast, align 4, !tbaa !15
  %13 = load i32, i32* %length.i.i, align 4, !tbaa !14
  %i.015.i.i = add i32 %13, -1
  %cmp16.i.i = icmp sgt i32 %i.015.i.i, -1
  br i1 %cmp16.i.i, label %for.body.i.i.preheader, label %delete.notnull.i37.i

for.body.i.i.preheader:                           ; preds = %if.end.i
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %i.0.i.i = add i32 %i.018.i.i, -1
  %cmp.i36.i = icmp sgt i32 %i.0.i.i, -1
  br i1 %cmp.i36.i, label %for.body.i.i, label %delete.notnull.i37.i

for.body.i.i:                                     ; preds = %for.body.i.i.preheader, %for.cond.i.i
  %i.018.i.i = phi i32 [ %i.0.i.i, %for.cond.i.i ], [ %i.015.i.i, %for.body.i.i.preheader ]
  %i.0.in17.i.i = phi i32 [ %i.018.i.i, %for.cond.i.i ], [ %13, %for.body.i.i.preheader ]
  %arrayidx.i.i = getelementptr inbounds i32, i32* %.cast, i32 %i.018.i.i
  %14 = load i32, i32* %arrayidx.i.i, align 4, !tbaa !15
  %cmp2.i.i = icmp eq i32 %14, 0
  br i1 %cmp2.i.i, label %for.cond.i.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %for.body.i.i
  store i32 %i.0.in17.i.i, i32* %length.i.i, align 4, !tbaa !14
  br label %nrvo.skipdtor

delete.notnull.i37.i:                             ; preds = %for.cond.i.i, %if.end.i
  store i32 0, i32* %length.i.i, align 4, !tbaa !14
  tail call void @"\01??_V@YAXPAX@Z"(i8* %11) #18
  br label %nrvo.skipdtor

nrvo.skipdtor:                                    ; preds = %delete.notnull.i37.i, %if.then4.i.i, %"\01?init@BigBase@ofw@@AAEXXZ.exit.i"
  ret void
}

define x86_thiscallcc dereferenceable(8) %"class.ofw::BigBase"* @"\01??YBigBase@ofw@@QAEAAV01@ABV01@@Z"(%"class.ofw::BigBase"* returned %this, %"class.ofw::BigBase"* nocapture readonly dereferenceable(8) %integer) local_unnamed_addr #1 align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %ref.tmp = alloca %"class.ofw::BigBase", align 4
  %length = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  %0 = load i32, i32* %length, align 4, !tbaa !14
  %length2 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %integer, i32 0, i32 1
  %1 = load i32, i32* %length2, align 4, !tbaa !14
  %cmp = icmp ult i32 %0, %1
  %cmp4 = icmp eq i32 %0, 0
  %or.cond = or i1 %cmp4, %cmp
  %cmp42 = icmp eq i32 %1, 0
  br i1 %or.cond, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp42, label %for.end.if.end_crit_edge, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.then
  %blocks = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 0
  %2 = load i32*, i32** %blocks, align 4, !tbaa !8
  %blocks7 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %integer, i32 0, i32 0
  %3 = load i32*, i32** %blocks7, align 4, !tbaa !8
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %carry.084 = phi i32 [ 0, %for.body.lr.ph ], [ %conv15, %for.body ]
  %i.083 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %arrayidx = getelementptr inbounds i32, i32* %2, i32 %i.083
  %4 = load i32, i32* %arrayidx, align 4, !tbaa !15
  %conv = zext i32 %4 to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %3, i32 %i.083
  %5 = load i32, i32* %arrayidx8, align 4, !tbaa !15
  %conv9 = zext i32 %5 to i64
  %conv10 = zext i32 %carry.084 to i64
  %add = add nuw nsw i64 %conv, %conv10
  %add11 = add nuw nsw i64 %add, %conv9
  %conv12 = trunc i64 %add11 to i32
  store i32 %conv12, i32* %arrayidx, align 4, !tbaa !15
  %shr = lshr i64 %add11, 32
  %conv15 = trunc i64 %shr to i32
  %inc = add nuw nsw i32 %i.083, 1
  %6 = load i32, i32* %length2, align 4, !tbaa !14
  %cmp6 = icmp ult i32 %inc, %6
  br i1 %cmp6, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  %tobool79 = icmp eq i32 %conv15, 0
  br i1 %tobool79, label %for.end.if.end_crit_edge, label %land.rhs.lr.ph

for.end.if.end_crit_edge:                         ; preds = %if.then, %for.end
  %blocks.i70.phi.trans.insert = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 0
  %.pre = load i32*, i32** %blocks.i70.phi.trans.insert, align 4, !tbaa !8
  br label %if.end

land.rhs.lr.ph:                                   ; preds = %for.end
  %blocks21 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 0
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.body19
  %carry.181 = phi i32 [ %conv15, %land.rhs.lr.ph ], [ %conv30, %for.body19 ]
  %i.180 = phi i32 [ %inc, %land.rhs.lr.ph ], [ %inc32, %for.body19 ]
  %7 = load i32, i32* %length, align 4, !tbaa !14
  %cmp18 = icmp ult i32 %i.180, %7
  br i1 %cmp18, label %for.body19, label %if.then35

for.body19:                                       ; preds = %land.rhs
  %8 = load i32*, i32** %blocks21, align 4, !tbaa !8
  %arrayidx22 = getelementptr inbounds i32, i32* %8, i32 %i.180
  %9 = load i32, i32* %arrayidx22, align 4, !tbaa !15
  %conv23 = zext i32 %9 to i64
  %conv24 = zext i32 %carry.181 to i64
  %add25 = add nuw nsw i64 %conv23, %conv24
  %conv26 = trunc i64 %add25 to i32
  store i32 %conv26, i32* %arrayidx22, align 4, !tbaa !15
  %shr29 = lshr i64 %add25, 32
  %conv30 = trunc i64 %shr29 to i32
  %inc32 = add nsw i32 %i.180, 1
  %tobool = icmp eq i32 %conv30, 0
  br i1 %tobool, label %if.end, label %land.rhs

if.then35:                                        ; preds = %land.rhs
  %add37 = add i32 %7, 1
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add37, i32 4)
  %11 = extractvalue { i32, i1 } %10, 1
  %12 = extractvalue { i32, i1 } %10, 0
  %13 = select i1 %11, i32 -1, i32 %12
  %call.i = tail call i8* @"\01??_U@YAPAXI@Z"(i32 %13) #17
  %mul.i = shl i32 %add37, 2
  tail call void @llvm.memset.p0i8.i32(i8* nonnull %call.i, i8 0, i32 %mul.i, i32 4, i1 false)
  %14 = bitcast %"class.ofw::BigBase"* %this to i8**
  %15 = load i8*, i8** %14, align 4, !tbaa !8
  %mul2.i = shl i32 %7, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %call.i, i8* %15, i32 %mul2.i, i32 4, i1 false)
  %isnull.i67 = icmp eq i8* %15, null
  br i1 %isnull.i67, label %"\01?reallocate@BigBase@ofw@@AAEXI@Z.exit", label %delete.notnull.i68

delete.notnull.i68:                               ; preds = %if.then35
  tail call void @"\01??_V@YAXPAX@Z"(i8* nonnull %15) #18
  br label %"\01?reallocate@BigBase@ofw@@AAEXI@Z.exit"

"\01?reallocate@BigBase@ofw@@AAEXI@Z.exit":       ; preds = %if.then35, %delete.notnull.i68
  store i8* %call.i, i8** %14, align 4, !tbaa !8
  store i32 %add37, i32* %length, align 4, !tbaa !14
  %.cast = bitcast i8* %call.i to i32*
  %arrayidx40 = getelementptr inbounds i32, i32* %.cast, i32 %7
  store i32 1, i32* %arrayidx40, align 4, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %for.body19, %for.end.if.end_crit_edge, %"\01?reallocate@BigBase@ofw@@AAEXI@Z.exit"
  %16 = phi i32* [ %.pre, %for.end.if.end_crit_edge ], [ %.cast, %"\01?reallocate@BigBase@ofw@@AAEXI@Z.exit" ], [ %8, %for.body19 ]
  %17 = load i32, i32* %length, align 4, !tbaa !14
  %i.015.i = add i32 %17, -1
  %cmp16.i = icmp sgt i32 %i.015.i, -1
  br i1 %cmp16.i, label %for.body.i.preheader, label %if.else.i

for.body.i.preheader:                             ; preds = %if.end
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %i.0.i = add i32 %i.018.i, -1
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %for.body.i, label %if.else.thread.i

if.else.thread.i:                                 ; preds = %for.cond.i
  store i32 0, i32* %length, align 4, !tbaa !14
  br label %delete.notnull.i72

for.body.i:                                       ; preds = %for.body.i.preheader, %for.cond.i
  %i.018.i = phi i32 [ %i.0.i, %for.cond.i ], [ %i.015.i, %for.body.i.preheader ]
  %i.0.in17.i = phi i32 [ %i.018.i, %for.cond.i ], [ %17, %for.body.i.preheader ]
  %arrayidx.i = getelementptr inbounds i32, i32* %16, i32 %i.018.i
  %18 = load i32, i32* %arrayidx.i, align 4, !tbaa !15
  %cmp2.i = icmp eq i32 %18, 0
  br i1 %cmp2.i, label %for.cond.i, label %if.then4.i

if.then4.i:                                       ; preds = %for.body.i
  store i32 %i.0.in17.i, i32* %length, align 4, !tbaa !14
  br label %return

if.else.i:                                        ; preds = %if.end
  store i32 0, i32* %length, align 4, !tbaa !14
  %isnull.i71 = icmp eq i32* %16, null
  br i1 %isnull.i71, label %return, label %delete.notnull.i72

delete.notnull.i72:                               ; preds = %if.else.i, %if.else.thread.i
  %19 = bitcast i32* %16 to i8*
  tail call void @"\01??_V@YAXPAX@Z"(i8* %19) #18
  br label %return

if.else:                                          ; preds = %entry
  br i1 %cmp42, label %return, label %if.then43

if.then43:                                        ; preds = %if.else
  %20 = bitcast %"class.ofw::BigBase"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %20) #2
  call x86_thiscallcc void @"\01??HBigBase@ofw@@QBE?AV01@ABV01@@Z"(%"class.ofw::BigBase"* nonnull %integer, %"class.ofw::BigBase"* nonnull sret %ref.tmp, %"class.ofw::BigBase"* nonnull dereferenceable(8) %this)
  %blocks.i.i.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 0
  %21 = load i32*, i32** %blocks.i.i.i, align 4, !tbaa !8
  %cmp.i.i.i = icmp eq i32* %21, null
  br i1 %cmp.i.i.i, label %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i", label %delete.notnull.i.i.i

delete.notnull.i.i.i:                             ; preds = %if.then43
  %22 = bitcast i32* %21 to i8*
  tail call void @"\01??_V@YAXPAX@Z"(i8* %22) #18
  br label %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i"

"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i":          ; preds = %delete.notnull.i.i.i, %if.then43
  store i32* null, i32** %blocks.i.i.i, align 4, !tbaa !8
  store i32 0, i32* %length, align 4, !tbaa !14
  %length.i.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %ref.tmp, i32 0, i32 1
  %23 = load i32, i32* %length.i.i, align 4, !tbaa !14
  %cmp.i.i = icmp eq i32 %23, 0
  br i1 %cmp.i.i, label %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i.invoke.cont_crit_edge", label %if.then.i.i

"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i.invoke.cont_crit_edge": ; preds = %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i"
  %blocks.i73.phi.trans.insert = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %ref.tmp, i32 0, i32 0
  %.pre88 = load i32*, i32** %blocks.i73.phi.trans.insert, align 4, !tbaa !8
  %24 = bitcast i32* %.pre88 to i8*
  br label %invoke.cont

if.then.i.i:                                      ; preds = %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i"
  %25 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %23, i32 4)
  %26 = extractvalue { i32, i1 } %25, 1
  %27 = extractvalue { i32, i1 } %25, 0
  %28 = select i1 %26, i32 -1, i32 %27
  %call.i.i.i77 = invoke i8* @"\01??_U@YAPAXI@Z"(i32 %28) #17
          to label %call.i.i.i.noexc unwind label %ehcleanup

call.i.i.i.noexc:                                 ; preds = %if.then.i.i
  %29 = bitcast %"class.ofw::BigBase"* %this to i8**
  store i8* %call.i.i.i77, i8** %29, align 4, !tbaa !8
  store i32 %23, i32* %length, align 4, !tbaa !14
  %30 = bitcast %"class.ofw::BigBase"* %ref.tmp to i8**
  %31 = load i8*, i8** %30, align 4, !tbaa !8
  %mul.i.i = shl i32 %23, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %call.i.i.i77, i8* %31, i32 %mul.i.i, i32 4, i1 false)
  %32 = bitcast i8* %31 to i32*
  br label %invoke.cont

invoke.cont:                                      ; preds = %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i.invoke.cont_crit_edge", %call.i.i.i.noexc
  %33 = phi i8* [ %24, %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i.invoke.cont_crit_edge" ], [ %31, %call.i.i.i.noexc ]
  %34 = phi i32* [ %.pre88, %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i.invoke.cont_crit_edge" ], [ %32, %call.i.i.i.noexc ]
  %isnull.i74 = icmp eq i32* %34, null
  br i1 %isnull.i74, label %"\01??1BigBase@ofw@@QAE@XZ.exit76", label %delete.notnull.i75

delete.notnull.i75:                               ; preds = %invoke.cont
  tail call void @"\01??_V@YAXPAX@Z"(i8* %33) #18
  br label %"\01??1BigBase@ofw@@QAE@XZ.exit76"

"\01??1BigBase@ofw@@QAE@XZ.exit76":               ; preds = %invoke.cont, %delete.notnull.i75
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #2
  br label %return

ehcleanup:                                        ; preds = %if.then.i.i
  %35 = cleanuppad within none []
  %blocks.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %ref.tmp, i32 0, i32 0
  %36 = load i32*, i32** %blocks.i, align 4, !tbaa !8
  %isnull.i = icmp eq i32* %36, null
  br i1 %isnull.i, label %"\01??1BigBase@ofw@@QAE@XZ.exit", label %delete.notnull.i

delete.notnull.i:                                 ; preds = %ehcleanup
  %37 = bitcast i32* %36 to i8*
  call void @"\01??_V@YAXPAX@Z"(i8* %37) #18 [ "funclet"(token %35) ]
  br label %"\01??1BigBase@ofw@@QAE@XZ.exit"

"\01??1BigBase@ofw@@QAE@XZ.exit":                 ; preds = %ehcleanup, %delete.notnull.i
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #2
  cleanupret from %35 unwind to caller

return:                                           ; preds = %delete.notnull.i72, %if.else.i, %if.then4.i, %if.else, %"\01??1BigBase@ofw@@QAE@XZ.exit76"
  ret %"class.ofw::BigBase"* %this
}

define x86_thiscallcc void @"\01??HBigBase@ofw@@QBE?AV01@ABV01@@Z"(%"class.ofw::BigBase"* nocapture readonly %this, %"class.ofw::BigBase"* noalias nocapture sret %agg.result, %"class.ofw::BigBase"* dereferenceable(8) %integer) local_unnamed_addr #1 align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %tmp = alloca i64, align 4
  %tmpcast = bitcast i64* %tmp to %"class.ofw::BigBase"*
  %0 = bitcast i64* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #2
  %length.i.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  store i64 0, i64* %tmp, align 4
  %1 = load i32, i32* %length.i.i, align 4, !tbaa !14
  %cmp.i.i = icmp eq i32 %1, 0
  br i1 %cmp.i.i, label %"\01??0BigBase@ofw@@QAE@ABV01@@Z.exit", label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  %length.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %tmpcast, i32 0, i32 1
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4)
  %3 = extractvalue { i32, i1 } %2, 1
  %4 = extractvalue { i32, i1 } %2, 0
  %5 = select i1 %3, i32 -1, i32 %4
  %call.i.i.i = tail call i8* @"\01??_U@YAPAXI@Z"(i32 %5) #17
  %6 = bitcast i64* %tmp to i8**
  store i8* %call.i.i.i, i8** %6, align 4, !tbaa !8
  store i32 %1, i32* %length.i, align 4, !tbaa !14
  %7 = bitcast %"class.ofw::BigBase"* %this to i8**
  %8 = load i8*, i8** %7, align 4, !tbaa !8
  %mul.i.i = shl i32 %1, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %call.i.i.i, i8* %8, i32 %mul.i.i, i32 4, i1 false)
  br label %"\01??0BigBase@ofw@@QAE@ABV01@@Z.exit"

"\01??0BigBase@ofw@@QAE@ABV01@@Z.exit":           ; preds = %entry, %if.then.i.i
  %call2 = invoke x86_thiscallcc dereferenceable(8) %"class.ofw::BigBase"* @"\01??YBigBase@ofw@@QAEAAV01@ABV01@@Z"(%"class.ofw::BigBase"* nonnull %tmpcast, %"class.ofw::BigBase"* nonnull dereferenceable(8) %integer)
          to label %invoke.cont unwind label %ehcleanup

invoke.cont:                                      ; preds = %"\01??0BigBase@ofw@@QAE@ABV01@@Z.exit"
  %length.i.i6 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %call2, i32 0, i32 1
  %9 = bitcast %"class.ofw::BigBase"* %agg.result to i64*
  store i64 0, i64* %9, align 4
  %10 = load i32, i32* %length.i.i6, align 4, !tbaa !14
  %cmp.i.i7 = icmp eq i32 %10, 0
  br i1 %cmp.i.i7, label %invoke.cont.invoke.cont3_crit_edge, label %if.then.i.i11

invoke.cont.invoke.cont3_crit_edge:               ; preds = %invoke.cont
  %blocks.i.phi.trans.insert = bitcast i64* %tmp to i32**
  %.pre = load i32*, i32** %blocks.i.phi.trans.insert, align 4, !tbaa !8
  %11 = bitcast i32* %.pre to i8*
  br label %invoke.cont3

if.then.i.i11:                                    ; preds = %invoke.cont
  %12 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %10, i32 4)
  %13 = extractvalue { i32, i1 } %12, 1
  %14 = extractvalue { i32, i1 } %12, 0
  %15 = select i1 %13, i32 -1, i32 %14
  %call.i.i.i912 = invoke i8* @"\01??_U@YAPAXI@Z"(i32 %15) #17
          to label %call.i.i.i9.noexc unwind label %ehcleanup

call.i.i.i9.noexc:                                ; preds = %if.then.i.i11
  %length.i8 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %agg.result, i32 0, i32 1
  %16 = bitcast %"class.ofw::BigBase"* %agg.result to i8**
  store i8* %call.i.i.i912, i8** %16, align 4, !tbaa !8
  store i32 %10, i32* %length.i8, align 4, !tbaa !14
  %17 = bitcast %"class.ofw::BigBase"* %call2 to i8**
  %18 = load i8*, i8** %17, align 4, !tbaa !8
  %mul.i.i10 = shl i32 %10, 2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %call.i.i.i912, i8* %18, i32 %mul.i.i10, i32 4, i1 false)
  %19 = bitcast i8* %18 to i32*
  br label %invoke.cont3

invoke.cont3:                                     ; preds = %invoke.cont.invoke.cont3_crit_edge, %call.i.i.i9.noexc
  %20 = phi i8* [ %11, %invoke.cont.invoke.cont3_crit_edge ], [ %18, %call.i.i.i9.noexc ]
  %21 = phi i32* [ %.pre, %invoke.cont.invoke.cont3_crit_edge ], [ %19, %call.i.i.i9.noexc ]
  %isnull.i = icmp eq i32* %21, null
  br i1 %isnull.i, label %"\01??1BigBase@ofw@@QAE@XZ.exit", label %delete.notnull.i

delete.notnull.i:                                 ; preds = %invoke.cont3
  call void @"\01??_V@YAXPAX@Z"(i8* %20) #18
  br label %"\01??1BigBase@ofw@@QAE@XZ.exit"

"\01??1BigBase@ofw@@QAE@XZ.exit":                 ; preds = %invoke.cont3, %delete.notnull.i
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #2
  ret void

ehcleanup:                                        ; preds = %if.then.i.i11, %"\01??0BigBase@ofw@@QAE@ABV01@@Z.exit"
  %22 = cleanuppad within none []
  %blocks.i14 = bitcast i64* %tmp to i32**
  %23 = load i32*, i32** %blocks.i14, align 4, !tbaa !8
  %isnull.i15 = icmp eq i32* %23, null
  br i1 %isnull.i15, label %"\01??1BigBase@ofw@@QAE@XZ.exit17", label %delete.notnull.i16

delete.notnull.i16:                               ; preds = %ehcleanup
  %24 = bitcast i32* %23 to i8*
  call void @"\01??_V@YAXPAX@Z"(i8* %24) #18 [ "funclet"(token %22) ]
  br label %"\01??1BigBase@ofw@@QAE@XZ.exit17"

"\01??1BigBase@ofw@@QAE@XZ.exit17":               ; preds = %ehcleanup, %delete.notnull.i16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #2
  cleanupret from %22 unwind to caller
}

; Function Attrs: nounwind
define x86_thiscallcc dereferenceable(8) %"class.ofw::BigBase"* @"\01??ZBigBase@ofw@@QAEAAV01@ABV01@@Z"(%"class.ofw::BigBase"* returned %this, %"class.ofw::BigBase"* nocapture readonly dereferenceable(8) %integer) local_unnamed_addr #4 align 2 {
entry:
  %length = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  %0 = load i32, i32* %length, align 4, !tbaa !14
  %length2 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %integer, i32 0, i32 1
  %1 = load i32, i32* %length2, align 4, !tbaa !14
  %cmp = icmp ult i32 %0, %1
  %cmp4 = icmp eq i32 %0, 0
  %or.cond = or i1 %cmp4, %cmp
  br i1 %or.cond, label %if.else37, label %if.then

if.then:                                          ; preds = %entry
  %cmp672 = icmp eq i32 %1, 0
  br i1 %cmp672, label %if.else, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.then
  %blocks = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 0
  %2 = load i32*, i32** %blocks, align 4, !tbaa !8
  %blocks7 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %integer, i32 0, i32 0
  %3 = load i32*, i32** %blocks7, align 4, !tbaa !8
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %borrow.074 = phi i32 [ 0, %for.body.lr.ph ], [ %and, %for.body ]
  %i.073 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %arrayidx = getelementptr inbounds i32, i32* %2, i32 %i.073
  %4 = load i32, i32* %arrayidx, align 4, !tbaa !15
  %conv = zext i32 %4 to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %3, i32 %i.073
  %5 = load i32, i32* %arrayidx8, align 4, !tbaa !15
  %conv9 = zext i32 %5 to i64
  %sub = sub nsw i64 %conv, %conv9
  %conv10 = zext i32 %borrow.074 to i64
  %sub11 = sub nsw i64 %sub, %conv10
  %conv12 = trunc i64 %sub11 to i32
  store i32 %conv12, i32* %arrayidx, align 4, !tbaa !15
  %shr = lshr i64 %sub11, 32
  %conv15 = trunc i64 %shr to i32
  %and = and i32 %conv15, 1
  %inc = add nuw nsw i32 %i.073, 1
  %6 = load i32, i32* %length2, align 4, !tbaa !14
  %cmp6 = icmp ult i32 %inc, %6
  br i1 %cmp6, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  %.pre = load i32, i32* %length, align 4, !tbaa !14
  %cmp1867 = icmp ult i32 %inc, %.pre
  %tobool68 = icmp ne i32 %and, 0
  %7 = and i1 %tobool68, %cmp1867
  br i1 %7, label %for.body19.lr.ph, label %for.end34

for.body19.lr.ph:                                 ; preds = %for.end
  %blocks21 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 0
  %8 = load i32*, i32** %blocks21, align 4, !tbaa !8
  br label %for.body19

for.body19:                                       ; preds = %for.body19.lr.ph, %for.body19
  %i.169 = phi i32 [ %inc, %for.body19.lr.ph ], [ %inc33, %for.body19 ]
  %arrayidx22 = getelementptr inbounds i32, i32* %8, i32 %i.169
  %9 = load i32, i32* %arrayidx22, align 4, !tbaa !15
  %conv23 = zext i32 %9 to i64
  %sub25 = add nsw i64 %conv23, -1
  %conv26 = trunc i64 %sub25 to i32
  store i32 %conv26, i32* %arrayidx22, align 4, !tbaa !15
  %inc33 = add nsw i32 %i.169, 1
  %10 = load i32, i32* %length, align 4, !tbaa !14
  %cmp18 = icmp ult i32 %inc33, %10
  %and3186 = and i64 %sub25, 4294967296
  %tobool = icmp ne i64 %and3186, 0
  %11 = and i1 %tobool, %cmp18
  br i1 %11, label %for.body19, label %for.end34

for.end34:                                        ; preds = %for.body19, %for.end
  %.lcssa = phi i32 [ %.pre, %for.end ], [ %10, %for.body19 ]
  %tobool.lcssa = phi i1 [ %tobool68, %for.end ], [ %tobool, %for.body19 ]
  br i1 %tobool.lcssa, label %if.then36, label %if.else

if.then36:                                        ; preds = %for.end34
  %blocks.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 0
  %12 = load i32*, i32** %blocks.i, align 4, !tbaa !8
  %cmp.i = icmp eq i32* %12, null
  br i1 %cmp.i, label %"\01?init@BigBase@ofw@@AAEXXZ.exit", label %delete.notnull.i

delete.notnull.i:                                 ; preds = %if.then36
  %13 = bitcast i32* %12 to i8*
  tail call void @"\01??_V@YAXPAX@Z"(i8* %13) #18
  br label %"\01?init@BigBase@ofw@@AAEXXZ.exit"

"\01?init@BigBase@ofw@@AAEXXZ.exit":              ; preds = %if.then36, %delete.notnull.i
  store i32* null, i32** %blocks.i, align 4, !tbaa !8
  store i32 0, i32* %length, align 4, !tbaa !14
  br label %return

if.else:                                          ; preds = %if.then, %for.end34
  %.lcssa82 = phi i32 [ %.lcssa, %for.end34 ], [ %0, %if.then ]
  %i.015.i = add i32 %.lcssa82, -1
  %cmp16.i = icmp sgt i32 %i.015.i, -1
  %blocks.i58 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 0
  %14 = load i32*, i32** %blocks.i58, align 4, !tbaa !8
  br i1 %cmp16.i, label %for.body.i.preheader, label %if.else.i

for.body.i.preheader:                             ; preds = %if.else
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %i.0.i = add i32 %i.018.i, -1
  %cmp.i59 = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i59, label %for.body.i, label %if.else.thread.i

if.else.thread.i:                                 ; preds = %for.cond.i
  store i32 0, i32* %length, align 4, !tbaa !14
  br label %delete.notnull.i60

for.body.i:                                       ; preds = %for.body.i.preheader, %for.cond.i
  %i.018.i = phi i32 [ %i.0.i, %for.cond.i ], [ %i.015.i, %for.body.i.preheader ]
  %i.0.in17.i = phi i32 [ %i.018.i, %for.cond.i ], [ %.lcssa82, %for.body.i.preheader ]
  %arrayidx.i = getelementptr inbounds i32, i32* %14, i32 %i.018.i
  %15 = load i32, i32* %arrayidx.i, align 4, !tbaa !15
  %cmp2.i = icmp eq i32 %15, 0
  br i1 %cmp2.i, label %for.cond.i, label %if.then4.i

if.then4.i:                                       ; preds = %for.body.i
  store i32 %i.0.in17.i, i32* %length, align 4, !tbaa !14
  br label %return

if.else.i:                                        ; preds = %if.else
  store i32 0, i32* %length, align 4, !tbaa !14
  %isnull.i = icmp eq i32* %14, null
  br i1 %isnull.i, label %return, label %delete.notnull.i60

delete.notnull.i60:                               ; preds = %if.else.i, %if.else.thread.i
  %16 = bitcast i32* %14 to i8*
  tail call void @"\01??_V@YAXPAX@Z"(i8* %16) #18
  br label %return

if.else37:                                        ; preds = %entry
  %blocks.i61 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 0
  %17 = load i32*, i32** %blocks.i61, align 4, !tbaa !8
  %cmp.i62 = icmp eq i32* %17, null
  br i1 %cmp.i62, label %"\01?init@BigBase@ofw@@AAEXXZ.exit65", label %delete.notnull.i63

delete.notnull.i63:                               ; preds = %if.else37
  %18 = bitcast i32* %17 to i8*
  tail call void @"\01??_V@YAXPAX@Z"(i8* %18) #18
  br label %"\01?init@BigBase@ofw@@AAEXXZ.exit65"

"\01?init@BigBase@ofw@@AAEXXZ.exit65":            ; preds = %if.else37, %delete.notnull.i63
  store i32* null, i32** %blocks.i61, align 4, !tbaa !8
  store i32 0, i32* %length, align 4, !tbaa !14
  br label %return

return:                                           ; preds = %delete.notnull.i60, %if.else.i, %if.then4.i, %"\01?init@BigBase@ofw@@AAEXXZ.exit", %"\01?init@BigBase@ofw@@AAEXXZ.exit65"
  ret %"class.ofw::BigBase"* %this
}

define x86_thiscallcc void @"\01??GBigBase@ofw@@QBE?AV01@ABV01@@Z"(%"class.ofw::BigBase"* nocapture readonly %this, %"class.ofw::BigBase"* noalias nocapture sret %agg.result, %"class.ofw::BigBase"* nocapture readonly dereferenceable(8) %integer) local_unnamed_addr #1 align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %tmp = alloca i64, align 4
  %tmpcast = bitcast i64* %tmp to %"class.ofw::BigBase"*
  %0 = bitcast i64* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #2
  %length.i.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  store i64 0, i64* %tmp, align 4
  %1 = load i32, i32* %length.i.i, align 4, !tbaa !14
  %cmp.i.i = icmp eq i32 %1, 0
  br i1 %cmp.i.i, label %invoke.cont, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  %length.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %tmpcast, i32 0, i32 1
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4)
  %3 = extractvalue { i32, i1 } %2, 1
  %4 = extractvalue { i32, i1 } %2, 0
  %5 = select i1 %3, i32 -1, i32 %4
  %call.i.i.i = tail call i8* @"\01??_U@YAPAXI@Z"(i32 %5) #17
  %6 = bitcast i64* %tmp to i8**
  store i8* %call.i.i.i, i8** %6, align 4, !tbaa !8
  store i32 %1, i32* %length.i, align 4, !tbaa !14
  %7 = bitcast %"class.ofw::BigBase"* %this to i8**
  %8 = load i8*, i8** %7, align 4, !tbaa !8
  %mul.i.i = shl i32 %1, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %call.i.i.i, i8* %8, i32 %mul.i.i, i32 4, i1 false)
  br label %invoke.cont

invoke.cont:                                      ; preds = %if.then.i.i, %entry
  %call2 = call x86_thiscallcc dereferenceable(8) %"class.ofw::BigBase"* @"\01??ZBigBase@ofw@@QAEAAV01@ABV01@@Z"(%"class.ofw::BigBase"* nonnull %tmpcast, %"class.ofw::BigBase"* nonnull dereferenceable(8) %integer)
  %length.i.i6 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %call2, i32 0, i32 1
  %9 = bitcast %"class.ofw::BigBase"* %agg.result to i64*
  store i64 0, i64* %9, align 4
  %10 = load i32, i32* %length.i.i6, align 4, !tbaa !14
  %cmp.i.i7 = icmp eq i32 %10, 0
  br i1 %cmp.i.i7, label %invoke.cont.invoke.cont3_crit_edge, label %if.then.i.i11

invoke.cont.invoke.cont3_crit_edge:               ; preds = %invoke.cont
  %blocks.i.phi.trans.insert = bitcast i64* %tmp to i32**
  %.pre = load i32*, i32** %blocks.i.phi.trans.insert, align 4, !tbaa !8
  %11 = bitcast i32* %.pre to i8*
  br label %invoke.cont3

if.then.i.i11:                                    ; preds = %invoke.cont
  %12 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %10, i32 4)
  %13 = extractvalue { i32, i1 } %12, 1
  %14 = extractvalue { i32, i1 } %12, 0
  %15 = select i1 %13, i32 -1, i32 %14
  %call.i.i.i912 = invoke i8* @"\01??_U@YAPAXI@Z"(i32 %15) #17
          to label %call.i.i.i9.noexc unwind label %ehcleanup

call.i.i.i9.noexc:                                ; preds = %if.then.i.i11
  %length.i8 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %agg.result, i32 0, i32 1
  %16 = bitcast %"class.ofw::BigBase"* %agg.result to i8**
  store i8* %call.i.i.i912, i8** %16, align 4, !tbaa !8
  store i32 %10, i32* %length.i8, align 4, !tbaa !14
  %17 = bitcast %"class.ofw::BigBase"* %call2 to i8**
  %18 = load i8*, i8** %17, align 4, !tbaa !8
  %mul.i.i10 = shl i32 %10, 2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %call.i.i.i912, i8* %18, i32 %mul.i.i10, i32 4, i1 false)
  %19 = bitcast i8* %18 to i32*
  br label %invoke.cont3

invoke.cont3:                                     ; preds = %invoke.cont.invoke.cont3_crit_edge, %call.i.i.i9.noexc
  %20 = phi i8* [ %11, %invoke.cont.invoke.cont3_crit_edge ], [ %18, %call.i.i.i9.noexc ]
  %21 = phi i32* [ %.pre, %invoke.cont.invoke.cont3_crit_edge ], [ %19, %call.i.i.i9.noexc ]
  %isnull.i = icmp eq i32* %21, null
  br i1 %isnull.i, label %"\01??1BigBase@ofw@@QAE@XZ.exit", label %delete.notnull.i

delete.notnull.i:                                 ; preds = %invoke.cont3
  call void @"\01??_V@YAXPAX@Z"(i8* %20) #18
  br label %"\01??1BigBase@ofw@@QAE@XZ.exit"

"\01??1BigBase@ofw@@QAE@XZ.exit":                 ; preds = %invoke.cont3, %delete.notnull.i
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #2
  ret void

ehcleanup:                                        ; preds = %if.then.i.i11
  %22 = cleanuppad within none []
  %blocks.i14 = bitcast i64* %tmp to i32**
  %23 = load i32*, i32** %blocks.i14, align 4, !tbaa !8
  %isnull.i15 = icmp eq i32* %23, null
  br i1 %isnull.i15, label %"\01??1BigBase@ofw@@QAE@XZ.exit17", label %delete.notnull.i16

delete.notnull.i16:                               ; preds = %ehcleanup
  %24 = bitcast i32* %23 to i8*
  call void @"\01??_V@YAXPAX@Z"(i8* %24) #18 [ "funclet"(token %22) ]
  br label %"\01??1BigBase@ofw@@QAE@XZ.exit17"

"\01??1BigBase@ofw@@QAE@XZ.exit17":               ; preds = %ehcleanup, %delete.notnull.i16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #2
  cleanupret from %22 unwind to caller
}

define x86_thiscallcc dereferenceable(8) %"class.ofw::BigBase"* @"\01??XBigBase@ofw@@QAEAAV01@ABV01@@Z"(%"class.ofw::BigBase"* returned %this, %"class.ofw::BigBase"* nocapture readonly dereferenceable(8) %integer) local_unnamed_addr #1 align 2 {
entry:
  %length = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  %0 = load i32, i32* %length, align 4, !tbaa !14
  %length2 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %integer, i32 0, i32 1
  %1 = load i32, i32* %length2, align 4, !tbaa !14
  %add3 = add i32 %1, %0
  %add4 = add i32 %add3, 2
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add4, i32 4)
  %3 = extractvalue { i32, i1 } %2, 1
  %4 = extractvalue { i32, i1 } %2, 0
  %5 = select i1 %3, i32 -1, i32 %4
  %call = tail call i8* @"\01??_U@YAPAXI@Z"(i32 %5) #17
  %6 = bitcast i8* %call to i32*
  %mul = shl i32 %add4, 2
  tail call void @llvm.memset.p0i8.i32(i8* nonnull %call, i8 0, i32 %mul, i32 4, i1 false)
  %cmp92 = icmp eq i32 %0, 0
  br i1 %cmp92, label %entry.for.cond.cleanup_crit_edge, label %for.body.lr.ph

entry.for.cond.cleanup_crit_edge:                 ; preds = %entry
  %.pre = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 0
  br label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %cmp884 = icmp eq i32 %1, 0
  %blocks = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 0
  %blocks11 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %integer, i32 0, i32 0
  %7 = load i32*, i32** %blocks11, align 4
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.end38, %entry.for.cond.cleanup_crit_edge
  %blocks.i.pre-phi = phi i32** [ %.pre, %entry.for.cond.cleanup_crit_edge ], [ %blocks, %for.end38 ]
  %8 = load i32*, i32** %blocks.i.pre-phi, align 4, !tbaa !8
  %cmp.i = icmp eq i32* %8, null
  br i1 %cmp.i, label %"\01?safe_allocate@BigBase@ofw@@AAEXI@Z.exit", label %delete.notnull.i

delete.notnull.i:                                 ; preds = %for.cond.cleanup
  %9 = bitcast i32* %8 to i8*
  tail call void @"\01??_V@YAXPAX@Z"(i8* %9) #18
  br label %"\01?safe_allocate@BigBase@ofw@@AAEXI@Z.exit"

"\01?safe_allocate@BigBase@ofw@@AAEXI@Z.exit":    ; preds = %for.cond.cleanup, %delete.notnull.i
  %call.i = tail call i8* @"\01??_U@YAPAXI@Z"(i32 %5) #17
  %10 = bitcast %"class.ofw::BigBase"* %this to i8**
  store i8* %call.i, i8** %10, align 4, !tbaa !8
  store i32 %add4, i32* %length, align 4, !tbaa !14
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %call.i, i8* nonnull %call, i32 %mul, i32 4, i1 false)
  tail call void @"\01??_V@YAXPAX@Z"(i8* nonnull %call) #18
  store i32 %add4, i32* %length, align 4, !tbaa !14
  %i.015.i = add i32 %add3, 1
  %cmp16.i = icmp sgt i32 %i.015.i, -1
  %11 = load i32*, i32** %blocks.i.pre-phi, align 4, !tbaa !8
  br i1 %cmp16.i, label %for.body.i.preheader, label %if.else.i

for.body.i.preheader:                             ; preds = %"\01?safe_allocate@BigBase@ofw@@AAEXI@Z.exit"
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %i.0.i = add i32 %i.018.i, -1
  %cmp.i81 = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i81, label %for.body.i, label %if.else.thread.i

if.else.thread.i:                                 ; preds = %for.cond.i
  store i32 0, i32* %length, align 4, !tbaa !14
  br label %delete.notnull.i82

for.body.i:                                       ; preds = %for.body.i.preheader, %for.cond.i
  %i.018.i = phi i32 [ %i.0.i, %for.cond.i ], [ %i.015.i, %for.body.i.preheader ]
  %i.0.in17.i = phi i32 [ %i.018.i, %for.cond.i ], [ %add4, %for.body.i.preheader ]
  %arrayidx.i = getelementptr inbounds i32, i32* %11, i32 %i.018.i
  %12 = load i32, i32* %arrayidx.i, align 4, !tbaa !15
  %cmp2.i = icmp eq i32 %12, 0
  br i1 %cmp2.i, label %for.cond.i, label %if.then4.i

if.then4.i:                                       ; preds = %for.body.i
  store i32 %i.0.in17.i, i32* %length, align 4, !tbaa !14
  br label %"\01?trim@BigBase@ofw@@AAEXXZ.exit"

if.else.i:                                        ; preds = %"\01?safe_allocate@BigBase@ofw@@AAEXI@Z.exit"
  store i32 0, i32* %length, align 4, !tbaa !14
  %isnull.i = icmp eq i32* %11, null
  br i1 %isnull.i, label %"\01?trim@BigBase@ofw@@AAEXXZ.exit", label %delete.notnull.i82

delete.notnull.i82:                               ; preds = %if.else.i, %if.else.thread.i
  %13 = bitcast i32* %11 to i8*
  tail call void @"\01??_V@YAXPAX@Z"(i8* %13) #18
  br label %"\01?trim@BigBase@ofw@@AAEXXZ.exit"

"\01?trim@BigBase@ofw@@AAEXXZ.exit":              ; preds = %if.then4.i, %if.else.i, %delete.notnull.i82
  ret %"class.ofw::BigBase"* %this

for.body:                                         ; preds = %for.end38, %for.body.lr.ph
  %indvars.iv = phi i32 [ %1, %for.body.lr.ph ], [ %indvars.iv.next, %for.end38 ]
  %i.093 = phi i32 [ 0, %for.body.lr.ph ], [ %inc40, %for.end38 ]
  br i1 %cmp884, label %for.end38, label %for.body10.lr.ph

for.body10.lr.ph:                                 ; preds = %for.body
  %14 = load i32*, i32** %blocks, align 4, !tbaa !8
  %arrayidx = getelementptr inbounds i32, i32* %14, i32 %i.093
  br label %for.body10

for.cond.cleanup9:                                ; preds = %for.body10
  %cmp2589 = icmp eq i32 %conv22, 0
  br i1 %cmp2589, label %for.end38, label %for.body26.preheader

for.body26.preheader:                             ; preds = %for.cond.cleanup9
  br label %for.body26

for.body10:                                       ; preds = %for.body10, %for.body10.lr.ph
  %carry.187 = phi i32 [ 0, %for.body10.lr.ph ], [ %conv22, %for.body10 ]
  %j.086 = phi i32 [ 0, %for.body10.lr.ph ], [ %inc, %for.body10 ]
  %k.085 = phi i32 [ %i.093, %for.body10.lr.ph ], [ %inc23, %for.body10 ]
  %15 = load i32, i32* %arrayidx, align 4, !tbaa !15
  %conv = zext i32 %15 to i64
  %arrayidx12 = getelementptr inbounds i32, i32* %7, i32 %j.086
  %16 = load i32, i32* %arrayidx12, align 4, !tbaa !15
  %conv13 = zext i32 %16 to i64
  %mul14 = mul nuw i64 %conv13, %conv
  %conv15 = zext i32 %carry.187 to i64
  %add16 = add i64 %mul14, %conv15
  %arrayidx17 = getelementptr inbounds i32, i32* %6, i32 %k.085
  %17 = load i32, i32* %arrayidx17, align 4, !tbaa !15
  %conv18 = zext i32 %17 to i64
  %add19 = add i64 %add16, %conv18
  %conv20 = trunc i64 %add19 to i32
  store i32 %conv20, i32* %arrayidx17, align 4, !tbaa !15
  %shr = lshr i64 %add19, 32
  %conv22 = trunc i64 %shr to i32
  %inc = add nuw nsw i32 %j.086, 1
  %inc23 = add nuw nsw i32 %k.085, 1
  %exitcond = icmp eq i32 %inc, %1
  br i1 %exitcond, label %for.cond.cleanup9, label %for.body10

for.body26:                                       ; preds = %for.body26.preheader, %for.body26
  %carry.291 = phi i32 [ %conv35, %for.body26 ], [ %conv22, %for.body26.preheader ]
  %k.190 = phi i32 [ %inc37, %for.body26 ], [ %indvars.iv, %for.body26.preheader ]
  %arrayidx28 = getelementptr inbounds i32, i32* %6, i32 %k.190
  %18 = load i32, i32* %arrayidx28, align 4, !tbaa !15
  %conv29 = zext i32 %18 to i64
  %conv30 = zext i32 %carry.291 to i64
  %add31 = add nuw nsw i64 %conv29, %conv30
  %conv32 = trunc i64 %add31 to i32
  store i32 %conv32, i32* %arrayidx28, align 4, !tbaa !15
  %shr34 = lshr i64 %add31, 32
  %conv35 = trunc i64 %shr34 to i32
  %inc37 = add nsw i32 %k.190, 1
  %cmp25 = icmp eq i32 %conv35, 0
  br i1 %cmp25, label %for.end38, label %for.body26

for.end38:                                        ; preds = %for.body26, %for.body, %for.cond.cleanup9
  %inc40 = add nuw nsw i32 %i.093, 1
  %indvars.iv.next = add i32 %indvars.iv, 1
  %exitcond95 = icmp eq i32 %inc40, %0
  br i1 %exitcond95, label %for.cond.cleanup, label %for.body
}

; Function Attrs: nounwind readnone speculatable
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nobuiltin
declare noalias nonnull i8* @"\01??_U@YAPAXI@Z"(i32) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i32, i1) #3

define x86_thiscallcc void @"\01?safe_allocate@BigBase@ofw@@AAEXI@Z"(%"class.ofw::BigBase"* nocapture %this, i32 %i) local_unnamed_addr #1 align 2 {
entry:
  %blocks = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 0
  %0 = load i32*, i32** %blocks, align 4, !tbaa !8
  %cmp = icmp eq i32* %0, null
  br i1 %cmp, label %if.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  %1 = bitcast i32* %0 to i8*
  tail call void @"\01??_V@YAXPAX@Z"(i8* %1) #18
  br label %if.end

if.end:                                           ; preds = %entry, %delete.notnull
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i, i32 4)
  %3 = extractvalue { i32, i1 } %2, 1
  %4 = extractvalue { i32, i1 } %2, 0
  %5 = select i1 %3, i32 -1, i32 %4
  %call = tail call i8* @"\01??_U@YAPAXI@Z"(i32 %5) #17
  %6 = bitcast %"class.ofw::BigBase"* %this to i8**
  store i8* %call, i8** %6, align 4, !tbaa !8
  %length = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  store i32 %i, i32* %length, align 4, !tbaa !14
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #3

; Function Attrs: nobuiltin nounwind
declare void @"\01??_V@YAXPAX@Z"(i8*) local_unnamed_addr #7

; Function Attrs: nounwind
define x86_thiscallcc dereferenceable(8) %"class.ofw::BigBase"* @"\01??_1BigBase@ofw@@QAEAAV01@ABV01@@Z"(%"class.ofw::BigBase"* returned %this, %"class.ofw::BigBase"* nocapture readonly dereferenceable(8) %integer) local_unnamed_addr #4 align 2 {
entry:
  tail call x86_thiscallcc void @"\01?divideWithRemainder@BigBase@ofw@@AAEXABV12@_NPAI@Z"(%"class.ofw::BigBase"* %this, %"class.ofw::BigBase"* nonnull dereferenceable(8) %integer, i1 zeroext false, i32* null)
  %length.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  %0 = load i32, i32* %length.i, align 4, !tbaa !14
  %i.015.i = add i32 %0, -1
  %cmp16.i = icmp sgt i32 %i.015.i, -1
  %blocks.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 0
  %1 = load i32*, i32** %blocks.i, align 4, !tbaa !8
  br i1 %cmp16.i, label %for.body.i.preheader, label %if.else.i

for.body.i.preheader:                             ; preds = %entry
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %i.0.i = add i32 %i.018.i, -1
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %for.body.i, label %if.else.thread.i

if.else.thread.i:                                 ; preds = %for.cond.i
  store i32 0, i32* %length.i, align 4, !tbaa !14
  br label %delete.notnull.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.cond.i
  %i.018.i = phi i32 [ %i.0.i, %for.cond.i ], [ %i.015.i, %for.body.i.preheader ]
  %i.0.in17.i = phi i32 [ %i.018.i, %for.cond.i ], [ %0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr inbounds i32, i32* %1, i32 %i.018.i
  %2 = load i32, i32* %arrayidx.i, align 4, !tbaa !15
  %cmp2.i = icmp eq i32 %2, 0
  br i1 %cmp2.i, label %for.cond.i, label %if.then4.i

if.then4.i:                                       ; preds = %for.body.i
  store i32 %i.0.in17.i, i32* %length.i, align 4, !tbaa !14
  br label %"\01?trim@BigBase@ofw@@AAEXXZ.exit"

if.else.i:                                        ; preds = %entry
  store i32 0, i32* %length.i, align 4, !tbaa !14
  %isnull.i = icmp eq i32* %1, null
  br i1 %isnull.i, label %"\01?trim@BigBase@ofw@@AAEXXZ.exit", label %delete.notnull.i

delete.notnull.i:                                 ; preds = %if.else.i, %if.else.thread.i
  %3 = bitcast i32* %1 to i8*
  tail call void @"\01??_V@YAXPAX@Z"(i8* %3) #18
  br label %"\01?trim@BigBase@ofw@@AAEXXZ.exit"

"\01?trim@BigBase@ofw@@AAEXXZ.exit":              ; preds = %if.then4.i, %if.else.i, %delete.notnull.i
  ret %"class.ofw::BigBase"* %this
}

; Function Attrs: nounwind
define x86_thiscallcc void @"\01?divideWithRemainder@BigBase@ofw@@AAEXABV12@_NPAI@Z"(%"class.ofw::BigBase"* nocapture readonly %this, %"class.ofw::BigBase"* nocapture readonly dereferenceable(8) %integer, i1 zeroext %quotient, i32* nocapture %quotient_array) local_unnamed_addr #4 align 2 {
entry:
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %length = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  %0 = load i32, i32* %length, align 4, !tbaa !14
  %length2 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %integer, i32 0, i32 1
  %1 = load i32, i32* %length2, align 4, !tbaa !14
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %quotient, label %if.then3, label %if.end136

if.then3:                                         ; preds = %if.then
  %2 = bitcast %"class.ofw::BigBase"* %this to i8**
  %3 = load i8*, i8** %2, align 4, !tbaa !8
  %mul = shl i32 %0, 2
  tail call void @llvm.memset.p0i8.i32(i8* %3, i8 0, i32 %mul, i32 4, i1 false)
  br label %if.end136

if.else:                                          ; preds = %entry
  %sub = add i32 %0, -1
  %sub7 = add i32 %1, -1
  %4 = bitcast i32* %c1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #2
  call void @llvm.var.annotation(i8* nonnull %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 691)
  %5 = bitcast i32* %c2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #2
  call void @llvm.var.annotation(i8* nonnull %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 692)
  %blocks10 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %integer, i32 0, i32 0
  %6 = load i32*, i32** %blocks10, align 4, !tbaa !8
  %arrayidx = getelementptr inbounds i32, i32* %6, i32 %sub7
  %7 = load i32, i32* %arrayidx, align 4, !tbaa !15
  %cmp.i = icmp eq i32 %7, 0
  br i1 %cmp.i, label %"\01?count_leading_zero@BigBase@ofw@@ABEHI@Z.exit", label %if.end.i

if.end.i:                                         ; preds = %if.else
  %cmp2.i = icmp ult i32 %7, 65536
  %shl.i = shl i32 %7, 16
  %shl.val.i = select i1 %cmp2.i, i32 %shl.i, i32 %7
  %..i = select i1 %cmp2.i, i32 16, i32 0
  %cmp6.i = icmp ult i32 %shl.val.i, 16777216
  %add8.i = or i32 %..i, 8
  %shl9.i = shl i32 %shl.val.i, 8
  %val.addr.1.i = select i1 %cmp6.i, i32 %shl9.i, i32 %shl.val.i
  %n.1.i = select i1 %cmp6.i, i32 %add8.i, i32 %..i
  %cmp12.i = icmp ult i32 %val.addr.1.i, 268435456
  %add14.i = or i32 %n.1.i, 4
  %shl15.i = shl i32 %val.addr.1.i, 4
  %val.addr.2.i = select i1 %cmp12.i, i32 %shl15.i, i32 %val.addr.1.i
  %n.2.i = select i1 %cmp12.i, i32 %add14.i, i32 %n.1.i
  %cmp18.i = icmp ult i32 %val.addr.2.i, 1073741824
  %add20.i = or i32 %n.2.i, 2
  %shl21.i = shl i32 %val.addr.2.i, 2
  %val.addr.3.i = select i1 %cmp18.i, i32 %shl21.i, i32 %val.addr.2.i
  %n.3.i = select i1 %cmp18.i, i32 %add20.i, i32 %n.2.i
  %val.addr.3.lobit.i = lshr i32 %val.addr.3.i, 31
  %val.addr.3.lobit.not.i = xor i32 %val.addr.3.lobit.i, 1
  %add26.n.3.i = add nsw i32 %val.addr.3.lobit.not.i, %n.3.i
  br label %"\01?count_leading_zero@BigBase@ofw@@ABEHI@Z.exit"

"\01?count_leading_zero@BigBase@ofw@@ABEHI@Z.exit": ; preds = %if.else, %if.end.i
  %retval.0.i = phi i32 [ %add26.n.3.i, %if.end.i ], [ 32, %if.else ]
  store i32 %retval.0.i, i32* %c2, align 4, !tbaa !15
  %8 = load i32, i32* %arrayidx, align 4, !tbaa !15
  %shl.i301 = shl i32 %8, %retval.0.i
  %cmp.i302 = icmp ne i32 %sub7, 0
  %cmp2.i303 = icmp sgt i32 %retval.0.i, 0
  %or.cond.i304 = and i1 %cmp.i302, %cmp2.i303
  br i1 %or.cond.i304, label %if.then.i310, label %"\01?div_multiget@BigBase@ofw@@AAEIPBIIH@Z.exit313"

if.then.i310:                                     ; preds = %"\01?count_leading_zero@BigBase@ofw@@ABEHI@Z.exit"
  %sub.i305 = add i32 %1, -2
  %arrayidx3.i306 = getelementptr inbounds i32, i32* %6, i32 %sub.i305
  %9 = load i32, i32* %arrayidx3.i306, align 4, !tbaa !15
  %sub4.i307 = sub nsw i32 32, %retval.0.i
  %shr.i308 = lshr i32 %9, %sub4.i307
  %or.i309 = or i32 %shr.i308, %shl.i301
  br label %"\01?div_multiget@BigBase@ofw@@AAEIPBIIH@Z.exit313"

"\01?div_multiget@BigBase@ofw@@AAEIPBIIH@Z.exit313": ; preds = %"\01?count_leading_zero@BigBase@ofw@@ABEHI@Z.exit", %if.then.i310
  %t.0.i311 = phi i32 [ %or.i309, %if.then.i310 ], [ %shl.i301, %"\01?count_leading_zero@BigBase@ofw@@ABEHI@Z.exit" ]
  %cmp13325 = icmp slt i32 %sub, 0
  %cmp14326 = icmp slt i32 %sub, %sub7
  %or.cond217327 = or i1 %cmp13325, %cmp14326
  br i1 %or.cond217327, label %for.cond.cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %"\01?div_multiget@BigBase@ofw@@AAEIPBIIH@Z.exit313"
  %blocks15 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 0
  %10 = load i32*, i32** %blocks15, align 4, !tbaa !8
  %sub35 = add i32 %1, -2
  %cmp37315 = icmp sgt i32 %sub35, -1
  %sub7.neg = sub i32 1, %1
  br label %for.body

for.cond.cleanup:                                 ; preds = %land.lhs.true, %lor.lhs.false, %for.inc132, %"\01?div_multiget@BigBase@ofw@@AAEIPBIIH@Z.exit313"
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #2
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #2
  br label %if.end136

for.body:                                         ; preds = %for.body.lr.ph, %for.inc132
  %i.0328 = phi i32 [ %sub, %for.body.lr.ph ], [ %dec133, %for.inc132 ]
  %arrayidx16 = getelementptr inbounds i32, i32* %10, i32 %i.0328
  %11 = load i32, i32* %arrayidx16, align 4, !tbaa !15
  %cmp17 = icmp eq i32 %11, 0
  br i1 %cmp17, label %for.inc132, label %"\01?count_leading_zero@BigBase@ofw@@ABEHI@Z.exit299"

"\01?count_leading_zero@BigBase@ofw@@ABEHI@Z.exit299": ; preds = %for.body
  %cmp2.i275 = icmp ult i32 %11, 65536
  %shl.i276 = shl i32 %11, 16
  %shl.val.i277 = select i1 %cmp2.i275, i32 %shl.i276, i32 %11
  %..i278 = select i1 %cmp2.i275, i32 16, i32 0
  %cmp6.i279 = icmp ult i32 %shl.val.i277, 16777216
  %add8.i280 = or i32 %..i278, 8
  %shl9.i281 = shl i32 %shl.val.i277, 8
  %val.addr.1.i282 = select i1 %cmp6.i279, i32 %shl9.i281, i32 %shl.val.i277
  %n.1.i283 = select i1 %cmp6.i279, i32 %add8.i280, i32 %..i278
  %cmp12.i284 = icmp ult i32 %val.addr.1.i282, 268435456
  %add14.i285 = or i32 %n.1.i283, 4
  %shl15.i286 = shl i32 %val.addr.1.i282, 4
  %val.addr.2.i287 = select i1 %cmp12.i284, i32 %shl15.i286, i32 %val.addr.1.i282
  %n.2.i288 = select i1 %cmp12.i284, i32 %add14.i285, i32 %n.1.i283
  %cmp18.i289 = icmp ult i32 %val.addr.2.i287, 1073741824
  %add20.i290 = or i32 %n.2.i288, 2
  %shl21.i291 = shl i32 %val.addr.2.i287, 2
  %val.addr.3.i292 = select i1 %cmp18.i289, i32 %shl21.i291, i32 %val.addr.2.i287
  %n.3.i293 = select i1 %cmp18.i289, i32 %add20.i290, i32 %n.2.i288
  %val.addr.3.lobit.i294 = lshr i32 %val.addr.3.i292, 31
  %val.addr.3.lobit.not.i295 = xor i32 %val.addr.3.lobit.i294, 1
  %add26.n.3.i296 = add nsw i32 %val.addr.3.lobit.not.i295, %n.3.i293
  store i32 %add26.n.3.i296, i32* %c1, align 4, !tbaa !15
  %12 = load i32, i32* %arrayidx16, align 4, !tbaa !15
  %shl.i261 = shl i32 %12, %add26.n.3.i296
  %cmp.i262 = icmp ne i32 %i.0328, 0
  %cmp2.i263 = icmp sgt i32 %add26.n.3.i296, 0
  %or.cond.i264 = and i1 %cmp.i262, %cmp2.i263
  br i1 %or.cond.i264, label %if.then.i270, label %"\01?div_multiget@BigBase@ofw@@AAEIPBIIH@Z.exit273"

if.then.i270:                                     ; preds = %"\01?count_leading_zero@BigBase@ofw@@ABEHI@Z.exit299"
  %sub.i265 = add i32 %i.0328, -1
  %arrayidx3.i266 = getelementptr inbounds i32, i32* %10, i32 %sub.i265
  %13 = load i32, i32* %arrayidx3.i266, align 4, !tbaa !15
  %sub4.i267 = sub nsw i32 32, %add26.n.3.i296
  %shr.i268 = lshr i32 %13, %sub4.i267
  %or.i269 = or i32 %shr.i268, %shl.i261
  br label %"\01?div_multiget@BigBase@ofw@@AAEIPBIIH@Z.exit273"

"\01?div_multiget@BigBase@ofw@@AAEIPBIIH@Z.exit273": ; preds = %"\01?count_leading_zero@BigBase@ofw@@ABEHI@Z.exit299", %if.then.i270
  %t.0.i271 = phi i32 [ %or.i269, %if.then.i270 ], [ %shl.i261, %"\01?count_leading_zero@BigBase@ofw@@ABEHI@Z.exit299" ]
  %14 = load i32, i32* %c2, align 4, !tbaa !15
  %sub25 = sub nsw i32 %14, %add26.n.3.i296
  %cmp26 = icmp eq i32 %i.0328, %sub7
  br i1 %cmp26, label %land.lhs.true, label %if.end32

land.lhs.true:                                    ; preds = %"\01?div_multiget@BigBase@ofw@@AAEIPBIIH@Z.exit273"
  %cmp27 = icmp slt i32 %sub25, 0
  br i1 %cmp27, label %for.cond.cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %cmp28 = icmp eq i32 %sub25, 0
  %cmp30 = icmp ult i32 %t.0.i271, %t.0.i311
  %or.cond218 = and i1 %cmp30, %cmp28
  br i1 %or.cond218, label %for.cond.cleanup, label %if.end32

if.end32:                                         ; preds = %lor.lhs.false, %"\01?div_multiget@BigBase@ofw@@AAEIPBIIH@Z.exit273"
  %cmp33 = icmp eq i32 %t.0.i271, %t.0.i311
  br i1 %cmp33, label %if.then34, label %if.else52

if.then34:                                        ; preds = %if.end32
  br i1 %cmp37315, label %for.body39.lr.ph, label %if.end57

for.body39.lr.ph:                                 ; preds = %if.then34
  %add = add i32 %i.0328, %sub7.neg
  %sub4.i253 = sub nsw i32 32, %add26.n.3.i296
  %cmp2.i241 = icmp sgt i32 %14, 0
  %sub4.i = sub nsw i32 32, %14
  br label %for.body39

for.cond36:                                       ; preds = %"\01?div_multiget@BigBase@ofw@@AAEIPBIIH@Z.exit"
  %dec = add nsw i32 %j.0316, -1
  %cmp37 = icmp sgt i32 %j.0316, 0
  br i1 %cmp37, label %for.body39, label %if.end57

for.body39:                                       ; preds = %for.body39.lr.ph, %for.cond36
  %c_gap.0317 = phi i32 [ %sub25, %for.body39.lr.ph ], [ %c_gap.1, %for.cond36 ]
  %j.0316 = phi i32 [ %sub35, %for.body39.lr.ph ], [ %dec, %for.cond36 ]
  %sub40 = add i32 %add, %j.0316
  %arrayidx.i246 = getelementptr inbounds i32, i32* %10, i32 %sub40
  %15 = load i32, i32* %arrayidx.i246, align 4, !tbaa !15
  %shl.i247 = shl i32 %15, %add26.n.3.i296
  %cmp.i248 = icmp ne i32 %sub40, 0
  %or.cond.i250 = and i1 %cmp2.i263, %cmp.i248
  br i1 %or.cond.i250, label %if.then.i256, label %"\01?div_multiget@BigBase@ofw@@AAEIPBIIH@Z.exit259"

if.then.i256:                                     ; preds = %for.body39
  %sub.i251 = add i32 %sub40, -1
  %arrayidx3.i252 = getelementptr inbounds i32, i32* %10, i32 %sub.i251
  %16 = load i32, i32* %arrayidx3.i252, align 4, !tbaa !15
  %shr.i254 = lshr i32 %16, %sub4.i253
  %or.i255 = or i32 %shr.i254, %shl.i247
  br label %"\01?div_multiget@BigBase@ofw@@AAEIPBIIH@Z.exit259"

"\01?div_multiget@BigBase@ofw@@AAEIPBIIH@Z.exit259": ; preds = %for.body39, %if.then.i256
  %t.0.i257 = phi i32 [ %or.i255, %if.then.i256 ], [ %shl.i247, %for.body39 ]
  %arrayidx.i = getelementptr inbounds i32, i32* %6, i32 %j.0316
  %17 = load i32, i32* %arrayidx.i, align 4, !tbaa !15
  %shl.i239 = shl i32 %17, %14
  %cmp.i240 = icmp ne i32 %j.0316, 0
  %or.cond.i = and i1 %cmp2.i241, %cmp.i240
  br i1 %or.cond.i, label %if.then.i244, label %"\01?div_multiget@BigBase@ofw@@AAEIPBIIH@Z.exit"

if.then.i244:                                     ; preds = %"\01?div_multiget@BigBase@ofw@@AAEIPBIIH@Z.exit259"
  %sub.i242 = add i32 %j.0316, -1
  %arrayidx3.i = getelementptr inbounds i32, i32* %6, i32 %sub.i242
  %18 = load i32, i32* %arrayidx3.i, align 4, !tbaa !15
  %shr.i243 = lshr i32 %18, %sub4.i
  %or.i = or i32 %shr.i243, %shl.i239
  br label %"\01?div_multiget@BigBase@ofw@@AAEIPBIIH@Z.exit"

"\01?div_multiget@BigBase@ofw@@AAEIPBIIH@Z.exit": ; preds = %"\01?div_multiget@BigBase@ofw@@AAEIPBIIH@Z.exit259", %if.then.i244
  %t.0.i = phi i32 [ %or.i, %if.then.i244 ], [ %shl.i239, %"\01?div_multiget@BigBase@ofw@@AAEIPBIIH@Z.exit259" ]
  %cmp45 = icmp eq i32 %t.0.i257, %t.0.i
  %cmp47 = icmp ult i32 %t.0.i257, %t.0.i
  %sub48 = zext i1 %cmp47 to i32
  %c_gap.1 = sub nsw i32 %c_gap.0317, %sub48
  br i1 %cmp45, label %for.cond36, label %if.end57

if.else52:                                        ; preds = %if.end32
  %cmp53 = icmp ult i32 %t.0.i271, %t.0.i311
  %sub55 = sext i1 %cmp53 to i32
  %sub55.sub25 = add nsw i32 %sub25, %sub55
  br label %if.end57

if.end57:                                         ; preds = %for.cond36, %"\01?div_multiget@BigBase@ofw@@AAEIPBIIH@Z.exit", %if.then34, %if.else52
  %c_gap.3 = phi i32 [ %sub55.sub25, %if.else52 ], [ %sub25, %if.then34 ], [ %c_gap.1, %"\01?div_multiget@BigBase@ofw@@AAEIPBIIH@Z.exit" ], [ %c_gap.1, %for.cond36 ]
  %cmp58 = icmp slt i32 %c_gap.3, 0
  %c_gap.3.lobit = lshr i32 %c_gap.3, 31
  %sub61 = sub nsw i32 %i.0328, %sub7
  %sub62 = sub nsw i32 %sub61, %c_gap.3.lobit
  %cmp64319 = icmp sgt i32 %sub62, %sub
  %add66 = add nsw i32 %c_gap.3.lobit, %sub7
  %cmp67320 = icmp slt i32 %add66, 0
  %or.cond219321 = or i1 %cmp64319, %cmp67320
  br i1 %or.cond219321, label %for.cond.cleanup69, label %for.body70.lr.ph

for.body70.lr.ph:                                 ; preds = %if.end57
  %cmp84 = icmp sgt i32 %c_gap.3, 0
  %.sink = select i1 %cmp84, i32 32, i32 0
  %sub.i = sub nsw i32 %.sink, %c_gap.3
  %add.i234 = add nsw i32 %c_gap.3, 32
  %cmp2.i223 = icmp eq i32 %c_gap.3, 0
  %sub.i227 = sub nsw i32 0, %c_gap.3
  br label %for.body70

for.cond.cleanup69:                               ; preds = %if.end89, %if.end57
  br i1 %quotient, label %if.then107, label %if.end121

for.body70:                                       ; preds = %for.body70.lr.ph, %if.end89
  %k.0324 = phi i32 [ 0, %for.body70.lr.ph ], [ %inc102, %if.end89 ]
  %j60.0323 = phi i32 [ %sub62, %for.body70.lr.ph ], [ %inc, %if.end89 ]
  %borrow.0322 = phi i32 [ 0, %for.body70.lr.ph ], [ %and, %if.end89 ]
  %cmp71 = icmp sgt i32 %k.0324, %sub7
  br i1 %cmp71, label %if.end77, label %if.then72

if.then72:                                        ; preds = %for.body70
  %arrayidx75 = getelementptr inbounds i32, i32* %6, i32 %k.0324
  %19 = load i32, i32* %arrayidx75, align 4, !tbaa !15
  br i1 %cmp58, label %if.else9.i236, label %if.then.i224

if.then.i224:                                     ; preds = %if.then72
  br i1 %cmp2.i223, label %if.else.i229, label %if.then3.i226

if.then3.i226:                                    ; preds = %if.then.i224
  %shl.i225 = shl i32 %19, %c_gap.3
  br label %if.end77

if.else.i229:                                     ; preds = %if.then.i224
  %shr.i228 = lshr i32 %19, %sub.i227
  br label %if.end77

if.else9.i236:                                    ; preds = %if.then72
  %shl10.i235 = shl i32 %19, %add.i234
  br label %if.end77

if.end77:                                         ; preds = %if.else9.i236, %if.else.i229, %if.then3.i226, %for.body70
  %s.0 = phi i32 [ 0, %for.body70 ], [ %shl.i225, %if.then3.i226 ], [ %shr.i228, %if.else.i229 ], [ %shl10.i235, %if.else9.i236 ]
  %cmp78 = icmp eq i32 %k.0324, 0
  br i1 %cmp78, label %if.end89, label %switch.early.test

switch.early.test:                                ; preds = %if.end77
  switch i32 %c_gap.3, label %if.then83 [
    i32 -32, label %if.end89
    i32 0, label %if.end89
  ]

if.then83:                                        ; preds = %switch.early.test
  %sub86 = add nsw i32 %k.0324, -1
  %arrayidx87 = getelementptr inbounds i32, i32* %6, i32 %sub86
  %20 = load i32, i32* %arrayidx87, align 4, !tbaa !15
  %shr.i = lshr i32 %20, %sub.i
  %or = or i32 %shr.i, %s.0
  br label %if.end89

if.end89:                                         ; preds = %if.end77, %switch.early.test, %switch.early.test, %if.then83
  %s.1 = phi i32 [ %or, %if.then83 ], [ %s.0, %switch.early.test ], [ %s.0, %if.end77 ], [ %s.0, %switch.early.test ]
  %arrayidx91 = getelementptr inbounds i32, i32* %10, i32 %j60.0323
  %21 = load i32, i32* %arrayidx91, align 4, !tbaa !15
  %conv92 = zext i32 %21 to i64
  %conv93 = zext i32 %s.1 to i64
  %sub94 = sub nsw i64 %conv92, %conv93
  %conv95 = zext i32 %borrow.0322 to i64
  %sub96 = sub nsw i64 %sub94, %conv95
  %conv97 = trunc i64 %sub96 to i32
  store i32 %conv97, i32* %arrayidx91, align 4, !tbaa !15
  %shr = lshr i64 %sub96, 32
  %conv100 = trunc i64 %shr to i32
  %and = and i32 %conv100, 1
  %inc = add nsw i32 %j60.0323, 1
  %inc102 = add nuw nsw i32 %k.0324, 1
  %cmp64 = icmp sge i32 %j60.0323, %sub
  %cmp67 = icmp sge i32 %k.0324, %add66
  %or.cond219 = or i1 %cmp64, %cmp67
  br i1 %or.cond219, label %for.cond.cleanup69, label %for.body70

if.then107:                                       ; preds = %for.cond.cleanup69
  %add110 = add nsw i32 %c_gap.3, 32
  %c_gap.3.lobit314 = ashr i32 %c_gap.3, 31
  %sub117.sink = add nsw i32 %c_gap.3.lobit314, %sub61
  %c_gap.3.pn = select i1 %cmp58, i32 %add110, i32 %c_gap.3
  %shl116.sink = shl i32 1, %c_gap.3.pn
  %arrayidx118 = getelementptr inbounds i32, i32* %quotient_array, i32 %sub117.sink
  %22 = load i32, i32* %arrayidx118, align 4, !tbaa !15
  %or119 = or i32 %22, %shl116.sink
  store i32 %or119, i32* %arrayidx118, align 4, !tbaa !15
  br label %if.end121

if.end121:                                        ; preds = %if.then107, %for.cond.cleanup69
  %23 = load i32, i32* %arrayidx16, align 4, !tbaa !15
  %cmp124 = icmp ne i32 %23, 0
  %inc126 = zext i1 %cmp124 to i32
  %i.0.inc126 = add nsw i32 %i.0328, %inc126
  br label %for.inc132

for.inc132:                                       ; preds = %if.end121, %for.body
  %i.3 = phi i32 [ %i.0328, %for.body ], [ %i.0.inc126, %if.end121 ]
  %dec133 = add nsw i32 %i.3, -1
  %cmp13 = icmp slt i32 %i.3, 1
  %cmp14 = icmp sle i32 %i.3, %sub7
  %or.cond217 = or i1 %cmp13, %cmp14
  br i1 %or.cond217, label %for.cond.cleanup, label %for.body

if.end136:                                        ; preds = %if.then, %if.then3, %for.cond.cleanup
  ret void
}

define x86_thiscallcc dereferenceable(8) %"class.ofw::BigBase"* @"\01??_0BigBase@ofw@@QAEAAV01@ABV01@@Z"(%"class.ofw::BigBase"* returned %this, %"class.ofw::BigBase"* nocapture readonly dereferenceable(8) %integer) local_unnamed_addr #1 align 2 {
entry:
  %length = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  %0 = load i32, i32* %length, align 4, !tbaa !14
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %0, i32 4)
  %2 = extractvalue { i32, i1 } %1, 1
  %3 = extractvalue { i32, i1 } %1, 0
  %4 = select i1 %2, i32 -1, i32 %3
  %call = tail call i8* @"\01??_U@YAPAXI@Z"(i32 %4) #17
  %5 = bitcast i8* %call to i32*
  %mul = shl i32 %0, 2
  tail call void @llvm.memset.p0i8.i32(i8* nonnull %call, i8 0, i32 %mul, i32 4, i1 false)
  tail call x86_thiscallcc void @"\01?divideWithRemainder@BigBase@ofw@@AAEXABV12@_NPAI@Z"(%"class.ofw::BigBase"* %this, %"class.ofw::BigBase"* nonnull dereferenceable(8) %integer, i1 zeroext true, i32* nonnull %5)
  %6 = bitcast %"class.ofw::BigBase"* %this to i8**
  %7 = load i8*, i8** %6, align 4, !tbaa !8
  %8 = load i32, i32* %length, align 4, !tbaa !14
  %mul4 = shl i32 %8, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %7, i8* nonnull %call, i32 %mul4, i32 4, i1 false)
  tail call void @"\01??_V@YAXPAX@Z"(i8* nonnull %call) #18
  %9 = load i32, i32* %length, align 4, !tbaa !14
  %i.015.i = add i32 %9, -1
  %cmp16.i = icmp sgt i32 %i.015.i, -1
  %blocks.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 0
  %10 = load i32*, i32** %blocks.i, align 4, !tbaa !8
  br i1 %cmp16.i, label %for.body.i.preheader, label %if.else.i

for.body.i.preheader:                             ; preds = %entry
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %i.0.i = add i32 %i.018.i, -1
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %for.body.i, label %if.else.thread.i

if.else.thread.i:                                 ; preds = %for.cond.i
  store i32 0, i32* %length, align 4, !tbaa !14
  br label %delete.notnull.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.cond.i
  %i.018.i = phi i32 [ %i.0.i, %for.cond.i ], [ %i.015.i, %for.body.i.preheader ]
  %i.0.in17.i = phi i32 [ %i.018.i, %for.cond.i ], [ %9, %for.body.i.preheader ]
  %arrayidx.i = getelementptr inbounds i32, i32* %10, i32 %i.018.i
  %11 = load i32, i32* %arrayidx.i, align 4, !tbaa !15
  %cmp2.i = icmp eq i32 %11, 0
  br i1 %cmp2.i, label %for.cond.i, label %if.then4.i

if.then4.i:                                       ; preds = %for.body.i
  store i32 %i.0.in17.i, i32* %length, align 4, !tbaa !14
  br label %"\01?trim@BigBase@ofw@@AAEXXZ.exit"

if.else.i:                                        ; preds = %entry
  store i32 0, i32* %length, align 4, !tbaa !14
  %isnull.i = icmp eq i32* %10, null
  br i1 %isnull.i, label %"\01?trim@BigBase@ofw@@AAEXXZ.exit", label %delete.notnull.i

delete.notnull.i:                                 ; preds = %if.else.i, %if.else.thread.i
  %12 = bitcast i32* %10 to i8*
  tail call void @"\01??_V@YAXPAX@Z"(i8* %12) #18
  br label %"\01?trim@BigBase@ofw@@AAEXXZ.exit"

"\01?trim@BigBase@ofw@@AAEXXZ.exit":              ; preds = %if.then4.i, %if.else.i, %delete.notnull.i
  ret %"class.ofw::BigBase"* %this
}

define x86_thiscallcc void @"\01??DBigBase@ofw@@QBE?AV01@ABV01@@Z"(%"class.ofw::BigBase"* nocapture readonly %this, %"class.ofw::BigBase"* noalias nocapture sret %agg.result, %"class.ofw::BigBase"* nocapture readonly dereferenceable(8) %integer) local_unnamed_addr #1 align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %tmp = alloca i64, align 4
  %tmpcast = bitcast i64* %tmp to %"class.ofw::BigBase"*
  %0 = bitcast i64* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #2
  %length.i.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  store i64 0, i64* %tmp, align 4
  %1 = load i32, i32* %length.i.i, align 4, !tbaa !14
  %cmp.i.i = icmp eq i32 %1, 0
  br i1 %cmp.i.i, label %"\01??0BigBase@ofw@@QAE@ABV01@@Z.exit", label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  %length.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %tmpcast, i32 0, i32 1
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4)
  %3 = extractvalue { i32, i1 } %2, 1
  %4 = extractvalue { i32, i1 } %2, 0
  %5 = select i1 %3, i32 -1, i32 %4
  %call.i.i.i = tail call i8* @"\01??_U@YAPAXI@Z"(i32 %5) #17
  %6 = bitcast i64* %tmp to i8**
  store i8* %call.i.i.i, i8** %6, align 4, !tbaa !8
  store i32 %1, i32* %length.i, align 4, !tbaa !14
  %7 = bitcast %"class.ofw::BigBase"* %this to i8**
  %8 = load i8*, i8** %7, align 4, !tbaa !8
  %mul.i.i = shl i32 %1, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %call.i.i.i, i8* %8, i32 %mul.i.i, i32 4, i1 false)
  br label %"\01??0BigBase@ofw@@QAE@ABV01@@Z.exit"

"\01??0BigBase@ofw@@QAE@ABV01@@Z.exit":           ; preds = %entry, %if.then.i.i
  %call2 = invoke x86_thiscallcc dereferenceable(8) %"class.ofw::BigBase"* @"\01??XBigBase@ofw@@QAEAAV01@ABV01@@Z"(%"class.ofw::BigBase"* nonnull %tmpcast, %"class.ofw::BigBase"* nonnull dereferenceable(8) %integer)
          to label %invoke.cont unwind label %ehcleanup

invoke.cont:                                      ; preds = %"\01??0BigBase@ofw@@QAE@ABV01@@Z.exit"
  %length.i.i6 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %call2, i32 0, i32 1
  %9 = bitcast %"class.ofw::BigBase"* %agg.result to i64*
  store i64 0, i64* %9, align 4
  %10 = load i32, i32* %length.i.i6, align 4, !tbaa !14
  %cmp.i.i7 = icmp eq i32 %10, 0
  br i1 %cmp.i.i7, label %invoke.cont.invoke.cont3_crit_edge, label %if.then.i.i11

invoke.cont.invoke.cont3_crit_edge:               ; preds = %invoke.cont
  %blocks.i.phi.trans.insert = bitcast i64* %tmp to i32**
  %.pre = load i32*, i32** %blocks.i.phi.trans.insert, align 4, !tbaa !8
  %11 = bitcast i32* %.pre to i8*
  br label %invoke.cont3

if.then.i.i11:                                    ; preds = %invoke.cont
  %12 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %10, i32 4)
  %13 = extractvalue { i32, i1 } %12, 1
  %14 = extractvalue { i32, i1 } %12, 0
  %15 = select i1 %13, i32 -1, i32 %14
  %call.i.i.i912 = invoke i8* @"\01??_U@YAPAXI@Z"(i32 %15) #17
          to label %call.i.i.i9.noexc unwind label %ehcleanup

call.i.i.i9.noexc:                                ; preds = %if.then.i.i11
  %length.i8 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %agg.result, i32 0, i32 1
  %16 = bitcast %"class.ofw::BigBase"* %agg.result to i8**
  store i8* %call.i.i.i912, i8** %16, align 4, !tbaa !8
  store i32 %10, i32* %length.i8, align 4, !tbaa !14
  %17 = bitcast %"class.ofw::BigBase"* %call2 to i8**
  %18 = load i8*, i8** %17, align 4, !tbaa !8
  %mul.i.i10 = shl i32 %10, 2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %call.i.i.i912, i8* %18, i32 %mul.i.i10, i32 4, i1 false)
  %19 = bitcast i8* %18 to i32*
  br label %invoke.cont3

invoke.cont3:                                     ; preds = %invoke.cont.invoke.cont3_crit_edge, %call.i.i.i9.noexc
  %20 = phi i8* [ %11, %invoke.cont.invoke.cont3_crit_edge ], [ %18, %call.i.i.i9.noexc ]
  %21 = phi i32* [ %.pre, %invoke.cont.invoke.cont3_crit_edge ], [ %19, %call.i.i.i9.noexc ]
  %isnull.i = icmp eq i32* %21, null
  br i1 %isnull.i, label %"\01??1BigBase@ofw@@QAE@XZ.exit", label %delete.notnull.i

delete.notnull.i:                                 ; preds = %invoke.cont3
  call void @"\01??_V@YAXPAX@Z"(i8* %20) #18
  br label %"\01??1BigBase@ofw@@QAE@XZ.exit"

"\01??1BigBase@ofw@@QAE@XZ.exit":                 ; preds = %invoke.cont3, %delete.notnull.i
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #2
  ret void

ehcleanup:                                        ; preds = %if.then.i.i11, %"\01??0BigBase@ofw@@QAE@ABV01@@Z.exit"
  %22 = cleanuppad within none []
  %blocks.i14 = bitcast i64* %tmp to i32**
  %23 = load i32*, i32** %blocks.i14, align 4, !tbaa !8
  %isnull.i15 = icmp eq i32* %23, null
  br i1 %isnull.i15, label %"\01??1BigBase@ofw@@QAE@XZ.exit17", label %delete.notnull.i16

delete.notnull.i16:                               ; preds = %ehcleanup
  %24 = bitcast i32* %23 to i8*
  call void @"\01??_V@YAXPAX@Z"(i8* %24) #18 [ "funclet"(token %22) ]
  br label %"\01??1BigBase@ofw@@QAE@XZ.exit17"

"\01??1BigBase@ofw@@QAE@XZ.exit17":               ; preds = %ehcleanup, %delete.notnull.i16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #2
  cleanupret from %22 unwind to caller
}

define x86_thiscallcc void @"\01??LBigBase@ofw@@QBE?AV01@ABV01@@Z"(%"class.ofw::BigBase"* nocapture readonly %this, %"class.ofw::BigBase"* noalias nocapture sret %agg.result, %"class.ofw::BigBase"* nocapture readonly dereferenceable(8) %integer) local_unnamed_addr #1 align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %tmp = alloca i64, align 4
  %tmpcast = bitcast i64* %tmp to %"class.ofw::BigBase"*
  %0 = bitcast i64* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #2
  %length.i.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  store i64 0, i64* %tmp, align 4
  %1 = load i32, i32* %length.i.i, align 4, !tbaa !14
  %cmp.i.i = icmp eq i32 %1, 0
  %.pre30 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %tmpcast, i32 0, i32 1
  br i1 %cmp.i.i, label %invoke.cont3.thread, label %"\01??0BigBase@ofw@@QAE@ABV01@@Z.exit"

"\01??0BigBase@ofw@@QAE@ABV01@@Z.exit":           ; preds = %entry
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4)
  %3 = extractvalue { i32, i1 } %2, 1
  %4 = extractvalue { i32, i1 } %2, 0
  %5 = select i1 %3, i32 -1, i32 %4
  %call.i.i.i = tail call i8* @"\01??_U@YAPAXI@Z"(i32 %5) #17
  %6 = bitcast i64* %tmp to i8**
  store i8* %call.i.i.i, i8** %6, align 4, !tbaa !8
  store i32 %1, i32* %.pre30, align 4, !tbaa !14
  %7 = bitcast %"class.ofw::BigBase"* %this to i8**
  %8 = load i8*, i8** %7, align 4, !tbaa !8
  %mul.i.i = shl i32 %1, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %call.i.i.i, i8* %8, i32 %mul.i.i, i32 4, i1 false)
  %9 = bitcast i8* %call.i.i.i to i32*
  call x86_thiscallcc void @"\01?divideWithRemainder@BigBase@ofw@@AAEXABV12@_NPAI@Z"(%"class.ofw::BigBase"* nonnull %tmpcast, %"class.ofw::BigBase"* nonnull dereferenceable(8) %integer, i1 zeroext false, i32* null) #2
  %i.015.i.i = add i32 %1, -1
  %cmp16.i.i = icmp sgt i32 %i.015.i.i, -1
  br i1 %cmp16.i.i, label %for.body.i.i.preheader, label %invoke.cont3.thread26

for.body.i.i.preheader:                           ; preds = %"\01??0BigBase@ofw@@QAE@ABV01@@Z.exit"
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %i.0.i.i = add i32 %i.018.i.i, -1
  %cmp.i.i7 = icmp sgt i32 %i.0.i.i, -1
  br i1 %cmp.i.i7, label %for.body.i.i, label %invoke.cont3

for.body.i.i:                                     ; preds = %for.body.i.i.preheader, %for.cond.i.i
  %i.018.i.i = phi i32 [ %i.0.i.i, %for.cond.i.i ], [ %i.015.i.i, %for.body.i.i.preheader ]
  %i.0.in17.i.i = phi i32 [ %i.018.i.i, %for.cond.i.i ], [ %1, %for.body.i.i.preheader ]
  %arrayidx.i.i = getelementptr inbounds i32, i32* %9, i32 %i.018.i.i
  %10 = load i32, i32* %arrayidx.i.i, align 4, !tbaa !15
  %cmp2.i.i = icmp eq i32 %10, 0
  br i1 %cmp2.i.i, label %for.cond.i.i, label %if.then.i.i13

invoke.cont3.thread26:                            ; preds = %"\01??0BigBase@ofw@@QAE@ABV01@@Z.exit"
  store i32 0, i32* %.pre30, align 4, !tbaa !14
  tail call void @"\01??_V@YAXPAX@Z"(i8* nonnull %call.i.i.i) #18
  %11 = bitcast %"class.ofw::BigBase"* %agg.result to i64*
  store i64 0, i64* %11, align 4
  br label %delete.notnull.i

invoke.cont3.thread:                              ; preds = %entry
  call x86_thiscallcc void @"\01?divideWithRemainder@BigBase@ofw@@AAEXABV12@_NPAI@Z"(%"class.ofw::BigBase"* nonnull %tmpcast, %"class.ofw::BigBase"* nonnull dereferenceable(8) %integer, i1 zeroext false, i32* null) #2
  store i32 0, i32* %.pre30, align 4, !tbaa !14
  %12 = bitcast %"class.ofw::BigBase"* %agg.result to i64*
  store i64 0, i64* %12, align 4
  br label %"\01??1BigBase@ofw@@QAE@XZ.exit"

if.then.i.i13:                                    ; preds = %for.body.i.i
  store i32 %i.0.in17.i.i, i32* %.pre30, align 4, !tbaa !14
  %13 = bitcast %"class.ofw::BigBase"* %agg.result to i64*
  store i64 0, i64* %13, align 4
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.0.in17.i.i, i32 4)
  %15 = extractvalue { i32, i1 } %14, 1
  %16 = extractvalue { i32, i1 } %14, 0
  %17 = select i1 %15, i32 -1, i32 %16
  %call.i.i.i1114 = invoke i8* @"\01??_U@YAPAXI@Z"(i32 %17) #17
          to label %invoke.cont3.thread24 unwind label %"\01??1BigBase@ofw@@QAE@XZ.exit19"

invoke.cont3.thread24:                            ; preds = %if.then.i.i13
  %length.i10 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %agg.result, i32 0, i32 1
  %18 = bitcast %"class.ofw::BigBase"* %agg.result to i8**
  store i8* %call.i.i.i1114, i8** %18, align 4, !tbaa !8
  store i32 %i.0.in17.i.i, i32* %length.i10, align 4, !tbaa !14
  %mul.i.i12 = shl i32 %i.0.in17.i.i, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %call.i.i.i1114, i8* nonnull %call.i.i.i, i32 %mul.i.i12, i32 4, i1 false)
  br label %delete.notnull.i

invoke.cont3:                                     ; preds = %for.cond.i.i
  store i32 0, i32* %.pre30, align 4, !tbaa !14
  tail call void @"\01??_V@YAXPAX@Z"(i8* nonnull %call.i.i.i) #18
  %19 = bitcast %"class.ofw::BigBase"* %agg.result to i64*
  store i64 0, i64* %19, align 4
  br label %delete.notnull.i

delete.notnull.i:                                 ; preds = %invoke.cont3, %invoke.cont3.thread26, %invoke.cont3.thread24
  tail call void @"\01??_V@YAXPAX@Z"(i8* nonnull %call.i.i.i) #18
  br label %"\01??1BigBase@ofw@@QAE@XZ.exit"

"\01??1BigBase@ofw@@QAE@XZ.exit":                 ; preds = %invoke.cont3.thread, %delete.notnull.i
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #2
  ret void

"\01??1BigBase@ofw@@QAE@XZ.exit19":               ; preds = %if.then.i.i13
  %20 = cleanuppad within none []
  call void @"\01??_V@YAXPAX@Z"(i8* nonnull %call.i.i.i) #18 [ "funclet"(token %20) ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #2
  cleanupret from %20 unwind to caller
}

define x86_thiscallcc void @"\01??KBigBase@ofw@@QBE?AV01@ABV01@@Z"(%"class.ofw::BigBase"* nocapture readonly %this, %"class.ofw::BigBase"* noalias nocapture sret %agg.result, %"class.ofw::BigBase"* nocapture readonly dereferenceable(8) %integer) local_unnamed_addr #1 align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %tmp = alloca i64, align 4
  %tmpcast = bitcast i64* %tmp to %"class.ofw::BigBase"*
  %0 = bitcast i64* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #2
  %length.i.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  store i64 0, i64* %tmp, align 4
  %1 = load i32, i32* %length.i.i, align 4, !tbaa !14
  %cmp.i.i = icmp eq i32 %1, 0
  br i1 %cmp.i.i, label %"\01??0BigBase@ofw@@QAE@ABV01@@Z.exit", label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  %length.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %tmpcast, i32 0, i32 1
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4)
  %3 = extractvalue { i32, i1 } %2, 1
  %4 = extractvalue { i32, i1 } %2, 0
  %5 = select i1 %3, i32 -1, i32 %4
  %call.i.i.i = tail call i8* @"\01??_U@YAPAXI@Z"(i32 %5) #17
  %6 = bitcast i64* %tmp to i8**
  store i8* %call.i.i.i, i8** %6, align 4, !tbaa !8
  store i32 %1, i32* %length.i, align 4, !tbaa !14
  %7 = bitcast %"class.ofw::BigBase"* %this to i8**
  %8 = load i8*, i8** %7, align 4, !tbaa !8
  %mul.i.i = shl i32 %1, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %call.i.i.i, i8* %8, i32 %mul.i.i, i32 4, i1 false)
  br label %"\01??0BigBase@ofw@@QAE@ABV01@@Z.exit"

"\01??0BigBase@ofw@@QAE@ABV01@@Z.exit":           ; preds = %entry, %if.then.i.i
  %call2 = invoke x86_thiscallcc dereferenceable(8) %"class.ofw::BigBase"* @"\01??_0BigBase@ofw@@QAEAAV01@ABV01@@Z"(%"class.ofw::BigBase"* nonnull %tmpcast, %"class.ofw::BigBase"* nonnull dereferenceable(8) %integer)
          to label %invoke.cont unwind label %ehcleanup

invoke.cont:                                      ; preds = %"\01??0BigBase@ofw@@QAE@ABV01@@Z.exit"
  %length.i.i6 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %call2, i32 0, i32 1
  %9 = bitcast %"class.ofw::BigBase"* %agg.result to i64*
  store i64 0, i64* %9, align 4
  %10 = load i32, i32* %length.i.i6, align 4, !tbaa !14
  %cmp.i.i7 = icmp eq i32 %10, 0
  br i1 %cmp.i.i7, label %invoke.cont.invoke.cont3_crit_edge, label %if.then.i.i11

invoke.cont.invoke.cont3_crit_edge:               ; preds = %invoke.cont
  %blocks.i.phi.trans.insert = bitcast i64* %tmp to i32**
  %.pre = load i32*, i32** %blocks.i.phi.trans.insert, align 4, !tbaa !8
  %11 = bitcast i32* %.pre to i8*
  br label %invoke.cont3

if.then.i.i11:                                    ; preds = %invoke.cont
  %12 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %10, i32 4)
  %13 = extractvalue { i32, i1 } %12, 1
  %14 = extractvalue { i32, i1 } %12, 0
  %15 = select i1 %13, i32 -1, i32 %14
  %call.i.i.i912 = invoke i8* @"\01??_U@YAPAXI@Z"(i32 %15) #17
          to label %call.i.i.i9.noexc unwind label %ehcleanup

call.i.i.i9.noexc:                                ; preds = %if.then.i.i11
  %length.i8 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %agg.result, i32 0, i32 1
  %16 = bitcast %"class.ofw::BigBase"* %agg.result to i8**
  store i8* %call.i.i.i912, i8** %16, align 4, !tbaa !8
  store i32 %10, i32* %length.i8, align 4, !tbaa !14
  %17 = bitcast %"class.ofw::BigBase"* %call2 to i8**
  %18 = load i8*, i8** %17, align 4, !tbaa !8
  %mul.i.i10 = shl i32 %10, 2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %call.i.i.i912, i8* %18, i32 %mul.i.i10, i32 4, i1 false)
  %19 = bitcast i8* %18 to i32*
  br label %invoke.cont3

invoke.cont3:                                     ; preds = %invoke.cont.invoke.cont3_crit_edge, %call.i.i.i9.noexc
  %20 = phi i8* [ %11, %invoke.cont.invoke.cont3_crit_edge ], [ %18, %call.i.i.i9.noexc ]
  %21 = phi i32* [ %.pre, %invoke.cont.invoke.cont3_crit_edge ], [ %19, %call.i.i.i9.noexc ]
  %isnull.i = icmp eq i32* %21, null
  br i1 %isnull.i, label %"\01??1BigBase@ofw@@QAE@XZ.exit", label %delete.notnull.i

delete.notnull.i:                                 ; preds = %invoke.cont3
  call void @"\01??_V@YAXPAX@Z"(i8* %20) #18
  br label %"\01??1BigBase@ofw@@QAE@XZ.exit"

"\01??1BigBase@ofw@@QAE@XZ.exit":                 ; preds = %invoke.cont3, %delete.notnull.i
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #2
  ret void

ehcleanup:                                        ; preds = %if.then.i.i11, %"\01??0BigBase@ofw@@QAE@ABV01@@Z.exit"
  %22 = cleanuppad within none []
  %blocks.i14 = bitcast i64* %tmp to i32**
  %23 = load i32*, i32** %blocks.i14, align 4, !tbaa !8
  %isnull.i15 = icmp eq i32* %23, null
  br i1 %isnull.i15, label %"\01??1BigBase@ofw@@QAE@XZ.exit17", label %delete.notnull.i16

delete.notnull.i16:                               ; preds = %ehcleanup
  %24 = bitcast i32* %23 to i8*
  call void @"\01??_V@YAXPAX@Z"(i8* %24) #18 [ "funclet"(token %22) ]
  br label %"\01??1BigBase@ofw@@QAE@XZ.exit17"

"\01??1BigBase@ofw@@QAE@XZ.exit17":               ; preds = %ehcleanup, %delete.notnull.i16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #2
  cleanupret from %22 unwind to caller
}

; Function Attrs: nounwind readonly
define x86_thiscallcc zeroext i1 @"\01??8BigBase@ofw@@QBE_NABV01@@Z"(%"class.ofw::BigBase"* nocapture readonly %this, %"class.ofw::BigBase"* nocapture readonly dereferenceable(8) %integer) local_unnamed_addr #8 align 2 {
entry:
  %length = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  %0 = load i32, i32* %length, align 4, !tbaa !14
  %length2 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %integer, i32 0, i32 1
  %1 = load i32, i32* %length2, align 4, !tbaa !14
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %mul = shl i32 %0, 2
  %2 = bitcast %"class.ofw::BigBase"* %integer to i8**
  %3 = load i8*, i8** %2, align 4, !tbaa !8
  %4 = bitcast %"class.ofw::BigBase"* %this to i8**
  %5 = load i8*, i8** %4, align 4, !tbaa !8
  %call = tail call i32 @memcmp(i8* %5, i8* %3, i32 %mul)
  %tobool = icmp eq i32 %call, 0
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i1 [ %tobool, %if.then ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind readonly
define x86_thiscallcc zeroext i1 @"\01??9BigBase@ofw@@QBE_NABV01@@Z"(%"class.ofw::BigBase"* nocapture readonly %this, %"class.ofw::BigBase"* nocapture readonly dereferenceable(8) %integer) local_unnamed_addr #8 align 2 {
entry:
  %length.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  %0 = load i32, i32* %length.i, align 4, !tbaa !14
  %length2.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %integer, i32 0, i32 1
  %1 = load i32, i32* %length2.i, align 4, !tbaa !14
  %cmp.i = icmp eq i32 %0, %1
  br i1 %cmp.i, label %if.then.i, label %"\01??8BigBase@ofw@@QBE_NABV01@@Z.exit"

if.then.i:                                        ; preds = %entry
  %mul.i = shl i32 %0, 2
  %2 = bitcast %"class.ofw::BigBase"* %integer to i8**
  %3 = load i8*, i8** %2, align 4, !tbaa !8
  %4 = bitcast %"class.ofw::BigBase"* %this to i8**
  %5 = load i8*, i8** %4, align 4, !tbaa !8
  %call.i = tail call i32 @memcmp(i8* %5, i8* %3, i32 %mul.i) #2
  %tobool.i = icmp ne i32 %call.i, 0
  br label %"\01??8BigBase@ofw@@QBE_NABV01@@Z.exit"

"\01??8BigBase@ofw@@QBE_NABV01@@Z.exit":          ; preds = %entry, %if.then.i
  %retval.0.i = phi i1 [ %tobool.i, %if.then.i ], [ true, %entry ]
  ret i1 %retval.0.i
}

; Function Attrs: norecurse nounwind readonly
define x86_thiscallcc zeroext i1 @"\01??MBigBase@ofw@@QBE_NABV01@@Z"(%"class.ofw::BigBase"* nocapture readonly %this, %"class.ofw::BigBase"* nocapture readonly dereferenceable(8) %integer) local_unnamed_addr #10 align 2 {
entry:
  %length = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  %0 = load i32, i32* %length, align 4, !tbaa !14
  %length2 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %integer, i32 0, i32 1
  %1 = load i32, i32* %length2, align 4, !tbaa !14
  %cmp = icmp ugt i32 %0, %1
  br i1 %cmp, label %return, label %if.else

if.else:                                          ; preds = %entry
  %cmp5 = icmp ult i32 %0, %1
  br i1 %cmp5, label %return, label %if.else7

if.else7:                                         ; preds = %if.else
  %2 = or i32 %1, %0
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %return, label %if.else13

if.else13:                                        ; preds = %if.else7
  %blocks = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 0
  %4 = load i32*, i32** %blocks, align 4, !tbaa !8
  %blocks16 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %integer, i32 0, i32 0
  %5 = load i32*, i32** %blocks16, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %if.else13
  %ptr.0 = phi i32 [ %0, %if.else13 ], [ %dec, %for.cond ]
  %dec = add i32 %ptr.0, -1
  %arrayidx = getelementptr inbounds i32, i32* %4, i32 %dec
  %6 = load i32, i32* %arrayidx, align 4, !tbaa !15
  %arrayidx17 = getelementptr inbounds i32, i32* %5, i32 %dec
  %7 = load i32, i32* %arrayidx17, align 4, !tbaa !15
  %cmp18 = icmp ult i32 %6, %7
  br i1 %cmp18, label %return, label %for.cond

return:                                           ; preds = %for.cond, %if.else7, %if.else, %entry
  %retval.1 = phi i1 [ false, %entry ], [ true, %if.else ], [ false, %if.else7 ], [ true, %for.cond ]
  ret i1 %retval.1
}

; Function Attrs: norecurse nounwind readonly
define x86_thiscallcc zeroext i1 @"\01??OBigBase@ofw@@QBE_NABV01@@Z"(%"class.ofw::BigBase"* nocapture readonly %this, %"class.ofw::BigBase"* nocapture readonly dereferenceable(8) %integer) local_unnamed_addr #10 align 2 {
entry:
  %length.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %integer, i32 0, i32 1
  %0 = load i32, i32* %length.i, align 4, !tbaa !14
  %length2.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  %1 = load i32, i32* %length2.i, align 4, !tbaa !14
  %cmp.i = icmp ugt i32 %0, %1
  br i1 %cmp.i, label %"\01??MBigBase@ofw@@QBE_NABV01@@Z.exit", label %if.else.i

if.else.i:                                        ; preds = %entry
  %cmp5.i = icmp ult i32 %0, %1
  br i1 %cmp5.i, label %"\01??MBigBase@ofw@@QBE_NABV01@@Z.exit", label %if.else7.i

if.else7.i:                                       ; preds = %if.else.i
  %2 = or i32 %1, %0
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %"\01??MBigBase@ofw@@QBE_NABV01@@Z.exit", label %if.else13.i

if.else13.i:                                      ; preds = %if.else7.i
  %blocks.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %integer, i32 0, i32 0
  %4 = load i32*, i32** %blocks.i, align 4, !tbaa !8
  %blocks16.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 0
  %5 = load i32*, i32** %blocks16.i, align 4, !tbaa !8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i, %if.else13.i
  %ptr.0.i = phi i32 [ %0, %if.else13.i ], [ %dec.i, %for.cond.i ]
  %dec.i = add i32 %ptr.0.i, -1
  %arrayidx.i = getelementptr inbounds i32, i32* %4, i32 %dec.i
  %6 = load i32, i32* %arrayidx.i, align 4, !tbaa !15
  %arrayidx17.i = getelementptr inbounds i32, i32* %5, i32 %dec.i
  %7 = load i32, i32* %arrayidx17.i, align 4, !tbaa !15
  %cmp18.i = icmp ult i32 %6, %7
  br i1 %cmp18.i, label %"\01??MBigBase@ofw@@QBE_NABV01@@Z.exit", label %for.cond.i

"\01??MBigBase@ofw@@QBE_NABV01@@Z.exit":          ; preds = %for.cond.i, %entry, %if.else.i, %if.else7.i
  %retval.1.i = phi i1 [ false, %entry ], [ true, %if.else.i ], [ false, %if.else7.i ], [ true, %for.cond.i ]
  ret i1 %retval.1.i
}

; Function Attrs: norecurse nounwind readonly
define x86_thiscallcc zeroext i1 @"\01??NBigBase@ofw@@QBE_NABV01@@Z"(%"class.ofw::BigBase"* nocapture readonly %this, %"class.ofw::BigBase"* nocapture readonly dereferenceable(8) %integer) local_unnamed_addr #10 align 2 {
entry:
  %length.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %integer, i32 0, i32 1
  %0 = load i32, i32* %length.i, align 4, !tbaa !14
  %length2.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  %1 = load i32, i32* %length2.i, align 4, !tbaa !14
  %cmp.i = icmp ugt i32 %0, %1
  br i1 %cmp.i, label %"\01??MBigBase@ofw@@QBE_NABV01@@Z.exit", label %if.else.i

if.else.i:                                        ; preds = %entry
  %cmp5.i = icmp ult i32 %0, %1
  br i1 %cmp5.i, label %"\01??MBigBase@ofw@@QBE_NABV01@@Z.exit", label %if.else7.i

if.else7.i:                                       ; preds = %if.else.i
  %2 = or i32 %1, %0
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %"\01??MBigBase@ofw@@QBE_NABV01@@Z.exit", label %if.else13.i

if.else13.i:                                      ; preds = %if.else7.i
  %blocks.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %integer, i32 0, i32 0
  %4 = load i32*, i32** %blocks.i, align 4, !tbaa !8
  %blocks16.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 0
  %5 = load i32*, i32** %blocks16.i, align 4, !tbaa !8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i, %if.else13.i
  %ptr.0.i = phi i32 [ %0, %if.else13.i ], [ %dec.i, %for.cond.i ]
  %dec.i = add i32 %ptr.0.i, -1
  %arrayidx.i = getelementptr inbounds i32, i32* %4, i32 %dec.i
  %6 = load i32, i32* %arrayidx.i, align 4, !tbaa !15
  %arrayidx17.i = getelementptr inbounds i32, i32* %5, i32 %dec.i
  %7 = load i32, i32* %arrayidx17.i, align 4, !tbaa !15
  %cmp18.i = icmp ult i32 %6, %7
  br i1 %cmp18.i, label %"\01??MBigBase@ofw@@QBE_NABV01@@Z.exit", label %for.cond.i

"\01??MBigBase@ofw@@QBE_NABV01@@Z.exit":          ; preds = %for.cond.i, %entry, %if.else.i, %if.else7.i
  %retval.1.i = phi i1 [ true, %entry ], [ false, %if.else.i ], [ true, %if.else7.i ], [ false, %for.cond.i ]
  ret i1 %retval.1.i
}

; Function Attrs: norecurse nounwind readonly
define x86_thiscallcc zeroext i1 @"\01??PBigBase@ofw@@QBE_NABV01@@Z"(%"class.ofw::BigBase"* nocapture readonly %this, %"class.ofw::BigBase"* nocapture readonly dereferenceable(8) %integer) local_unnamed_addr #10 align 2 {
entry:
  %length.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  %0 = load i32, i32* %length.i, align 4, !tbaa !14
  %length2.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %integer, i32 0, i32 1
  %1 = load i32, i32* %length2.i, align 4, !tbaa !14
  %cmp.i = icmp ugt i32 %0, %1
  br i1 %cmp.i, label %"\01??MBigBase@ofw@@QBE_NABV01@@Z.exit", label %if.else.i

if.else.i:                                        ; preds = %entry
  %cmp5.i = icmp ult i32 %0, %1
  br i1 %cmp5.i, label %"\01??MBigBase@ofw@@QBE_NABV01@@Z.exit", label %if.else7.i

if.else7.i:                                       ; preds = %if.else.i
  %2 = or i32 %1, %0
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %"\01??MBigBase@ofw@@QBE_NABV01@@Z.exit", label %if.else13.i

if.else13.i:                                      ; preds = %if.else7.i
  %blocks.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 0
  %4 = load i32*, i32** %blocks.i, align 4, !tbaa !8
  %blocks16.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %integer, i32 0, i32 0
  %5 = load i32*, i32** %blocks16.i, align 4, !tbaa !8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i, %if.else13.i
  %ptr.0.i = phi i32 [ %0, %if.else13.i ], [ %dec.i, %for.cond.i ]
  %dec.i = add i32 %ptr.0.i, -1
  %arrayidx.i = getelementptr inbounds i32, i32* %4, i32 %dec.i
  %6 = load i32, i32* %arrayidx.i, align 4, !tbaa !15
  %arrayidx17.i = getelementptr inbounds i32, i32* %5, i32 %dec.i
  %7 = load i32, i32* %arrayidx17.i, align 4, !tbaa !15
  %cmp18.i = icmp ult i32 %6, %7
  br i1 %cmp18.i, label %"\01??MBigBase@ofw@@QBE_NABV01@@Z.exit", label %for.cond.i

"\01??MBigBase@ofw@@QBE_NABV01@@Z.exit":          ; preds = %for.cond.i, %entry, %if.else.i, %if.else7.i
  %retval.1.i = phi i1 [ true, %entry ], [ false, %if.else.i ], [ true, %if.else7.i ], [ false, %for.cond.i ]
  ret i1 %retval.1.i
}

; Function Attrs: norecurse nounwind readonly
define x86_thiscallcc zeroext i1 @"\01?iszero@BigBase@ofw@@QBE_NXZ"(%"class.ofw::BigBase"* nocapture readonly %this) local_unnamed_addr #10 align 2 {
entry:
  %length = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  %0 = load i32, i32* %length, align 4, !tbaa !14
  %cmp = icmp eq i32 %0, 0
  ret i1 %cmp
}

define x86_thiscallcc void @"\01?gcd@BigBase@ofw@@QBE?AV12@ABV12@@Z"(%"class.ofw::BigBase"* nocapture readonly %this, %"class.ofw::BigBase"* noalias nocapture sret %agg.result, %"class.ofw::BigBase"* nocapture readonly dereferenceable(8) %integer) local_unnamed_addr #1 align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %tmp2 = alloca %"class.ofw::BigBase", align 4
  %ref.tmp = alloca %"class.ofw::BigBase", align 4
  %blocks.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %agg.result, i32 0, i32 0
  store i32* null, i32** %blocks.i, align 4, !tbaa !8
  %length.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %agg.result, i32 0, i32 1
  store i32 0, i32* %length.i, align 4, !tbaa !14
  %0 = bitcast %"class.ofw::BigBase"* %tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #2
  %blocks.i37 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %tmp2, i32 0, i32 0
  store i32* null, i32** %blocks.i37, align 4, !tbaa !8
  %length.i38 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %tmp2, i32 0, i32 1
  store i32 0, i32* %length.i38, align 4, !tbaa !14
  %length.i49 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  %1 = load i32, i32* %length.i49, align 4, !tbaa !14
  %length2.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %integer, i32 0, i32 1
  %2 = load i32, i32* %length2.i, align 4, !tbaa !14
  %cmp.i = icmp ugt i32 %1, %2
  br i1 %cmp.i, label %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i74.thread", label %if.else.i

"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i74.thread": ; preds = %entry
  store i32* null, i32** %blocks.i, align 4, !tbaa !8
  store i32 0, i32* %length.i, align 4, !tbaa !14
  br label %if.then.i.i76

if.else.i:                                        ; preds = %entry
  %cmp5.i = icmp ult i32 %1, %2
  br i1 %cmp5.i, label %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i.thread", label %if.else7.i

"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i.thread":   ; preds = %if.else.i
  store i32* null, i32** %blocks.i, align 4, !tbaa !8
  store i32 0, i32* %length.i, align 4, !tbaa !14
  br label %if.then.i.i

if.else7.i:                                       ; preds = %if.else.i
  %3 = or i32 %2, %1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i74", label %if.else13.i

if.else13.i:                                      ; preds = %if.else7.i
  %blocks.i50 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 0
  %5 = load i32*, i32** %blocks.i50, align 4, !tbaa !8
  %blocks16.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %integer, i32 0, i32 0
  %6 = load i32*, i32** %blocks16.i, align 4, !tbaa !8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i, %if.else13.i
  %ptr.0.i = phi i32 [ %1, %if.else13.i ], [ %dec.i, %for.cond.i ]
  %dec.i = add i32 %ptr.0.i, -1
  %arrayidx.i = getelementptr inbounds i32, i32* %5, i32 %dec.i
  %7 = load i32, i32* %arrayidx.i, align 4, !tbaa !15
  %arrayidx17.i = getelementptr inbounds i32, i32* %6, i32 %dec.i
  %8 = load i32, i32* %arrayidx17.i, align 4, !tbaa !15
  %cmp18.i = icmp ult i32 %7, %8
  br i1 %cmp18.i, label %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i", label %for.cond.i

"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i":          ; preds = %for.cond.i
  store i32* null, i32** %blocks.i, align 4, !tbaa !8
  store i32 0, i32* %length.i, align 4, !tbaa !14
  %cmp.i.i = icmp eq i32 %2, 0
  br i1 %cmp.i.i, label %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i62", label %if.then.i.i

if.then.i.i:                                      ; preds = %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i.thread", %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i"
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 4)
  %10 = extractvalue { i32, i1 } %9, 1
  %11 = extractvalue { i32, i1 } %9, 0
  %12 = select i1 %10, i32 -1, i32 %11
  %call.i.i.i55 = invoke i8* @"\01??_U@YAPAXI@Z"(i32 %12) #17
          to label %call.i.i.i.noexc unwind label %ehcleanup29

call.i.i.i.noexc:                                 ; preds = %if.then.i.i
  %13 = bitcast %"class.ofw::BigBase"* %agg.result to i8**
  store i8* %call.i.i.i55, i8** %13, align 4, !tbaa !8
  store i32 %2, i32* %length.i, align 4, !tbaa !14
  %14 = bitcast %"class.ofw::BigBase"* %integer to i8**
  %15 = load i8*, i8** %14, align 4, !tbaa !8
  %mul.i.i = shl i32 %2, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %call.i.i.i55, i8* %15, i32 %mul.i.i, i32 4, i1 false)
  %16 = bitcast i8* %call.i.i.i55 to i32*
  br label %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i62"

"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i62":        ; preds = %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i", %call.i.i.i.noexc
  %17 = phi i8* [ null, %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i" ], [ %call.i.i.i55, %call.i.i.i.noexc ]
  %18 = phi i32* [ null, %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i" ], [ %16, %call.i.i.i.noexc ]
  %19 = phi i32 [ 0, %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i" ], [ %2, %call.i.i.i.noexc ]
  store i32* null, i32** %blocks.i37, align 4, !tbaa !8
  store i32 0, i32* %length.i38, align 4, !tbaa !14
  %cmp.i.i61 = icmp eq i32 %1, 0
  br i1 %cmp.i.i61, label %"\01??1BigBase@ofw@@QAE@XZ.exit54", label %if.then.i.i64

if.then.i.i64:                                    ; preds = %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i62"
  %20 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4)
  %21 = extractvalue { i32, i1 } %20, 1
  %22 = extractvalue { i32, i1 } %20, 0
  %23 = select i1 %21, i32 -1, i32 %22
  %call.i.i.i66 = invoke i8* @"\01??_U@YAPAXI@Z"(i32 %23) #17
          to label %call.i.i.i.noexc65 unwind label %ehcleanup29

call.i.i.i.noexc65:                               ; preds = %if.then.i.i64
  %24 = bitcast %"class.ofw::BigBase"* %tmp2 to i8**
  store i8* %call.i.i.i66, i8** %24, align 4, !tbaa !8
  store i32 %1, i32* %length.i38, align 4, !tbaa !14
  %25 = bitcast %"class.ofw::BigBase"* %this to i8**
  %26 = load i8*, i8** %25, align 4, !tbaa !8
  %mul.i.i63 = shl i32 %1, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %call.i.i.i66, i8* %26, i32 %mul.i.i63, i32 4, i1 false)
  br label %while.body.lr.ph

"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i74":        ; preds = %if.else7.i
  store i32* null, i32** %blocks.i, align 4, !tbaa !8
  store i32 0, i32* %length.i, align 4, !tbaa !14
  %cmp.i.i73 = icmp eq i32 %1, 0
  br i1 %cmp.i.i73, label %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i86", label %if.then.i.i76

if.then.i.i76:                                    ; preds = %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i74.thread", %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i74"
  %27 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4)
  %28 = extractvalue { i32, i1 } %27, 1
  %29 = extractvalue { i32, i1 } %27, 0
  %30 = select i1 %28, i32 -1, i32 %29
  %call.i.i.i78 = invoke i8* @"\01??_U@YAPAXI@Z"(i32 %30) #17
          to label %call.i.i.i.noexc77 unwind label %ehcleanup29

call.i.i.i.noexc77:                               ; preds = %if.then.i.i76
  %31 = bitcast %"class.ofw::BigBase"* %agg.result to i8**
  store i8* %call.i.i.i78, i8** %31, align 4, !tbaa !8
  store i32 %1, i32* %length.i, align 4, !tbaa !14
  %32 = bitcast %"class.ofw::BigBase"* %this to i8**
  %33 = load i8*, i8** %32, align 4, !tbaa !8
  %mul.i.i75 = shl i32 %1, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %call.i.i.i78, i8* %33, i32 %mul.i.i75, i32 4, i1 false)
  %34 = bitcast i8* %call.i.i.i78 to i32*
  br label %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i86"

"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i86":        ; preds = %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i74", %call.i.i.i.noexc77
  %35 = phi i8* [ null, %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i74" ], [ %call.i.i.i78, %call.i.i.i.noexc77 ]
  %36 = phi i32* [ null, %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i74" ], [ %34, %call.i.i.i.noexc77 ]
  %37 = phi i32 [ 0, %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i74" ], [ %1, %call.i.i.i.noexc77 ]
  store i32* null, i32** %blocks.i37, align 4, !tbaa !8
  store i32 0, i32* %length.i38, align 4, !tbaa !14
  %cmp.i.i85 = icmp eq i32 %2, 0
  br i1 %cmp.i.i85, label %"\01??1BigBase@ofw@@QAE@XZ.exit54", label %if.then.i.i88

if.then.i.i88:                                    ; preds = %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i86"
  %38 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 4)
  %39 = extractvalue { i32, i1 } %38, 1
  %40 = extractvalue { i32, i1 } %38, 0
  %41 = select i1 %39, i32 -1, i32 %40
  %call.i.i.i90 = invoke i8* @"\01??_U@YAPAXI@Z"(i32 %41) #17
          to label %call.i.i.i.noexc89 unwind label %ehcleanup29

call.i.i.i.noexc89:                               ; preds = %if.then.i.i88
  %42 = bitcast %"class.ofw::BigBase"* %tmp2 to i8**
  store i8* %call.i.i.i90, i8** %42, align 4, !tbaa !8
  store i32 %2, i32* %length.i38, align 4, !tbaa !14
  %43 = bitcast %"class.ofw::BigBase"* %integer to i8**
  %44 = load i8*, i8** %43, align 4, !tbaa !8
  %mul.i.i87 = shl i32 %2, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %call.i.i.i90, i8* %44, i32 %mul.i.i87, i32 4, i1 false)
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %call.i.i.i.noexc65, %call.i.i.i.noexc89
  %call.i.i.i66.sink = phi i8* [ %call.i.i.i66, %call.i.i.i.noexc65 ], [ %call.i.i.i90, %call.i.i.i.noexc89 ]
  %45 = phi i8* [ %17, %call.i.i.i.noexc65 ], [ %35, %call.i.i.i.noexc89 ]
  %46 = phi i32* [ %18, %call.i.i.i.noexc65 ], [ %36, %call.i.i.i.noexc89 ]
  %47 = phi i32 [ %19, %call.i.i.i.noexc65 ], [ %37, %call.i.i.i.noexc89 ]
  %48 = phi i32 [ %1, %call.i.i.i.noexc65 ], [ %2, %call.i.i.i.noexc89 ]
  %49 = bitcast %"class.ofw::BigBase"* %tmp2 to i8**
  %50 = bitcast %"class.ofw::BigBase"* %agg.result to i8**
  %51 = bitcast %"class.ofw::BigBase"* %ref.tmp to i8*
  %length.i.i101 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %ref.tmp, i32 0, i32 1
  %blocks.i109 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %ref.tmp, i32 0, i32 0
  %52 = bitcast %"class.ofw::BigBase"* %ref.tmp to i8**
  br label %while.body

while.body:                                       ; preds = %invoke.cont27, %while.body.lr.ph
  %53 = phi i8* [ %call.i.i.i66.sink, %while.body.lr.ph ], [ %call.i.i.i135, %invoke.cont27 ]
  %54 = phi i8* [ %45, %while.body.lr.ph ], [ %call.i.i.i123, %invoke.cont27 ]
  %55 = phi i32* [ %46, %while.body.lr.ph ], [ %76, %invoke.cont27 ]
  %56 = phi i32 [ %47, %while.body.lr.ph ], [ %57, %invoke.cont27 ]
  %57 = phi i32 [ %48, %while.body.lr.ph ], [ %tmp3.sroa.10.0, %invoke.cont27 ]
  %tmp3.sroa.0.0159 = phi i32* [ null, %while.body.lr.ph ], [ %tmp3.sroa.0.1, %invoke.cont27 ]
  %58 = phi i8* [ null, %while.body.lr.ph ], [ %71, %invoke.cont27 ]
  %59 = bitcast i8* %53 to i32*
  %cmp.i96 = icmp eq i32 %56, %57
  br i1 %cmp.i96, label %invoke.cont17, label %if.end20

invoke.cont17:                                    ; preds = %while.body
  %mul.i = shl i32 %56, 2
  %call.i = tail call i32 @memcmp(i8* %54, i8* nonnull %53, i32 %mul.i) #2
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %while.end, label %if.end20

if.end20:                                         ; preds = %while.body, %invoke.cont17
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %51) #2
  invoke x86_thiscallcc void @"\01??LBigBase@ofw@@QBE?AV01@ABV01@@Z"(%"class.ofw::BigBase"* nonnull %agg.result, %"class.ofw::BigBase"* nonnull sret %ref.tmp, %"class.ofw::BigBase"* nonnull dereferenceable(8) %tmp2)
          to label %invoke.cont21 unwind label %ehcleanup29

invoke.cont21:                                    ; preds = %if.end20
  %cmp.i.i.i98 = icmp eq i32* %tmp3.sroa.0.0159, null
  br i1 %cmp.i.i.i98, label %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i103", label %delete.notnull.i.i.i99

delete.notnull.i.i.i99:                           ; preds = %invoke.cont21
  tail call void @"\01??_V@YAXPAX@Z"(i8* %58) #18
  br label %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i103"

"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i103":       ; preds = %delete.notnull.i.i.i99, %invoke.cont21
  %60 = load i32, i32* %length.i.i101, align 4, !tbaa !14
  %cmp.i.i102 = icmp eq i32 %60, 0
  br i1 %cmp.i.i102, label %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i103.invoke.cont22_crit_edge", label %if.then.i.i105

"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i103.invoke.cont22_crit_edge": ; preds = %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i103"
  %.pre = load i32*, i32** %blocks.i109, align 4, !tbaa !8
  %61 = bitcast i32* %.pre to i8*
  br label %invoke.cont22

if.then.i.i105:                                   ; preds = %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i103"
  %62 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %60, i32 4)
  %63 = extractvalue { i32, i1 } %62, 1
  %64 = extractvalue { i32, i1 } %62, 0
  %65 = select i1 %63, i32 -1, i32 %64
  %call.i.i.i107 = invoke i8* @"\01??_U@YAPAXI@Z"(i32 %65) #17
          to label %call.i.i.i.noexc106 unwind label %ehcleanup

call.i.i.i.noexc106:                              ; preds = %if.then.i.i105
  %66 = bitcast i8* %call.i.i.i107 to i32*
  %67 = load i8*, i8** %52, align 4, !tbaa !8
  %mul.i.i104 = shl i32 %60, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %call.i.i.i107, i8* %67, i32 %mul.i.i104, i32 4, i1 false)
  %68 = bitcast i8* %67 to i32*
  br label %invoke.cont22

invoke.cont22:                                    ; preds = %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i103.invoke.cont22_crit_edge", %call.i.i.i.noexc106
  %69 = phi i8* [ %61, %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i103.invoke.cont22_crit_edge" ], [ %67, %call.i.i.i.noexc106 ]
  %70 = phi i32* [ %.pre, %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i103.invoke.cont22_crit_edge" ], [ %68, %call.i.i.i.noexc106 ]
  %tmp3.sroa.10.0 = phi i32 [ 0, %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i103.invoke.cont22_crit_edge" ], [ %60, %call.i.i.i.noexc106 ]
  %71 = phi i8* [ null, %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i103.invoke.cont22_crit_edge" ], [ %call.i.i.i107, %call.i.i.i.noexc106 ]
  %tmp3.sroa.0.1 = phi i32* [ null, %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i103.invoke.cont22_crit_edge" ], [ %66, %call.i.i.i.noexc106 ]
  %isnull.i110 = icmp eq i32* %70, null
  br i1 %isnull.i110, label %"\01??1BigBase@ofw@@QAE@XZ.exit112", label %delete.notnull.i111

delete.notnull.i111:                              ; preds = %invoke.cont22
  tail call void @"\01??_V@YAXPAX@Z"(i8* %69) #18
  br label %"\01??1BigBase@ofw@@QAE@XZ.exit112"

"\01??1BigBase@ofw@@QAE@XZ.exit112":              ; preds = %invoke.cont22, %delete.notnull.i111
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %51) #2
  %cmp.i.i.i114 = icmp eq i32* %55, null
  br i1 %cmp.i.i.i114, label %if.then.i.i121, label %delete.notnull.i.i.i115

delete.notnull.i.i.i115:                          ; preds = %"\01??1BigBase@ofw@@QAE@XZ.exit112"
  tail call void @"\01??_V@YAXPAX@Z"(i8* %54) #18
  br label %if.then.i.i121

if.then.i.i121:                                   ; preds = %"\01??1BigBase@ofw@@QAE@XZ.exit112", %delete.notnull.i.i.i115
  store i32* null, i32** %blocks.i, align 4, !tbaa !8
  store i32 0, i32* %length.i, align 4, !tbaa !14
  %72 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %57, i32 4)
  %73 = extractvalue { i32, i1 } %72, 1
  %74 = extractvalue { i32, i1 } %72, 0
  %75 = select i1 %73, i32 -1, i32 %74
  %call.i.i.i123 = invoke i8* @"\01??_U@YAPAXI@Z"(i32 %75) #17
          to label %invoke.cont25 unwind label %ehcleanup29

invoke.cont25:                                    ; preds = %if.then.i.i121
  store i8* %call.i.i.i123, i8** %50, align 4, !tbaa !8
  store i32 %57, i32* %length.i, align 4, !tbaa !14
  %mul.i.i120 = shl i32 %57, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %call.i.i.i123, i8* nonnull %53, i32 %mul.i.i120, i32 4, i1 false)
  %76 = bitcast i8* %call.i.i.i123 to i32*
  tail call void @"\01??_V@YAXPAX@Z"(i8* nonnull %53) #18
  store i32* null, i32** %blocks.i37, align 4, !tbaa !8
  store i32 0, i32* %length.i38, align 4, !tbaa !14
  %cmp.i.i130 = icmp eq i32 %tmp3.sroa.10.0, 0
  br i1 %cmp.i.i130, label %while.end, label %if.then.i.i133

if.then.i.i133:                                   ; preds = %invoke.cont25
  %77 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %tmp3.sroa.10.0, i32 4)
  %78 = extractvalue { i32, i1 } %77, 1
  %79 = extractvalue { i32, i1 } %77, 0
  %80 = select i1 %78, i32 -1, i32 %79
  %call.i.i.i135 = invoke i8* @"\01??_U@YAPAXI@Z"(i32 %80) #17
          to label %invoke.cont27 unwind label %ehcleanup29

invoke.cont27:                                    ; preds = %if.then.i.i133
  store i8* %call.i.i.i135, i8** %49, align 4, !tbaa !8
  store i32 %tmp3.sroa.10.0, i32* %length.i38, align 4, !tbaa !14
  %mul.i.i132 = shl i32 %tmp3.sroa.10.0, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %call.i.i.i135, i8* %71, i32 %mul.i.i132, i32 4, i1 false)
  br label %while.body

ehcleanup:                                        ; preds = %if.then.i.i105
  %81 = cleanuppad within none []
  %82 = load i32*, i32** %blocks.i109, align 4, !tbaa !8
  %isnull.i138 = icmp eq i32* %82, null
  br i1 %isnull.i138, label %"\01??1BigBase@ofw@@QAE@XZ.exit140", label %delete.notnull.i139

delete.notnull.i139:                              ; preds = %ehcleanup
  %83 = bitcast i32* %82 to i8*
  call void @"\01??_V@YAXPAX@Z"(i8* %83) #18 [ "funclet"(token %81) ]
  br label %"\01??1BigBase@ofw@@QAE@XZ.exit140"

"\01??1BigBase@ofw@@QAE@XZ.exit140":              ; preds = %ehcleanup, %delete.notnull.i139
  cleanupret from %81 unwind label %ehcleanup29

while.end:                                        ; preds = %invoke.cont25, %invoke.cont17
  %84 = phi i8* [ %53, %invoke.cont17 ], [ null, %invoke.cont25 ]
  %85 = phi i32* [ %59, %invoke.cont17 ], [ null, %invoke.cont25 ]
  %.lcssa = phi i8* [ %58, %invoke.cont17 ], [ %71, %invoke.cont25 ]
  %tmp3.sroa.0.0.lcssa = phi i32* [ %tmp3.sroa.0.0159, %invoke.cont17 ], [ %tmp3.sroa.0.1, %invoke.cont25 ]
  %isnull.i142 = icmp eq i32* %tmp3.sroa.0.0.lcssa, null
  br i1 %isnull.i142, label %"\01??1BigBase@ofw@@QAE@XZ.exit144", label %delete.notnull.i143

delete.notnull.i143:                              ; preds = %while.end
  tail call void @"\01??_V@YAXPAX@Z"(i8* %.lcssa) #18
  br label %"\01??1BigBase@ofw@@QAE@XZ.exit144"

"\01??1BigBase@ofw@@QAE@XZ.exit144":              ; preds = %while.end, %delete.notnull.i143
  %isnull.i52 = icmp eq i32* %85, null
  br i1 %isnull.i52, label %"\01??1BigBase@ofw@@QAE@XZ.exit54", label %delete.notnull.i53

delete.notnull.i53:                               ; preds = %"\01??1BigBase@ofw@@QAE@XZ.exit144"
  tail call void @"\01??_V@YAXPAX@Z"(i8* %84) #18
  br label %"\01??1BigBase@ofw@@QAE@XZ.exit54"

"\01??1BigBase@ofw@@QAE@XZ.exit54":               ; preds = %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i62", %"\01?init@BigBase@ofw@@AAEXXZ.exit.i.i86", %"\01??1BigBase@ofw@@QAE@XZ.exit144", %delete.notnull.i53
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #2
  ret void

ehcleanup29:                                      ; preds = %if.then.i.i133, %if.then.i.i121, %if.then.i.i88, %if.then.i.i76, %if.then.i.i64, %if.then.i.i, %if.end20, %"\01??1BigBase@ofw@@QAE@XZ.exit140"
  %86 = phi i8* [ %call.i.i.i123, %if.then.i.i133 ], [ null, %if.then.i.i121 ], [ %54, %"\01??1BigBase@ofw@@QAE@XZ.exit140" ], [ %54, %if.end20 ], [ %17, %if.then.i.i64 ], [ null, %if.then.i.i ], [ %35, %if.then.i.i88 ], [ null, %if.then.i.i76 ]
  %87 = phi i32* [ %76, %if.then.i.i133 ], [ null, %if.then.i.i121 ], [ %55, %"\01??1BigBase@ofw@@QAE@XZ.exit140" ], [ %55, %if.end20 ], [ %18, %if.then.i.i64 ], [ null, %if.then.i.i ], [ %36, %if.then.i.i88 ], [ null, %if.then.i.i76 ]
  %88 = phi i8* [ null, %if.then.i.i133 ], [ %53, %if.then.i.i121 ], [ %53, %"\01??1BigBase@ofw@@QAE@XZ.exit140" ], [ %53, %if.end20 ], [ null, %if.then.i.i64 ], [ null, %if.then.i.i ], [ null, %if.then.i.i88 ], [ null, %if.then.i.i76 ]
  %89 = phi i32* [ null, %if.then.i.i133 ], [ %59, %if.then.i.i121 ], [ %59, %"\01??1BigBase@ofw@@QAE@XZ.exit140" ], [ %59, %if.end20 ], [ null, %if.then.i.i64 ], [ null, %if.then.i.i ], [ null, %if.then.i.i88 ], [ null, %if.then.i.i76 ]
  %90 = phi i8* [ %71, %if.then.i.i133 ], [ %71, %if.then.i.i121 ], [ null, %"\01??1BigBase@ofw@@QAE@XZ.exit140" ], [ %58, %if.end20 ], [ null, %if.then.i.i64 ], [ null, %if.then.i.i ], [ null, %if.then.i.i88 ], [ null, %if.then.i.i76 ]
  %tmp3.sroa.0.2 = phi i32* [ %tmp3.sroa.0.1, %if.then.i.i133 ], [ %tmp3.sroa.0.1, %if.then.i.i121 ], [ null, %"\01??1BigBase@ofw@@QAE@XZ.exit140" ], [ %tmp3.sroa.0.0159, %if.end20 ], [ null, %if.then.i.i64 ], [ null, %if.then.i.i ], [ null, %if.then.i.i88 ], [ null, %if.then.i.i76 ]
  %91 = cleanuppad within none []
  %isnull.i46 = icmp eq i32* %tmp3.sroa.0.2, null
  br i1 %isnull.i46, label %"\01??1BigBase@ofw@@QAE@XZ.exit48", label %delete.notnull.i47

delete.notnull.i47:                               ; preds = %ehcleanup29
  call void @"\01??_V@YAXPAX@Z"(i8* %90) #18 [ "funclet"(token %91) ]
  br label %"\01??1BigBase@ofw@@QAE@XZ.exit48"

"\01??1BigBase@ofw@@QAE@XZ.exit48":               ; preds = %ehcleanup29, %delete.notnull.i47
  %isnull.i40 = icmp eq i32* %89, null
  br i1 %isnull.i40, label %"\01??1BigBase@ofw@@QAE@XZ.exit42", label %delete.notnull.i41

delete.notnull.i41:                               ; preds = %"\01??1BigBase@ofw@@QAE@XZ.exit48"
  call void @"\01??_V@YAXPAX@Z"(i8* %88) #18 [ "funclet"(token %91) ]
  br label %"\01??1BigBase@ofw@@QAE@XZ.exit42"

"\01??1BigBase@ofw@@QAE@XZ.exit42":               ; preds = %"\01??1BigBase@ofw@@QAE@XZ.exit48", %delete.notnull.i41
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #2
  %isnull.i = icmp eq i32* %87, null
  br i1 %isnull.i, label %"\01??1BigBase@ofw@@QAE@XZ.exit", label %delete.notnull.i

delete.notnull.i:                                 ; preds = %"\01??1BigBase@ofw@@QAE@XZ.exit42"
  call void @"\01??_V@YAXPAX@Z"(i8* %86) #18 [ "funclet"(token %91) ]
  br label %"\01??1BigBase@ofw@@QAE@XZ.exit"

"\01??1BigBase@ofw@@QAE@XZ.exit":                 ; preds = %"\01??1BigBase@ofw@@QAE@XZ.exit42", %delete.notnull.i
  cleanupret from %91 unwind to caller
}

define x86_thiscallcc void @"\01?lcm@BigBase@ofw@@QBE?AV12@ABV12@@Z"(%"class.ofw::BigBase"* nocapture readonly %this, %"class.ofw::BigBase"* noalias nocapture sret %agg.result, %"class.ofw::BigBase"* nocapture readonly dereferenceable(8) %integer) local_unnamed_addr #1 align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %temp.lvalue = alloca %"class.ofw::BigBase", align 4
  %ref.tmp = alloca %"class.ofw::BigBase", align 4
  call x86_thiscallcc void @"\01??DBigBase@ofw@@QBE?AV01@ABV01@@Z"(%"class.ofw::BigBase"* %this, %"class.ofw::BigBase"* nonnull sret %temp.lvalue, %"class.ofw::BigBase"* nonnull dereferenceable(8) %integer)
  %0 = bitcast %"class.ofw::BigBase"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #2
  invoke x86_thiscallcc void @"\01?gcd@BigBase@ofw@@QBE?AV12@ABV12@@Z"(%"class.ofw::BigBase"* %this, %"class.ofw::BigBase"* nonnull sret %ref.tmp, %"class.ofw::BigBase"* nonnull dereferenceable(8) %integer)
          to label %invoke.cont unwind label %ehcleanup3

invoke.cont:                                      ; preds = %entry
  invoke x86_thiscallcc void @"\01??KBigBase@ofw@@QBE?AV01@ABV01@@Z"(%"class.ofw::BigBase"* nonnull %temp.lvalue, %"class.ofw::BigBase"* sret %agg.result, %"class.ofw::BigBase"* nonnull dereferenceable(8) %ref.tmp)
          to label %invoke.cont2 unwind label %ehcleanup

invoke.cont2:                                     ; preds = %invoke.cont
  %blocks.i = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %ref.tmp, i32 0, i32 0
  %1 = load i32*, i32** %blocks.i, align 4, !tbaa !8
  %isnull.i = icmp eq i32* %1, null
  br i1 %isnull.i, label %"\01??1BigBase@ofw@@QAE@XZ.exit", label %delete.notnull.i

delete.notnull.i:                                 ; preds = %invoke.cont2
  %2 = bitcast i32* %1 to i8*
  tail call void @"\01??_V@YAXPAX@Z"(i8* %2) #18
  br label %"\01??1BigBase@ofw@@QAE@XZ.exit"

"\01??1BigBase@ofw@@QAE@XZ.exit":                 ; preds = %invoke.cont2, %delete.notnull.i
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #2
  %blocks.i6 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %temp.lvalue, i32 0, i32 0
  %3 = load i32*, i32** %blocks.i6, align 4, !tbaa !8
  %isnull.i7 = icmp eq i32* %3, null
  br i1 %isnull.i7, label %"\01??1BigBase@ofw@@QAE@XZ.exit9", label %delete.notnull.i8

delete.notnull.i8:                                ; preds = %"\01??1BigBase@ofw@@QAE@XZ.exit"
  %4 = bitcast i32* %3 to i8*
  tail call void @"\01??_V@YAXPAX@Z"(i8* %4) #18
  br label %"\01??1BigBase@ofw@@QAE@XZ.exit9"

"\01??1BigBase@ofw@@QAE@XZ.exit9":                ; preds = %"\01??1BigBase@ofw@@QAE@XZ.exit", %delete.notnull.i8
  ret void

ehcleanup:                                        ; preds = %invoke.cont
  %5 = cleanuppad within none []
  %blocks.i10 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %ref.tmp, i32 0, i32 0
  %6 = load i32*, i32** %blocks.i10, align 4, !tbaa !8
  %isnull.i11 = icmp eq i32* %6, null
  br i1 %isnull.i11, label %"\01??1BigBase@ofw@@QAE@XZ.exit13", label %delete.notnull.i12

delete.notnull.i12:                               ; preds = %ehcleanup
  %7 = bitcast i32* %6 to i8*
  call void @"\01??_V@YAXPAX@Z"(i8* %7) #18 [ "funclet"(token %5) ]
  br label %"\01??1BigBase@ofw@@QAE@XZ.exit13"

"\01??1BigBase@ofw@@QAE@XZ.exit13":               ; preds = %ehcleanup, %delete.notnull.i12
  cleanupret from %5 unwind label %ehcleanup3

ehcleanup3:                                       ; preds = %"\01??1BigBase@ofw@@QAE@XZ.exit13", %entry
  %8 = cleanuppad within none []
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #2
  %blocks.i14 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %temp.lvalue, i32 0, i32 0
  %9 = load i32*, i32** %blocks.i14, align 4, !tbaa !8
  %isnull.i15 = icmp eq i32* %9, null
  br i1 %isnull.i15, label %"\01??1BigBase@ofw@@QAE@XZ.exit17", label %delete.notnull.i16

delete.notnull.i16:                               ; preds = %ehcleanup3
  %10 = bitcast i32* %9 to i8*
  call void @"\01??_V@YAXPAX@Z"(i8* %10) #18 [ "funclet"(token %8) ]
  br label %"\01??1BigBase@ofw@@QAE@XZ.exit17"

"\01??1BigBase@ofw@@QAE@XZ.exit17":               ; preds = %ehcleanup3, %delete.notnull.i16
  cleanupret from %8 unwind to caller
}

define x86_thiscallcc void @"\01?to_string@BigBase@ofw@@QBE?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@XZ"(%"class.ofw::BigBase"* nocapture readonly %this, %"class.std::basic_string"* noalias sret %agg.result) local_unnamed_addr #1 align 2 personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
entry:
  %agg.tmp.i.i.i166 = alloca %class.anon, align 4
  %agg.tmp.i.i.i.i.i = alloca %class.anon, align 4
  %_Buff.i.i = alloca [21 x i8], align 1
  %length = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  %0 = load i32, i32* %length, align 4, !tbaa !14
  switch i32 %0, label %if.end7 [
    i32 1, label %if.then
    i32 0, label %if.then4
  ]

if.then:                                          ; preds = %entry
  %blocks = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 0
  %1 = load i32*, i32** %blocks, align 4, !tbaa !8
  %2 = load i32, i32* %1, align 4, !tbaa !15
  %3 = getelementptr inbounds [21 x i8], [21 x i8]* %_Buff.i.i, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %3) #2, !noalias !26
  %add.ptr.i.i.i = getelementptr inbounds [21 x i8], [21 x i8]* %_Buff.i.i, i32 0, i32 21
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i, %if.then
  %_RNext.addr.0.i.idx.i.i = phi i32 [ 0, %if.then ], [ %_RNext.addr.0.i.add.i.i, %do.body.i.i.i ]
  %_UVal_trunc.0.i.i.i = phi i32 [ %2, %if.then ], [ %div.i.i.i, %do.body.i.i.i ]
  %rem.i.i.i = urem i32 %_UVal_trunc.0.i.i.i, 10
  %4 = trunc i32 %rem.i.i.i to i8
  %conv.i.i.i = or i8 %4, 48
  %_RNext.addr.0.i.add.i.i = add nsw i32 %_RNext.addr.0.i.idx.i.i, -1
  %incdec.ptr.i.ptr.i.i = getelementptr inbounds i8, i8* %add.ptr.i.i.i, i32 %_RNext.addr.0.i.add.i.i
  store i8 %conv.i.i.i, i8* %incdec.ptr.i.ptr.i.i, align 1, !tbaa !18, !noalias !26
  %div.i.i.i = udiv i32 %_UVal_trunc.0.i.i.i, 10
  %5 = icmp ugt i32 %_UVal_trunc.0.i.i.i, 9
  br i1 %5, label %do.body.i.i.i, label %"\01??$_UIntegral_to_buff@DI@std@@YAPADPADI@Z.exit.i.i"

"\01??$_UIntegral_to_buff@DI@std@@YAPADPADI@Z.exit.i.i": ; preds = %do.body.i.i.i
  %_Mysize.i.i.i.i.i.i = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %agg.result, i32 0, i32 0, i32 0, i32 0, i32 1
  %_Myres.i.i.i.i.i.i = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %agg.result, i32 0, i32 0, i32 0, i32 0, i32 2
  %6 = bitcast i32* %_Mysize.i.i.i.i.i.i to i64*
  store i64 0, i64* %6, align 4, !alias.scope !26
  store i32 15, i32* %_Myres.i.i.i.i.i.i, align 4, !tbaa !16, !alias.scope !26
  %arrayidx.i.i.i.i = bitcast %"class.std::basic_string"* %agg.result to i8*
  store i8 0, i8* %arrayidx.i.i.i.i, align 4, !tbaa !18, !alias.scope !26
  %cmp.i.i.i.i = icmp eq i32 %_RNext.addr.0.i.add.i.i, 0
  br i1 %cmp.i.i.i.i, label %"\01?to_string@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@I@Z.exit", label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %"\01??$_UIntegral_to_buff@DI@std@@YAPADPADI@Z.exit.i.i"
  %diff.neg.i.i = sub i32 1, %_RNext.addr.0.i.idx.i.i
  %7 = getelementptr inbounds %class.anon, %class.anon* %agg.tmp.i.i.i.i.i, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %7), !noalias !26
  %cmp.i.i.i.i.i = icmp ugt i32 %diff.neg.i.i, 15
  br i1 %cmp.i.i.i.i.i, label %if.end.i.i.i.i.i, label %"\01?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QAEPADXZ.exit.i.i.i.i.i"

"\01?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QAEPADXZ.exit.i.i.i.i.i": ; preds = %if.then.i.i.i.i
  store i32 %diff.neg.i.i, i32* %_Mysize.i.i.i.i.i.i, align 4, !tbaa !19, !alias.scope !26
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %arrayidx.i.i.i.i, i8* %incdec.ptr.i.ptr.i.i, i32 %diff.neg.i.i, i32 1, i1 false) #2
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %arrayidx.i.i.i.i, i32 %diff.neg.i.i
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !18, !alias.scope !26
  br label %"\01?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV12@QBDI@Z.exit.i.i.i.i"

if.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  %call4.i.i8.i.i.i160 = call x86_thiscallcc dereferenceable(24) %"class.std::basic_string"* @"\01??$_Reallocate_for@V<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV34@QBDI@Z@PBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV01@IV<lambda_1>@?0??assign@01@QAEAAV01@QBDI@Z@PBD@Z"(%"class.std::basic_string"* nonnull %agg.result, i32 %diff.neg.i.i, %class.anon* byval nonnull align 4 %agg.tmp.i.i.i.i.i, i8* %incdec.ptr.i.ptr.i.i)
  br label %"\01?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV12@QBDI@Z.exit.i.i.i.i"

"\01?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV12@QBDI@Z.exit.i.i.i.i": ; preds = %if.end.i.i.i.i.i, %"\01?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QAEPADXZ.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %7), !noalias !26
  br label %"\01?to_string@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@I@Z.exit"

"\01?to_string@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@I@Z.exit": ; preds = %"\01??$_UIntegral_to_buff@DI@std@@YAPADPADI@Z.exit.i.i", %"\01?assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV12@QBDI@Z.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %3) #2, !noalias !26
  br label %"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit203"

if.then4:                                         ; preds = %entry
  %_Mysize.i.i.i.i161 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %agg.result, i32 0, i32 0, i32 0, i32 0, i32 1
  %_Myres.i.i.i.i162 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %agg.result, i32 0, i32 0, i32 0, i32 0, i32 2
  store i32 15, i32* %_Myres.i.i.i.i162, align 4, !tbaa !16
  %arrayidx.i.i163 = bitcast %"class.std::basic_string"* %agg.result to i8*
  store i32 1, i32* %_Mysize.i.i.i.i161, align 4, !tbaa !19
  store i8 48, i8* %arrayidx.i.i163, align 4
  %arrayidx.i.i.i = getelementptr inbounds i8, i8* %arrayidx.i.i163, i32 1
  store i8 0, i8* %arrayidx.i.i.i, align 1, !tbaa !18
  br label %"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit203"

if.end7:                                          ; preds = %entry
  %mul = mul i32 %0, 10
  %div = udiv i32 %mul, 9
  %add = shl nuw nsw i32 %div, 2
  %8 = add nuw i32 %add, 8
  %call9 = tail call i8* @"\01??_U@YAPAXI@Z"(i32 %8) #17
  %9 = bitcast i8* %call9 to i32*
  tail call void @llvm.memset.p0i8.i32(i8* nonnull %call9, i8 0, i32 %8, i32 4, i1 false)
  %cmp11246 = icmp sgt i32 %0, 0
  br i1 %cmp11246, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %if.end7
  %blocks12 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 0
  %10 = load i32*, i32** %blocks12, align 4, !tbaa !8
  br label %for.body

for.cond.cleanup:                                 ; preds = %if.end35, %if.end7
  %cdst.0.lcssa = phi i32 [ 0, %if.end7 ], [ %cdst.1, %if.end35 ]
  %mul37 = mul nsw i32 %cdst.0.lcssa, 9
  %add38 = add nsw i32 %mul37, 1
  %call40 = tail call i8* @"\01??_U@YAPAXI@Z"(i32 %add38) #17
  %sub = add nsw i32 %cdst.0.lcssa, -1
  %cmp43236 = icmp sgt i32 %cdst.0.lcssa, 1
  br i1 %cmp43236, label %for.body45.preheader, label %for.cond.cleanup44

for.body45.preheader:                             ; preds = %for.cond.cleanup
  br label %for.body45

for.body:                                         ; preds = %for.body.lr.ph, %if.end35
  %dec248.in = phi i32 [ %0, %for.body.lr.ph ], [ %dec248, %if.end35 ]
  %cdst.0247 = phi i32 [ 0, %for.body.lr.ph ], [ %cdst.1, %if.end35 ]
  %dec248 = add nsw i32 %dec248.in, -1
  %arrayidx13 = getelementptr inbounds i32, i32* %10, i32 %dec248
  %11 = load i32, i32* %arrayidx13, align 4, !tbaa !15
  %cmp15241 = icmp sgt i32 %cdst.0247, 0
  br i1 %cmp15241, label %for.body17.preheader, label %for.cond.cleanup16

for.body17.preheader:                             ; preds = %for.body
  br label %for.body17

for.cond.cleanup16:                               ; preds = %for.body17, %for.body
  %carry.0.lcssa = phi i32 [ %11, %for.body ], [ %conv23, %for.body17 ]
  %cmp24 = icmp eq i32 %carry.0.lcssa, 0
  br i1 %cmp24, label %if.end35, label %if.then25

for.body17:                                       ; preds = %for.body17.preheader, %for.body17
  %j.0243 = phi i32 [ %inc, %for.body17 ], [ 0, %for.body17.preheader ]
  %carry.0242 = phi i32 [ %conv23, %for.body17 ], [ %11, %for.body17.preheader ]
  %arrayidx18 = getelementptr inbounds i32, i32* %9, i32 %j.0243
  %12 = load i32, i32* %arrayidx18, align 4, !tbaa !15
  %conv = zext i32 %12 to i64
  %shl = shl nuw i64 %conv, 32
  %conv19 = zext i32 %carry.0242 to i64
  %or = or i64 %shl, %conv19
  %rem = urem i64 %or, 1000000000
  %conv20 = trunc i64 %rem to i32
  store i32 %conv20, i32* %arrayidx18, align 4, !tbaa !15
  %div22 = udiv i64 %or, 1000000000
  %conv23 = trunc i64 %div22 to i32
  %inc = add nuw nsw i32 %j.0243, 1
  %exitcond250 = icmp eq i32 %inc, %cdst.0247
  br i1 %exitcond250, label %for.cond.cleanup16, label %for.body17

if.then25:                                        ; preds = %for.cond.cleanup16
  %rem26 = urem i32 %carry.0.lcssa, 1000000000
  %inc27 = add nsw i32 %cdst.0247, 1
  %arrayidx28 = getelementptr inbounds i32, i32* %9, i32 %cdst.0247
  store i32 %rem26, i32* %arrayidx28, align 4, !tbaa !15
  %13 = icmp ugt i32 %carry.0.lcssa, 999999999
  br i1 %13, label %if.then31, label %if.end35

if.then31:                                        ; preds = %if.then25
  %div29 = udiv i32 %carry.0.lcssa, 1000000000
  %inc32 = add nsw i32 %cdst.0247, 2
  %arrayidx33 = getelementptr inbounds i32, i32* %9, i32 %inc27
  store i32 %div29, i32* %arrayidx33, align 4, !tbaa !15
  br label %if.end35

if.end35:                                         ; preds = %for.cond.cleanup16, %if.then25, %if.then31
  %cdst.1 = phi i32 [ %inc32, %if.then31 ], [ %inc27, %if.then25 ], [ %cdst.0247, %for.cond.cleanup16 ]
  %cmp11 = icmp sgt i32 %dec248.in, 1
  br i1 %cmp11, label %for.body, label %for.cond.cleanup

for.cond.cleanup44:                               ; preds = %for.body45, %for.cond.cleanup
  %idst.0.lcssa = phi i32 [ %mul37, %for.cond.cleanup ], [ 9, %for.body45 ]
  %arrayidx65 = getelementptr inbounds i32, i32* %9, i32 %sub
  %14 = load i32, i32* %arrayidx65, align 4, !tbaa !15
  %cmp67230 = icmp eq i32 %14, 0
  br i1 %cmp67230, label %for.cond.cleanup68, label %for.body69.preheader

for.body69.preheader:                             ; preds = %for.cond.cleanup44
  br label %for.body69

for.body45:                                       ; preds = %for.body45.preheader, %for.body45
  %i41.0238 = phi i32 [ %inc61, %for.body45 ], [ 0, %for.body45.preheader ]
  %idst.0237 = phi i32 [ %25, %for.body45 ], [ %mul37, %for.body45.preheader ]
  %arrayidx46 = getelementptr inbounds i32, i32* %9, i32 %i41.0238
  %15 = load i32, i32* %arrayidx46, align 4, !tbaa !15
  %rem53 = urem i32 %15, 10
  %16 = trunc i32 %rem53 to i8
  %conv55 = or i8 %16, 48
  %dec56 = add nsw i32 %idst.0237, -1
  %arrayidx57 = getelementptr inbounds i8, i8* %call40, i32 %dec56
  store i8 %conv55, i8* %arrayidx57, align 1, !tbaa !18
  %div58 = udiv i32 %15, 10
  %rem53.1 = urem i32 %div58, 10
  %17 = trunc i32 %rem53.1 to i8
  %conv55.1 = or i8 %17, 48
  %dec56.1 = add nsw i32 %idst.0237, -2
  %arrayidx57.1 = getelementptr inbounds i8, i8* %call40, i32 %dec56.1
  store i8 %conv55.1, i8* %arrayidx57.1, align 1, !tbaa !18
  %div58.1 = udiv i32 %15, 100
  %rem53.2 = urem i32 %div58.1, 10
  %18 = trunc i32 %rem53.2 to i8
  %conv55.2 = or i8 %18, 48
  %dec56.2 = add nsw i32 %idst.0237, -3
  %arrayidx57.2 = getelementptr inbounds i8, i8* %call40, i32 %dec56.2
  store i8 %conv55.2, i8* %arrayidx57.2, align 1, !tbaa !18
  %div58.2 = udiv i32 %15, 1000
  %rem53.3 = urem i32 %div58.2, 10
  %19 = trunc i32 %rem53.3 to i8
  %conv55.3 = or i8 %19, 48
  %dec56.3 = add nsw i32 %idst.0237, -4
  %arrayidx57.3 = getelementptr inbounds i8, i8* %call40, i32 %dec56.3
  store i8 %conv55.3, i8* %arrayidx57.3, align 1, !tbaa !18
  %div58.3 = udiv i32 %15, 10000
  %rem53.4 = urem i32 %div58.3, 10
  %20 = trunc i32 %rem53.4 to i8
  %conv55.4 = or i8 %20, 48
  %dec56.4 = add nsw i32 %idst.0237, -5
  %arrayidx57.4 = getelementptr inbounds i8, i8* %call40, i32 %dec56.4
  store i8 %conv55.4, i8* %arrayidx57.4, align 1, !tbaa !18
  %div58.4 = udiv i32 %15, 100000
  %rem53.5 = urem i32 %div58.4, 10
  %21 = trunc i32 %rem53.5 to i8
  %conv55.5 = or i8 %21, 48
  %dec56.5 = add nsw i32 %idst.0237, -6
  %arrayidx57.5 = getelementptr inbounds i8, i8* %call40, i32 %dec56.5
  store i8 %conv55.5, i8* %arrayidx57.5, align 1, !tbaa !18
  %div58.5 = udiv i32 %15, 1000000
  %rem53.6 = urem i32 %div58.5, 10
  %22 = trunc i32 %rem53.6 to i8
  %conv55.6 = or i8 %22, 48
  %dec56.6 = add nsw i32 %idst.0237, -7
  %arrayidx57.6 = getelementptr inbounds i8, i8* %call40, i32 %dec56.6
  store i8 %conv55.6, i8* %arrayidx57.6, align 1, !tbaa !18
  %div58.6 = udiv i32 %15, 10000000
  %rem53.7 = urem i32 %div58.6, 10
  %23 = trunc i32 %rem53.7 to i8
  %conv55.7 = or i8 %23, 48
  %dec56.7 = add nsw i32 %idst.0237, -8
  %arrayidx57.7 = getelementptr inbounds i8, i8* %call40, i32 %dec56.7
  store i8 %conv55.7, i8* %arrayidx57.7, align 1, !tbaa !18
  %div58.7 = udiv i32 %15, 100000000
  %rem53.8 = urem i32 %div58.7, 10
  %24 = trunc i32 %rem53.8 to i8
  %conv55.8 = or i8 %24, 48
  %dec56.8 = add nsw i32 %idst.0237, -9
  %arrayidx57.8 = getelementptr inbounds i8, i8* %call40, i32 %dec56.8
  store i8 %conv55.8, i8* %arrayidx57.8, align 1, !tbaa !18
  %25 = add i32 %idst.0237, -9
  %inc61 = add nuw nsw i32 %i41.0238, 1
  %exitcond = icmp eq i32 %inc61, %sub
  br i1 %exitcond, label %for.cond.cleanup44, label %for.body45

for.cond.cleanup68:                               ; preds = %for.body69, %for.cond.cleanup44
  %idst.2.lcssa = phi i32 [ %idst.0.lcssa, %for.cond.cleanup44 ], [ %dec73, %for.body69 ]
  %arrayidx77 = getelementptr inbounds i8, i8* %call40, i32 %mul37
  store i8 0, i8* %arrayidx77, align 1, !tbaa !18
  %add.ptr = getelementptr inbounds i8, i8* %call40, i32 %idst.2.lcssa
  tail call void @"\01??_V@YAXPAX@Z"(i8* nonnull %call9) #18
  %_Mysize.i.i.i.i167 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %agg.result, i32 0, i32 0, i32 0, i32 0, i32 1
  %_Myres.i.i.i.i168 = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %agg.result, i32 0, i32 0, i32 0, i32 0, i32 2
  %26 = bitcast i32* %_Mysize.i.i.i.i167 to i64*
  store i64 0, i64* %26, align 4
  store i32 15, i32* %_Myres.i.i.i.i168, align 4, !tbaa !16
  %arrayidx.i.i169 = bitcast %"class.std::basic_string"* %agg.result to i8*
  store i8 0, i8* %arrayidx.i.i169, align 4, !tbaa !18
  %call.i.i.i170 = tail call i32 @strlen(i8* %add.ptr) #2
  %27 = getelementptr inbounds %class.anon, %class.anon* %agg.tmp.i.i.i166, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %27)
  %cmp.i.i.i171 = icmp ugt i32 %call.i.i.i170, 15
  br i1 %cmp.i.i.i171, label %if.end.i.i.i174, label %"\01?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QAEPADXZ.exit.i.i.i173"

"\01?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QAEPADXZ.exit.i.i.i173": ; preds = %for.cond.cleanup68
  store i32 %call.i.i.i170, i32* %_Mysize.i.i.i.i167, align 4, !tbaa !19
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %arrayidx.i.i169, i8* %add.ptr, i32 %call.i.i.i170, i32 1, i1 false) #2
  %arrayidx.i.i.i172 = getelementptr inbounds i8, i8* %arrayidx.i.i169, i32 %call.i.i.i170
  store i8 0, i8* %arrayidx.i.i.i172, align 1, !tbaa !18
  br label %"\01??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@QBD@Z.exit177"

if.end.i.i.i174:                                  ; preds = %for.cond.cleanup68
  %call4.i.i4.i176 = call x86_thiscallcc dereferenceable(24) %"class.std::basic_string"* @"\01??$_Reallocate_for@V<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV34@QBDI@Z@PBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV01@IV<lambda_1>@?0??assign@01@QAEAAV01@QBDI@Z@PBD@Z"(%"class.std::basic_string"* nonnull %agg.result, i32 %call.i.i.i170, %class.anon* byval nonnull align 4 %agg.tmp.i.i.i166, i8* %add.ptr)
  br label %"\01??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@QBD@Z.exit177"

"\01??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@QBD@Z.exit177": ; preds = %if.end.i.i.i174, %"\01?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QAEPADXZ.exit.i.i.i173"
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %27)
  br label %"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit203"

for.body69:                                       ; preds = %for.body69.preheader, %for.body69
  %d63.0232 = phi i32 [ %div75, %for.body69 ], [ %14, %for.body69.preheader ]
  %idst.2231 = phi i32 [ %dec73, %for.body69 ], [ %idst.0.lcssa, %for.body69.preheader ]
  %rem70 = srem i32 %d63.0232, 10
  %add71 = add nsw i32 %rem70, 48
  %conv72 = trunc i32 %add71 to i8
  %dec73 = add nsw i32 %idst.2231, -1
  %arrayidx74 = getelementptr inbounds i8, i8* %call40, i32 %dec73
  store i8 %conv72, i8* %arrayidx74, align 1, !tbaa !18
  %div75 = sdiv i32 %d63.0232, 10
  %d63.0232.off = add i32 %d63.0232, 9
  %28 = icmp ult i32 %d63.0232.off, 19
  br i1 %28, label %for.cond.cleanup68, label %for.body69

"\01??1?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@XZ.exit203": ; preds = %"\01?to_string@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@I@Z.exit", %if.then4, %"\01??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@QBD@Z.exit177"
  ret void
}

define x86_thiscallcc void @"\01?to_hex@BigBase@ofw@@QBE?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@XZ"(%"class.ofw::BigBase"* nocapture readonly %this, %"class.std::basic_string"* noalias sret %agg.result) local_unnamed_addr #1 align 2 personality i32 (...)* @__CxxFrameHandler3 {
entry:
  %agg.tmp.i.i.i = alloca %class.anon, align 4
  %length = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  %0 = load i32, i32* %length, align 4, !tbaa !14
  %mul = shl i32 %0, 5
  %conv = uitofp i32 %mul to double
  %mul2 = fmul double %conv, 0x3FD34413509F79FF
  %conv3 = fptoui double %mul2 to i32
  %add = add i32 %conv3, 1
  %call = tail call i8* @"\01??_U@YAPAXI@Z"(i32 %add) #17
  %cmp48 = icmp eq i32 %0, 0
  br i1 %cmp48, label %if.end25, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %blocks = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 0
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body
  %cmp19 = icmp eq i8* %scevgep, %call
  br i1 %cmp19, label %if.end25, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.cond.cleanup
  br label %while.cond

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %pp.050 = phi i8* [ %call, %for.body.lr.ph ], [ %scevgep, %for.body ]
  %i.049 = phi i32 [ 0, %for.body.lr.ph ], [ %inc17, %for.body ]
  %1 = load i32*, i32** %blocks, align 4, !tbaa !8
  %arrayidx = getelementptr inbounds i32, i32* %1, i32 %i.049
  %2 = load i32, i32* %arrayidx, align 4, !tbaa !15
  %and = and i32 %2, 15
  %cmp10 = icmp ult i32 %and, 10
  %sub = add nuw nsw i32 %and, 87
  %add11 = or i32 %and, 48
  %storemerge.in = select i1 %cmp10, i32 %add11, i32 %sub
  %pp.2 = getelementptr inbounds i8, i8* %pp.050, i32 1
  %storemerge = trunc i32 %storemerge.in to i8
  store i8 %storemerge, i8* %pp.050, align 1, !tbaa !18
  %3 = load i32*, i32** %blocks, align 4, !tbaa !8
  %arrayidx.1 = getelementptr inbounds i32, i32* %3, i32 %i.049
  %4 = load i32, i32* %arrayidx.1, align 4, !tbaa !15
  %shr.1 = lshr i32 %4, 4
  %and.1 = and i32 %shr.1, 15
  %cmp10.1 = icmp ult i32 %and.1, 10
  %sub.1 = add nuw nsw i32 %and.1, 87
  %add11.1 = or i32 %and.1, 48
  %storemerge.in.1 = select i1 %cmp10.1, i32 %add11.1, i32 %sub.1
  %pp.2.1 = getelementptr inbounds i8, i8* %pp.050, i32 2
  %storemerge.1 = trunc i32 %storemerge.in.1 to i8
  store i8 %storemerge.1, i8* %pp.2, align 1, !tbaa !18
  %5 = load i32*, i32** %blocks, align 4, !tbaa !8
  %arrayidx.2 = getelementptr inbounds i32, i32* %5, i32 %i.049
  %6 = load i32, i32* %arrayidx.2, align 4, !tbaa !15
  %shr.2 = lshr i32 %6, 8
  %and.2 = and i32 %shr.2, 15
  %cmp10.2 = icmp ult i32 %and.2, 10
  %sub.2 = add nuw nsw i32 %and.2, 87
  %add11.2 = or i32 %and.2, 48
  %storemerge.in.2 = select i1 %cmp10.2, i32 %add11.2, i32 %sub.2
  %pp.2.2 = getelementptr inbounds i8, i8* %pp.050, i32 3
  %storemerge.2 = trunc i32 %storemerge.in.2 to i8
  store i8 %storemerge.2, i8* %pp.2.1, align 1, !tbaa !18
  %7 = load i32*, i32** %blocks, align 4, !tbaa !8
  %arrayidx.3 = getelementptr inbounds i32, i32* %7, i32 %i.049
  %8 = load i32, i32* %arrayidx.3, align 4, !tbaa !15
  %shr.3 = lshr i32 %8, 12
  %and.3 = and i32 %shr.3, 15
  %cmp10.3 = icmp ult i32 %and.3, 10
  %sub.3 = add nuw nsw i32 %and.3, 87
  %add11.3 = or i32 %and.3, 48
  %storemerge.in.3 = select i1 %cmp10.3, i32 %add11.3, i32 %sub.3
  %pp.2.3 = getelementptr inbounds i8, i8* %pp.050, i32 4
  %storemerge.3 = trunc i32 %storemerge.in.3 to i8
  store i8 %storemerge.3, i8* %pp.2.2, align 1, !tbaa !18
  %9 = load i32*, i32** %blocks, align 4, !tbaa !8
  %arrayidx.4 = getelementptr inbounds i32, i32* %9, i32 %i.049
  %10 = load i32, i32* %arrayidx.4, align 4, !tbaa !15
  %shr.4 = lshr i32 %10, 16
  %and.4 = and i32 %shr.4, 15
  %cmp10.4 = icmp ult i32 %and.4, 10
  %sub.4 = add nuw nsw i32 %and.4, 87
  %add11.4 = or i32 %and.4, 48
  %storemerge.in.4 = select i1 %cmp10.4, i32 %add11.4, i32 %sub.4
  %pp.2.4 = getelementptr inbounds i8, i8* %pp.050, i32 5
  %storemerge.4 = trunc i32 %storemerge.in.4 to i8
  store i8 %storemerge.4, i8* %pp.2.3, align 1, !tbaa !18
  %11 = load i32*, i32** %blocks, align 4, !tbaa !8
  %arrayidx.5 = getelementptr inbounds i32, i32* %11, i32 %i.049
  %12 = load i32, i32* %arrayidx.5, align 4, !tbaa !15
  %shr.5 = lshr i32 %12, 20
  %and.5 = and i32 %shr.5, 15
  %cmp10.5 = icmp ult i32 %and.5, 10
  %sub.5 = add nuw nsw i32 %and.5, 87
  %add11.5 = or i32 %and.5, 48
  %storemerge.in.5 = select i1 %cmp10.5, i32 %add11.5, i32 %sub.5
  %pp.2.5 = getelementptr inbounds i8, i8* %pp.050, i32 6
  %storemerge.5 = trunc i32 %storemerge.in.5 to i8
  store i8 %storemerge.5, i8* %pp.2.4, align 1, !tbaa !18
  %13 = load i32*, i32** %blocks, align 4, !tbaa !8
  %arrayidx.6 = getelementptr inbounds i32, i32* %13, i32 %i.049
  %14 = load i32, i32* %arrayidx.6, align 4, !tbaa !15
  %shr.6 = lshr i32 %14, 24
  %and.6 = and i32 %shr.6, 15
  %cmp10.6 = icmp ult i32 %and.6, 10
  %sub.6 = add nuw nsw i32 %and.6, 87
  %add11.6 = or i32 %and.6, 48
  %storemerge.in.6 = select i1 %cmp10.6, i32 %add11.6, i32 %sub.6
  %pp.2.6 = getelementptr inbounds i8, i8* %pp.050, i32 7
  %storemerge.6 = trunc i32 %storemerge.in.6 to i8
  store i8 %storemerge.6, i8* %pp.2.5, align 1, !tbaa !18
  %15 = load i32*, i32** %blocks, align 4, !tbaa !8
  %arrayidx.7 = getelementptr inbounds i32, i32* %15, i32 %i.049
  %16 = load i32, i32* %arrayidx.7, align 4, !tbaa !15
  %shr.7 = lshr i32 %16, 28
  %cmp10.7 = icmp ult i32 %16, -1610612736
  %sub.7 = add nuw nsw i32 %shr.7, 87
  %add11.7 = or i32 %shr.7, 48
  %storemerge.in.7 = select i1 %cmp10.7, i32 %add11.7, i32 %sub.7
  %storemerge.7 = trunc i32 %storemerge.in.7 to i8
  store i8 %storemerge.7, i8* %pp.2.6, align 1, !tbaa !18
  %scevgep = getelementptr i8, i8* %pp.050, i32 8
  %inc17 = add nuw nsw i32 %i.049, 1
  %17 = load i32, i32* %length, align 4, !tbaa !14
  %cmp = icmp ult i32 %inc17, %17
  br i1 %cmp, label %for.body, label %for.cond.cleanup

while.cond:                                       ; preds = %while.cond.preheader, %while.cond
  %pp.3 = phi i8* [ %incdec.ptr21, %while.cond ], [ %scevgep, %while.cond.preheader ]
  %incdec.ptr21 = getelementptr inbounds i8, i8* %pp.3, i32 -1
  %18 = load i8, i8* %incdec.ptr21, align 1, !tbaa !18
  %cmp23 = icmp eq i8 %18, 48
  br i1 %cmp23, label %while.cond, label %if.end25

if.end25:                                         ; preds = %while.cond, %entry, %for.cond.cleanup
  %pp.4 = phi i8* [ %call, %for.cond.cleanup ], [ %call, %entry ], [ %pp.3, %while.cond ]
  store i8 0, i8* %pp.4, align 1, !tbaa !18
  %call26 = tail call i8* @_strrev(i8* nonnull %call)
  %_Mysize.i.i.i.i = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %agg.result, i32 0, i32 0, i32 0, i32 0, i32 1
  %_Myres.i.i.i.i = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %agg.result, i32 0, i32 0, i32 0, i32 0, i32 2
  %19 = bitcast i32* %_Mysize.i.i.i.i to i64*
  store i64 0, i64* %19, align 4
  store i32 15, i32* %_Myres.i.i.i.i, align 4, !tbaa !16
  %arrayidx.i.i = bitcast %"class.std::basic_string"* %agg.result to i8*
  store i8 0, i8* %arrayidx.i.i, align 4, !tbaa !18
  %call.i.i.i = tail call i32 @strlen(i8* %call26) #2
  %20 = getelementptr inbounds %class.anon, %class.anon* %agg.tmp.i.i.i, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %20)
  %cmp.i.i.i = icmp ugt i32 %call.i.i.i, 15
  br i1 %cmp.i.i.i, label %if.end.i.i.i, label %"\01?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QAEPADXZ.exit.i.i.i"

"\01?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QAEPADXZ.exit.i.i.i": ; preds = %if.end25
  store i32 %call.i.i.i, i32* %_Mysize.i.i.i.i, align 4, !tbaa !19
  tail call void @llvm.memmove.p0i8.p0i8.i32(i8* %arrayidx.i.i, i8* %call26, i32 %call.i.i.i, i32 1, i1 false) #2
  %arrayidx.i.i.i = getelementptr inbounds i8, i8* %arrayidx.i.i, i32 %call.i.i.i
  store i8 0, i8* %arrayidx.i.i.i, align 1, !tbaa !18
  br label %"\01??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@QBD@Z.exit"

if.end.i.i.i:                                     ; preds = %if.end25
  %call4.i.i4.i = call x86_thiscallcc dereferenceable(24) %"class.std::basic_string"* @"\01??$_Reallocate_for@V<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV34@QBDI@Z@PBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV01@IV<lambda_1>@?0??assign@01@QAEAAV01@QBDI@Z@PBD@Z"(%"class.std::basic_string"* nonnull %agg.result, i32 %call.i.i.i, %class.anon* byval nonnull align 4 %agg.tmp.i.i.i, i8* %call26)
  br label %"\01??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@QBD@Z.exit"

"\01??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@QBD@Z.exit": ; preds = %"\01?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QAEPADXZ.exit.i.i.i", %if.end.i.i.i
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %20)
  ret void
}

declare i8* @_strrev(i8*) local_unnamed_addr #11

define x86_thiscallcc void @"\01?to_binary@BigBase@ofw@@QBE?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@XZ"(%"class.ofw::BigBase"* nocapture readonly %this, %"class.std::basic_string"* noalias sret %agg.result) local_unnamed_addr #1 align 2 personality i32 (...)* @__CxxFrameHandler3 {
entry:
  %agg.tmp.i.i.i = alloca %class.anon, align 4
  %length = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  %0 = load i32, i32* %length, align 4, !tbaa !14
  %mul = shl i32 %0, 5
  %add = or i32 %mul, 1
  %call = tail call i8* @"\01??_U@YAPAXI@Z"(i32 %add) #17
  %cmp34 = icmp eq i32 %0, 0
  br i1 %cmp34, label %if.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %blocks = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 0
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.cond.cleanup5
  %cmp11 = icmp eq i8* %scevgep, %call
  br i1 %cmp11, label %if.end, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.cond.cleanup
  br label %while.cond

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.cleanup5
  %i.036 = phi i32 [ 0, %for.body.lr.ph ], [ %inc9, %for.cond.cleanup5 ]
  %pp.035 = phi i8* [ %call, %for.body.lr.ph ], [ %scevgep, %for.cond.cleanup5 ]
  br label %for.body6

for.cond.cleanup5:                                ; preds = %for.body6
  %scevgep = getelementptr i8, i8* %pp.035, i32 32
  %inc9 = add nuw nsw i32 %i.036, 1
  %1 = load i32, i32* %length, align 4, !tbaa !14
  %cmp = icmp ult i32 %inc9, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.body6:                                        ; preds = %for.body6, %for.body
  %j.033 = phi i32 [ 0, %for.body ], [ %inc, %for.body6 ]
  %pp.132 = phi i8* [ %pp.035, %for.body ], [ %incdec.ptr, %for.body6 ]
  %2 = load i32*, i32** %blocks, align 4, !tbaa !8
  %arrayidx = getelementptr inbounds i32, i32* %2, i32 %i.036
  %3 = load i32, i32* %arrayidx, align 4, !tbaa !15
  %shr = lshr i32 %3, %j.033
  %4 = trunc i32 %shr to i8
  %5 = and i8 %4, 1
  %conv = or i8 %5, 48
  %incdec.ptr = getelementptr inbounds i8, i8* %pp.132, i32 1
  store i8 %conv, i8* %pp.132, align 1, !tbaa !18
  %inc = add nuw nsw i32 %j.033, 1
  %exitcond = icmp eq i32 %inc, 32
  br i1 %exitcond, label %for.cond.cleanup5, label %for.body6

while.cond:                                       ; preds = %while.cond.preheader, %while.cond
  %pp.2 = phi i8* [ %incdec.ptr12, %while.cond ], [ %scevgep, %while.cond.preheader ]
  %incdec.ptr12 = getelementptr inbounds i8, i8* %pp.2, i32 -1
  %6 = load i8, i8* %incdec.ptr12, align 1, !tbaa !18
  %cmp14 = icmp eq i8 %6, 48
  br i1 %cmp14, label %while.cond, label %if.end

if.end:                                           ; preds = %while.cond, %entry, %for.cond.cleanup
  %pp.3 = phi i8* [ %call, %for.cond.cleanup ], [ %call, %entry ], [ %pp.2, %while.cond ]
  store i8 0, i8* %pp.3, align 1, !tbaa !18
  %call16 = tail call i8* @_strrev(i8* nonnull %call)
  %_Mysize.i.i.i.i = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %agg.result, i32 0, i32 0, i32 0, i32 0, i32 1
  %_Myres.i.i.i.i = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %agg.result, i32 0, i32 0, i32 0, i32 0, i32 2
  %7 = bitcast i32* %_Mysize.i.i.i.i to i64*
  store i64 0, i64* %7, align 4
  store i32 15, i32* %_Myres.i.i.i.i, align 4, !tbaa !16
  %arrayidx.i.i = bitcast %"class.std::basic_string"* %agg.result to i8*
  store i8 0, i8* %arrayidx.i.i, align 4, !tbaa !18
  %call.i.i.i = tail call i32 @strlen(i8* %call16) #2
  %8 = getelementptr inbounds %class.anon, %class.anon* %agg.tmp.i.i.i, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %8)
  %cmp.i.i.i = icmp ugt i32 %call.i.i.i, 15
  br i1 %cmp.i.i.i, label %if.end.i.i.i, label %"\01?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QAEPADXZ.exit.i.i.i"

"\01?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QAEPADXZ.exit.i.i.i": ; preds = %if.end
  store i32 %call.i.i.i, i32* %_Mysize.i.i.i.i, align 4, !tbaa !19
  tail call void @llvm.memmove.p0i8.p0i8.i32(i8* %arrayidx.i.i, i8* %call16, i32 %call.i.i.i, i32 1, i1 false) #2
  %arrayidx.i.i.i = getelementptr inbounds i8, i8* %arrayidx.i.i, i32 %call.i.i.i
  store i8 0, i8* %arrayidx.i.i.i, align 1, !tbaa !18
  br label %"\01??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@QBD@Z.exit"

if.end.i.i.i:                                     ; preds = %if.end
  %call4.i.i4.i = call x86_thiscallcc dereferenceable(24) %"class.std::basic_string"* @"\01??$_Reallocate_for@V<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV34@QBDI@Z@PBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV01@IV<lambda_1>@?0??assign@01@QAEAAV01@QBDI@Z@PBD@Z"(%"class.std::basic_string"* nonnull %agg.result, i32 %call.i.i.i, %class.anon* byval nonnull align 4 %agg.tmp.i.i.i, i8* %call16)
  br label %"\01??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@QBD@Z.exit"

"\01??0?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAE@QBD@Z.exit": ; preds = %"\01?_Myptr@?$_String_val@U?$_Simple_types@D@std@@@std@@QAEPADXZ.exit.i.i.i", %if.end.i.i.i
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %8)
  ret void
}

; Function Attrs: norecurse nounwind
define x86_thiscallcc void @"\01?swap@BigBase@ofw@@QAEXAAV12@@Z"(%"class.ofw::BigBase"* nocapture %this, %"class.ofw::BigBase"* nocapture dereferenceable(8) %t) local_unnamed_addr #0 align 2 {
entry:
  %0 = bitcast %"class.ofw::BigBase"* %this to i32*
  %1 = load i32, i32* %0, align 4, !tbaa !8
  %2 = bitcast %"class.ofw::BigBase"* %t to i32*
  %3 = load i32, i32* %2, align 4, !tbaa !8
  store i32 %3, i32* %0, align 4, !tbaa !8
  store i32 %1, i32* %2, align 4, !tbaa !8
  %length = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  %4 = load i32, i32* %length, align 4, !tbaa !14
  %length5 = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %t, i32 0, i32 1
  %5 = load i32, i32* %length5, align 4, !tbaa !14
  store i32 %5, i32* %length, align 4, !tbaa !14
  store i32 %4, i32* %length5, align 4, !tbaa !14
  ret void
}

; Function Attrs: norecurse nounwind readonly
define x86_thiscallcc i32 @"\01?_length@BigBase@ofw@@QBEIXZ"(%"class.ofw::BigBase"* nocapture readonly %this) local_unnamed_addr #10 align 2 {
entry:
  %length = getelementptr inbounds %"class.ofw::BigBase", %"class.ofw::BigBase"* %this, i32 0, i32 1
  %0 = load i32, i32* %length, align 4, !tbaa !14
  ret i32 %0
}

; Function Attrs: nounwind
declare void @llvm.var.annotation(i8*, i8*, i8*, i32) #2

; Function Attrs: norecurse nounwind readnone
define x86_thiscallcc i32 @"\01?count_leading_zero@BigBase@ofw@@ABEHI@Z"(%"class.ofw::BigBase"* nocapture readnone %this, i32 %val) local_unnamed_addr #12 align 2 {
entry:
  %cmp = icmp eq i32 %val, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp2 = icmp ult i32 %val, 65536
  %shl = shl i32 %val, 16
  %shl.val = select i1 %cmp2, i32 %shl, i32 %val
  %. = select i1 %cmp2, i32 16, i32 0
  %cmp6 = icmp ult i32 %shl.val, 16777216
  %add8 = or i32 %., 8
  %shl9 = shl i32 %shl.val, 8
  %val.addr.1 = select i1 %cmp6, i32 %shl9, i32 %shl.val
  %n.1 = select i1 %cmp6, i32 %add8, i32 %.
  %cmp12 = icmp ult i32 %val.addr.1, 268435456
  %add14 = or i32 %n.1, 4
  %shl15 = shl i32 %val.addr.1, 4
  %val.addr.2 = select i1 %cmp12, i32 %shl15, i32 %val.addr.1
  %n.2 = select i1 %cmp12, i32 %add14, i32 %n.1
  %cmp18 = icmp ult i32 %val.addr.2, 1073741824
  %add20 = or i32 %n.2, 2
  %shl21 = shl i32 %val.addr.2, 2
  %val.addr.3 = select i1 %cmp18, i32 %shl21, i32 %val.addr.2
  %n.3 = select i1 %cmp18, i32 %add20, i32 %n.2
  %val.addr.3.lobit = lshr i32 %val.addr.3, 31
  %val.addr.3.lobit.not = xor i32 %val.addr.3.lobit, 1
  %add26.n.3 = add nsw i32 %val.addr.3.lobit.not, %n.3
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %add26.n.3, %if.end ], [ 32, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind readonly
declare i32 @tolower(i32) local_unnamed_addr #9

; Function Attrs: norecurse nounwind readnone
define x86_thiscallcc i32 @"\01?count_tailing_zero@BigBase@ofw@@ABEHI@Z"(%"class.ofw::BigBase"* nocapture readnone %this, i32 %val) local_unnamed_addr #12 align 2 {
entry:
  %cmp = icmp eq i32 %val, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %and = and i32 %val, 65535
  %cmp2 = icmp eq i32 %and, 0
  %shr = lshr i32 %val, 16
  %shr.val = select i1 %cmp2, i32 %shr, i32 %val
  %. = select i1 %cmp2, i32 16, i32 32
  %and5 = and i32 %shr.val, 255
  %cmp6 = icmp eq i32 %and5, 0
  %sub8 = add nsw i32 %., -8
  %shr9 = lshr i32 %shr.val, 8
  %val.addr.1 = select i1 %cmp6, i32 %shr9, i32 %shr.val
  %n.1 = select i1 %cmp6, i32 %sub8, i32 %.
  %and11 = and i32 %val.addr.1, 15
  %cmp12 = icmp eq i32 %and11, 0
  %sub14 = add nsw i32 %n.1, -4
  %shr15 = lshr i32 %val.addr.1, 4
  %val.addr.2 = select i1 %cmp12, i32 %shr15, i32 %val.addr.1
  %n.2 = select i1 %cmp12, i32 %sub14, i32 %n.1
  %and17 = and i32 %val.addr.2, 3
  %cmp18 = icmp eq i32 %and17, 0
  %sub20 = add nsw i32 %n.2, -2
  %shr21 = lshr i32 %val.addr.2, 2
  %val.addr.3 = select i1 %cmp18, i32 %shr21, i32 %val.addr.2
  %n.3 = select i1 %cmp18, i32 %sub20, i32 %n.2
  %and23 = and i32 %val.addr.3, 1
  %sext = add i32 %n.3, -1
  %sub26.n.3 = add i32 %sext, %and23
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %sub26.n.3, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare dllimport void @__std_terminate() local_unnamed_addr

; Function Attrs: nounwind
declare void @"\01??3@YAXPAXI@Z"(i8*, i32) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_invalid_parameter_noinfo_noreturn() local_unnamed_addr #14

define linkonce_odr x86_thiscallcc dereferenceable(24) %"class.std::basic_string"* @"\01??$_Reallocate_for@V<lambda_1>@?0??assign@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV34@QBDI@Z@PBD@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QAEAAV01@IV<lambda_1>@?0??assign@01@QAEAAV01@QBDI@Z@PBD@Z"(%"class.std::basic_string"* %this, i32 %_New_size, %class.anon* byval align 4 %_Fn, i8* %_Args) local_unnamed_addr #1 comdat align 2 {
entry:
  %cmp = icmp slt i32 %_New_size, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @"\01?_Xlen@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@SAXXZ"() #19
  unreachable

if.end:                                           ; preds = %entry
  %_Myres = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this, i32 0, i32 0, i32 0, i32 0, i32 2
  %0 = load i32, i32* %_Myres, align 4, !tbaa !16
  %or.i = or i32 %_New_size, 15
  %cmp.i = icmp slt i32 %or.i, 0
  br i1 %cmp.i, label %if.end8.i.i, label %if.end.i

if.end.i:                                         ; preds = %if.end
  %div.i = lshr i32 %0, 1
  %sub.i = xor i32 %div.i, 2147483647
  %cmp3.i = icmp ugt i32 %0, %sub.i
  br i1 %cmp3.i, label %if.end8.i.i, label %"\01?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QBEII@Z.exit"

"\01?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QBEII@Z.exit": ; preds = %if.end.i
  %add.i = add i32 %div.i, %0
  %cmp.i.i = icmp ult i32 %or.i, %add.i
  %.sroa.speculated.i = select i1 %cmp.i.i, i32 %add.i, i32 %or.i
  %add = add i32 %.sroa.speculated.i, 1
  %cmp.i.i34 = icmp eq i32 %add, 0
  br i1 %cmp.i.i34, label %"\01?allocate@?$allocator@D@std@@QAEPADI@Z.exit", label %if.end.i.i

if.end.i.i:                                       ; preds = %"\01?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QBEII@Z.exit"
  %cmp4.i.i = icmp ugt i32 %add, 4095
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end13.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  %cmp6.i.i = icmp ugt i32 %add, -36
  br i1 %cmp6.i.i, label %if.then7.i.i, label %if.end8.i.i

if.then7.i.i:                                     ; preds = %if.then5.i.i
  tail call void @"\01?_Xbad_alloc@std@@YAXXZ"() #19
  unreachable

if.end8.i.i:                                      ; preds = %if.end.i, %if.end, %if.then5.i.i
  %add434549 = phi i32 [ %add, %if.then5.i.i ], [ -2147483648, %if.end ], [ -2147483648, %if.end.i ]
  %retval.1.i414648 = phi i32 [ %.sroa.speculated.i, %if.then5.i.i ], [ 2147483647, %if.end ], [ 2147483647, %if.end.i ]
  %add.i.i35 = add i32 %add434549, 35
  %call.i.i = tail call i8* @"\01??2@YAPAXI@Z"(i32 %add.i.i35)
  %1 = ptrtoint i8* %call.i.i to i32
  %add12.i.i = add i32 %1, 35
  %and.i.i36 = and i32 %add12.i.i, -32
  %2 = inttoptr i32 %and.i.i36 to i8*
  %3 = inttoptr i32 %and.i.i36 to i32*
  %arrayidx.i.i = getelementptr inbounds i32, i32* %3, i32 -1
  store i32 %1, i32* %arrayidx.i.i, align 4, !tbaa !15
  br label %"\01?allocate@?$allocator@D@std@@QAEPADI@Z.exit"

if.end13.i.i:                                     ; preds = %if.end.i.i
  %call.i.i.i = tail call i8* @"\01??2@YAPAXI@Z"(i32 %add)
  br label %"\01?allocate@?$allocator@D@std@@QAEPADI@Z.exit"

"\01?allocate@?$allocator@D@std@@QAEPADI@Z.exit": ; preds = %"\01?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QBEII@Z.exit", %if.end8.i.i, %if.end13.i.i
  %retval.1.i42 = phi i32 [ -1, %"\01?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QBEII@Z.exit" ], [ %retval.1.i414648, %if.end8.i.i ], [ %.sroa.speculated.i, %if.end13.i.i ]
  %retval.1.i.i = phi i8* [ null, %"\01?_Calculate_growth@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@QBEII@Z.exit" ], [ %2, %if.end8.i.i ], [ %call.i.i.i, %if.end13.i.i ]
  %4 = ptrtoint i8* %retval.1.i.i to i32
  %_Mysize = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this, i32 0, i32 0, i32 0, i32 0, i32 1
  store i32 %_New_size, i32* %_Mysize, align 4, !tbaa !19
  store i32 %retval.1.i42, i32* %_Myres, align 4, !tbaa !16
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %retval.1.i.i, i8* %_Args, i32 %_New_size, i32 1, i1 false) #2
  %arrayidx.i = getelementptr inbounds i8, i8* %retval.1.i.i, i32 %_New_size
  store i8 0, i8* %arrayidx.i, align 1, !tbaa !18
  %cmp8 = icmp ugt i32 %0, 15
  br i1 %cmp8, label %if.then9, label %if.end16

if.then9:                                         ; preds = %"\01?allocate@?$allocator@D@std@@QAEPADI@Z.exit"
  %add10 = add i32 %0, 1
  %_Ptr = getelementptr inbounds %"class.std::basic_string", %"class.std::basic_string"* %this, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %5 = load i8*, i8** %_Ptr, align 4, !tbaa !18
  %cmp1.i.i = icmp ugt i32 %add10, 4095
  br i1 %cmp1.i.i, label %if.then2.i.i, label %"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit"

if.then2.i.i:                                     ; preds = %if.then9
  %add.i.i = add i32 %0, 36
  %cmp3.i.i = icmp ugt i32 %add10, -36
  br i1 %cmp3.i.i, label %_Invalid_parameter.i.i, label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then2.i.i
  %6 = ptrtoint i8* %5 to i32
  %and.i.i = and i32 %6, 31
  %cmp7.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp7.i.i, label %if.end9.i.i, label %_Invalid_parameter.i.i

if.end9.i.i:                                      ; preds = %if.end5.i.i
  %sub.i.i = add i32 %6, -4
  %7 = inttoptr i32 %sub.i.i to i32*
  %8 = load i32, i32* %7, align 4, !tbaa !15
  %cmp10.i.i = icmp ult i32 %8, %6
  br i1 %cmp10.i.i, label %if.end12.i.i, label %_Invalid_parameter.i.i

if.end12.i.i:                                     ; preds = %if.end9.i.i
  %sub13.off.i.i = sub i32 %sub.i.i, %8
  %9 = icmp ugt i32 %sub13.off.i.i, 31
  %10 = inttoptr i32 %8 to i8*
  br i1 %9, label %_Invalid_parameter.i.i, label %"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit"

_Invalid_parameter.i.i:                           ; preds = %if.end12.i.i, %if.end9.i.i, %if.end5.i.i, %if.then2.i.i
  tail call void @_invalid_parameter_noinfo_noreturn() #19
  unreachable

"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit": ; preds = %if.then9, %if.end12.i.i
  %_Allocated_size.0.i.i = phi i32 [ %add10, %if.then9 ], [ %add.i.i, %if.end12.i.i ]
  %_Ptr.addr.2.i.i = phi i8* [ %5, %if.then9 ], [ %10, %if.end12.i.i ]
  tail call void @"\01??3@YAXPAXI@Z"(i8* %_Ptr.addr.2.i.i, i32 %_Allocated_size.0.i.i) #2
  br label %if.end16

if.end16:                                         ; preds = %"\01?allocate@?$allocator@D@std@@QAEPADI@Z.exit", %"\01?deallocate@?$allocator@D@std@@QAEXQADI@Z.exit"
  %.sink = bitcast %"class.std::basic_string"* %this to i32*
  store i32 %4, i32* %.sink, align 4, !tbaa !18
  ret %"class.std::basic_string"* %this
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #3

; Function Attrs: noreturn
define linkonce_odr void @"\01?_Xlen@?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@std@@SAXXZ"() local_unnamed_addr #15 comdat align 2 {
entry:
  tail call void @"\01?_Xlength_error@std@@YAXPBD@Z"(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"\01??_C@_0BA@JFNIOLAK@string?5too?5long?$AA@", i32 0, i32 0)) #19
  unreachable
}

; Function Attrs: noreturn
declare void @"\01?_Xlength_error@std@@YAXPBD@Z"(i8*) local_unnamed_addr #14

; Function Attrs: nobuiltin
declare noalias nonnull i8* @"\01??2@YAPAXI@Z"(i32) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @"\01?_Xbad_alloc@std@@YAXXZ"() local_unnamed_addr #14

; Function Attrs: argmemonly nounwind readonly
declare i32 @strlen(i8* nocapture) local_unnamed_addr #16

; Function Attrs: nounwind readnone speculatable
declare float @llvm.ceil.f32(float) #5

attributes #0 = { norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable }
attributes #6 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { norecurse nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { norecurse nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { builtin }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn }
attributes #20 = { noreturn nounwind }
attributes #21 = { nounwind readonly }

!llvm.linker.options = !{!0, !1, !2, !3, !4}
!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}

!0 = !{!"/FAILIFMISMATCH:\22_MSC_VER=1900\22"}
!1 = !{!"/FAILIFMISMATCH:\22_ITERATOR_DEBUG_LEVEL=0\22"}
!2 = !{!"/FAILIFMISMATCH:\22RuntimeLibrary=MT_StaticRelease\22"}
!3 = !{!"/DEFAULTLIB:libcpmt.lib"}
!4 = !{!"/FAILIFMISMATCH:\22_CRT_STDIO_ISO_WIDE_SPECIFIERS=0\22"}
!5 = !{i32 1, !"NumRegisterParameters", i32 0}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!8 = !{!9, !10, i64 0}
!9 = !{!"?AVBigBase@ofw@@", !10, i64 0, !13, i64 4}
!10 = !{!"any pointer", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C++ TBAA"}
!13 = !{!"int", !11, i64 0}
!14 = !{!9, !13, i64 4}
!15 = !{!13, !13, i64 0}
!16 = !{!17, !13, i64 20}
!17 = !{!"?AV?$_String_val@U?$_Simple_types@D@std@@@std@@", !11, i64 0, !13, i64 16, !13, i64 20}
!18 = !{!11, !11, i64 0}
!19 = !{!17, !13, i64 16}
!20 = !{!10, !10, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = distinct !{!23, !22}
!24 = distinct !{!24, !22}
!25 = distinct !{!25, !22}
!26 = !{!27, !29}
!27 = distinct !{!27, !28, !"\01??$_Integral_to_string@DI@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@I@Z: %agg.result"}
!28 = distinct !{!28, !"\01??$_Integral_to_string@DI@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@0@I@Z"}
!29 = distinct !{!29, !30, !"\01?to_string@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@I@Z: %agg.result"}
!30 = distinct !{!30, !"\01?to_string@std@@YA?AV?$basic_string@DU?$char_traits@D@std@@V?$allocator@D@2@@1@I@Z"}
