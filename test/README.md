# Clip 모음

``` c++
// SDNode 수정 클립
if (I.hasDependency()) {
  errs() << "CheckDominated: " << *V << "\n";
  N.setDominated();
  if (V->hasMaybeDependency())
    N.setMaybe();
}
```

``` c++
// 함수 출력
  errs() << "Function: " << Fn.getName() << "\n";
  for (auto& BB : Fn) {
    errs() << BB.getName() << ":\n";
    for (auto& I : BB)
      errs() << I << "\n";
  }
  errs() << "\n";
```

``` c++
// 함수 & 인스트럭션
  errs() << "(" << Fn.getName() << ")" <<*Inst << "\n";
```

# 참고 사이트
https://github.com/draperlaboratory/fracture/wiki/How-An-IR-Statement-Becomes-An-Instruction


# 접근방법
1. Selection, Lowering, Combine에서 SDNode Following
2. register allocation 전단계에서 ValueMap 참조
  - SelectAllBasicBlocks
 (independent)
  - selectInstruction
  - selectOperator
  - selectXXX
 (dependent)
  - fastSelectInstruction
  - selectXXX
  - FastISel updateValueMap 함수에서 기록됨