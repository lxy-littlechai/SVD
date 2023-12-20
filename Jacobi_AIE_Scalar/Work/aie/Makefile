SHELL=/bin/bash 
.PHONY: all 22_0 23_0 25_0 27_0 clean

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
INCLUDE_PATH := -I /home/lxy/Projects/SVD/Jacobi_AIE_Scalar -I ${XILINX_VITIS_AIETOOLS}/include -I /home/lxy/Projects/SVD/Jacobi_AIE_Scalar/aie/src -I ${CARDANO_AIE_ARCH_MODEL_DIR}/runtime_cxx/libcxx-lite/include -I ${CARDANO_AIE_ARCH_MODEL_DIR}/runtime_cxx/libs/libcxx-9.0.0/include-lite -I ${CARDANO_AIE_ARCH_MODEL_DIR}/runtime/include

.EXPORT_ALL_VARIABLES:
export XILINX_CARDANO_XLOPT_OPTIONS=-xlopt=1 -mapped-json=TopGraph_mapped.json

all: 22_0 23_0 25_0 27_0 

22_0_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE_Scalar/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE_Scalar/Work/aie/22_0/src/22_0.cc -o ir/22_0_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/22_0_orig.ll -o ir/22_0.ll 2> 22_0/xlopt.log;
22_0_llopt: 22_0_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/22_0.ll -o ir/22_0.ll 2>/dev/null;

23_0_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE_Scalar/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE_Scalar/Work/aie/23_0/src/23_0.cc -o ir/23_0_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/23_0_orig.ll -o ir/23_0.ll 2> 23_0/xlopt.log;
23_0_llopt: 23_0_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/23_0.ll -o ir/23_0.ll 2>/dev/null;

25_0_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE_Scalar/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE_Scalar/Work/aie/25_0/src/25_0.cc -o ir/25_0_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/25_0_orig.ll -o ir/25_0.ll 2> 25_0/xlopt.log;
25_0_llopt: 25_0_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/25_0.ll -o ir/25_0.ll 2>/dev/null;

27_0_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /home/lxy/Projects/SVD/Jacobi_AIE_Scalar/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE_Scalar/Work/aie/27_0/src/27_0.cc -o ir/27_0_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/27_0_orig.ll -o ir/27_0.ll 2> 27_0/xlopt.log;
27_0_llopt: 27_0_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S ir/27_0.ll -o ir/27_0.ll 2>/dev/null;

22_0: 22_0_xlopt 22_0_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 22_0/scripts/22_0.prx) 2>&1 |& tee -a 22_0/22_0.log 22_0/timestamped_log/22_0-${ts}.log
	set -o pipefail; (coreverify -obj 22_0 -s 4096 -pm 16384) 2>&1 |& tee -a 22_0/22_0.log 22_0/timestamped_log/22_0-${ts}.log
	(readelf --debug-dump=decodedline 22_0/Release/22_0 >> 22_0/Release/22_0.txt)
23_0: 23_0_xlopt 23_0_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 23_0/scripts/23_0.prx) 2>&1 |& tee -a 23_0/23_0.log 23_0/timestamped_log/23_0-${ts}.log
	set -o pipefail; (coreverify -obj 23_0 -s 4096 -pm 16384) 2>&1 |& tee -a 23_0/23_0.log 23_0/timestamped_log/23_0-${ts}.log
	(readelf --debug-dump=decodedline 23_0/Release/23_0 >> 23_0/Release/23_0.txt)
25_0: 25_0_xlopt 25_0_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 25_0/scripts/25_0.prx) 2>&1 |& tee -a 25_0/25_0.log 25_0/timestamped_log/25_0-${ts}.log
	set -o pipefail; (coreverify -obj 25_0 -s 4096 -pm 16384) 2>&1 |& tee -a 25_0/25_0.log 25_0/timestamped_log/25_0-${ts}.log
	(readelf --debug-dump=decodedline 25_0/Release/25_0 >> 25_0/Release/25_0.txt)
27_0: 27_0_xlopt 27_0_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 27_0/scripts/27_0.prx) 2>&1 |& tee -a 27_0/27_0.log 27_0/timestamped_log/27_0-${ts}.log
	set -o pipefail; (coreverify -obj 27_0 -s 4096 -pm 16384) 2>&1 |& tee -a 27_0/27_0.log 27_0/timestamped_log/27_0-${ts}.log
	(readelf --debug-dump=decodedline 27_0/Release/27_0 >> 27_0/Release/27_0.txt)

clean:
	(rm -rf 22_0/Release)
	(rm -rf 23_0/Release)
	(rm -rf 25_0/Release)
	(rm -rf 27_0/Release)
