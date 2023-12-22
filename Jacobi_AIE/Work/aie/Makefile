SHELL=/bin/bash 
.PHONY: all 17_0 17_2 18_0 18_1 18_2 19_0 19_1 19_2 20_0 20_1 21_0 21_1 21_2 22_0 22_1 22_2 23_0 23_1 23_2 24_0 24_1 24_2 25_0 25_1 26_0 26_1 26_2 26_3 27_1 27_2 27_3 28_3 29_3 30_0 30_1 30_3 31_0 31_1 31_2 31_3 32_0 32_1 32_2 32_3 clean

ifeq ($(XILINX_VITIS_AIETOOLS),)
XILINX_VITIS_AIETOOLS := ${XILINX_VITIS}/aietools
endif

ifeq ($(CARDANO_AIE_ARCH_MODEL_DIR),)
CARDANO_AIE_ARCH_MODEL_DIR := ${XILINX_VITIS_AIETOOLS}/data/versal_prod/lib
endif

ts := $(shell date "+%Y-%m-%d-%H-%M-%S")

XCHESSMK := xchessmk
XCHESSCC := xchesscc
CHESSLLVMLink := ${XILINX_VITIS_AIETOOLS}/tps/${RDI_PLATFORM}/target/bin/LNa64bin/chess-llvm-link
INCLUDE_PATH := -I /home/lxy/Projects/SVD/Jacobi_AIE -I ${XILINX_VITIS_AIETOOLS}/include -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src -I ${CARDANO_AIE_ARCH_MODEL_DIR}/runtime_cxx/libcxx-lite/include -I ${CARDANO_AIE_ARCH_MODEL_DIR}/runtime_cxx/libs/libcxx-9.0.0/include-lite -I ${CARDANO_AIE_ARCH_MODEL_DIR}/runtime/include

.EXPORT_ALL_VARIABLES:
export XILINX_CARDANO_XLOPT_OPTIONS=-xlopt=1 -mapped-json=TopGraph_mapped.json

all: 17_0 17_2 18_0 18_1 18_2 19_0 19_1 19_2 20_0 20_1 21_0 21_1 21_2 22_0 22_1 22_2 23_0 23_1 23_2 24_0 24_1 24_2 25_0 25_1 26_0 26_1 26_2 26_3 27_1 27_2 27_3 28_3 29_3 30_0 30_1 30_3 31_0 31_1 31_2 31_3 32_0 32_1 32_2 32_3 

17_0_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/17_0/src/17_0.cc -o ir/17_0_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/17_0_orig.ll -o ir/17_0.ll 2> 17_0/xlopt.log;
17_0_llopt: 17_0_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/17_0.ll -o ir/17_0.ll 2>/dev/null;

17_2_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/17_2/src/17_2.cc -o ir/17_2_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/17_2_orig.ll -o ir/17_2.ll 2> 17_2/xlopt.log;
17_2_llopt: 17_2_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/17_2.ll -o ir/17_2.ll 2>/dev/null;

18_0_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/18_0/src/18_0.cc -o ir/18_0_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/18_0_orig.ll -o ir/18_0.ll 2> 18_0/xlopt.log;
18_0_llopt: 18_0_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/18_0.ll -o ir/18_0.ll 2>/dev/null;

18_1_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/18_1/src/18_1.cc -o ir/18_1_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/18_1_orig.ll -o ir/18_1.ll 2> 18_1/xlopt.log;
18_1_llopt: 18_1_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/18_1.ll -o ir/18_1.ll 2>/dev/null;

18_2_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/18_2/src/18_2.cc -o ir/18_2_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/18_2_orig.ll -o ir/18_2.ll 2> 18_2/xlopt.log;
18_2_llopt: 18_2_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/18_2.ll -o ir/18_2.ll 2>/dev/null;

19_0_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/19_0/src/19_0.cc -o ir/19_0_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/19_0_orig.ll -o ir/19_0.ll 2> 19_0/xlopt.log;
19_0_llopt: 19_0_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/19_0.ll -o ir/19_0.ll 2>/dev/null;

19_1_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/19_1/src/19_1.cc -o ir/19_1_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/19_1_orig.ll -o ir/19_1.ll 2> 19_1/xlopt.log;
19_1_llopt: 19_1_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/19_1.ll -o ir/19_1.ll 2>/dev/null;

19_2_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/19_2/src/19_2.cc -o ir/19_2_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/19_2_orig.ll -o ir/19_2.ll 2> 19_2/xlopt.log;
19_2_llopt: 19_2_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/19_2.ll -o ir/19_2.ll 2>/dev/null;

20_0_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/20_0/src/20_0.cc -o ir/20_0_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/20_0_orig.ll -o ir/20_0.ll 2> 20_0/xlopt.log;
20_0_llopt: 20_0_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/20_0.ll -o ir/20_0.ll 2>/dev/null;

20_1_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/20_1/src/20_1.cc -o ir/20_1_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/20_1_orig.ll -o ir/20_1.ll 2> 20_1/xlopt.log;
20_1_llopt: 20_1_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/20_1.ll -o ir/20_1.ll 2>/dev/null;

21_0_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/21_0/src/21_0.cc -o ir/21_0_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/21_0_orig.ll -o ir/21_0.ll 2> 21_0/xlopt.log;
21_0_llopt: 21_0_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/21_0.ll -o ir/21_0.ll 2>/dev/null;

21_1_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/21_1/src/21_1.cc -o ir/21_1_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/21_1_orig.ll -o ir/21_1.ll 2> 21_1/xlopt.log;
21_1_llopt: 21_1_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/21_1.ll -o ir/21_1.ll 2>/dev/null;

21_2_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/21_2/src/21_2.cc -o ir/21_2_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/21_2_orig.ll -o ir/21_2.ll 2> 21_2/xlopt.log;
21_2_llopt: 21_2_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/21_2.ll -o ir/21_2.ll 2>/dev/null;

22_0_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/22_0/src/22_0.cc -o ir/22_0_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/22_0_orig.ll -o ir/22_0.ll 2> 22_0/xlopt.log;
22_0_llopt: 22_0_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/22_0.ll -o ir/22_0.ll 2>/dev/null;

22_1_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/22_1/src/22_1.cc -o ir/22_1_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/22_1_orig.ll -o ir/22_1.ll 2> 22_1/xlopt.log;
22_1_llopt: 22_1_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/22_1.ll -o ir/22_1.ll 2>/dev/null;

22_2_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/22_2/src/22_2.cc -o ir/22_2_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/22_2_orig.ll -o ir/22_2.ll 2> 22_2/xlopt.log;
22_2_llopt: 22_2_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/22_2.ll -o ir/22_2.ll 2>/dev/null;

23_0_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/23_0/src/23_0.cc -o ir/23_0_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/23_0_orig.ll -o ir/23_0.ll 2> 23_0/xlopt.log;
23_0_llopt: 23_0_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/23_0.ll -o ir/23_0.ll 2>/dev/null;

23_1_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/23_1/src/23_1.cc -o ir/23_1_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/23_1_orig.ll -o ir/23_1.ll 2> 23_1/xlopt.log;
23_1_llopt: 23_1_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/23_1.ll -o ir/23_1.ll 2>/dev/null;

23_2_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/23_2/src/23_2.cc -o ir/23_2_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/23_2_orig.ll -o ir/23_2.ll 2> 23_2/xlopt.log;
23_2_llopt: 23_2_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/23_2.ll -o ir/23_2.ll 2>/dev/null;

24_0_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/24_0/src/24_0.cc -o ir/24_0_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/24_0_orig.ll -o ir/24_0.ll 2> 24_0/xlopt.log;
24_0_llopt: 24_0_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/24_0.ll -o ir/24_0.ll 2>/dev/null;

24_1_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/24_1/src/24_1.cc -o ir/24_1_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/24_1_orig.ll -o ir/24_1.ll 2> 24_1/xlopt.log;
24_1_llopt: 24_1_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/24_1.ll -o ir/24_1.ll 2>/dev/null;

24_2_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/24_2/src/24_2.cc -o ir/24_2_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/24_2_orig.ll -o ir/24_2.ll 2> 24_2/xlopt.log;
24_2_llopt: 24_2_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/24_2.ll -o ir/24_2.ll 2>/dev/null;

25_0_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/25_0/src/25_0.cc -o ir/25_0_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/25_0_orig.ll -o ir/25_0.ll 2> 25_0/xlopt.log;
25_0_llopt: 25_0_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/25_0.ll -o ir/25_0.ll 2>/dev/null;

25_1_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/25_1/src/25_1.cc -o ir/25_1_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/25_1_orig.ll -o ir/25_1.ll 2> 25_1/xlopt.log;
25_1_llopt: 25_1_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/25_1.ll -o ir/25_1.ll 2>/dev/null;

26_0_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/26_0/src/26_0.cc -o ir/26_0_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/26_0_orig.ll -o ir/26_0.ll 2> 26_0/xlopt.log;
26_0_llopt: 26_0_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/26_0.ll -o ir/26_0.ll 2>/dev/null;

26_1_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/26_1/src/26_1.cc -o ir/26_1_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/26_1_orig.ll -o ir/26_1.ll 2> 26_1/xlopt.log;
26_1_llopt: 26_1_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/26_1.ll -o ir/26_1.ll 2>/dev/null;

26_2_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/26_2/src/26_2.cc -o ir/26_2_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/26_2_orig.ll -o ir/26_2.ll 2> 26_2/xlopt.log;
26_2_llopt: 26_2_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/26_2.ll -o ir/26_2.ll 2>/dev/null;

26_3_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/26_3/src/26_3.cc -o ir/26_3_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/26_3_orig.ll -o ir/26_3.ll 2> 26_3/xlopt.log;
26_3_llopt: 26_3_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/26_3.ll -o ir/26_3.ll 2>/dev/null;

27_1_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/27_1/src/27_1.cc -o ir/27_1_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/27_1_orig.ll -o ir/27_1.ll 2> 27_1/xlopt.log;
27_1_llopt: 27_1_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/27_1.ll -o ir/27_1.ll 2>/dev/null;

27_2_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/27_2/src/27_2.cc -o ir/27_2_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/27_2_orig.ll -o ir/27_2.ll 2> 27_2/xlopt.log;
27_2_llopt: 27_2_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/27_2.ll -o ir/27_2.ll 2>/dev/null;

27_3_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/27_3/src/27_3.cc -o ir/27_3_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/27_3_orig.ll -o ir/27_3.ll 2> 27_3/xlopt.log;
27_3_llopt: 27_3_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/27_3.ll -o ir/27_3.ll 2>/dev/null;

28_3_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/28_3/src/28_3.cc -o ir/28_3_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/28_3_orig.ll -o ir/28_3.ll 2> 28_3/xlopt.log;
28_3_llopt: 28_3_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/28_3.ll -o ir/28_3.ll 2>/dev/null;

29_3_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/29_3/src/29_3.cc -o ir/29_3_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/29_3_orig.ll -o ir/29_3.ll 2> 29_3/xlopt.log;
29_3_llopt: 29_3_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/29_3.ll -o ir/29_3.ll 2>/dev/null;

30_0_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/30_0/src/30_0.cc -o ir/30_0_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/30_0_orig.ll -o ir/30_0.ll 2> 30_0/xlopt.log;
30_0_llopt: 30_0_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/30_0.ll -o ir/30_0.ll 2>/dev/null;

30_1_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/30_1/src/30_1.cc -o ir/30_1_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/30_1_orig.ll -o ir/30_1.ll 2> 30_1/xlopt.log;
30_1_llopt: 30_1_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/30_1.ll -o ir/30_1.ll 2>/dev/null;

30_3_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/30_3/src/30_3.cc -o ir/30_3_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/30_3_orig.ll -o ir/30_3.ll 2> 30_3/xlopt.log;
30_3_llopt: 30_3_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/30_3.ll -o ir/30_3.ll 2>/dev/null;

31_0_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/31_0/src/31_0.cc -o ir/31_0_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/31_0_orig.ll -o ir/31_0.ll 2> 31_0/xlopt.log;
31_0_llopt: 31_0_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/31_0.ll -o ir/31_0.ll 2>/dev/null;

31_1_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/31_1/src/31_1.cc -o ir/31_1_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/31_1_orig.ll -o ir/31_1.ll 2> 31_1/xlopt.log;
31_1_llopt: 31_1_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/31_1.ll -o ir/31_1.ll 2>/dev/null;

31_2_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/31_2/src/31_2.cc -o ir/31_2_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/31_2_orig.ll -o ir/31_2.ll 2> 31_2/xlopt.log;
31_2_llopt: 31_2_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/31_2.ll -o ir/31_2.ll 2>/dev/null;

31_3_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/31_3/src/31_3.cc -o ir/31_3_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/31_3_orig.ll -o ir/31_3.ll 2> 31_3/xlopt.log;
31_3_llopt: 31_3_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/31_3.ll -o ir/31_3.ll 2>/dev/null;

32_0_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/32_0/src/32_0.cc -o ir/32_0_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/32_0_orig.ll -o ir/32_0.ll 2> 32_0/xlopt.log;
32_0_llopt: 32_0_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/32_0.ll -o ir/32_0.ll 2>/dev/null;

32_1_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/32_1/src/32_1.cc -o ir/32_1_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/32_1_orig.ll -o ir/32_1.ll 2> 32_1/xlopt.log;
32_1_llopt: 32_1_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/32_1.ll -o ir/32_1.ll 2>/dev/null;

32_2_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/32_2/src/32_2.cc -o ir/32_2_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/32_2_orig.ll -o ir/32_2.ll 2> 32_2/xlopt.log;
32_2_llopt: 32_2_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/32_2.ll -o ir/32_2.ll 2>/dev/null;

32_3_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/32_3/src/32_3.cc -o ir/32_3_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/32_3_orig.ll -o ir/32_3.ll 2> 32_3/xlopt.log;
32_3_llopt: 32_3_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/32_3.ll -o ir/32_3.ll 2>/dev/null;

17_0: 17_0_xlopt 17_0_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 17_0/scripts/17_0.prx) 2>&1 |& tee -a 17_0/17_0.log 17_0/timestamped_log/17_0-${ts}.log
	set -o pipefail; (coreverify -obj 17_0 -s 4096 -pm 16384) 2>&1 |& tee -a 17_0/17_0.log 17_0/timestamped_log/17_0-${ts}.log
	(readelf --debug-dump=decodedline 17_0/Release/17_0 >> 17_0/Release/17_0.txt)
17_2: 17_2_xlopt 17_2_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 17_2/scripts/17_2.prx) 2>&1 |& tee -a 17_2/17_2.log 17_2/timestamped_log/17_2-${ts}.log
	set -o pipefail; (coreverify -obj 17_2 -s 4096 -pm 16384) 2>&1 |& tee -a 17_2/17_2.log 17_2/timestamped_log/17_2-${ts}.log
	(readelf --debug-dump=decodedline 17_2/Release/17_2 >> 17_2/Release/17_2.txt)
18_0: 18_0_xlopt 18_0_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 18_0/scripts/18_0.prx) 2>&1 |& tee -a 18_0/18_0.log 18_0/timestamped_log/18_0-${ts}.log
	set -o pipefail; (coreverify -obj 18_0 -s 4096 -pm 16384) 2>&1 |& tee -a 18_0/18_0.log 18_0/timestamped_log/18_0-${ts}.log
	(readelf --debug-dump=decodedline 18_0/Release/18_0 >> 18_0/Release/18_0.txt)
18_1: 18_1_xlopt 18_1_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 18_1/scripts/18_1.prx) 2>&1 |& tee -a 18_1/18_1.log 18_1/timestamped_log/18_1-${ts}.log
	set -o pipefail; (coreverify -obj 18_1 -s 4096 -pm 16384) 2>&1 |& tee -a 18_1/18_1.log 18_1/timestamped_log/18_1-${ts}.log
	(readelf --debug-dump=decodedline 18_1/Release/18_1 >> 18_1/Release/18_1.txt)
18_2: 18_2_xlopt 18_2_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 18_2/scripts/18_2.prx) 2>&1 |& tee -a 18_2/18_2.log 18_2/timestamped_log/18_2-${ts}.log
	set -o pipefail; (coreverify -obj 18_2 -s 4096 -pm 16384) 2>&1 |& tee -a 18_2/18_2.log 18_2/timestamped_log/18_2-${ts}.log
	(readelf --debug-dump=decodedline 18_2/Release/18_2 >> 18_2/Release/18_2.txt)
19_0: 19_0_xlopt 19_0_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 19_0/scripts/19_0.prx) 2>&1 |& tee -a 19_0/19_0.log 19_0/timestamped_log/19_0-${ts}.log
	set -o pipefail; (coreverify -obj 19_0 -s 4096 -pm 16384) 2>&1 |& tee -a 19_0/19_0.log 19_0/timestamped_log/19_0-${ts}.log
	(readelf --debug-dump=decodedline 19_0/Release/19_0 >> 19_0/Release/19_0.txt)
19_1: 19_1_xlopt 19_1_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 19_1/scripts/19_1.prx) 2>&1 |& tee -a 19_1/19_1.log 19_1/timestamped_log/19_1-${ts}.log
	set -o pipefail; (coreverify -obj 19_1 -s 4096 -pm 16384) 2>&1 |& tee -a 19_1/19_1.log 19_1/timestamped_log/19_1-${ts}.log
	(readelf --debug-dump=decodedline 19_1/Release/19_1 >> 19_1/Release/19_1.txt)
19_2: 19_2_xlopt 19_2_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 19_2/scripts/19_2.prx) 2>&1 |& tee -a 19_2/19_2.log 19_2/timestamped_log/19_2-${ts}.log
	set -o pipefail; (coreverify -obj 19_2 -s 4096 -pm 16384) 2>&1 |& tee -a 19_2/19_2.log 19_2/timestamped_log/19_2-${ts}.log
	(readelf --debug-dump=decodedline 19_2/Release/19_2 >> 19_2/Release/19_2.txt)
20_0: 20_0_xlopt 20_0_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 20_0/scripts/20_0.prx) 2>&1 |& tee -a 20_0/20_0.log 20_0/timestamped_log/20_0-${ts}.log
	set -o pipefail; (coreverify -obj 20_0 -s 4096 -pm 16384) 2>&1 |& tee -a 20_0/20_0.log 20_0/timestamped_log/20_0-${ts}.log
	(readelf --debug-dump=decodedline 20_0/Release/20_0 >> 20_0/Release/20_0.txt)
20_1: 20_1_xlopt 20_1_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 20_1/scripts/20_1.prx) 2>&1 |& tee -a 20_1/20_1.log 20_1/timestamped_log/20_1-${ts}.log
	set -o pipefail; (coreverify -obj 20_1 -s 4096 -pm 16384) 2>&1 |& tee -a 20_1/20_1.log 20_1/timestamped_log/20_1-${ts}.log
	(readelf --debug-dump=decodedline 20_1/Release/20_1 >> 20_1/Release/20_1.txt)
21_0: 21_0_xlopt 21_0_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 21_0/scripts/21_0.prx) 2>&1 |& tee -a 21_0/21_0.log 21_0/timestamped_log/21_0-${ts}.log
	set -o pipefail; (coreverify -obj 21_0 -s 4096 -pm 16384) 2>&1 |& tee -a 21_0/21_0.log 21_0/timestamped_log/21_0-${ts}.log
	(readelf --debug-dump=decodedline 21_0/Release/21_0 >> 21_0/Release/21_0.txt)
21_1: 21_1_xlopt 21_1_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 21_1/scripts/21_1.prx) 2>&1 |& tee -a 21_1/21_1.log 21_1/timestamped_log/21_1-${ts}.log
	set -o pipefail; (coreverify -obj 21_1 -s 4096 -pm 16384) 2>&1 |& tee -a 21_1/21_1.log 21_1/timestamped_log/21_1-${ts}.log
	(readelf --debug-dump=decodedline 21_1/Release/21_1 >> 21_1/Release/21_1.txt)
21_2: 21_2_xlopt 21_2_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 21_2/scripts/21_2.prx) 2>&1 |& tee -a 21_2/21_2.log 21_2/timestamped_log/21_2-${ts}.log
	set -o pipefail; (coreverify -obj 21_2 -s 4096 -pm 16384) 2>&1 |& tee -a 21_2/21_2.log 21_2/timestamped_log/21_2-${ts}.log
	(readelf --debug-dump=decodedline 21_2/Release/21_2 >> 21_2/Release/21_2.txt)
22_0: 22_0_xlopt 22_0_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 22_0/scripts/22_0.prx) 2>&1 |& tee -a 22_0/22_0.log 22_0/timestamped_log/22_0-${ts}.log
	set -o pipefail; (coreverify -obj 22_0 -s 4096 -pm 16384) 2>&1 |& tee -a 22_0/22_0.log 22_0/timestamped_log/22_0-${ts}.log
	(readelf --debug-dump=decodedline 22_0/Release/22_0 >> 22_0/Release/22_0.txt)
22_1: 22_1_xlopt 22_1_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 22_1/scripts/22_1.prx) 2>&1 |& tee -a 22_1/22_1.log 22_1/timestamped_log/22_1-${ts}.log
	set -o pipefail; (coreverify -obj 22_1 -s 4096 -pm 16384) 2>&1 |& tee -a 22_1/22_1.log 22_1/timestamped_log/22_1-${ts}.log
	(readelf --debug-dump=decodedline 22_1/Release/22_1 >> 22_1/Release/22_1.txt)
22_2: 22_2_xlopt 22_2_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 22_2/scripts/22_2.prx) 2>&1 |& tee -a 22_2/22_2.log 22_2/timestamped_log/22_2-${ts}.log
	set -o pipefail; (coreverify -obj 22_2 -s 4096 -pm 16384) 2>&1 |& tee -a 22_2/22_2.log 22_2/timestamped_log/22_2-${ts}.log
	(readelf --debug-dump=decodedline 22_2/Release/22_2 >> 22_2/Release/22_2.txt)
23_0: 23_0_xlopt 23_0_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 23_0/scripts/23_0.prx) 2>&1 |& tee -a 23_0/23_0.log 23_0/timestamped_log/23_0-${ts}.log
	set -o pipefail; (coreverify -obj 23_0 -s 4096 -pm 16384) 2>&1 |& tee -a 23_0/23_0.log 23_0/timestamped_log/23_0-${ts}.log
	(readelf --debug-dump=decodedline 23_0/Release/23_0 >> 23_0/Release/23_0.txt)
23_1: 23_1_xlopt 23_1_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 23_1/scripts/23_1.prx) 2>&1 |& tee -a 23_1/23_1.log 23_1/timestamped_log/23_1-${ts}.log
	set -o pipefail; (coreverify -obj 23_1 -s 4096 -pm 16384) 2>&1 |& tee -a 23_1/23_1.log 23_1/timestamped_log/23_1-${ts}.log
	(readelf --debug-dump=decodedline 23_1/Release/23_1 >> 23_1/Release/23_1.txt)
23_2: 23_2_xlopt 23_2_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 23_2/scripts/23_2.prx) 2>&1 |& tee -a 23_2/23_2.log 23_2/timestamped_log/23_2-${ts}.log
	set -o pipefail; (coreverify -obj 23_2 -s 4096 -pm 16384) 2>&1 |& tee -a 23_2/23_2.log 23_2/timestamped_log/23_2-${ts}.log
	(readelf --debug-dump=decodedline 23_2/Release/23_2 >> 23_2/Release/23_2.txt)
24_0: 24_0_xlopt 24_0_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 24_0/scripts/24_0.prx) 2>&1 |& tee -a 24_0/24_0.log 24_0/timestamped_log/24_0-${ts}.log
	set -o pipefail; (coreverify -obj 24_0 -s 4096 -pm 16384) 2>&1 |& tee -a 24_0/24_0.log 24_0/timestamped_log/24_0-${ts}.log
	(readelf --debug-dump=decodedline 24_0/Release/24_0 >> 24_0/Release/24_0.txt)
24_1: 24_1_xlopt 24_1_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 24_1/scripts/24_1.prx) 2>&1 |& tee -a 24_1/24_1.log 24_1/timestamped_log/24_1-${ts}.log
	set -o pipefail; (coreverify -obj 24_1 -s 4096 -pm 16384) 2>&1 |& tee -a 24_1/24_1.log 24_1/timestamped_log/24_1-${ts}.log
	(readelf --debug-dump=decodedline 24_1/Release/24_1 >> 24_1/Release/24_1.txt)
24_2: 24_2_xlopt 24_2_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 24_2/scripts/24_2.prx) 2>&1 |& tee -a 24_2/24_2.log 24_2/timestamped_log/24_2-${ts}.log
	set -o pipefail; (coreverify -obj 24_2 -s 4096 -pm 16384) 2>&1 |& tee -a 24_2/24_2.log 24_2/timestamped_log/24_2-${ts}.log
	(readelf --debug-dump=decodedline 24_2/Release/24_2 >> 24_2/Release/24_2.txt)
25_0: 25_0_xlopt 25_0_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 25_0/scripts/25_0.prx) 2>&1 |& tee -a 25_0/25_0.log 25_0/timestamped_log/25_0-${ts}.log
	set -o pipefail; (coreverify -obj 25_0 -s 4096 -pm 16384) 2>&1 |& tee -a 25_0/25_0.log 25_0/timestamped_log/25_0-${ts}.log
	(readelf --debug-dump=decodedline 25_0/Release/25_0 >> 25_0/Release/25_0.txt)
25_1: 25_1_xlopt 25_1_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 25_1/scripts/25_1.prx) 2>&1 |& tee -a 25_1/25_1.log 25_1/timestamped_log/25_1-${ts}.log
	set -o pipefail; (coreverify -obj 25_1 -s 4096 -pm 16384) 2>&1 |& tee -a 25_1/25_1.log 25_1/timestamped_log/25_1-${ts}.log
	(readelf --debug-dump=decodedline 25_1/Release/25_1 >> 25_1/Release/25_1.txt)
26_0: 26_0_xlopt 26_0_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 26_0/scripts/26_0.prx) 2>&1 |& tee -a 26_0/26_0.log 26_0/timestamped_log/26_0-${ts}.log
	set -o pipefail; (coreverify -obj 26_0 -s 4096 -pm 16384) 2>&1 |& tee -a 26_0/26_0.log 26_0/timestamped_log/26_0-${ts}.log
	(readelf --debug-dump=decodedline 26_0/Release/26_0 >> 26_0/Release/26_0.txt)
26_1: 26_1_xlopt 26_1_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 26_1/scripts/26_1.prx) 2>&1 |& tee -a 26_1/26_1.log 26_1/timestamped_log/26_1-${ts}.log
	set -o pipefail; (coreverify -obj 26_1 -s 4096 -pm 16384) 2>&1 |& tee -a 26_1/26_1.log 26_1/timestamped_log/26_1-${ts}.log
	(readelf --debug-dump=decodedline 26_1/Release/26_1 >> 26_1/Release/26_1.txt)
26_2: 26_2_xlopt 26_2_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 26_2/scripts/26_2.prx) 2>&1 |& tee -a 26_2/26_2.log 26_2/timestamped_log/26_2-${ts}.log
	set -o pipefail; (coreverify -obj 26_2 -s 4096 -pm 16384) 2>&1 |& tee -a 26_2/26_2.log 26_2/timestamped_log/26_2-${ts}.log
	(readelf --debug-dump=decodedline 26_2/Release/26_2 >> 26_2/Release/26_2.txt)
26_3: 26_3_xlopt 26_3_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 26_3/scripts/26_3.prx) 2>&1 |& tee -a 26_3/26_3.log 26_3/timestamped_log/26_3-${ts}.log
	set -o pipefail; (coreverify -obj 26_3 -s 4096 -pm 16384) 2>&1 |& tee -a 26_3/26_3.log 26_3/timestamped_log/26_3-${ts}.log
	(readelf --debug-dump=decodedline 26_3/Release/26_3 >> 26_3/Release/26_3.txt)
27_1: 27_1_xlopt 27_1_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 27_1/scripts/27_1.prx) 2>&1 |& tee -a 27_1/27_1.log 27_1/timestamped_log/27_1-${ts}.log
	set -o pipefail; (coreverify -obj 27_1 -s 4096 -pm 16384) 2>&1 |& tee -a 27_1/27_1.log 27_1/timestamped_log/27_1-${ts}.log
	(readelf --debug-dump=decodedline 27_1/Release/27_1 >> 27_1/Release/27_1.txt)
27_2: 27_2_xlopt 27_2_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 27_2/scripts/27_2.prx) 2>&1 |& tee -a 27_2/27_2.log 27_2/timestamped_log/27_2-${ts}.log
	set -o pipefail; (coreverify -obj 27_2 -s 4096 -pm 16384) 2>&1 |& tee -a 27_2/27_2.log 27_2/timestamped_log/27_2-${ts}.log
	(readelf --debug-dump=decodedline 27_2/Release/27_2 >> 27_2/Release/27_2.txt)
27_3: 27_3_xlopt 27_3_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 27_3/scripts/27_3.prx) 2>&1 |& tee -a 27_3/27_3.log 27_3/timestamped_log/27_3-${ts}.log
	set -o pipefail; (coreverify -obj 27_3 -s 4096 -pm 16384) 2>&1 |& tee -a 27_3/27_3.log 27_3/timestamped_log/27_3-${ts}.log
	(readelf --debug-dump=decodedline 27_3/Release/27_3 >> 27_3/Release/27_3.txt)
28_3: 28_3_xlopt 28_3_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 28_3/scripts/28_3.prx) 2>&1 |& tee -a 28_3/28_3.log 28_3/timestamped_log/28_3-${ts}.log
	set -o pipefail; (coreverify -obj 28_3 -s 4096 -pm 16384) 2>&1 |& tee -a 28_3/28_3.log 28_3/timestamped_log/28_3-${ts}.log
	(readelf --debug-dump=decodedline 28_3/Release/28_3 >> 28_3/Release/28_3.txt)
29_3: 29_3_xlopt 29_3_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 29_3/scripts/29_3.prx) 2>&1 |& tee -a 29_3/29_3.log 29_3/timestamped_log/29_3-${ts}.log
	set -o pipefail; (coreverify -obj 29_3 -s 4096 -pm 16384) 2>&1 |& tee -a 29_3/29_3.log 29_3/timestamped_log/29_3-${ts}.log
	(readelf --debug-dump=decodedline 29_3/Release/29_3 >> 29_3/Release/29_3.txt)
30_0: 30_0_xlopt 30_0_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 30_0/scripts/30_0.prx) 2>&1 |& tee -a 30_0/30_0.log 30_0/timestamped_log/30_0-${ts}.log
	set -o pipefail; (coreverify -obj 30_0 -s 4096 -pm 16384) 2>&1 |& tee -a 30_0/30_0.log 30_0/timestamped_log/30_0-${ts}.log
	(readelf --debug-dump=decodedline 30_0/Release/30_0 >> 30_0/Release/30_0.txt)
30_1: 30_1_xlopt 30_1_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 30_1/scripts/30_1.prx) 2>&1 |& tee -a 30_1/30_1.log 30_1/timestamped_log/30_1-${ts}.log
	set -o pipefail; (coreverify -obj 30_1 -s 4096 -pm 16384) 2>&1 |& tee -a 30_1/30_1.log 30_1/timestamped_log/30_1-${ts}.log
	(readelf --debug-dump=decodedline 30_1/Release/30_1 >> 30_1/Release/30_1.txt)
30_3: 30_3_xlopt 30_3_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 30_3/scripts/30_3.prx) 2>&1 |& tee -a 30_3/30_3.log 30_3/timestamped_log/30_3-${ts}.log
	set -o pipefail; (coreverify -obj 30_3 -s 4096 -pm 16384) 2>&1 |& tee -a 30_3/30_3.log 30_3/timestamped_log/30_3-${ts}.log
	(readelf --debug-dump=decodedline 30_3/Release/30_3 >> 30_3/Release/30_3.txt)
31_0: 31_0_xlopt 31_0_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 31_0/scripts/31_0.prx) 2>&1 |& tee -a 31_0/31_0.log 31_0/timestamped_log/31_0-${ts}.log
	set -o pipefail; (coreverify -obj 31_0 -s 4096 -pm 16384) 2>&1 |& tee -a 31_0/31_0.log 31_0/timestamped_log/31_0-${ts}.log
	(readelf --debug-dump=decodedline 31_0/Release/31_0 >> 31_0/Release/31_0.txt)
31_1: 31_1_xlopt 31_1_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 31_1/scripts/31_1.prx) 2>&1 |& tee -a 31_1/31_1.log 31_1/timestamped_log/31_1-${ts}.log
	set -o pipefail; (coreverify -obj 31_1 -s 4096 -pm 16384) 2>&1 |& tee -a 31_1/31_1.log 31_1/timestamped_log/31_1-${ts}.log
	(readelf --debug-dump=decodedline 31_1/Release/31_1 >> 31_1/Release/31_1.txt)
31_2: 31_2_xlopt 31_2_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 31_2/scripts/31_2.prx) 2>&1 |& tee -a 31_2/31_2.log 31_2/timestamped_log/31_2-${ts}.log
	set -o pipefail; (coreverify -obj 31_2 -s 4096 -pm 16384) 2>&1 |& tee -a 31_2/31_2.log 31_2/timestamped_log/31_2-${ts}.log
	(readelf --debug-dump=decodedline 31_2/Release/31_2 >> 31_2/Release/31_2.txt)
31_3: 31_3_xlopt 31_3_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 31_3/scripts/31_3.prx) 2>&1 |& tee -a 31_3/31_3.log 31_3/timestamped_log/31_3-${ts}.log
	set -o pipefail; (coreverify -obj 31_3 -s 4096 -pm 16384) 2>&1 |& tee -a 31_3/31_3.log 31_3/timestamped_log/31_3-${ts}.log
	(readelf --debug-dump=decodedline 31_3/Release/31_3 >> 31_3/Release/31_3.txt)
32_0: 32_0_xlopt 32_0_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 32_0/scripts/32_0.prx) 2>&1 |& tee -a 32_0/32_0.log 32_0/timestamped_log/32_0-${ts}.log
	set -o pipefail; (coreverify -obj 32_0 -s 4096 -pm 16384) 2>&1 |& tee -a 32_0/32_0.log 32_0/timestamped_log/32_0-${ts}.log
	(readelf --debug-dump=decodedline 32_0/Release/32_0 >> 32_0/Release/32_0.txt)
32_1: 32_1_xlopt 32_1_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 32_1/scripts/32_1.prx) 2>&1 |& tee -a 32_1/32_1.log 32_1/timestamped_log/32_1-${ts}.log
	set -o pipefail; (coreverify -obj 32_1 -s 4096 -pm 16384) 2>&1 |& tee -a 32_1/32_1.log 32_1/timestamped_log/32_1-${ts}.log
	(readelf --debug-dump=decodedline 32_1/Release/32_1 >> 32_1/Release/32_1.txt)
32_2: 32_2_xlopt 32_2_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 32_2/scripts/32_2.prx) 2>&1 |& tee -a 32_2/32_2.log 32_2/timestamped_log/32_2-${ts}.log
	set -o pipefail; (coreverify -obj 32_2 -s 4096 -pm 16384) 2>&1 |& tee -a 32_2/32_2.log 32_2/timestamped_log/32_2-${ts}.log
	(readelf --debug-dump=decodedline 32_2/Release/32_2 >> 32_2/Release/32_2.txt)
32_3: 32_3_xlopt 32_3_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 32_3/scripts/32_3.prx) 2>&1 |& tee -a 32_3/32_3.log 32_3/timestamped_log/32_3-${ts}.log
	set -o pipefail; (coreverify -obj 32_3 -s 4096 -pm 16384) 2>&1 |& tee -a 32_3/32_3.log 32_3/timestamped_log/32_3-${ts}.log
	(readelf --debug-dump=decodedline 32_3/Release/32_3 >> 32_3/Release/32_3.txt)

clean:
	(rm -rf 17_0/Release)
	(rm -rf 17_2/Release)
	(rm -rf 18_0/Release)
	(rm -rf 18_1/Release)
	(rm -rf 18_2/Release)
	(rm -rf 19_0/Release)
	(rm -rf 19_1/Release)
	(rm -rf 19_2/Release)
	(rm -rf 20_0/Release)
	(rm -rf 20_1/Release)
	(rm -rf 21_0/Release)
	(rm -rf 21_1/Release)
	(rm -rf 21_2/Release)
	(rm -rf 22_0/Release)
	(rm -rf 22_1/Release)
	(rm -rf 22_2/Release)
	(rm -rf 23_0/Release)
	(rm -rf 23_1/Release)
	(rm -rf 23_2/Release)
	(rm -rf 24_0/Release)
	(rm -rf 24_1/Release)
	(rm -rf 24_2/Release)
	(rm -rf 25_0/Release)
	(rm -rf 25_1/Release)
	(rm -rf 26_0/Release)
	(rm -rf 26_1/Release)
	(rm -rf 26_2/Release)
	(rm -rf 26_3/Release)
	(rm -rf 27_1/Release)
	(rm -rf 27_2/Release)
	(rm -rf 27_3/Release)
	(rm -rf 28_3/Release)
	(rm -rf 29_3/Release)
	(rm -rf 30_0/Release)
	(rm -rf 30_1/Release)
	(rm -rf 30_3/Release)
	(rm -rf 31_0/Release)
	(rm -rf 31_1/Release)
	(rm -rf 31_2/Release)
	(rm -rf 31_3/Release)
	(rm -rf 32_0/Release)
	(rm -rf 32_1/Release)
	(rm -rf 32_2/Release)
	(rm -rf 32_3/Release)
