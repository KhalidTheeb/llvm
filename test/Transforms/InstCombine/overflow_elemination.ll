;https://godbolt.org/g/nxoFZ5

; ModuleID = '/tmp/gcc-explorer-compiler116118-73-1l80azs/example.cpp'
source_filename = "/tmp/gcc-explorer-compiler116118-73-1l80azs/example.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

typeinfo name for int (int) = comdat any

typeinfo for int (int) = comdat any


; Function Attrs: nounwind uwtable
define i32 @doubleMe(int)(i32) local_unnamed_addr #0 prologue <{ i32, i8* }> <{ i32 1413876459, i8* bitcast ({ i8*, i8* }* @typeinfo for int (int) to i8*) }> !dbg !6 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !11, metadata !12), !dbg !13
  %2 = icmp sgt i32 %0, 0, !dbg !14
  br i1 %2, label %3, label %9, !dbg !16

; <label>:3:                                      ; preds = %1
  %4 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %0, i32 %0), !dbg !17
  %5 = extractvalue { i32, i1 } %4, 0, !dbg !17
  %6 = extractvalue { i32, i1 } %4, 1, !dbg !17
  br i1 %6, label %7, label %15, !dbg !17, !prof !18, !nosanitize !2

; <label>:7:                                      ; preds = %3
  %8 = zext i32 %0 to i64, !dbg !19, !nosanitize !2
  tail call void @__ubsan_handle_add_overflow(i8* bitcast ({ { [56 x i8]*, i32, i32 }, { i16, i16, [6 x i8] }* }* @1 to i8*), i64 %8, i64 %8) #3, !dbg !19, !nosanitize !2
  br label %15, !dbg !19, !nosanitize !2

; <label>:9:                                      ; preds = %1
  %10 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %0, i32 2), !dbg !21
  %11 = extractvalue { i32, i1 } %10, 0, !dbg !21
  %12 = extractvalue { i32, i1 } %10, 1, !dbg !21
  br i1 %12, label %13, label %15, !dbg !21, !prof !18, !nosanitize !2

; <label>:13:                                     ; preds = %9
  %14 = zext i32 %0 to i64, !dbg !22, !nosanitize !2
  tail call void @__ubsan_handle_mul_overflow(i8* bitcast ({ { [56 x i8]*, i32, i32 }, { i16, i16, [6 x i8] }* }* @2 to i8*), i64 2, i64 %14) #3, !dbg !22, !nosanitize !2
  br label %15, !dbg !22, !nosanitize !2

; <label>:15:                                     ; preds = %13, %9, %7, %3
  %16 = phi i32 [ %5, %3 ], [ %5, %7 ], [ %11, %9 ], [ %11, %13 ]
  ret i32 %16, !dbg !23
}

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #1

; Function Attrs: uwtable
declare void @__ubsan_handle_add_overflow(i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) #1

; Function Attrs: uwtable
declare void @__ubsan_handle_mul_overflow(i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { uwtable }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 3.9.0 (tags/RELEASE_390/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/tmp/gcc-explorer-compiler116118-73-1l80azs/example.cpp", directory: "/gcc-explorer")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 3.9.0 (tags/RELEASE_390/final)"}
!6 = distinct !DISubprogram(name: "doubleMe", linkageName: "doubleMe(int)", scope: !1, file: !1, line: 2, type: !7, isLocal: false, isDefinition: true, scopeLine: 2, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !10)
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !9}
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !{!11}
!11 = !DILocalVariable(name: "num", arg: 1, scope: !6, file: !1, line: 2, type: !9)
!12 = !DIExpression()
!13 = !DILocation(line: 2, column: 18, scope: !6)
!14 = !DILocation(line: 3, column: 11, scope: !15)
!15 = distinct !DILexicalBlock(scope: !6, file: !1, line: 3, column: 7)
!16 = !DILocation(line: 3, column: 7, scope: !6)
!17 = !DILocation(line: 4, column: 16, scope: !15)
!18 = !{!"branch_weights", i32 1, i32 1048575}
!19 = !DILocation(line: 4, column: 16, scope: !20)
!20 = !DILexicalBlockFile(scope: !15, file: !1, discriminator: 1)
!21 = !DILocation(line: 6, column: 14, scope: !15)
!22 = !DILocation(line: 6, column: 14, scope: !20)
!23 = !DILocation(line: 7, column: 1, scope: !6)
