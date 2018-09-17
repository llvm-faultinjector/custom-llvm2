# Custom LLVM (Forked from LLVM 6.0.0 Version)
This custom-llvm has been forked to determine the variable dependencies (Dominated, Maybe) of the specific register specified by llvm.annotation in the IR step. This project can help you to output variable dependencies of the IR level from an object file(Not yet). See Commits for more details on the code changes. Also refer to the develop and test branches for testing and etcs.

***

## 1. Representation in the IR stage
Please read the following article while referring to b.cpp and b.ll. [Test Folder](test/Dependency%20Test) 

### 1.1. Variable marking using llvm.annotation
`__attribute __ ((annotate (" message ")))` is an annotation feature provided by clang / llvm. This function allows you to know the annotated variables until the final stage of IR. You can also see the contents of `" message "` in an annotated variable.
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
The variable `a` has been annotated via the above C ++ syntax. The following IR representation shows that the function `@ llvm.var.annotation` calls `%1` and that `%1` bitcasts`%a`. `%a` points to the annotated variable a. With the llvm annotation function, `StoreInst` tells which values are assigned to`%a`.
``` llvm
  %add4 = add nsw i32 %4, %call
  store i32 %add4, i32* %a, align 4, !tbaa !3
```
The above statement shows that the value of `%add4` is stored in `%a`. This function works on all annotated variables and does not disappear in the optimization phase.

### 1.2. Variable marking via extern function
When variable marking using `llvm.annotation`, I found that marking disappears in some situations during maximum optimization on testing.
We could not find another way to mark the variable itself, but we could find the virtual register used in the process of changing the variable by calling the bodyless function.
``` c++
#define ANNORATE(msg) __attribute__((annotate(msg)))
extern void __my__annotate(void *);

void SHA256_Mixing(SHA_PULONG indexs, SHA_PULONG outdexs)
{
   SHA_ULONG w[64];
   SHA_ULONG i, a, b, c, d, e, f, g, h,  ANNORATE("t1") t1, ANNORATE("t2") t2;
   
   for (i = 0; i < 16; i++)
      w[i] = CONVERT_TO_LITTLE_ENDIAN(indexs[i]);
   
   for (i = 16; i < 64; i++)
      w[i] = SHA_256_s0(w[i - 15]) + w[i - 16] + w[i - 7] + SHA_256_s1(w[i - 2]);

  for (i = 0; i < 64; i++) {

    __my__annotate(t1);
    SHA_256_LOOP(a, b, c, d, e, f, g, h, i, t1, t2);
    SHA_256_XROLL(a, b, c, d, e, f, g, h, t1, t2);
  }
```
The above t1 is marked, but no annotation is left in -O2 optimization. With the extern function, you can get the following results from the .ll file:
``` llvm
  ; Before
for.body73:                                       ; preds = %for.body73, %for.end62
  %add112215 = phi i32 [ %26, %for.end62 ], [ %add112, %for.body73 ]
  %i.2214 = phi i32 [ 0, %for.end62 ], [ %inc114, %for.body73 ]
  %h.0213 = phi i32 [ %35, %for.end62 ], [ %g.0212, %for.body73 ]
  %g.0212 = phi i32 [ %34, %for.end62 ], [ %f.0211, %for.body73 ]
  %f.0211 = phi i32 [ %33, %for.end62 ], [ %e.0210, %for.body73 ]
  %e.0210 = phi i32 [ %32, %for.end62 ], [ %add111, %for.body73 ]
  %d.0209 = phi i32 [ %31, %for.end62 ], [ %c.0208, %for.body73 ]
  %c.0208 = phi i32 [ %30, %for.end62 ], [ %b.0207, %for.body73 ]
  %b.0207 = phi i32 [ %29, %for.end62 ], [ %add112215, %for.body73 ]
  %shr74 = lshr i32 %e.0210, 6
  %shl75 = shl i32 %e.0210, 26
  %or76 = or i32 %shr74, %shl75
  %shr77 = lshr i32 %e.0210, 11
  %shl78 = shl i32 %e.0210, 21
  ...

  ; After
for.body73:                                       ; preds = %for.body73, %for.end62
  %t1.0216 = phi i32 [ undef, %for.end62 ], [ %add93, %for.body73 ]
  %h.0215 = phi i32 [ %31, %for.end62 ], [ %g.0214, %for.body73 ]
  %g.0214 = phi i32 [ %30, %for.end62 ], [ %f.0213, %for.body73 ]
  %f.0213 = phi i32 [ %29, %for.end62 ], [ %e.0212, %for.body73 ]
  %e.0212 = phi i32 [ %28, %for.end62 ], [ %add111, %for.body73 ]
  %d.0211 = phi i32 [ %27, %for.end62 ], [ %c.0210, %for.body73 ]
  %c.0210 = phi i32 [ %26, %for.end62 ], [ %b.0209, %for.body73 ]
  %b.0209 = phi i32 [ %25, %for.end62 ], [ %35, %for.body73 ]
  %i.2208 = phi i32 [ 0, %for.end62 ], [ %inc114, %for.body73 ]
  %32 = inttoptr i32 %t1.0216 to i8*
  ; extern function called
  call void @__my__annotate(i8* %32) #2
  %shr74 = lshr i32 %e.0212, 6
  %shl75 = shl i32 %e.0212, 26
  %or76 = or i32 %shr74, %shl75
  %shr77 = lshr i32 %e.0212, 11
  %shl78 = shl i32 %e.0212, 21
```
Like this, when marking with extern function, the kind of marking of argument of function is marked as `Annotated` which will be described below.
The extern function used is removed from llc processing via `eraseFromParent`.

***

## 2. Dependency Pass
This is the pass to mark the dependency of the variable in the Instruction. It is executed once for each function just before the SDNode generation, not the optimization step.
This [link](https://github.com/rollrat/custom-llvm2/commit/583681378edf38a3d837135f9815c621c3021590#diff-825e43e63961002d7541aec6d4d4f7a4R468)
Indicates the above procedure. You can know that `c-> runOnFunction` immediately precedes the creation of the SDNode by` SelectAllBasicBlocks`.

The source of the following links is a full source code of Dependency Pass.
```
https://github.com/rollrat/custom-llvm2/blob/master/include/llvm/DependencyInfo.h
https://github.com/rollrat/custom-llvm2/blob/master/lib/Transforms/Scalar/Dependency.cpp
```

The following link is the git link that developed the pass before creating the custom-llvm repository.
```
https://github.com/rollrat/llvm-control-pass
```

### 2.1. Instruction Marking Type
The following 4 items are marking type on Dependency Pass.
```
Annotated : Instruction to be substituted by StoreInst.
Perpect : A fully connected Instruction.
Dominated : Includes Perpect, and includes instructions to change the branch associated with the parent BasicBlock.
Maybe : Dominated를 포함하며, 연결된 모든 BasicBlock에 관해서 이 BB의 branch를 변화시키는 모든 Instruction도 포함됩니다.
```
`Annotated` >> `Perpect` >> `Dominated` >> `Maybe` Priority is determined in that order.
For example, `Instruction` with `Annotated` marking includes `Maybe` marking.

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

***

## 4. 버그
현재 버전은 다음과 같은 함수/기능에 대해선 Dependency Pass가 실행되지 않거나,
오류가 발생할 수 있습니다.
```
* 가변인자를 가진 함수의 ArgumentDependency를 확인할 수 없습니다.
```
