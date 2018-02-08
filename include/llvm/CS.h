#ifndef _CSCSCSCSCSCS_
#define _CSCSCSCSCSCS_

#include "llvm/IR/DebugInfoMetadata.h"

namespace llvm {

class DILS : public DebugLoc
{
public:
  unsigned v;
  DILS(unsigned value) : v(value) {}
};

}

#endif