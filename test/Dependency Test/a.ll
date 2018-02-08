; ModuleID = 'a.cpp'
source_filename = "a.cpp"
target datalayout = "e-m:x-p:32:32-i64:64-f80:32-n8:16:32-a:0:32-S32"
target triple = "i686-pc-windows-msvc19.12.25834"

@.str = private unnamed_addr constant [4 x i8] c"xxx\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [6 x i8] c"a.cpp\00", section "llvm.metadata"

define i32 @"\01?foo@@YAHH@Z"(i32 %k) local_unnamed_addr #0 {
entry:
  %a = alloca i32, align 4
  %0 = bitcast i32* %a to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #2
  call void @llvm.var.annotation(i8* nonnull %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 17)
  %cmp7 = icmp sgt i32 %k, 0
  br i1 %cmp7, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %.pre = load i32, i32* %a, align 4, !tbaa !3
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %entry
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #2
  ret i32 0

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %1 = phi i32 [ %.pre, %for.body.lr.ph ], [ %add2, %for.body ]
  %i.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %add = add nsw i32 %1, %k
  %call = call i32 @"\01?foo_called@@YAHH@Z"(i32 %add)
  %2 = load i32, i32* %a, align 4, !tbaa !3
  %add2 = add nsw i32 %2, %call
  store i32 %add2, i32* %a, align 4, !tbaa !3
  %inc = add nuw nsw i32 %i.08, 1
  %exitcond = icmp eq i32 %inc, %k
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.var.annotation(i8*, i8*, i8*, i32) #2

declare i32 @"\01?foo_called@@YAHH@Z"(i32) local_unnamed_addr #3

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
