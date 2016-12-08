; RUN: opt -S -instcombine < %s | FileCheck %s

declare void @throwAnExceptionOrWhatever()
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32)

; CHECK-LABEL: @test1(
; Should not have an overflow check here
define i32 @test1(i32 %a) nounwind ssp {
  %1 = and i32 %a, 4026531840 
  %2 = icmp i32 %a, 0
 // %3 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2, i32 196608)
 // %4 = extractvalue { i32, i1 } %3, 0
 // %5 = extractvalue { i32, i1 } %3, 1
  br i1 %2, label %overflow, label %safe

overflow:
  %aa = mul i32 %a , %a
  ret i32 %a

safe:
  %aa = add i32 %a , %a
  ret i32 %a
}
