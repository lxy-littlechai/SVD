SHELL=/bin/bash 
.PHONY: all 1_0 clean

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
INCLUDE_PATH := -I /media/4T/home/luanxinya/PaperWork/HeteroSVD/dev/SVD/testAIEGold -I ${XILINX_VITIS_AIETOOLS}/include -I /media/4T/xilinx/Vitis/2023.2/aietools/include -I /media/4T/home/luanxinya/PaperWork/HeteroSVD/dev/SVD/testAIEGold/aie -I /media/4T/home/luanxinya/PaperWork/HeteroSVD/dev/SVD/testAIEGold -I ${CARDANO_AIE_ARCH_MODEL_DIR}/runtime_cxx/libcxx-lite/include -I ${CARDANO_AIE_ARCH_MODEL_DIR}/runtime_cxx/libs/libcxx-9.0.0/include-lite -I ${CARDANO_AIE_ARCH_MODEL_DIR}/runtime/include

.EXPORT_ALL_VARIABLES:
export XILINX_CARDANO_XLOPT_OPTIONS=-xlopt=2 -mapped-json=TopGraph_mapped.json

all: 1_0 

1_0_xlopt:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR -I /media/4T/home/luanxinya/PaperWork/HeteroSVD/dev/SVD/testAIEGold/aie/ProcessUnit ${INCLUDE_PATH} /media/4T/home/luanxinya/PaperWork/HeteroSVD/dev/SVD/testAIEGold/Work/aie/1_0/src/1_0.cc -o ir/1_0_orig.ll;
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -load-pass-plugin=${XILINX_VITIS_AIETOOLS}/lib/lnx64.o/libLLVMXLOpt-15.0.7.so -passes=xlopt ir/1_0_orig.ll -o ir/1_0.ll 2> 1_0/xlopt.log;
1_0_llopt: 1_0_xlopt
	${XILINX_VITIS_AIETOOLS}/lnx64.o/tools/clang/15.0.7/bin/opt -opaque-pointers=0 -S -simplifycfg -mem2reg -indvars -deadargelim ir/1_0.ll -o ir/1_0.ll 2>/dev/null;

1_0: 1_0_xlopt 1_0_llopt
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 1_0/scripts/1_0.prx) 2>&1 |& tee -a 1_0/1_0.log 1_0/timestamped_log/1_0-${ts}.log
	set -o pipefail; (coreverify -obj 1_0 -s 1024 -pm 16384) 2>&1 |& tee -a 1_0/1_0.log 1_0/timestamped_log/1_0-${ts}.log
	(readelf --debug-dump=decodedline 1_0/Release/1_0 >> 1_0/Release/1_0.txt)

clean:
	(rm -rf 1_0/Release)
