; 函数声明
declare i32 @printf(i8*, ...)
declare i32 @__isoc99_scanf(i8*, ...)

@fmt = private constant [3 x i8] c"%d\00"  ; 定义格式化字符串
；格式化字符串包括字符串结束符，故scanf和printf参数列表定义3 x i8

; Solve函数定义
define i32 @Solve(i32 %0) {
1:
    ; 定义变量
    %2 = alloca [105 x i32], align 4               ; 分配数组a[105]
    %3 = alloca i32, align 4                       ; 分配i的空间
    %4 = getelementptr [105 x i32], [105 x i32]* %2, i32 0, i32 1 ; 获取a[1]的指针

    store i32 2, i32* %3, align 4                  ; i = 2
    store i32 1, i32* %4, align 4                  ; a[1] = 1

    ; 进入while循环
    br label %5

5:                                                ; while循环的条件检查
    %6 = load i32, i32* %3, align 4                ; 读取i的值
    %7 = icmp sle i32 %6, %0                       ; 比较i <= n
    br i1 %7, label %8, label %15                  ; 如果条件成立跳转到while_body, 否则跳转到while_end

8:                                                ; while循环体
    ; 计算 a[i] = a[i-1] * i
    %9 = sub i32 %6, 1                             ; i - 1
    %10 = getelementptr [105 x i32], [105 x i32]* %2, i32 0, i32 %9 ; 获取a[i-1]的指针
    %11 = load i32, i32* %10, align 4              ; 读取a[i-1]的值

    %12 = getelementptr [105 x i32], [105 x i32]* %2, i32 0, i32 %6 ; 获取a[i]的指针
    %13 = mul i32 %11, %6                          ; a[i] = a[i-1] * i
    store i32 %13, i32* %12, align 4               ; 存储a[i]

    ; i = i + 1
    %14 = add i32 %6, 1                            ; i + 1
    store i32 %14, i32* %3, align 4                ; 存储i的值

    br label %5                                    ; 跳转回到while_cond检查条件

15:                                                ; while循环结束
    %16 = getelementptr [105 x i32], [105 x i32]* %2, i32 0, i32 %0 ; 获取a[n]的指针
    %17 = load i32, i32* %16, align 4              ; 读取a[n]的值
    ret i32 %17                                    ; 返回a[n]
}

; main函数定义
define i32 @main() {
0:
    ; 定义变量
    %1 = alloca i32, align 4                       ; 分配n的空间
    %2 = alloca i32, align 4                       ; 分配ans的空间

    ; 调用scanf("%d", &n) 并保存返回值
    %3 = call i32 @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @fmt, i64 0, i64 0), i32* %1) ; 执行scanf，并将返回值存储在%3中

    ; 调用Solve(n) 并保存返回值
    %4 = load i32, i32* %1, align 4                ; 读取n的值
    %5 = call i32 @Solve(i32 %4)                   ; 调用Solve(n)函数，并将返回值存储在%5中
    store i32 %5, i32* %2, align 4                 ; 存储Solve的返回值

    ; 调用printf("%d", ans) 并保存返回值
    %6 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @fmt, i64 0, i64 0), i32 %5) ; 执行printf，并将返回值存储在%6中

    ret i32 0                                      ; main函数返回0
}