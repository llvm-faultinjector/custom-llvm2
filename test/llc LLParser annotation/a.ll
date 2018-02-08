; ModuleID = 'a.cpp'
source_filename = "a.cpp"
target datalayout = "e-m:x-p:32:32-i64:64-f80:32-n8:16:32-a:0:32-S32"
target triple = "i686-pc-windows-msvc19.12.25834"

@.str = private unnamed_addr constant [4 x i8] c"xxx\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [6 x i8] c"a.cpp\00", section "llvm.metadata"

; Function Attrs: noinline nounwind optnone
define i32 @"\01?foo_c@@YAHHAAH@Z"(i32 %a, i32* dereferenceable(4) %r) #0 {
entry:
  %r.addr = alloca i32*, align 4
  %a.addr = alloca i32, align 4
  store i32* %r, i32** %r.addr, align 4
  store i32 %a, i32* %a.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %1 = load i32*, i32** %r.addr, align 4
  %2 = load i32, i32* %1, align 4
  %add = add nsw i32 %0, %2
  ret i32 %add
}

; Function Attrs: noinline nounwind optnone
define i32 @"\01?foo_called@@YAHH@Z"(i32 %r) #0 {
entry:
  %r.addr = alloca i32, align 4
  %a = alloca i32, align 4
  store i32 %r, i32* %r.addr, align 4
  store i32 1, i32* %a, align 4
  %0 = load i32, i32* %a, align 4
  %call = call i32 @"\01?foo_c@@YAHHAAH@Z"(i32 %0, i32* dereferenceable(4) %r.addr)
  %add = add nsw i32 %call, 1
  ret i32 %add
}

; Function Attrs: noinline nounwind optnone
define i32 @"\01?foo@@YAHH@Z"(i32 %k) #0 {
entry:
  %k.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 %k, i32* %k.addr, align 4
  %a1 = bitcast i32* %a to i8*
  call void @llvm.var.annotation(i8* %a1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 15)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %k.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %a, align 4
  %3 = load i32, i32* %k.addr, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* %c, align 4
  %4 = load i32, i32* %c, align 4
  %call = call i32 @"\01?foo_called@@YAHH@Z"(i32 %4)
  %5 = load i32, i32* %a, align 4
  %add2 = add nsw i32 %5, %call
  store i32 %add2, i32* %a, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.var.annotation(i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"NumRegisterParameters", i32 0}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{!"clang version 5.0.1 (tags/RELEASE_501/final)"}
