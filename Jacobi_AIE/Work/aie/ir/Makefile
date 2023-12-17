.PHONY: all  i0_wrap_Orthogonalize.rule clean

ifeq ($(XILINX_VITIS_AIETOOLS),)
XILINX_VITIS_AIETOOLS:=${XILINX_VITIS}/aietools
endif
ifeq ($(CARDANO_AIE_ARCH_MODEL_DIR),)
CARDANO_AIE_ARCH_MODEL_DIR := ${XILINX_VITIS_AIETOOLS}/data/versal_prod/lib
endif
XCHESSCC := xchesscc

INCLUDE_PATH := -I "../../.." -I ${XILINX_VITIS_AIETOOLS}/include -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src -I ${CARDANO_AIE_ARCH_MODEL_DIR}/runtime_cxx/libcxx-lite/include -I ${CARDANO_AIE_ARCH_MODEL_DIR}/runtime_cxx/libs/libcxx-9.0.0/include-lite -I ${CARDANO_AIE_ARCH_MODEL_DIR}/runtime/include

all:  i0_wrap_Orthogonalize.rule

i0_wrap_Orthogonalize.rule:
	${XCHESSCC} +f +s -p me -P ${CARDANO_AIE_ARCH_MODEL_DIR} +Wllvm,-O2,-fno-jump-tables,-fno-discard-value-names,-mllvm,-chess-collapse-struct-types-during-linking=0,-Xclang,-chess-only-info-critical-passes,-g -D__AIENGINE__ -D__AIE_ARCH__=10 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  -I /home/lxy/Projects/SVD/Jacobi_AIE/aie/src/ProcessUnit ${INCLUDE_PATH} /home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/ir/i0_wrap_Orthogonalize.cpp -o i0_wrap_Orthogonalize.ll;

clean:
	rm -rf  i0_wrap_Orthogonalize.ll