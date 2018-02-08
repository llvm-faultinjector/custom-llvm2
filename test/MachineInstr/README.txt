MachineInstrBuilder - BuildMI 함수가 MachineInstr를 만든다.

===== 체킹 방법 =====
1. Instruction 생성전 MachineInstrBuilder에 dependency를 마킹해두고
BuildMI에서 MachineInstr 생성시 추가하고 addReg에서 RegisterLowering
추가하는 방법


===== QWER =====
FastISel은 -O0에서만 강제적으로 작동한다.
https://groups.google.com/forum/#!topic/llvm-dev/5M0ib0I7qjk