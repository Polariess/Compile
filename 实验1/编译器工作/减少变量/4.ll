; ModuleID = '4.c'
source_filename = "4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  store i32 1, ptr %3, align 4
  store i32 1, ptr %4, align 4
  %6 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str, ptr noundef %5)
  %7 = load i32, ptr %2, align 4
  %8 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %7)
  %9 = load i32, ptr %3, align 4
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %9)
  br label %11

11:                                               ; preds = %15, %0
  %12 = load i32, ptr %4, align 4
  %13 = load i32, ptr %5, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %11
  %16 = load i32, ptr %2, align 4
  %17 = load i32, ptr %3, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, ptr %3, align 4
  %19 = load i32, ptr %3, align 4
  %20 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %19)
  %21 = load i32, ptr %3, align 4
  %22 = load i32, ptr %2, align 4
  %23 = sub nsw i32 %21, %22
  store i32 %23, ptr %2, align 4
  %24 = load i32, ptr %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %4, align 4
  br label %11, !llvm.loop !6

26:                                               ; preds = %11
  ret i32 0
}

declare i32 @__isoc99_scanf(ptr noundef, ...) #1

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 16.0.6 (15)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
