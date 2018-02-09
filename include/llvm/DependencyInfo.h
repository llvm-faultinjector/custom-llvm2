//===----------------------------------------------------------------------===//
//
//                   Interprocedural Dependency Checker
//
//===----------------------------------------------------------------------===//
//
//  Copyright (C) 2017-2018. rollrat. All Rights Reserved.
//
//===----------------------------------------------------------------------===//

#ifndef _DEPENDENCY_INFO_
#define _DEPENDENCY_INFO_

#include "llvm/IR/Instructions.h"
#include "llvm/IR/DebugInfoMetadata.h"

namespace llvm {

  class DependencyInstrInfo
  {
  public:

    typedef enum {
      Annotated = 0,
      Dominated = 1,
      Maybe = 2,
    } DependencyInstrType;

    DependencyInstrInfo(Instruction *I, Value *S,
      DependencyInstrType T)
      : target(I), type(T), source(S)
    {
    }

    Instruction *getInstruction() const
    {
      return target;
    }

    Value *getSource() const
    {
      return source;
    }

    DependencyInstrType getType() const
    {
      return type;
    }

    std::string getInfo() const
    {
      std::string ret;
      ret.push_back('[');
      if (type == DependencyInstrType::Annotated)
        ret.append("Annotated");
      else if (type == DependencyInstrType::Dominated)
        ret.append("Dominated");
      else
        ret.append("Maybe");
      ret.append(", Source: ");
      ret.append(source->getName());
      ret.push_back(']');
      return ret;
    }

  private:

    Value * source;
    Instruction *target;
    DependencyInstrType type;
  };

  class DependencyInstrInfoManager
  {
    using InfoType = SmallVector<DependencyInstrInfo *, 8>;
    InfoType vec;
  public:

    void addInfo(DependencyInstrInfo *info)
    {
      vec.push_back(info);
    }

    InfoType::const_iterator begin() const
    {
      return vec.begin();
    }

    InfoType::const_iterator end() const
    {
      return vec.end();
    }
  };

}

#endif