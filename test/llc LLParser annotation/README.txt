수정한 llc툴에서 LLParser가 정상적으로 llvm.annotation을 파싱하는 것을 확인했습니다.

[명령어 라인]
clang -S -emit-llvm a.cpp -o a.ll
llc a.ll