//===----------------------------------------------------------------------===//
//
//                   Interprocedural Dependency Checker
//
//===----------------------------------------------------------------------===//
//
//  Copyright (C) 2017-2018. rollrat. All Rights Reserved.
//
//===----------------------------------------------------------------------===//

#include "llvm/Transforms/Scalar.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/Constants.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/Casting.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/LinkAllPasses.h"
#include "llvm/IR/DebugInfoMetadata.h"
#include "llvm/DependencyInfo.h"
#include <stack>

#define DEBUG_TYPE "dependency-check"

/// Dependency check�������� Ȯ�ε� inst�� �ֿܼ� 
/// ����� ���� ���θ� �����մϴ�.
#define IDC_PRINT_INSTRUCTION                       0

/// Dependency check ����� ����� ���� ���θ� �����մϴ�.
#define IDC_PRINT_RESULT                            1

/// �Լ��� ���ǵ��� ���� ���, �ֿܼ� �޽����� ����մϴ�.
#define IDC_PRINT_MSG_EMPTY_FUNCTION                1

/// �Լ��� ���ǵ��� ���� ���, �ش� �Լ��� �Լ����ڰ�
/// ���ϰ��� ������ ��ġ���� ���θ� �����մϴ�.
#define IDC_EMPTY_FUNCTION_PARAM_AFFECT_RETURN      1

/// branch map�� �̿��� �˻縦 �� ���� ���θ� �����մϴ�.
#define IDC_SCAN_CONTROL_FLOW                       1


using namespace llvm;

/*
  Same name function have same algorithm.
*/

namespace {

  static LLVMContext cnt;
  static MDNode *md;

  class DependencyDebugLocHelper
  {
  public:

    static void Initialize()
    {
      md = MDNode::get(cnt, DILocation::get(cnt, 100, 100, DIScope::get(cnt, nullptr)));
    }

    static DebugLoc getDebugLoc(DependencyInstrInfoManager *info)
    {
      return DebugLoc::get(reinterpret_cast<unsigned> (info), (uint16_t)-1, md);
    }

    static void setDebugLoc(Instruction *I, Value *S,
      DependencyInstrInfo::DependencyInstrType T)
    {
      DependencyInstrInfoManager *mgr;
      if (I->getDebugLoc()) {
        mgr = reinterpret_cast<DependencyInstrInfoManager *>
          (I->getDebugLoc()->getLine());
      } else {
        mgr = new DependencyInstrInfoManager();
        I->setDebugLoc(getDebugLoc(mgr));
      }

      mgr->addInfo(new DependencyInstrInfo(I, S, T));
    }

  };

  static const char *llvm_annotate_variable = "llvm.var.annotation";
  
  ///---------------------------------------------------------
  ///
  ///          Branch Map
  ///
  ///---------------------------------------------------------

  class BlockNode
  {
    BasicBlock *basic_block;
    BranchInst *branch_inst;
    SmallVector<BlockNode *, 4> from_node;
    SmallVector<BlockNode *, 4> to_node;

  public:

    BlockNode(BasicBlock *BB) : basic_block(BB), branch_inst(nullptr) { }
    
    void addFromNode(BlockNode *BN) { from_node.push_back(BN); }
    SmallVector<BlockNode *, 4>& getFromNodes() { return from_node; }
    void addToNode(BlockNode *BN) { to_node.push_back(BN); }
    SmallVector<BlockNode *, 4>& getToNodes() { return to_node; }

    void setBranchInst(BranchInst *BI) { branch_inst = BI; }
    BranchInst *getBranchInst() { return branch_inst; }

    BasicBlock *getBasicBlock() { return basic_block; }
  };

  class BranchManager
  {
    Function *function;
    BlockNode *start;
    std::vector<BlockNode *> nodes;

  public:

    BranchManager(Function *F) : function(F) 
    {
      if (!F->isIntrinsic()) 
      {
        start = new BlockNode(&F->getEntryBlock());
        nodes.push_back(start);
        if (BranchInst *bi = dyn_cast<BranchInst> (&start->getBasicBlock()->back())) {
          start->setBranchInst(bi);
          for (size_t i = 0; i < bi->getNumSuccessors(); i++)
            start->addToNode(run(bi->getSuccessor(i), start));
        }
      }
    }

    BlockNode *getNodeFromInstruction(Instruction *inst)
    {
      for (BlockNode *bn : nodes)
        for (Instruction& i : *bn->getBasicBlock())
          if (&i == inst)
            return bn;
      return nullptr;
    }

  private:

    BlockNode *run(BasicBlock *BB, BlockNode *P)
    {
      BlockNode *node = new BlockNode(BB);
      node->addFromNode(P);
      nodes.push_back(node);
      Instruction *last = &BB->back();
      if (BranchInst *bi = dyn_cast<BranchInst> (last))
      {
        node->setBranchInst(bi);
        for (size_t i = 0; i < bi->getNumSuccessors(); i++)
        {
          for (size_t j = 0; j < nodes.size(); j++)
            if (nodes[j]->getBasicBlock() == bi->getSuccessor(i))
            {
              node->addToNode(nodes[j]);
              nodes[j]->addFromNode(node);
              goto FINISH;
            }
          node->addToNode(run(bi->getSuccessor(i), node));
        FINISH:
          ;
        }
      }
      return node;
    }

  };

  ///---------------------------------------------------------
  ///
  ///                    Pass Tools
  ///
  ///---------------------------------------------------------

  class InstructionDependency
  {
    using PairType = std::pair<Instruction *, bool>;
    using InstsType = std::vector<PairType>;
    InstsType insts;

  public:

    bool hasInstructoin(Instruction *I, bool P = true)
    { 
      for (auto& pair : insts) 
        if (pair.first == I && (pair.second == P || pair.second))
          return true;
      return false;
    }
    void addInstruction(Instruction *I, bool P = true) 
    {
      for (auto& pair : insts)
        if (pair.first == I)
        {
          if (P) pair.second = true;
          return;
        }
      insts.push_back(PairType(I,P));
    }

    InstsType::iterator begin() { return insts.begin(); }
    InstsType::const_iterator begin() const { return insts.begin(); }
    InstsType::iterator end() { return insts.end(); }
    InstsType::const_iterator end() const { return insts.end(); }
  };
  
  class InstructionDependencyMap
  {
    using ValueMap = std::map<Value *, InstructionDependency *>;
    ValueMap value_map;

  public:

    InstructionDependencyMap() : value_map() { }
    ~InstructionDependencyMap() { for (auto& id : value_map) delete id.second; }
    bool hasDependency(Value *V) { return value_map.find(V) != value_map.end(); }
    InstructionDependency* getDependency(Value *V) { return value_map[V]; }
    void addDependency(Value *V, InstructionDependency *ID) { value_map[V] = ID; }

    ValueMap::iterator begin() { return value_map.begin(); }
    ValueMap::const_iterator begin() const { return value_map.begin(); }
    ValueMap::iterator end() { return value_map.end(); }
    ValueMap::const_iterator end() const { return value_map.end(); }
  };

  class ArgumentInstructionDependencyMap
  {
    using IndexMap = std::map<int, InstructionDependency *>;
    IndexMap index_map;

  public:

    ArgumentInstructionDependencyMap() : index_map() { }
    bool hasDependency(int ArgNo) { return index_map.find(ArgNo) != index_map.end(); }
    InstructionDependency* getDependency(int ArgNo) { return index_map[ArgNo]; }
    void addDependency(int ArgNo, InstructionDependency *ID) { index_map[ArgNo] = ID; }

    IndexMap::iterator begin() { return index_map.begin(); }
    IndexMap::const_iterator begin() const { return index_map.begin(); }
    IndexMap::iterator end() { return index_map.end(); }
    IndexMap::const_iterator end() const { return index_map.end(); }
  };

  class FunctionArgumentDependency
  {
    Argument *argument;
    std::vector<bool> argument_dependency;

  public:

    FunctionArgumentDependency(Argument *A, size_t argc)
      : argument(A), argument_dependency(argc) { }
    Argument* getArgument() { return argument; }
    bool hasArgumentDependency(int ix) { return argument_dependency[ix]; }
    void setArgumentDependency(int ix) { argument_dependency[ix] = true; }
  };
  
  /// �� Ŭ������ ������ ���� �� ���� ������ ������ �ֽ��ϴ�.
  /// 1. �Լ����ڰ� ��ȯ���� ��ġ�� ����
  /// 2. �Լ����ڰ� � �Լ����ڿ� ��ġ�� ����
  /// 3. �� �ΰ��� �� �� �� �̻��� ��쿡�� ������ ��ġ��
  ///    ȣ��Ǵ� �Լ����� ���
  class FunctionDependency
  {
    Function *function;
    std::vector<bool> return_dependency;
    SmallVector<FunctionArgumentDependency *, 8> arg_dependency;
    SmallVector<FunctionDependency *, 8> call_dependency;
    InstructionDependencyMap *insts_map = nullptr;
    InstructionDependency *return_instruction_dependency = nullptr;
    ArgumentInstructionDependencyMap *arg_map = nullptr;
    BranchManager *branch_manager;

  public:

    FunctionDependency(Function *F) 
      : function (F), return_dependency(F->arg_size()), arg_dependency(F->arg_size()) 
    {
      branch_manager = new BranchManager(F);
      for (size_t i = 0; i < F->arg_size(); i++)
      {
        Argument *arg = F->arg_begin() + i;
        arg_dependency[i] = new FunctionArgumentDependency(arg, F->arg_size());
      }
    }

    ~FunctionDependency()
    {
      if (insts_map) delete insts_map;
      if (return_instruction_dependency) delete return_instruction_dependency;
      if (arg_map) delete arg_map;
      delete branch_manager;
    }

    Function* getFunction() { return function; }

    /// ��ȯ���� ������ ��ġ�� �Լ����ڸ� �˾ƺ� �� �ֽ��ϴ�.
    bool hasReturnDependency(int ix) { return return_dependency[ix]; }
    void setReturnDependency(int ix) { return_dependency[ix] = true; }

    /// � �Լ����ڰ� Ư�� �Լ����ڿ� ������ ��ġ���� �˾ƺ� �� �ֽ��ϴ�.
    FunctionArgumentDependency *getFunctionArgumentDependency(size_t i) { return arg_dependency[i]; }

    void addFunctionDependency(FunctionDependency *FD) { call_dependency.push_back(FD); }
    size_t getFunctionDependencyNum() { return call_dependency.size(); }
    FunctionDependency* getFunctionDependency(size_t i) { return call_dependency[i]; }

    /// annotated variables instruction dependency
    void setInstructionDependencyMap(InstructionDependencyMap *IDM) { insts_map = IDM; }
    InstructionDependencyMap *getInstrctionDependencyMap() { return insts_map; }

    /// return instruction dependency
    void setReturnInstructionDependency(InstructionDependency *ID) { return_instruction_dependency = ID; }
    InstructionDependency *getReturnInstructionDependency() { return return_instruction_dependency; }

    /// argument instruction dependency
    void setArgumentInstructionDependencyMap(ArgumentInstructionDependencyMap *AIDM) { arg_map = AIDM; }
    ArgumentInstructionDependencyMap *getArgumentInstructionDependencyMap() { return arg_map; }

    BranchManager *getBranchManager() { return branch_manager; }
  };
  
  class DependencyMap
  {
    using FunctionMap = std::map<Function *, FunctionDependency *>;
    FunctionMap function_map;

  public:

    DependencyMap() : function_map() { }
    ~DependencyMap() { for (auto& fd : function_map) delete fd.second; }
    bool hasDependency(Function *F) { return function_map.find(F) != function_map.end(); }
    FunctionDependency* getDependency(Function *F) { return function_map[F]; }
    void addDependency(Function *F, FunctionDependency *FD) { function_map[F] = FD; }
  };
  
  ///---------------------------------------------------------
  ///
  ///          Dependency Check Routine
  ///
  ///---------------------------------------------------------
  
  static DependencyMap *recursion_map;

  class DependencyChecker
  {
  public:

    static void run(FunctionDependency *FD, DependencyMap *DM)
    {
      if (FD->getFunction()->isIntrinsic()) return;
      if (FD->getFunction()->empty()) {
#if IDC_PRINT_MSG_EMPTY_FUNCTION
        errs() << "Function is not defined!\n";
#endif
#if IDC_EMPTY_FUNCTION_PARAM_AFFECT_RETURN
        for (size_t argc = 0; argc < FD->getFunction()->arg_size(); argc++)
          FD->setReturnDependency(argc);
#endif
        return;
      }

      /// � �Լ����ڰ� ��ȯ���� ������ ��ġ���� �˻��մϴ�.
      FunctionReturnDependencyChecker return_checker(FD, DM);

      /// � �Լ����ڰ� Ư�� �Լ����ڿ� ��ġ�� ������ �˻��մϴ�.
      FunctionArgumentDependencyCheck argument_checker(FD, DM);
    }

    class FunctionReturnDependencyChecker
    {
      Function *function;
      DependencyMap *dependency_map;
      FunctionDependency *function_dependency;
      InstructionDependency *inst_dependency; // used only checking overlapping
      std::vector<BlockNode *> block_nodes;

    public:

      FunctionReturnDependencyChecker(FunctionDependency *FD, DependencyMap *DM)
        : function_dependency(FD), dependency_map(DM)
      {
        function = function_dependency->getFunction();
        recursion_map->addDependency(function, nullptr);

        for (BasicBlock& basic_block : *function)
          for (Instruction& inst : basic_block)
            if (ReturnInst *ri = dyn_cast<ReturnInst>(&inst))

              // ��ȯ���� ���� �Լ��� ��� getReturnValue�� void(nullptr)�Դϴ�.
              //   ret void
              if (ri->getReturnValue()) {

                // ��ȯ�Ǵ� ������ �ݵ�� ReturnInst�� ���ľߵ˴ϴ�. ���� ReturnInst��
                // Operand�� ������ ��ġ�� �͵��� ���ʷ� �����մϴ�. �� ������ �Լ� ���ο�
                // ��� ReturnInst�� �����մϴ�.
                inst_dependency = new InstructionDependency();
                runBottomUp(ri->getReturnValue());
                delete inst_dependency;
              }
      }

    private:
      
      /// [����]
      /// � �Լ����ڰ� V�� ������ ��ġ���� �˻��մϴ�. �� ������
      /// ��������� ����˴ϴ�.
      void runBottomUp(Value *V, bool P = true)
      {
        if (Argument *arg = dyn_cast<Argument> (V)) {
          function_dependency->setReturnDependency(arg->getArgNo());
          return;
        }
        
        if (Instruction *inst = dyn_cast <Instruction> (V))
        {
          if (inst_dependency->hasInstructoin(inst, P))
            return;

#if IDC_PRINT_INSTRUCTION
          errs() << "    (" << function->getName() << ")" << *inst << "\n";
#endif

          inst_dependency->addInstruction(inst, P);

          // PHINode�� ��Ÿ Instruction�� Operand�� �����ϴ� ����� �ٸ��ϴ�.
          // ���� �� ���� �и��Ͽ� �˻��Ͽ����ϴ�.
          // �ٸ� ���� ����� ���� Instruction�� ���⼭ Ư��ȭ �ؾ��մϴ�.
          if (PHINode *phi = dyn_cast<PHINode> (inst)) {
            for (unsigned i = 0; i < phi->getNumIncomingValues(); i++) {
              Value *target_value = phi->getIncomingValue(i);
              runBottomUp(target_value, P);
              runSearch(target_value, P);
            }
          } else if (CallInst *ci = dyn_cast<CallInst> (inst)) {
            
            // � �Լ����ڰ� ��ȯ���� ������ ��Ĩ�ϱ�?
            FunctionDependency *depends;
            if (!(depends = processCallInst(ci))) return;

            // ��ȯ���� ������ ��ġ�� ��� �Լ����ڵ��� V�� ������ ��ġ�� �˴ϴ�.
            for (size_t i = 0; i < ci->getCalledFunction()->arg_size(); i++)
              if (depends->hasReturnDependency(i) == true) {
                runBottomUp(ci->getOperand(i), P);
                runSearch(ci->getOperand(i), P);
              }

          } else {

            for (unsigned i = 0; i < inst->getNumOperands(); i++) {
              Value *target_value = inst->getOperand(i);
              runBottomUp(target_value, P);
              runSearch(target_value, P);
            }
          }

          processBranches(V);
        }
      }
      
      /// [����]
      /// CallInst�� ���� ȣ��� �Լ��� Dependency�� �����ɴϴ�.
      ///
      /// [����]
      /// - callinst�� ������ ��� ������ ���� �� ���� ������ �м��մϴ�.
      ///   1. ��ȯ���� ������ ��ġ�� �Լ����ڵ��� ���
      ///   2. ������ �Լ����ڿ� ������ ��ġ�� �Լ����ڵ��� ���
      /// - �� �Լ��� ������ �̸��� ���� �Լ��� ��� ���� ����� �����ϴ�.
      FunctionDependency *processCallInst(CallInst *CI)
      {
        FunctionDependency *depends = nullptr;
        Function *target_function = CI->getCalledFunction();

        if (dependency_map->hasDependency(target_function)) {
          depends = dependency_map->getDependency(target_function);
        } else {
          if (recursion_map->hasDependency(target_function))
            return nullptr;
          depends = new FunctionDependency(target_function);
          run(depends, dependency_map);
          dependency_map->addDependency(target_function, depends);
        }

        function_dependency->addFunctionDependency(depends);

        return depends;
      }

      /// [����]
      /// V�� ���� ��Ͽ� ������ ��ġ�� ����� ã���ϴ�.
      void processBranches(Value *V)
      {
#if IDC_SCAN_CONTROL_FLOW
        if (Instruction *inst = dyn_cast<Instruction> (V))
        {
          BranchManager *bm = function_dependency->getBranchManager();
          BlockNode *this_node = bm->getNodeFromInstruction(inst);
          processBlock(this_node);
        }
#endif
      }
      
      void processBlock(BlockNode *BN)
      {
        bool is_perpect = BN->getFromNodes().size() == 1;
        for (BlockNode *bn : BN->getFromNodes())
        {
          for (BlockNode *x : block_nodes)
            if (x == bn) return;
          block_nodes.push_back(bn);
          if (bn->getBranchInst()->isConditional()) {
            runBottomUp(bn->getBranchInst()->getCondition(), is_perpect);
            runSearch(bn->getBranchInst()->getCondition(), is_perpect);
          }
          processBlock(bn);
        }
      }

      /// [����]
      /// Node���󰡱⿡�� ã�����ϴ� Ư�� ������ Dependency�� �м��ϱ� ����
      /// �� ���� ������ �˻��մϴ�. �� �ܰ迡�� [����]��쿡���� Dependency��
      /// ������ �� Ȯ���� �� ���� �����ϴ�.
      /// 
      /// [����]
      /// - ������� ������ ���� �� ���� ��쿡���� ������ ����� �� ������
      ///   Ȯ���߽��ϴ�.
      ///   1. StoreInst: StoreInst�� register�� ���� ���� ������ ����մϴ�.
      ///      ���� StoreInst�� Pointer�� ã������ ������ ��츦 Ȯ���մϴ�.
      ///   2. LoadInst: LoadInst�� Pointer�� ã������ ������ ���, LoadInst
      ///      �� ��ü�� �ش� ������ ����� �� �ֽ��ϴ�.
      ///   3. CallInst: ã������ ������ ������������ �Լ����ڷ� � �Լ��� �Ѱ����� 
      ///      ��� �ش� �Լ��� �ٸ� �Լ����ڵ��� �� ������ ������ ��ĥ �� �ֽ��ϴ�.
      void runSearch(Value *V, bool P = true)
      {
        for (BasicBlock& basic_block : *function)
          for (Instruction& inst : basic_block) {
            if (StoreInst *si = dyn_cast<StoreInst> (&inst))
            {
              if (si->getPointerOperand() == V)
                runBottomUp(si->getValueOperand());
            }
            else if (CallInst *ci = dyn_cast<CallInst> (&inst))
            {
              FunctionDependency *depends;
              if (!(depends = processCallInst(ci))) continue;
              for (size_t i = 0; i < depends->getFunction()->arg_size(); i++)
                if (depends->getFunctionArgumentDependency(i)->getArgument() == V)
                  for (size_t j = 0; j < depends->getFunction()->arg_size(); j++)
                    if (depends->getFunctionArgumentDependency(i)->hasArgumentDependency(j))
                      runBottomUp(depends->getFunctionArgumentDependency(j)->getArgument(), P);
            }
          }
        processBranches(V);
      }

    };

    class FunctionArgumentDependencyCheck
    {
      Function *function;
      DependencyMap *dependency_map;
      FunctionDependency *function_dependency;
      std::vector<Value *> overlap;
      std::vector<BlockNode *> block_nodes;

    public:

      FunctionArgumentDependencyCheck(FunctionDependency *FD, DependencyMap *DM)
        : function_dependency(FD), dependency_map(DM)
      {
        function = function_dependency->getFunction();
        recursion_map->addDependency(function, nullptr);

        for (Argument *arg = function->arg_begin(); arg != function->arg_end(); arg++)
          if (arg->getType()->isPointerTy())
            for (Argument *arg2 = function->arg_begin(); arg2 != function->arg_end(); arg2++)
              if (arg != arg2) {
                overlap.clear();
                runChecker(arg, arg2);
              }
      }

    private:

      FunctionDependency *processCallInst(CallInst *CI)
      {
        FunctionDependency *depends = nullptr;
        Function *target_function = CI->getCalledFunction();

        if (dependency_map->hasDependency(target_function)) {
          depends = dependency_map->getDependency(target_function);
        } else {
          if (recursion_map->hasDependency(target_function))
            return nullptr;
          depends = new FunctionDependency(target_function);
          run(depends, dependency_map);
          dependency_map->addDependency(target_function, depends);
        }

        function_dependency->addFunctionDependency(depends);

        return depends;
      }
      
      void processBlock(Argument *A, BlockNode *BN)
      {
        bool is_perpect = BN->getFromNodes().size() == 1;
        for (BlockNode *bn : BN->getFromNodes())
        {
          for (BlockNode *x : block_nodes)
            if (x == bn) return;
          block_nodes.push_back(bn);
          if (bn->getBranchInst()->isConditional()) {
            runChecker(A, bn->getBranchInst()->getCondition(), is_perpect);
          }
          processBlock(A, bn);
        }
      }

      /// [����]
      /// �˻��Ϸ��� �Լ����� A�� ���� V�� �ִ��� ��������� �˻��մϴ�.
      /// �� �Լ��� runBottomUp�� runSearch�� ���� ���¸� �����ϴ�.
      ///
      /// [����]
      /// 
      void runChecker(Argument *A, Value *V, bool P = true)
      {
        if (Argument *arg = dyn_cast<Argument> (V)) {
          function_dependency->getFunctionArgumentDependency(
            A->getArgNo())->setArgumentDependency(arg->getArgNo());
          return;
        }
        
#if IDC_PRINT_INSTRUCTION
          errs() << "    (" << function->getName() << ")" << *V << "\n";
#endif

        // �� �Լ��� ������� ������ �����Ƿ� �ߺ��˻縦 �����մϴ�.
        if (std::find(overlap.begin(), overlap.end(), V) != overlap.end())
          return;
        overlap.push_back(V);
        
        // runSearch �˰���
        for (BasicBlock& basic_block : *function)
          for (Instruction& inst : basic_block) {
            if (StoreInst *si = dyn_cast<StoreInst> (&inst))
            {
              if (si->getPointerOperand() == V)
                runChecker(A, si->getValueOperand(), P);
              else if (si->getValueOperand() == V)
                runChecker(A, si->getPointerOperand(), P);
            }
            else if (LoadInst *li = dyn_cast<LoadInst> (&inst))
            {
              if (si->getPointerOperand() == V)
                runChecker(A, li, P);
            }
            else if (CallInst *ci = dyn_cast<CallInst> (&inst))
            {
              FunctionDependency *depends;
              if (!(depends = processCallInst(ci))) continue;
              for (size_t i = 0; i < depends->getFunction()->arg_size(); i++)
                if (depends->getFunctionArgumentDependency(i)->getArgument() == V)
                  for (size_t j = 0; j < depends->getFunction()->arg_size(); j++)
                    if (depends->getFunctionArgumentDependency(i)->hasArgumentDependency(j))
                      runChecker(A, depends->getFunctionArgumentDependency(j)->getArgument(), P);
            }
          }
        
        // runBottomUp �˰���
        if (Instruction *inst = dyn_cast <Instruction> (V))
        {
#if IDC_SCAN_CONTROL_FLOW
          BranchManager *bm = function_dependency->getBranchManager();
          BlockNode *this_node = bm->getNodeFromInstruction(inst);
          processBlock(A, this_node);
#endif

          if (PHINode *phi = dyn_cast<PHINode> (inst)) {
            for (unsigned i = 0; i < phi->getNumIncomingValues(); i++) {
              Value *target_value = phi->getIncomingValue(i);
              runChecker(A, target_value, P);
            }
          } else if (CallInst *ci = dyn_cast<CallInst> (inst)) {
            FunctionDependency *depends;
            if (!(depends = processCallInst(ci))) return;
            for (size_t i = 0; i < ci->getCalledFunction()->arg_size(); i++)
              if (depends->hasReturnDependency(i) == true) {
                runChecker(A, ci->getOperand(i), P);
              }
          } else {
            for (unsigned i = 0; i < inst->getNumOperands(); i++) {
              Value *target_value = inst->getOperand(i);
              runChecker(A, target_value, P);
            }
          }
        }
      }

    };

  };
  
  /// This class must be called only once by each target-function.
  class BottomUpDependencyChecker
  {
    Value *value;
    Function *function;
    DependencyMap *dependency_map;
    FunctionDependency *function_dependency;
    InstructionDependency *inst_dependency;
    std::vector<BlockNode *> block_nodes;

  public:

    BottomUpDependencyChecker(Function *F, SmallVector<Value *, 16> V,
      DependencyMap *DM, FunctionDependency *FD, InstructionDependencyMap *IDM)
      : function(F), dependency_map(DM), function_dependency(FD)
    {
      for (Value *value : V)
      {
        this->value = value;
        inst_dependency = new InstructionDependency();
        runSearch(value, true, true);
        IDM->addDependency(value, inst_dependency);
        inst_dependency = nullptr;
      }
    }

  private:

    void runBottomUp(Value *V, bool P = true)
    {
      if (Instruction *inst = dyn_cast <Instruction> (V))
      {
        if (inst_dependency->hasInstructoin(inst, P))
          return;
        
#if IDC_PRINT_INSTRUCTION
          errs() << "    (" << function->getName() << ")" << *inst << "\n";
#endif

        DependencyDebugLocHelper::setDebugLoc(inst, this->value, 
          P ? DependencyInstrInfo::Dominated : DependencyInstrInfo::Maybe);
        
        inst_dependency->addInstruction(inst, P);

        if (PHINode *phi = dyn_cast<PHINode> (inst)) {
          for (unsigned i = 0; i < phi->getNumIncomingValues(); i++) {
            Value *target_value = phi->getIncomingValue(i);
            runBottomUp(target_value, P);
            runSearch(target_value, P);
          }
        } else if (CallInst *ci = dyn_cast<CallInst> (inst)) {
          FunctionDependency *depends = processCallInst(ci);
          for (size_t i = 0; i < ci->getCalledFunction()->arg_size(); i++)
            if (depends->hasReturnDependency(i) == true) {
              runBottomUp(ci->getOperand(i), P);
              runSearch(ci->getOperand(i), P);
            }
        } else {
          for (unsigned i = 0; i < inst->getNumOperands(); i++) {
            Value *target_value = inst->getOperand(i);
            runBottomUp(target_value, P);
            runSearch(target_value, P);
          }
        }
        processBranches(V);
      }
    }

    FunctionDependency *processCallInst(CallInst *CI)
    {
      FunctionDependency *depends = nullptr;
      Function *target_function = CI->getCalledFunction();
      
      if (dependency_map->hasDependency(target_function)) {
        depends = dependency_map->getDependency(target_function);
      } else {
        depends = new FunctionDependency(target_function);
        DependencyChecker::run(depends, dependency_map);
        dependency_map->addDependency(target_function, depends);
      }

      function_dependency->addFunctionDependency(depends);

      return depends;
    }
    
    void processBranches(Value *V)
    {
#if IDC_SCAN_CONTROL_FLOW
      if (Instruction *inst = dyn_cast<Instruction> (V))
      {
        BranchManager *bm = function_dependency->getBranchManager();
        BlockNode *this_node = bm->getNodeFromInstruction(inst);
        processBlock(this_node);
      }
#endif
    }

    void processBlock(BlockNode *BN)
    {
      bool is_perpect = BN->getFromNodes().size() == 1;
      for (BlockNode *bn : BN->getFromNodes())
      {
        for (BlockNode *x : block_nodes)
          if (x == bn) return;
        block_nodes.push_back(bn);
        if (bn->getBranchInst()->isConditional()) {
          runBottomUp(bn->getBranchInst()->getCondition(), is_perpect);
          runSearch(bn->getBranchInst()->getCondition(), is_perpect);
        }
        processBlock(bn);
      }
    }

    void runSearch(Value *V, bool P = true, bool ROOT = false)
    {
      for (BasicBlock& basic_block : *function)
        for (Instruction& inst : basic_block) {
          if (StoreInst *si = dyn_cast<StoreInst> (&inst))
          {
            if (si->getPointerOperand() == V) {
              if (ROOT) {
                if (Instruction* I = dyn_cast<Instruction> (si->getValueOperand()))
                  DependencyDebugLocHelper::setDebugLoc(I, V, DependencyInstrInfo::Annotated);
                runPerpectBottomUp(si->getValueOperand());
              }
              runBottomUp(si->getValueOperand(), P && ROOT);
              runSearch(si->getValueOperand(), P && ROOT);
            }
          }
          else if (CallInst *ci = dyn_cast<CallInst> (&inst))
          {
            FunctionDependency *depends = processCallInst(ci);
            for (size_t i = 0; i < depends->getFunction()->arg_size(); i++)
              if (depends->getFunctionArgumentDependency(i)->getArgument() == V)
                for (size_t j = 0; j < depends->getFunction()->arg_size(); j++)
                  if (depends->getFunctionArgumentDependency(i)->hasArgumentDependency(j)) {
                    runBottomUp(depends->getFunctionArgumentDependency(j)->getArgument(), P && ROOT);
                    runSearch(depends->getFunctionArgumentDependency(j)->getArgument(), P && ROOT);
                  }
          }
        }
      processBranches(V);
    }

    void runPerpectBottomUp(Value *V)
    {
      if (Instruction *inst = dyn_cast <Instruction> (V))
      {
        if (inst_dependency->hasInstructoin(inst, true))
          return;

        DependencyDebugLocHelper::setDebugLoc(inst, this->value, DependencyInstrInfo::Perpect);

        inst_dependency->addInstruction(inst, true);

        if (PHINode *phi = dyn_cast<PHINode> (inst)) {
          for (unsigned i = 0; i < phi->getNumIncomingValues(); i++) {
            Value *target_value = phi->getIncomingValue(i);
            runPerpectBottomUp(target_value);
          }
        } else if (CallInst *ci = dyn_cast<CallInst> (inst)) {
          FunctionDependency *depends = processCallInst(ci);
          for (size_t i = 0; i < ci->getCalledFunction()->arg_size(); i++)
            if (depends->hasReturnDependency(i) == true) {
              runPerpectBottomUp(ci->getOperand(i));
            }
        } else {
          for (unsigned i = 0; i < inst->getNumOperands(); i++) {
            Value *target_value = inst->getOperand(i);
            runPerpectBottomUp(target_value);
          }
        }
      }
    }
    
  };

  class DependencyManager
  {
  public:
    using AnnotatedTuple = std::tuple<Value *, CallInst *>;
    using AnnotatedVector = SmallVector<AnnotatedTuple, 8>;

  private:
    DependencyMap *map;
    DependencyMap *annotated_map;
    Function *target_function;
    AnnotatedVector annotated_value;
    SmallVector<Value *, 16> annotated_target;

  public:

    DependencyManager(Function *TargetFunction, DependencyMap *Map, DependencyMap *AnnotatedMap)
      : target_function(TargetFunction), map(Map), annotated_map(AnnotatedMap)
    {
      calAnnotatedValue();
    }

    void run()
    {
      FunctionDependency *fd = new FunctionDependency(target_function);
      InstructionDependencyMap *idm = new InstructionDependencyMap();

      recursion_map = new DependencyMap();
      BottomUpDependencyChecker checker(target_function, annotated_target, map, fd, idm);
      delete recursion_map;
      
      fd->setInstructionDependencyMap(idm);
      annotated_map->addDependency(target_function, fd);
    }

    AnnotatedVector& getAnnotatedVariableList()
    {
      return annotated_value;
    }
    
    StringRef getAnnotatedMessage(CallInst *ci)
    {
      ConstantExpr *ce = cast<ConstantExpr>(ci->getArgOperand(1));
      GlobalVariable *gv = cast<GlobalVariable>(ce->getOperand(0));
      Constant *cs = gv->getInitializer();
      ConstantDataArray *cda = cast<ConstantDataArray>(cs);

      return cda->getAsCString();
    }

  private:

    bool isAnnotated(Value *v)
    {
      for (AnnotatedTuple at : annotated_value) {
        if (std::get<0>(at) == v)
          return true;
      }
      return false;
    }

    /// get all annotated-variable in target-function
    void calAnnotatedValue()
    {
      for (BasicBlock& basic_block : *target_function)
        for (Instruction& inst : basic_block)
          if (CallInst *ci = dyn_cast<CallInst> (&inst))
            if (ci->getCalledFunction()->getName() == llvm_annotate_variable) {
              annotated_value.push_back(AnnotatedTuple((
                cast<BitCastInst>(ci->getArgOperand(0)))->getOperand(0), ci));
              annotated_target.push_back((cast<BitCastInst>(ci->getArgOperand(0)))->getOperand(0));
            }
    }

  };

  ///---------------------------------------------------------
  ///
  ///            LLVM-IR Nodes Traversal
  ///
  ///---------------------------------------------------------
  
  ///---------------------------------------------------------
  ///
  ///            Dependency Printer
  ///
  ///---------------------------------------------------------

  class DependencyPrinter
  {
    Function *target_function;
    DependencyMap *annotated_map;
    std::string tab;

  public:

    DependencyPrinter(DependencyMap *AnnotatedMap)
      : annotated_map(AnnotatedMap)
    {
    }

    void setTargetFunction(Function *F)
    {
      target_function = F;
    }

    void printTargetFunctionName()
    {
      out() << "Function - " << target_function->getName() << "\n";
    }

    void printTargetFunctionAnnotatedVariable(DependencyManager *DM)
    {
      DependencyManager::AnnotatedVector vec = DM->getAnnotatedVariableList();
      increaseTab();
      if (vec.size() == 0)
      {
        out() << "Annotated Variable is not found.\n\n";
        decreaseTab();
        return;
      }
      out() << "Annotated Variable List :\n";
      increaseTab();
      for (DependencyManager::AnnotatedTuple& tu : vec)
      {
        StringRef message = DM->getAnnotatedMessage(std::get<1>(tu));
        out() << "- Annotated : " << std::get<0>(tu)->getName() << "(message: " << message << ")\n";
      }
      out() << "\n";
      decreaseTab();
      decreaseTab();
    }

    void printTargetFunctionDependencyInstruction()
    {
      FunctionDependency *dependency = annotated_map->getDependency(target_function);
      InstructionDependencyMap *inst_map = dependency->getInstrctionDependencyMap();
      
      increaseTab();
      for (auto element : *inst_map)
      {
        out() << "Annotated-Variable : " << element.first->getName() << "\n";
        increaseTab();
        InstructionDependency *inst_dependency = element.second;
        for (auto inst : *inst_dependency)
        {
          out() << (inst.second ? "(Perpect)" : "(Maybe)") << *inst.first << "\n";
        }
        out() << "\n";
        decreaseTab();
      }
      decreaseTab();
    }

  private:

    void increaseTab()
    {
      tab += "    ";
    }
    void decreaseTab()
    {
      tab.erase(0, 4);
    }

    raw_ostream& out()
    {
      return errs() << tab;
    }

  };

  ///---------------------------------------------------------
  ///
  ///       Interprocedural Dependency Checker Pass
  ///
  ///---------------------------------------------------------

  struct InterproceduralDependencyCheckPass : public FunctionPass 
  {
    static char ID;
    //LLVMContext cnt;
    //MDNode *md;
    
    DependencyMap *dependency_map;
    DependencyMap *annotated_map;
    std::map<Function *, DependencyManager *> function_map;

    InterproceduralDependencyCheckPass()
      : FunctionPass(ID)
    {
      //initializeInterproceduralDependencyCheckPassPass(*PassRegistry::getPassRegistry());
      dependency_map = new DependencyMap();
      annotated_map = new DependencyMap();
      md = MDNode::get(cnt, DILocation::get(cnt, 100, 100, DIScope::get(cnt, nullptr)));
      DependencyDebugLocHelper::Initialize();
    }

    ~InterproceduralDependencyCheckPass()
    {
      delete dependency_map;
    }

    bool runOnFunction(Function &F) override
    {
      DependencyManager *dm = new DependencyManager(&F, dependency_map, annotated_map);
      dm->run();
      function_map[&F] = dm;
#if IDC_PRINT_RESULT
      print(&F);
#endif
      check(&F);
      return false;
    }

    void print(Function *F)
    {
      DependencyPrinter printer(annotated_map);
      printer.setTargetFunction(F);

      printer.printTargetFunctionName();
      printer.printTargetFunctionAnnotatedVariable(function_map[F]);
      printer.printTargetFunctionDependencyInstruction();
    }

    void check(Function *F)
    {
      FunctionDependency *dependency = annotated_map->getDependency(F);
      InstructionDependencyMap *inst_map = dependency->getInstrctionDependencyMap();
      for (auto& element : *inst_map)
      {
        InstructionDependency *inst_dependency = element.second;
        for (auto& inst : *inst_dependency)
        {
          inst.first->setDependency();
          //inst.first->setDebugLoc(DebugLoc::get(-2, (uint16_t)-2, md));
          if (!inst.second) {
            inst.first->setMaybeDependency();
            //inst.first->setDebugLoc(DebugLoc::get(-1, (uint16_t)-1, md));
          }
        }
      }
    }

  };

}

char InterproceduralDependencyCheckPass::ID = 0;

FunctionPass *myPass = nullptr;

FunctionPass *llvm::createInterproceduralDependencyCheckPass() {
  if (myPass == nullptr)
    myPass = new InterproceduralDependencyCheckPass();
  return myPass;
}