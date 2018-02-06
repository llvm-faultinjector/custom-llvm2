# Clip ����

``` c++
// SDNode ���� Ŭ��
if (I.hasDependency()) {
  errs() << "CheckDominated: " << *V << "\n";
  N.setDominated();
  if (V->hasMaybeDependency())
    N.setMaybe();
}
```

``` c++
// �Լ� ���
  errs() << "Function: " << Fn.getName() << "\n";
  for (auto& BB : Fn) {
    errs() << BB.getName() << ":\n";
    for (auto& I : BB)
      errs() << I << "\n";
  }
  errs() << "\n";
```

``` c++
// �Լ� & �ν�Ʈ����
  errs() << "(" << Fn.getName() << ")" <<*Inst << "\n";
```

# ���� ����Ʈ
https://github.com/draperlaboratory/fracture/wiki/How-An-IR-Statement-Becomes-An-Instruction


# ���ٹ��
1. Selection, Lowering, Combine���� SDNode Following
2. register allocation ���ܰ迡�� ValueMap ����
  - SelectAllBasicBlocks
 (independent)
  - selectInstruction
  - selectOperator
  - selectXXX
 (dependent)
  - fastSelectInstruction
  - selectXXX
  - FastISel updateValueMap �Լ����� ��ϵ�