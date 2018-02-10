; ModuleID = 'c.cpp'
source_filename = "c.cpp"
target datalayout = "e-m:x-p:32:32-i64:64-f80:32-n8:16:32-a:0:32-S32"
target triple = "i686-pc-windows-msvc19.12.25834"

%struct._iobuf = type { i8* }
%struct.__crt_locale_pointers = type { %struct.__crt_locale_data*, %struct.__crt_multibyte_data* }
%struct.__crt_locale_data = type opaque
%struct.__crt_multibyte_data = type opaque

$printf = comdat any

$__local_stdio_printf_options = comdat any

$"\01??_C@_03JDANDILB@?$CFd?5?$AA@" = comdat any

$"\01??_C@_0BA@DPNLFGIP@Sorted?5array?3?5n?$AA@" = comdat any

$"\01?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA" = comdat any

@.str = private unnamed_addr constant [6 x i8] c"twice\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [6 x i8] c"c.cpp\00", section "llvm.metadata"
@"\01??_C@_03JDANDILB@?$CFd?5?$AA@" = linkonce_odr unnamed_addr constant [4 x i8] c"%d \00", comdat, align 1
@"\01?arr@?1??main@@9@3PAHA" = private unnamed_addr constant [6 x i32] [i32 10, i32 7, i32 8, i32 9, i32 1, i32 5], align 4
@"\01??_C@_0BA@DPNLFGIP@Sorted?5array?3?5n?$AA@" = linkonce_odr unnamed_addr constant [16 x i8] c"Sorted array: n\00", comdat, align 1
@"\01?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA" = linkonce_odr global i64 0, comdat, align 8

; Function Attrs: norecurse nounwind
define void @"\01?swap@@YAXPAH0@Z"(i32* nocapture %a, i32* nocapture %b) local_unnamed_addr #0 {
entry:
  %0 = load i32, i32* %a, align 4, !tbaa !4
  %1 = load i32, i32* %b, align 4, !tbaa !4
  store i32 %1, i32* %a, align 4, !tbaa !4
  store i32 %0, i32* %b, align 4, !tbaa !4
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: norecurse nounwind
define i32 @"\01?partition@@YAHQAHHH@Z"(i32* nocapture %arr, i32 %low, i32 %high) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds i32, i32* %arr, i32 %high
  %0 = load i32, i32* %arrayidx, align 4, !tbaa !4
  %sub = add nsw i32 %low, -1
  %cmp27 = icmp slt i32 %low, %high
  br i1 %cmp27, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %entry
  br label %for.body

for.cond.cleanup.loopexit:                        ; preds = %for.inc
  %.pre = load i32, i32* %arrayidx, align 4, !tbaa !4
  br label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %entry
  %1 = phi i32 [ %0, %entry ], [ %.pre, %for.cond.cleanup.loopexit ]
  %i.0.lcssa = phi i32 [ %sub, %entry ], [ %i.1, %for.cond.cleanup.loopexit ]
  %add = add nsw i32 %i.0.lcssa, 1
  %arrayidx8 = getelementptr inbounds i32, i32* %arr, i32 %add
  %2 = load i32, i32* %arrayidx8, align 4, !tbaa !4
  store i32 %1, i32* %arrayidx8, align 4, !tbaa !4
  store i32 %2, i32* %arrayidx, align 4, !tbaa !4
  ret i32 %add

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %j.029 = phi i32 [ %inc6, %for.inc ], [ %low, %for.body.preheader ]
  %i.028 = phi i32 [ %i.1, %for.inc ], [ %sub, %for.body.preheader ]
  %arrayidx2 = getelementptr inbounds i32, i32* %arr, i32 %j.029
  %3 = load i32, i32* %arrayidx2, align 4, !tbaa !4
  %cmp3 = icmp sgt i32 %3, %0
  br i1 %cmp3, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %inc = add nsw i32 %i.028, 1
  %arrayidx5 = getelementptr inbounds i32, i32* %arr, i32 %inc
  %4 = load i32, i32* %arrayidx5, align 4, !tbaa !4
  store i32 %3, i32* %arrayidx5, align 4, !tbaa !4
  store i32 %4, i32* %arrayidx2, align 4, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %i.1 = phi i32 [ %inc, %if.then ], [ %i.028, %for.body ]
  %inc6 = add nsw i32 %j.029, 1
  %exitcond = icmp eq i32 %inc6, %high
  br i1 %exitcond, label %for.cond.cleanup.loopexit, label %for.body
}

; Function Attrs: nounwind
define void @"\01?quickSort@@YAXQAHHH@Z"(i32* %arr, i32 %low, i32 %high) local_unnamed_addr #2 {
entry:
  %pi = alloca i32, align 4
  %cmp = icmp slt i32 %low, %high
  br i1 %cmp, label %for.body.lr.ph.i, label %if.end

for.body.lr.ph.i:                                 ; preds = %entry
  %0 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #3
  call void @llvm.var.annotation(i8* nonnull %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 48)
  %arrayidx.i = getelementptr inbounds i32, i32* %arr, i32 %high
  %1 = load i32, i32* %arrayidx.i, align 4, !tbaa !4
  %sub.i = add nsw i32 %low, -1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %j.029.i = phi i32 [ %low, %for.body.lr.ph.i ], [ %inc6.i, %for.inc.i ]
  %i.028.i = phi i32 [ %sub.i, %for.body.lr.ph.i ], [ %i.1.i, %for.inc.i ]
  %arrayidx2.i = getelementptr inbounds i32, i32* %arr, i32 %j.029.i
  %2 = load i32, i32* %arrayidx2.i, align 4, !tbaa !4
  %cmp3.i = icmp sgt i32 %2, %1
  br i1 %cmp3.i, label %for.inc.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  %inc.i = add nsw i32 %i.028.i, 1
  %arrayidx5.i = getelementptr inbounds i32, i32* %arr, i32 %inc.i
  %3 = load i32, i32* %arrayidx5.i, align 4, !tbaa !4
  store i32 %2, i32* %arrayidx5.i, align 4, !tbaa !4
  store i32 %3, i32* %arrayidx2.i, align 4, !tbaa !4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i
  %i.1.i = phi i32 [ %inc.i, %if.then.i ], [ %i.028.i, %for.body.i ]
  %inc6.i = add nsw i32 %j.029.i, 1
  %exitcond.i = icmp eq i32 %inc6.i, %high
  br i1 %exitcond.i, label %"\01?partition@@YAHQAHHH@Z.exit", label %for.body.i

"\01?partition@@YAHQAHHH@Z.exit":                 ; preds = %for.inc.i
  %.pre.i = load i32, i32* %arrayidx.i, align 4, !tbaa !4
  %add.i = add nsw i32 %i.1.i, 1
  %arrayidx8.i = getelementptr inbounds i32, i32* %arr, i32 %add.i
  %4 = load i32, i32* %arrayidx8.i, align 4, !tbaa !4
  store i32 %.pre.i, i32* %arrayidx8.i, align 4, !tbaa !4
  store i32 %4, i32* %arrayidx.i, align 4, !tbaa !4
  store i32 %add.i, i32* %pi, align 4, !tbaa !4
  call void @"\01?quickSort@@YAXQAHHH@Z"(i32* nonnull %arr, i32 %low, i32 %i.1.i)
  %5 = load i32, i32* %pi, align 4, !tbaa !4
  %add = add nsw i32 %5, 1
  call void @"\01?quickSort@@YAXQAHHH@Z"(i32* nonnull %arr, i32 %add, i32 %high)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #3
  br label %if.end

if.end:                                           ; preds = %"\01?partition@@YAHQAHHH@Z.exit", %entry
  ret void
}

; Function Attrs: nounwind
declare void @llvm.var.annotation(i8*, i8*, i8*, i32) #3

define void @"\01?printArray@@YAXQAHH@Z"(i32* nocapture readonly %arr, i32 %size) local_unnamed_addr #4 {
entry:
  %cmp5 = icmp sgt i32 %size, 0
  br i1 %cmp5, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %i.06 = phi i32 [ %inc, %for.body ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr inbounds i32, i32* %arr, i32 %i.06
  %0 = load i32, i32* %arrayidx, align 4, !tbaa !4
  %call = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"\01??_C@_03JDANDILB@?$CFd?5?$AA@", i32 0, i32 0), i32 %0)
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond = icmp eq i32 %inc, %size
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %putchar = tail call i32 @putchar(i32 110)
  ret void
}

; Function Attrs: inlinehint
define linkonce_odr i32 @printf(i8* %_Format, ...) local_unnamed_addr #5 comdat {
entry:
  %_ArgList = alloca i8*, align 4
  %0 = bitcast i8** %_ArgList to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #3
  call void @llvm.va_start(i8* nonnull %0)
  %1 = load i8*, i8** %_ArgList, align 4, !tbaa !8
  %call = call %struct._iobuf* @__acrt_iob_func(i32 1)
  %call.i = call i64* @__local_stdio_printf_options()
  %2 = load i64, i64* %call.i, align 8, !tbaa !10
  %call1.i = call i32 @__stdio_common_vfprintf(i64 %2, %struct._iobuf* %call, i8* %_Format, %struct.__crt_locale_pointers* null, i8* %1)
  call void @llvm.va_end(i8* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #3
  ret i32 %call1.i
}

; Function Attrs: norecurse
define i32 @main() local_unnamed_addr #6 {
entry:
  %arr = alloca [6 x i32], align 4
  %0 = bitcast [6 x i32]* %arr to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #3
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %0, i8* bitcast ([6 x i32]* @"\01?arr@?1??main@@9@3PAHA" to i8*), i32 24, i32 4, i1 false)
  %arraydecay = getelementptr inbounds [6 x i32], [6 x i32]* %arr, i32 0, i32 0
  call void @"\01?quickSort@@YAXQAHHH@Z"(i32* nonnull %arraydecay, i32 0, i32 5)
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"\01??_C@_0BA@DPNLFGIP@Sorted?5array?3?5n?$AA@", i32 0, i32 0))
  %1 = load i32, i32* %arraydecay, align 4, !tbaa !4
  %call.i = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"\01??_C@_03JDANDILB@?$CFd?5?$AA@", i32 0, i32 0), i32 %1)
  %arrayidx.i.1 = getelementptr inbounds [6 x i32], [6 x i32]* %arr, i32 0, i32 1
  %2 = load i32, i32* %arrayidx.i.1, align 4, !tbaa !4
  %call.i.1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"\01??_C@_03JDANDILB@?$CFd?5?$AA@", i32 0, i32 0), i32 %2)
  %arrayidx.i.2 = getelementptr inbounds [6 x i32], [6 x i32]* %arr, i32 0, i32 2
  %3 = load i32, i32* %arrayidx.i.2, align 4, !tbaa !4
  %call.i.2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"\01??_C@_03JDANDILB@?$CFd?5?$AA@", i32 0, i32 0), i32 %3)
  %arrayidx.i.3 = getelementptr inbounds [6 x i32], [6 x i32]* %arr, i32 0, i32 3
  %4 = load i32, i32* %arrayidx.i.3, align 4, !tbaa !4
  %call.i.3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"\01??_C@_03JDANDILB@?$CFd?5?$AA@", i32 0, i32 0), i32 %4)
  %arrayidx.i.4 = getelementptr inbounds [6 x i32], [6 x i32]* %arr, i32 0, i32 4
  %5 = load i32, i32* %arrayidx.i.4, align 4, !tbaa !4
  %call.i.4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"\01??_C@_03JDANDILB@?$CFd?5?$AA@", i32 0, i32 0), i32 %5)
  %arrayidx.i.5 = getelementptr inbounds [6 x i32], [6 x i32]* %arr, i32 0, i32 5
  %6 = load i32, i32* %arrayidx.i.5, align 4, !tbaa !4
  %call.i.5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"\01??_C@_03JDANDILB@?$CFd?5?$AA@", i32 0, i32 0), i32 %6)
  %putchar.i = call i32 @putchar(i32 110)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

declare %struct._iobuf* @__acrt_iob_func(i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

declare i32 @__stdio_common_vfprintf(i64, %struct._iobuf*, i8*, %struct.__crt_locale_pointers*, i8*) local_unnamed_addr #7

; Function Attrs: noinline norecurse nounwind
define linkonce_odr i64* @__local_stdio_printf_options() local_unnamed_addr #8 comdat {
entry:
  ret i64* @"\01?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA"
}

; Function Attrs: nounwind
declare i32 @putchar(i32) #3

attributes #0 = { norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { norecurse "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.linker.options = !{!0}
!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}

!0 = !{!"/FAILIFMISMATCH:\22_CRT_STDIO_ISO_WIDE_SPECIFIERS=0\22"}
!1 = !{i32 1, !"NumRegisterParameters", i32 0}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long long", !6, i64 0}
