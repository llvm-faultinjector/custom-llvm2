; ModuleID = 'b.cpp'
source_filename = "b.cpp"
target datalayout = "e-m:x-p:32:32-i64:64-f80:32-n8:16:32-a:0:32-S32"
target triple = "i686-pc-windows-msvc19.12.25834"

@.str = private unnamed_addr constant [2 x i8] c"b\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [6 x i8] c"b.cpp\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [2 x i8] c"a\00", section "llvm.metadata"

define i32 @"\01?foo@@YAHH@Z"(i32 %k) local_unnamed_addr #0 {
entry:
  %b = alloca i32, align 4
  %a = alloca i32, align 4
  %0 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #2
  call void @llvm.var.annotation(i8* nonnull %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 9)
  store i32 0, i32* %b, align 4, !tbaa !3
  %1 = bitcast i32* %a to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #2
  call void @llvm.var.annotation(i8* nonnull %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 10)
  store i32 0, i32* %a, align 4, !tbaa !3
  %cmp16 = icmp sgt i32 %k, 0
  br i1 %cmp16, label %for.body.preheader, label %entry.for.cond.cleanup_crit_edge

for.body.preheader:                               ; preds = %entry
  br label %for.body

entry.for.cond.cleanup_crit_edge:                 ; preds = %entry
  %.pre = load i32, i32* %b, align 4, !tbaa !3
  br label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.body, %entry.for.cond.cleanup_crit_edge
  %2 = phi i32 [ %.pre, %entry.for.cond.cleanup_crit_edge ], [ %add6, %for.body ]
  %.lcssa = phi i32 [ 0, %entry.for.cond.cleanup_crit_edge ], [ %6, %for.body ]
  %call7 = call i32 @"\01?foo_called@@YAHH@Z"(i32 %2)
  %add8 = add nsw i32 %call7, %.lcssa
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #2
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #2
  ret i32 %add8

for.body:                                         ; preds = %for.body.preheader, %for.body
  %3 = phi i32 [ %6, %for.body ], [ 0, %for.body.preheader ]
  %i.017 = phi i32 [ %inc, %for.body ], [ 0, %for.body.preheader ]
  %add = add nsw i32 %3, %k
  %call = call i32 @"\01?foo_called@@YAHH@Z"(i32 %add)
  %4 = load i32, i32* %a, align 4, !tbaa !3
  %add4 = add nsw i32 %4, %call
  store i32 %add4, i32* %a, align 4, !tbaa !3
  %call5 = call i32 @"\01?foo_called2@@YAHH@Z"(i32 %add)
  %5 = load i32, i32* %b, align 4, !tbaa !3
  %add6 = add nsw i32 %5, %call5
  store i32 %add6, i32* %b, align 4, !tbaa !3
  %inc = add nuw nsw i32 %i.017, 1
  %6 = load i32, i32* %a, align 4, !tbaa !3
  %exitcond = icmp eq i32 %inc, %k
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.var.annotation(i8*, i8*, i8*, i32) #2

declare i32 @"\01?foo_called@@YAHH@Z"(i32) local_unnamed_addr #3

declare i32 @"\01?foo_called2@@YAHH@Z"(i32) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
