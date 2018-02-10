# Custom LLVM (Forked from LLVM 5.0.1 Version)
�� custom-llvm�� IR�ܰ迡�� llvm.annotation�� ������ Ư�� register�� ����������(Dominated, Maybe)�� �ľ��� �������� Forking�Ǿ����ϴ�.
�� ������Ʈ�� IR�ܰ��� ������������ object���Ͽ��� ����� �� �ֵ��� ������ �� �ֽ��ϴ�. �ڵ��� �ڼ��� ��������� Commits�� �����ϼ���.
���� �׽�Ʈ �� ��Ÿ ���뿡 ���ؼ� develop, test�귣ġ�� �����ϼ���.

***

## 1. IR �ܰ迡���� ǥ��
[Test ����](test/Dependency%20Test)�� b.cpp�� b.ll�� �����ϸ鼭 ���� ���� �о��ּ���.

### 1.1. llvm.annotation
`__attribute__((annotate("message")))`�� llvm���� �����ϴ� annotation ����Դϴ�. �� ����� ����ϸ� IR�� �����ܰ���� annotate�� ������
�� �� �ֽ��ϴ�.  ���� annotate�� �������� `"message"`�� ������ �� �� �ֽ��ϴ�.
``` c++
  int __attribute__((annotate("a"))) a = 0;
```
``` llvm
@.str.2 = private unnamed_addr constant [2 x i8] c"a\00", section "llvm.metadata"

  %a = alloca i32, align 4
  %1 = bitcast i32* %a to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #2
  call void @llvm.var.annotation(i8* nonnull %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 10)
```
���� a�� �� C++ ������ ���� annotate�Ǿ����ϴ�. �� IRǥ���� ���� `@llvm.var.annotation`��� �Լ��� `%1`�� ȣ���ϸ�, `%1`�� `%a`�� 
bitcast�ϰ� ������ �� �� �ֽ��ϴ�. `%a`�� annotate�� ���� a�� ����ŵ�ϴ�. 
llvm annotation����� ����ϸ� `StoreInst`�� ���� � ���� `%a`�� �Ҵ�Ǵ��� �� �� �ֽ��ϴ�.
``` llvm
  %add4 = add nsw i32 %4, %call
  store i32 %add4, i32* %a, align 4, !tbaa !3
```
�� ������ `%add4`�� ���� `%a`�� ����Ǵ� ����Դϴ�. �� ����� annotate�� ��� �������� �����ϸ�, ����ȭ �ܰ迡���� ������� �ʽ��ϴ�.

***

## 2. Dependency Pass
�� �н��� ������ �������� Instruction�� ��ŷ�ϱ� ���� �н��Դϴ�. ����ȭ�ܰ谡 �ƴ� SDNode ���� ������ �� �Լ��� �� ���� ����˴ϴ�.
�� [��ũ](https://github.com/rollrat/custom-llvm2/commit/583681378edf38a3d837135f9815c621c3021590#diff-825e43e63961002d7541aec6d4d4f7a4R468)
�� �� ������ ��Ÿ���ϴ�. `SelectAllBasicBlocks`�� ���� SDNode ���� ���� `c->runOnFunction`�� ���� ��ŷ�� �����ϴ� ���� �� �� �ֽ��ϴ�.

���� ��ũ�� �ҽ��� Dependency Pass�� �����Դϴ�.
```
https://github.com/rollrat/custom-llvm2/blob/master/include/llvm/DependencyInfo.h
https://github.com/rollrat/custom-llvm2/blob/master/lib/Transforms/Scalar/Dependency.cpp
```

### 2.1. Instruction ��ŷ ����
���� �� ���� �׸��� Dependency Pass�� `Instruction`�� ��ŷ�ϴ� �����Դϴ�.
```
Annotated : StoreInst�� �����ϴ� Instruction�� ��Ÿ���ϴ�.
Perpect : �����ϰ� ����� Instruction�� ��Ÿ���ϴ�. 
Dominated : Perpect�� �����ϸ�, ���� BasicBlock�� ����� branch�� ��ȭ��Ű�� Instruction�� ���Ե˴ϴ�.
Maybe : Dominated�� �����ϸ�, ����� ��� BasicBlock�� ���ؼ� �� BB�� branch�� ��ȭ��Ű�� ��� Instruction�� ���Ե˴ϴ�.
```
`Annotated` >> `Perpect` >> `Dominated` >> `Maybe`������ �켱������ �����˴ϴ�. 
����, Annotated��ŷ�̵� `Instruction`�� `Maybe`��ŷ�� �����մϴ�.

### 2.2. Branch Map
Branch Map�� Function BasicBlock�� Control-Flow-Graph�Դϴ�. �̰��� Dominated�� Maybe�� ������ �� ���˴ϴ�. 
Branch Map�� �����Ͽ� ���� BasicBlock�� �� ����� Dominated��, �� ���̻��̶�� Maybe�� ����մϴ�.
![Image](cfg-type.png)

### 2.3. �Լ� ������
Annotate�� ������ �Լ��� ������ �����ͷ� �� ��� ȣ��� �Լ��� ���ο��� ����� �� �ֽ��ϴ�.
���� �Լ��� ��ȯ���� Annotate�� ������ Dominated�Ǿ��ٸ�, �� �Լ��� ���ڵ��� ��ȯ���� ������ �� �� �ֽ��ϴ�.
�� �� ������ �˱� ���� ������ ���� Ŭ������ ����Ͽ� ȣ���Լ� �˻��մϴ�.
```
FunctionReturnDependencyChecker: � �Լ����ڰ� ��ȯ���� ������ ��ġ���� �˻��մϴ�.
FunctionArgumentDependencyCheck: � �Լ����ڰ� �ٸ� �Լ����ڿ� ������ ��ġ���� �˻��մϴ�.
```
�Լ� �������� �˻��� �ʿ䰡 �ִ� ��� `DependencyChecker`�� `run`�Լ��� ���� �Լ��� �� ���� �˻��մϴ�.
�� �˻������ Annotate�� ���ο� ���������� ����˴ϴ�.

### 2.4. ��ŷ ����
������ `Instruction`��ŷ�� ���Ǵ� Ŭ������ �Լ��� �Դϴ�.
``` c++
  class FunctionReturnDependencyChecker;
  class FunctionArgumentDependencyCheck
  class BottomUpDependencyChecker;
```
�� Ŭ���� �� `BottomUpDependencyChecker`�� `Instruction` ��ŷ ������ �����ϴ�.
```
runPerpectBottomUp: Perpect ��ŷ�� ���˴ϴ�. (�� �Լ��� annotate�� ���� �ϳ��� �� �� ȣ��˴ϴ�.)
runBottomUp: Dominated, Maybe ��ŷ�� ���˴ϴ�.
runSearch: Store�� ���� �� ��ȭ�� �Լ� �������� �˻��մϴ�. ���ѵ� �������� Annotated ��ŷ�� ���˴ϴ�.
  (�� �Լ��� runBottomUp�� ���������� ȣ���մϴ�.)
processBranches: Branch Map�� ����Ͽ� ���������� runSearch, runBottomUp�� ȣ���մϴ�.
```
![Image](marking.png)

#### 2.4.1. runBottomUp �Լ�
`runBottomUp`�� ��ġ�� `Instruction`�� `getOperand`�� ���� ����� `Instruction`�� ����� `Value`�� �����մϴ�.
Dominated, Maybe�� ��ŷ�ǳ�, ��ŷ ������ �� �Լ����� �̷������ ���� �ƴմϴ�. ��ŷ ������ processBranches�� ����
�̷�� ���ϴ�.
``` vb.net
runBottomUp [Instruction: I, bool: P]
  if (P == true)
    I := Dominated
  else
    I := Maybe

  for each Operand in I.getOperand
    runBottomUp(Operand, P)
    runSearch(Operand, P)

  processBranches(I)
```
�� �ݺ��� Operand�� `Instruction`�� �ƴ� ������ �ݺ��˴ϴ�.
`Instruction`�� `CallInst`�� ��쿣 `ReturnDependency`�� �ִ� �Լ� ���ڵ鸸 �˻��մϴ�.

#### 2.4.2. runSearch �Լ�
`runSearch`�� `StoreInst` �Ǵ� `CallInst`�� ���ڷ� ���Ǵ� `Instruction`�� �˻��մϴ�.
Annotated ��ŷ�� ���� `ROOT : bool`��� ������ ���Ǹ�, �� ������ ��ŷ `entry`������ ȣ�⸸ `true`�Դϴ�.
``` vb.net
runSearch [Instruction: I, bool: P, bool: ROOT (= false)]
  for each Instruction in Function.BasicBlock
    if (type(Instruction) :: StoreInst)
      if (StoreInst.Pointer == I)
        if (ROOT == true)
           I := Annotated
           runPerpectBottomUp (StoreInst.Value)
        runBottomUp(StoreInst.Value, P && ROOT)
        runSearch(StoreInst.Value, P && ROOT)

    else if (type(Instruction) :: CallInst)
      for each Oprand in FunctionArgumentDependency(CallInst.CalledFunction, Instruction.getOperand)
        runBottomUp(Operand, P && ROOT)
        runSearch(Operand, P && ROOT)

  processBranches(I)
```
`P && ROOT`�� `runSearch`�ܰ迡�� Dominated, Maybe�� ������ �� ���� �����Դϴ�.
��, `ROOT`�� `true`�� ��쿣 `P`�� `true`�̸�, ���� `Instruction`�� Dominated�� ��ŷ�˴ϴ�.

#### 2.4.3. processBranches �Լ�
Branch Map�� ���� ���� ������ �ش� Branch�� �����ϴ� Compare��Ҹ� �����մϴ�.
Branch�� Conditional���� ���� ��� Compare��� ������ �ǳ� �ݴϴ�.
``` vb.net
processBranches [Instruction: I]
  processBlock(getNodeFromInstruction(I))

processBlock [BlockNode: BN]
  if (BN.getFromNodes.Size == 1)
	is_perpect := true
  else
    is_perepct := false

  for each BlockNode in BN.getFromNodes
    if (BlockNode is Conditional)
      runBottomUp(BlockNode.getCondition, is_perpect)
      runSearch(BlockNode.getCondition, is_perpect)

    processBlock(BlockNode)
```
�� �� `processBlock`�� ����� `BlockNode`�� �ٽ� ������� �ʽ��ϴ�.

#### 2.4.4. runPerpectBottomUp �Լ�
�� �Լ��� `Instruction`�� �� Operand�� ��������� ��ȸ�Ͽ� Perpect ��ŷ�� �մϴ�.
``` vb.net
runPerpectBottomUp [Instruction: I]
  I := Perpect

  for each Operand in I.getOperand
    runPerpectBottomUp(Operand)
```

***

## 3. SelectionDAG Follow
SelectionDAG�� �����Ǹ鼭 `Instruction`�� Dependency������ DAGNode�� �Ѱ����ϴ�.
���� ������ PassManager�� SelectionDAG�� �����ϸ鼭 ȣ���ϴ� ���� �Ǵ� �Լ��� �����ݴϴ�.
```
����: https://github.com/draperlaboratory/fracture/wiki/How-An-IR-Statement-Becomes-An-Instruction

FunctionPass
    -> MachineFunctionPass
        -> SelelctionDAGISel
            -> TargetDAGToDAGISel

include/llvm/Pass.h
-> virtual bool runOnFunction(Function &F) = 0;

lib/CodeGen/MachineFunctionPass.cpp
-> runOnMachineFunction(MF)

lib/CodeGen/SelectionDAG/SelectionDAGISel.cpp
-> bool SelectionDAGISel::runOnMachineFunction(MachineFunction &mf)
runOnMachineFunction�Լ����� SelectAllBasicBlocks�Լ��� ����Ǳ� �� Dependency Checking�� �����մϴ�.

lib/CodeGen/SelectionDAG/SelectionDAGISel.cpp
-> void SelectionDAGISel::SelectAllBasicBlocks(const Function &Fn)
SelectAllBasicBlocks�Լ��� `FastISel`�� `SelectBasicBlock`�� ȣ���մϴ�.
`FastISel`�� -O0������ ����Ǵ� ������ InstructionSelection�̰�,
`SelectBasicBlocks`�� `DoInstructionSelection`�� �����ϸ鼭 SelectionDAGNode�� �����մϴ�.

lib/CodeGen/SelectionDAG/SelectionDAGISel.cpp
-> void SelectionDAGISel::CodeGenAndEmitDAG() {
CodeGenAndEmitDAG�Լ����� DAGCombine, DAGLegalize�� ����˴ϴ�.
���� Instruction Schedule�� ����˴ϴ�.
```