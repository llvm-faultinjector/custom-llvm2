# Custom LLVM for interprocedural dependencies chekcing (Forked from LLVM 5.0.1 Version)

이 custom-llvm은 IR단계에서 llvm.annotation로 지정된 특정 register의 변수의존성(Dominated, Maybe)를 파악할 목적으로 Forking되었습니다. 이 프로젝트는 IR단계의 변수의존성을 object파일에서 출력할 수 있도록 도와줄 수 있습니다. 코드의 자세한 변경사항은 Commits를 참고하십시오.
