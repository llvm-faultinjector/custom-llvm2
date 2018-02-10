# Custom LLVM (Forked from LLVM 5.0.1 Version)
이 custom-llvm은 IR단계에서 llvm.annotation로 지정된 특정 register의 변수의존성(Dominated, Maybe)를 파악할 목적으로 Forking되었습니다.
이 프로젝트는 IR단계의 변수의존성을 object파일에서 출력할 수 있도록 도와줄 수 있습니다. 코드의 자세한 변경사항은 Commits를 참고하세요.
또한 테스트 및 기타 내용에 관해선 develop, test브랜치를 참고하세요.

***

## 1. IR 단계에서의 표현
[Test 폴더](test/Dependency%20Test)의 b.cpp와 b.ll를 참고하면서 다음 글을 읽어주세요.

### 1.1. llvm.annotation
`__attribute__((annotate("message")))`는 llvm에서 제공하는 annotation 기능입니다. 이 기능을 사용하면 IR의 최종단계까지 annotate된 변수를
알 수 있습니다.  또한 annotate된 변수에서 `"message"`에 내용을 알 수 있습니다.
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
변수 a는 위 C++ 구문을 통해 annotate되었습니다. 밑 IR표현을 보면 `@llvm.var.annotation`라는 함수가 `%1`를 호출하며, `%1`은 `%a`를 
bitcast하고 있음을 알 수 있습니다. `%a`는 annotate된 변수 a를 가리킵니다. 
llvm annotation기능을 사용하면 `StoreInst`를 통해 어떤 값이 `%a`에 할당되는지 알 수 있습니다.
``` llvm
  %add4 = add nsw i32 %4, %call
  store i32 %add4, i32* %a, align 4, !tbaa !3
```
위 구문은 `%add4`의 값이 `%a`에 저장되는 모습입니다. 이 기능은 annotate된 모든 변수에서 동작하며, 최적화 단계에서도 사라지지 않습니다.

***

## 2. Dependency Pass
이 패스는 변수의 의존성을 Instruction에 마킹하기 위한 패스입니다. 최적화단계가 아닌 SDNode 생성 직전에 각 함수당 한 번씩 실행됩니다.
이 [링크](https://github.com/rollrat/custom-llvm2/commit/583681378edf38a3d837135f9815c621c3021590#diff-825e43e63961002d7541aec6d4d4f7a4R468)
는 위 과정을 나타냅니다. `SelectAllBasicBlocks`에 의한 SDNode 생성 직전 `c->runOnFunction`을 통해 마킹을 진행하는 것을 알 수 있습니다.

다음 링크의 소스는 Dependency Pass의 전문입니다.
```
https://github.com/rollrat/custom-llvm2/blob/master/include/llvm/DependencyInfo.h
https://github.com/rollrat/custom-llvm2/blob/master/lib/Transforms/Scalar/Dependency.cpp
```

### 2.1. Instruction 마킹 종류
다음 네 가지 항목은 Dependency Pass가 `Instruction`을 마킹하는 종류입니다.
```
Annotated : StoreInst가 대입하는 Instruction을 나타냅니다.
Perpect : 완전하게 연결된 Instruction을 나타냅니다. 
Dominated : Perpect를 포함하며, 상위 BasicBlock과 연결된 branch를 변화시키는 Instruction도 포함됩니다.
Maybe : Dominated를 포함하며, 연결된 모든 BasicBlock에 관해서 이 BB의 branch를 변화시키는 모든 Instruction도 포함됩니다.
```
`Annotated` >> `Perpect` >> `Dominated` >> `Maybe`순으로 우선순위가 결정됩니다. 
가령, Annotated마킹이된 `Instruction`은 `Maybe`마킹을 포함합니다.

### 2.2. Branch Map
Branch Map은 Function BasicBlock의 Control-Flow-Graph입니다. 이것은 Dominated와 Maybe를 구별할 때 사용됩니다. 
Branch Map을 참고하여 상위 BasicBlock이 한 개라면 Dominated를, 두 개이상이라면 Maybe를 사용합니다.
![Image](cfg-type.png)

### 2.3. 함수 의존성
Annotate된 변수가 함수의 인자의 포인터로 들어갈 경우 호출된 함수의 내부에서 변경될 수 있습니다.
또한 함수의 반환값이 Annotate된 변수에 Dominated되었다면, 그 함수의 인자들이 반환값에 영향을 줄 수 있습니다.
이 두 가지를 알기 위해 다음과 같은 클래스를 사용하여 호출함수 검사합니다.
```
FunctionReturnDependencyChecker: 어떤 함수인자가 반환값에 영향을 미치는지 검사합니다.
FunctionArgumentDependencyCheck: 어떤 함수인자가 다른 함수인자에 영향을 미치는지 검사합니다.
```
함수 의존성을 검사할 필요가 있는 경우 `DependencyChecker`의 `run`함수를 통해 함수당 한 번만 검사합니다.
이 검사과정은 Annotate의 여부와 독립적으로 진행됩니다.

### 2.4. 마킹 결정
다음은 `Instruction`마킹에 사용되는 클래스와 함수들 입니다.
``` c++
  class FunctionReturnDependencyChecker;
  class FunctionArgumentDependencyCheck
  class BottomUpDependencyChecker;
```
위 클래스 중 `BottomUpDependencyChecker`만 `Instruction` 마킹 권한을 가집니다.
```
runPerpectBottomUp: Perpect 마킹에 사용됩니다. (이 함수는 annotate된 변수 하나당 한 번 호출됩니다.)
runBottomUp: Dominated, Maybe 마킹에 사용됩니다.
runSearch: Store에 의한 값 변화와 함수 의존성을 검사합니다. 제한된 조건으로 Annotated 마킹에 사용됩니다.
  (이 함수는 runBottomUp을 조건적으로 호출합니다.)
processBranches: Branch Map을 사용하여 조건적으로 runSearch, runBottomUp을 호출합니다.
```
![Image](marking.png)

#### 2.4.1. runBottomUp 함수
`runBottomUp`을 거치는 `Instruction`은 `getOperand`를 통해 얻어진 `Instruction`에 관계된 `Value`를 조사합니다.
Dominated, Maybe이 마킹되나, 마킹 구별은 이 함수에서 이루어지는 것이 아닙니다. 마킹 구별은 processBranches를 통해
이루어 집니다.
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
이 반복은 Operand가 `Instruction`이 아닐 때까지 반복됩니다.
`Instruction`이 `CallInst`인 경우엔 `ReturnDependency`가 있는 함수 인자들만 검사합니다.

#### 2.4.2. runSearch 함수
`runSearch`는 `StoreInst` 또는 `CallInst`의 인자로 사용되는 `Instruction`을 검사합니다.
Annotated 마킹을 위한 `ROOT : bool`라는 변수가 사용되며, 이 변수는 마킹 `entry`에서의 호출만 `true`입니다.
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
`P && ROOT`는 `runSearch`단계에선 Dominated, Maybe를 결정할 수 없기 때문입니다.
단, `ROOT`가 `true`일 경우엔 `P`도 `true`이며, 하위 `Instruction`은 Dominated로 마킹됩니다.

#### 2.4.3. processBranches 함수
Branch Map을 통해 얻은 정보로 해당 Branch를 결정하는 Compare요소를 추적합니다.
Branch가 Conditional하지 않을 경우 Compare요소 추적을 건너 뜁니다.
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
한 번 `processBlock`이 실행된 `BlockNode`는 다시 실행되지 않습니다.

#### 2.4.4. runPerpectBottomUp 함수
이 함수는 `Instruction`의 각 Operand를 재귀적으로 순회하여 Perpect 마킹을 합니다.
``` vb.net
runPerpectBottomUp [Instruction: I]
  I := Perpect

  for each Operand in I.getOperand
    runPerpectBottomUp(Operand)
```

***

## 3. SelectionDAG Follow
SelectionDAG가 생성되면서 `Instruction`의 Dependency정보가 DAGNode로 넘겨집니다.
다음 과정은 PassManager가 SelectionDAG를 생성하면서 호출하는 파일 또는 함수를 보여줍니다.
```
참조: https://github.com/draperlaboratory/fracture/wiki/How-An-IR-Statement-Becomes-An-Instruction

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
runOnMachineFunction함수에서 SelectAllBasicBlocks함수가 실행되기 전 Dependency Checking을 실행합니다.

lib/CodeGen/SelectionDAG/SelectionDAGISel.cpp
-> void SelectionDAGISel::SelectAllBasicBlocks(const Function &Fn)
SelectAllBasicBlocks함수는 `FastISel`과 `SelectBasicBlock`을 호출합니다.
`FastISel`은 -O0에서만 실행되는 디버깅용 InstructionSelection이고,
`SelectBasicBlocks`은 `DoInstructionSelection`를 실행하면서 SelectionDAGNode를 생성합니다.

lib/CodeGen/SelectionDAG/SelectionDAGISel.cpp
-> void SelectionDAGISel::CodeGenAndEmitDAG() {
CodeGenAndEmitDAG함수에서 DAGCombine, DAGLegalize가 실행됩니다.
또한 Instruction Schedule도 실행됩니다.
```