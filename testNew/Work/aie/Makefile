SHELL=/bin/bash 
.PHONY: all 0_0 0_1 0_2 0_3 1_0 1_1 1_2 1_3 1_4 1_5 1_6 2_0 2_1 2_2 2_3 2_4 2_5 2_6 3_0 3_1 3_2 3_3 3_4 3_5 3_6 4_0 4_1 4_2 4_3 4_4 4_5 4_6 6_0 6_1 6_2 6_3 6_4 6_5 6_6 7_0 7_1 7_2 7_3 7_4 7_5 7_6 8_0 8_1 8_2 8_3 8_4 8_5 8_6 9_0 9_1 9_2 9_3 9_4 9_5 9_6 11_0 11_1 11_2 11_3 11_4 11_5 11_6 12_0 12_1 12_2 12_3 12_4 12_5 12_6 13_0 13_1 13_2 13_3 13_4 13_5 13_6 14_0 14_1 14_2 14_3 14_4 14_5 14_6 20_0 20_1 20_2 20_3 20_4 20_5 20_6 21_0 21_1 21_2 21_3 21_4 21_5 21_6 22_0 22_1 22_2 22_3 22_4 22_5 22_6 23_0 23_1 23_2 23_3 23_4 23_5 23_6 clean

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
all: 0_0 0_1 0_2 0_3 1_0 1_1 1_2 1_3 1_4 1_5 1_6 2_0 2_1 2_2 2_3 2_4 2_5 2_6 3_0 3_1 3_2 3_3 3_4 3_5 3_6 4_0 4_1 4_2 4_3 4_4 4_5 4_6 6_0 6_1 6_2 6_3 6_4 6_5 6_6 7_0 7_1 7_2 7_3 7_4 7_5 7_6 8_0 8_1 8_2 8_3 8_4 8_5 8_6 9_0 9_1 9_2 9_3 9_4 9_5 9_6 11_0 11_1 11_2 11_3 11_4 11_5 11_6 12_0 12_1 12_2 12_3 12_4 12_5 12_6 13_0 13_1 13_2 13_3 13_4 13_5 13_6 14_0 14_1 14_2 14_3 14_4 14_5 14_6 20_0 20_1 20_2 20_3 20_4 20_5 20_6 21_0 21_1 21_2 21_3 21_4 21_5 21_6 22_0 22_1 22_2 22_3 22_4 22_5 22_6 23_0 23_1 23_2 23_3 23_4 23_5 23_6 

0_0:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 0_0/scripts/0_0.prx) 2>&1 |& tee -a 0_0/0_0.log 0_0/timestamped_log/0_0-${ts}.log
	set -o pipefail; (coreverify -obj 0_0 -s 1024 -pm 16384) 2>&1 |& tee -a 0_0/0_0.log 0_0/timestamped_log/0_0-${ts}.log
	(readelf --debug-dump=decodedline 0_0/Release/0_0 >> 0_0/Release/0_0.txt)
0_1:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 0_1/scripts/0_1.prx) 2>&1 |& tee -a 0_1/0_1.log 0_1/timestamped_log/0_1-${ts}.log
	set -o pipefail; (coreverify -obj 0_1 -s 1024 -pm 16384) 2>&1 |& tee -a 0_1/0_1.log 0_1/timestamped_log/0_1-${ts}.log
	(readelf --debug-dump=decodedline 0_1/Release/0_1 >> 0_1/Release/0_1.txt)
0_3:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 0_3/scripts/0_3.prx) 2>&1 |& tee -a 0_3/0_3.log 0_3/timestamped_log/0_3-${ts}.log
	set -o pipefail; (coreverify -obj 0_3 -s 1024 -pm 16384) 2>&1 |& tee -a 0_3/0_3.log 0_3/timestamped_log/0_3-${ts}.log
	(readelf --debug-dump=decodedline 0_3/Release/0_3 >> 0_3/Release/0_3.txt)
1_0:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 1_0/scripts/1_0.prx) 2>&1 |& tee -a 1_0/1_0.log 1_0/timestamped_log/1_0-${ts}.log
	set -o pipefail; (coreverify -obj 1_0 -s 1024 -pm 16384) 2>&1 |& tee -a 1_0/1_0.log 1_0/timestamped_log/1_0-${ts}.log
	(readelf --debug-dump=decodedline 1_0/Release/1_0 >> 1_0/Release/1_0.txt)
1_1:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 1_1/scripts/1_1.prx) 2>&1 |& tee -a 1_1/1_1.log 1_1/timestamped_log/1_1-${ts}.log
	set -o pipefail; (coreverify -obj 1_1 -s 1024 -pm 16384) 2>&1 |& tee -a 1_1/1_1.log 1_1/timestamped_log/1_1-${ts}.log
	(readelf --debug-dump=decodedline 1_1/Release/1_1 >> 1_1/Release/1_1.txt)
1_2:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 1_2/scripts/1_2.prx) 2>&1 |& tee -a 1_2/1_2.log 1_2/timestamped_log/1_2-${ts}.log
	set -o pipefail; (coreverify -obj 1_2 -s 1024 -pm 16384) 2>&1 |& tee -a 1_2/1_2.log 1_2/timestamped_log/1_2-${ts}.log
	(readelf --debug-dump=decodedline 1_2/Release/1_2 >> 1_2/Release/1_2.txt)
1_3:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 1_3/scripts/1_3.prx) 2>&1 |& tee -a 1_3/1_3.log 1_3/timestamped_log/1_3-${ts}.log
	set -o pipefail; (coreverify -obj 1_3 -s 1024 -pm 16384) 2>&1 |& tee -a 1_3/1_3.log 1_3/timestamped_log/1_3-${ts}.log
	(readelf --debug-dump=decodedline 1_3/Release/1_3 >> 1_3/Release/1_3.txt)
1_5:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 1_5/scripts/1_5.prx) 2>&1 |& tee -a 1_5/1_5.log 1_5/timestamped_log/1_5-${ts}.log
	set -o pipefail; (coreverify -obj 1_5 -s 1024 -pm 16384) 2>&1 |& tee -a 1_5/1_5.log 1_5/timestamped_log/1_5-${ts}.log
	(readelf --debug-dump=decodedline 1_5/Release/1_5 >> 1_5/Release/1_5.txt)
2_0:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 2_0/scripts/2_0.prx) 2>&1 |& tee -a 2_0/2_0.log 2_0/timestamped_log/2_0-${ts}.log
	set -o pipefail; (coreverify -obj 2_0 -s 1024 -pm 16384) 2>&1 |& tee -a 2_0/2_0.log 2_0/timestamped_log/2_0-${ts}.log
	(readelf --debug-dump=decodedline 2_0/Release/2_0 >> 2_0/Release/2_0.txt)
2_2:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 2_2/scripts/2_2.prx) 2>&1 |& tee -a 2_2/2_2.log 2_2/timestamped_log/2_2-${ts}.log
	set -o pipefail; (coreverify -obj 2_2 -s 1024 -pm 16384) 2>&1 |& tee -a 2_2/2_2.log 2_2/timestamped_log/2_2-${ts}.log
	(readelf --debug-dump=decodedline 2_2/Release/2_2 >> 2_2/Release/2_2.txt)
2_3:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 2_3/scripts/2_3.prx) 2>&1 |& tee -a 2_3/2_3.log 2_3/timestamped_log/2_3-${ts}.log
	set -o pipefail; (coreverify -obj 2_3 -s 1024 -pm 16384) 2>&1 |& tee -a 2_3/2_3.log 2_3/timestamped_log/2_3-${ts}.log
	(readelf --debug-dump=decodedline 2_3/Release/2_3 >> 2_3/Release/2_3.txt)
3_0:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 3_0/scripts/3_0.prx) 2>&1 |& tee -a 3_0/3_0.log 3_0/timestamped_log/3_0-${ts}.log
	set -o pipefail; (coreverify -obj 3_0 -s 1024 -pm 16384) 2>&1 |& tee -a 3_0/3_0.log 3_0/timestamped_log/3_0-${ts}.log
	(readelf --debug-dump=decodedline 3_0/Release/3_0 >> 3_0/Release/3_0.txt)
3_1:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 3_1/scripts/3_1.prx) 2>&1 |& tee -a 3_1/3_1.log 3_1/timestamped_log/3_1-${ts}.log
	set -o pipefail; (coreverify -obj 3_1 -s 1024 -pm 16384) 2>&1 |& tee -a 3_1/3_1.log 3_1/timestamped_log/3_1-${ts}.log
	(readelf --debug-dump=decodedline 3_1/Release/3_1 >> 3_1/Release/3_1.txt)
4_1:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 4_1/scripts/4_1.prx) 2>&1 |& tee -a 4_1/4_1.log 4_1/timestamped_log/4_1-${ts}.log
	set -o pipefail; (coreverify -obj 4_1 -s 1024 -pm 16384) 2>&1 |& tee -a 4_1/4_1.log 4_1/timestamped_log/4_1-${ts}.log
	(readelf --debug-dump=decodedline 4_1/Release/4_1 >> 4_1/Release/4_1.txt)
4_2:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 4_2/scripts/4_2.prx) 2>&1 |& tee -a 4_2/4_2.log 4_2/timestamped_log/4_2-${ts}.log
	set -o pipefail; (coreverify -obj 4_2 -s 1024 -pm 16384) 2>&1 |& tee -a 4_2/4_2.log 4_2/timestamped_log/4_2-${ts}.log
	(readelf --debug-dump=decodedline 4_2/Release/4_2 >> 4_2/Release/4_2.txt)
4_3:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 4_3/scripts/4_3.prx) 2>&1 |& tee -a 4_3/4_3.log 4_3/timestamped_log/4_3-${ts}.log
	set -o pipefail; (coreverify -obj 4_3 -s 1024 -pm 16384) 2>&1 |& tee -a 4_3/4_3.log 4_3/timestamped_log/4_3-${ts}.log
	(readelf --debug-dump=decodedline 4_3/Release/4_3 >> 4_3/Release/4_3.txt)
6_0:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 6_0/scripts/6_0.prx) 2>&1 |& tee -a 6_0/6_0.log 6_0/timestamped_log/6_0-${ts}.log
	set -o pipefail; (coreverify -obj 6_0 -s 1024 -pm 16384) 2>&1 |& tee -a 6_0/6_0.log 6_0/timestamped_log/6_0-${ts}.log
	(readelf --debug-dump=decodedline 6_0/Release/6_0 >> 6_0/Release/6_0.txt)
6_3:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 6_3/scripts/6_3.prx) 2>&1 |& tee -a 6_3/6_3.log 6_3/timestamped_log/6_3-${ts}.log
	set -o pipefail; (coreverify -obj 6_3 -s 1024 -pm 16384) 2>&1 |& tee -a 6_3/6_3.log 6_3/timestamped_log/6_3-${ts}.log
	(readelf --debug-dump=decodedline 6_3/Release/6_3 >> 6_3/Release/6_3.txt)
6_4:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 6_4/scripts/6_4.prx) 2>&1 |& tee -a 6_4/6_4.log 6_4/timestamped_log/6_4-${ts}.log
	set -o pipefail; (coreverify -obj 6_4 -s 1024 -pm 16384) 2>&1 |& tee -a 6_4/6_4.log 6_4/timestamped_log/6_4-${ts}.log
	(readelf --debug-dump=decodedline 6_4/Release/6_4 >> 6_4/Release/6_4.txt)
7_4:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 7_4/scripts/7_4.prx) 2>&1 |& tee -a 7_4/7_4.log 7_4/timestamped_log/7_4-${ts}.log
	set -o pipefail; (coreverify -obj 7_4 -s 1024 -pm 16384) 2>&1 |& tee -a 7_4/7_4.log 7_4/timestamped_log/7_4-${ts}.log
	(readelf --debug-dump=decodedline 7_4/Release/7_4 >> 7_4/Release/7_4.txt)
8_3:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 8_3/scripts/8_3.prx) 2>&1 |& tee -a 8_3/8_3.log 8_3/timestamped_log/8_3-${ts}.log
	set -o pipefail; (coreverify -obj 8_3 -s 1024 -pm 16384) 2>&1 |& tee -a 8_3/8_3.log 8_3/timestamped_log/8_3-${ts}.log
	(readelf --debug-dump=decodedline 8_3/Release/8_3 >> 8_3/Release/8_3.txt)
9_0:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 9_0/scripts/9_0.prx) 2>&1 |& tee -a 9_0/9_0.log 9_0/timestamped_log/9_0-${ts}.log
	set -o pipefail; (coreverify -obj 9_0 -s 1024 -pm 16384) 2>&1 |& tee -a 9_0/9_0.log 9_0/timestamped_log/9_0-${ts}.log
	(readelf --debug-dump=decodedline 9_0/Release/9_0 >> 9_0/Release/9_0.txt)
9_3:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 9_3/scripts/9_3.prx) 2>&1 |& tee -a 9_3/9_3.log 9_3/timestamped_log/9_3-${ts}.log
	set -o pipefail; (coreverify -obj 9_3 -s 1024 -pm 16384) 2>&1 |& tee -a 9_3/9_3.log 9_3/timestamped_log/9_3-${ts}.log
	(readelf --debug-dump=decodedline 9_3/Release/9_3 >> 9_3/Release/9_3.txt)
9_4:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 9_4/scripts/9_4.prx) 2>&1 |& tee -a 9_4/9_4.log 9_4/timestamped_log/9_4-${ts}.log
	set -o pipefail; (coreverify -obj 9_4 -s 1024 -pm 16384) 2>&1 |& tee -a 9_4/9_4.log 9_4/timestamped_log/9_4-${ts}.log
	(readelf --debug-dump=decodedline 9_4/Release/9_4 >> 9_4/Release/9_4.txt)

0_2: 0_0
	mkdir -p 0_2/Release
	cp 0_0/Release/0_0.o 0_2/Release/0_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 0_2/scripts/0_2.prx +W bridge,../Release/0_2.o) 2>&1 |& tee -a 0_2/0_2.log 0_2/timestamped_log/0_2-${ts}.log
	set -o pipefail; (coreverify -obj 0_2 -s 1024 -pm 16384) 2>&1 |& tee -a 0_2/0_2.log 0_2/timestamped_log/0_2-${ts}.log

1_4: 1_2
	mkdir -p 1_4/Release
	cp 1_2/Release/1_2.o 1_4/Release/1_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 1_4/scripts/1_4.prx +W bridge,../Release/1_4.o) 2>&1 |& tee -a 1_4/1_4.log 1_4/timestamped_log/1_4-${ts}.log
	set -o pipefail; (coreverify -obj 1_4 -s 1024 -pm 16384) 2>&1 |& tee -a 1_4/1_4.log 1_4/timestamped_log/1_4-${ts}.log

1_6: 1_2
	mkdir -p 1_6/Release
	cp 1_2/Release/1_2.o 1_6/Release/1_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 1_6/scripts/1_6.prx +W bridge,../Release/1_6.o) 2>&1 |& tee -a 1_6/1_6.log 1_6/timestamped_log/1_6-${ts}.log
	set -o pipefail; (coreverify -obj 1_6 -s 1024 -pm 16384) 2>&1 |& tee -a 1_6/1_6.log 1_6/timestamped_log/1_6-${ts}.log

6_2: 1_2
	mkdir -p 6_2/Release
	cp 1_2/Release/1_2.o 6_2/Release/6_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 6_2/scripts/6_2.prx +W bridge,../Release/6_2.o) 2>&1 |& tee -a 6_2/6_2.log 6_2/timestamped_log/6_2-${ts}.log
	set -o pipefail; (coreverify -obj 6_2 -s 1024 -pm 16384) 2>&1 |& tee -a 6_2/6_2.log 6_2/timestamped_log/6_2-${ts}.log

6_6: 1_2
	mkdir -p 6_6/Release
	cp 1_2/Release/1_2.o 6_6/Release/6_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 6_6/scripts/6_6.prx +W bridge,../Release/6_6.o) 2>&1 |& tee -a 6_6/6_6.log 6_6/timestamped_log/6_6-${ts}.log
	set -o pipefail; (coreverify -obj 6_6 -s 1024 -pm 16384) 2>&1 |& tee -a 6_6/6_6.log 6_6/timestamped_log/6_6-${ts}.log

11_2: 1_2
	mkdir -p 11_2/Release
	cp 1_2/Release/1_2.o 11_2/Release/11_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 11_2/scripts/11_2.prx +W bridge,../Release/11_2.o) 2>&1 |& tee -a 11_2/11_2.log 11_2/timestamped_log/11_2-${ts}.log
	set -o pipefail; (coreverify -obj 11_2 -s 1024 -pm 16384) 2>&1 |& tee -a 11_2/11_2.log 11_2/timestamped_log/11_2-${ts}.log

11_4: 1_2
	mkdir -p 11_4/Release
	cp 1_2/Release/1_2.o 11_4/Release/11_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 11_4/scripts/11_4.prx +W bridge,../Release/11_4.o) 2>&1 |& tee -a 11_4/11_4.log 11_4/timestamped_log/11_4-${ts}.log
	set -o pipefail; (coreverify -obj 11_4 -s 1024 -pm 16384) 2>&1 |& tee -a 11_4/11_4.log 11_4/timestamped_log/11_4-${ts}.log

11_6: 1_2
	mkdir -p 11_6/Release
	cp 1_2/Release/1_2.o 11_6/Release/11_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 11_6/scripts/11_6.prx +W bridge,../Release/11_6.o) 2>&1 |& tee -a 11_6/11_6.log 11_6/timestamped_log/11_6-${ts}.log
	set -o pipefail; (coreverify -obj 11_6 -s 1024 -pm 16384) 2>&1 |& tee -a 11_6/11_6.log 11_6/timestamped_log/11_6-${ts}.log

20_2: 1_2
	mkdir -p 20_2/Release
	cp 1_2/Release/1_2.o 20_2/Release/20_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 20_2/scripts/20_2.prx +W bridge,../Release/20_2.o) 2>&1 |& tee -a 20_2/20_2.log 20_2/timestamped_log/20_2-${ts}.log
	set -o pipefail; (coreverify -obj 20_2 -s 1024 -pm 16384) 2>&1 |& tee -a 20_2/20_2.log 20_2/timestamped_log/20_2-${ts}.log

20_4: 1_2
	mkdir -p 20_4/Release
	cp 1_2/Release/1_2.o 20_4/Release/20_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 20_4/scripts/20_4.prx +W bridge,../Release/20_4.o) 2>&1 |& tee -a 20_4/20_4.log 20_4/timestamped_log/20_4-${ts}.log
	set -o pipefail; (coreverify -obj 20_4 -s 1024 -pm 16384) 2>&1 |& tee -a 20_4/20_4.log 20_4/timestamped_log/20_4-${ts}.log

20_6: 1_2
	mkdir -p 20_6/Release
	cp 1_2/Release/1_2.o 20_6/Release/20_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 20_6/scripts/20_6.prx +W bridge,../Release/20_6.o) 2>&1 |& tee -a 20_6/20_6.log 20_6/timestamped_log/20_6-${ts}.log
	set -o pipefail; (coreverify -obj 20_6 -s 1024 -pm 16384) 2>&1 |& tee -a 20_6/20_6.log 20_6/timestamped_log/20_6-${ts}.log

3_2: 1_3
	mkdir -p 3_2/Release
	cp 1_3/Release/1_3.o 3_2/Release/3_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 3_2/scripts/3_2.prx +W bridge,../Release/3_2.o) 2>&1 |& tee -a 3_2/3_2.log 3_2/timestamped_log/3_2-${ts}.log
	set -o pipefail; (coreverify -obj 3_2 -s 1024 -pm 16384) 2>&1 |& tee -a 3_2/3_2.log 3_2/timestamped_log/3_2-${ts}.log

3_3: 1_3
	mkdir -p 3_3/Release
	cp 1_3/Release/1_3.o 3_3/Release/3_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 3_3/scripts/3_3.prx +W bridge,../Release/3_3.o) 2>&1 |& tee -a 3_3/3_3.log 3_3/timestamped_log/3_3-${ts}.log
	set -o pipefail; (coreverify -obj 3_3 -s 1024 -pm 16384) 2>&1 |& tee -a 3_3/3_3.log 3_3/timestamped_log/3_3-${ts}.log

3_5: 1_3
	mkdir -p 3_5/Release
	cp 1_3/Release/1_3.o 3_5/Release/3_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 3_5/scripts/3_5.prx +W bridge,../Release/3_5.o) 2>&1 |& tee -a 3_5/3_5.log 3_5/timestamped_log/3_5-${ts}.log
	set -o pipefail; (coreverify -obj 3_5 -s 1024 -pm 16384) 2>&1 |& tee -a 3_5/3_5.log 3_5/timestamped_log/3_5-${ts}.log

4_4: 1_3
	mkdir -p 4_4/Release
	cp 1_3/Release/1_3.o 4_4/Release/4_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 4_4/scripts/4_4.prx +W bridge,../Release/4_4.o) 2>&1 |& tee -a 4_4/4_4.log 4_4/timestamped_log/4_4-${ts}.log
	set -o pipefail; (coreverify -obj 4_4 -s 1024 -pm 16384) 2>&1 |& tee -a 4_4/4_4.log 4_4/timestamped_log/4_4-${ts}.log

4_6: 1_3
	mkdir -p 4_6/Release
	cp 1_3/Release/1_3.o 4_6/Release/4_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 4_6/scripts/4_6.prx +W bridge,../Release/4_6.o) 2>&1 |& tee -a 4_6/4_6.log 4_6/timestamped_log/4_6-${ts}.log
	set -o pipefail; (coreverify -obj 4_6 -s 1024 -pm 16384) 2>&1 |& tee -a 4_6/4_6.log 4_6/timestamped_log/4_6-${ts}.log

8_1: 1_3
	mkdir -p 8_1/Release
	cp 1_3/Release/1_3.o 8_1/Release/8_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 8_1/scripts/8_1.prx +W bridge,../Release/8_1.o) 2>&1 |& tee -a 8_1/8_1.log 8_1/timestamped_log/8_1-${ts}.log
	set -o pipefail; (coreverify -obj 8_1 -s 1024 -pm 16384) 2>&1 |& tee -a 8_1/8_1.log 8_1/timestamped_log/8_1-${ts}.log

8_5: 1_3
	mkdir -p 8_5/Release
	cp 1_3/Release/1_3.o 8_5/Release/8_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 8_5/scripts/8_5.prx +W bridge,../Release/8_5.o) 2>&1 |& tee -a 8_5/8_5.log 8_5/timestamped_log/8_5-${ts}.log
	set -o pipefail; (coreverify -obj 8_5 -s 1024 -pm 16384) 2>&1 |& tee -a 8_5/8_5.log 8_5/timestamped_log/8_5-${ts}.log

9_2: 1_3
	mkdir -p 9_2/Release
	cp 1_3/Release/1_3.o 9_2/Release/9_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 9_2/scripts/9_2.prx +W bridge,../Release/9_2.o) 2>&1 |& tee -a 9_2/9_2.log 9_2/timestamped_log/9_2-${ts}.log
	set -o pipefail; (coreverify -obj 9_2 -s 1024 -pm 16384) 2>&1 |& tee -a 9_2/9_2.log 9_2/timestamped_log/9_2-${ts}.log

9_6: 1_3
	mkdir -p 9_6/Release
	cp 1_3/Release/1_3.o 9_6/Release/9_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 9_6/scripts/9_6.prx +W bridge,../Release/9_6.o) 2>&1 |& tee -a 9_6/9_6.log 9_6/timestamped_log/9_6-${ts}.log
	set -o pipefail; (coreverify -obj 9_6 -s 1024 -pm 16384) 2>&1 |& tee -a 9_6/9_6.log 9_6/timestamped_log/9_6-${ts}.log

12_0: 1_3
	mkdir -p 12_0/Release
	cp 1_3/Release/1_3.o 12_0/Release/12_0.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 12_0/scripts/12_0.prx +W bridge,../Release/12_0.o) 2>&1 |& tee -a 12_0/12_0.log 12_0/timestamped_log/12_0-${ts}.log
	set -o pipefail; (coreverify -obj 12_0 -s 1024 -pm 16384) 2>&1 |& tee -a 12_0/12_0.log 12_0/timestamped_log/12_0-${ts}.log

13_1: 1_3
	mkdir -p 13_1/Release
	cp 1_3/Release/1_3.o 13_1/Release/13_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 13_1/scripts/13_1.prx +W bridge,../Release/13_1.o) 2>&1 |& tee -a 13_1/13_1.log 13_1/timestamped_log/13_1-${ts}.log
	set -o pipefail; (coreverify -obj 13_1 -s 1024 -pm 16384) 2>&1 |& tee -a 13_1/13_1.log 13_1/timestamped_log/13_1-${ts}.log

13_3: 1_3
	mkdir -p 13_3/Release
	cp 1_3/Release/1_3.o 13_3/Release/13_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 13_3/scripts/13_3.prx +W bridge,../Release/13_3.o) 2>&1 |& tee -a 13_3/13_3.log 13_3/timestamped_log/13_3-${ts}.log
	set -o pipefail; (coreverify -obj 13_3 -s 1024 -pm 16384) 2>&1 |& tee -a 13_3/13_3.log 13_3/timestamped_log/13_3-${ts}.log

13_5: 1_3
	mkdir -p 13_5/Release
	cp 1_3/Release/1_3.o 13_5/Release/13_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 13_5/scripts/13_5.prx +W bridge,../Release/13_5.o) 2>&1 |& tee -a 13_5/13_5.log 13_5/timestamped_log/13_5-${ts}.log
	set -o pipefail; (coreverify -obj 13_5 -s 1024 -pm 16384) 2>&1 |& tee -a 13_5/13_5.log 13_5/timestamped_log/13_5-${ts}.log

14_2: 1_3
	mkdir -p 14_2/Release
	cp 1_3/Release/1_3.o 14_2/Release/14_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 14_2/scripts/14_2.prx +W bridge,../Release/14_2.o) 2>&1 |& tee -a 14_2/14_2.log 14_2/timestamped_log/14_2-${ts}.log
	set -o pipefail; (coreverify -obj 14_2 -s 1024 -pm 16384) 2>&1 |& tee -a 14_2/14_2.log 14_2/timestamped_log/14_2-${ts}.log

14_4: 1_3
	mkdir -p 14_4/Release
	cp 1_3/Release/1_3.o 14_4/Release/14_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 14_4/scripts/14_4.prx +W bridge,../Release/14_4.o) 2>&1 |& tee -a 14_4/14_4.log 14_4/timestamped_log/14_4-${ts}.log
	set -o pipefail; (coreverify -obj 14_4 -s 1024 -pm 16384) 2>&1 |& tee -a 14_4/14_4.log 14_4/timestamped_log/14_4-${ts}.log

14_6: 1_3
	mkdir -p 14_6/Release
	cp 1_3/Release/1_3.o 14_6/Release/14_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 14_6/scripts/14_6.prx +W bridge,../Release/14_6.o) 2>&1 |& tee -a 14_6/14_6.log 14_6/timestamped_log/14_6-${ts}.log
	set -o pipefail; (coreverify -obj 14_6 -s 1024 -pm 16384) 2>&1 |& tee -a 14_6/14_6.log 14_6/timestamped_log/14_6-${ts}.log

21_0: 1_3
	mkdir -p 21_0/Release
	cp 1_3/Release/1_3.o 21_0/Release/21_0.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 21_0/scripts/21_0.prx +W bridge,../Release/21_0.o) 2>&1 |& tee -a 21_0/21_0.log 21_0/timestamped_log/21_0-${ts}.log
	set -o pipefail; (coreverify -obj 21_0 -s 1024 -pm 16384) 2>&1 |& tee -a 21_0/21_0.log 21_0/timestamped_log/21_0-${ts}.log

22_1: 1_3
	mkdir -p 22_1/Release
	cp 1_3/Release/1_3.o 22_1/Release/22_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 22_1/scripts/22_1.prx +W bridge,../Release/22_1.o) 2>&1 |& tee -a 22_1/22_1.log 22_1/timestamped_log/22_1-${ts}.log
	set -o pipefail; (coreverify -obj 22_1 -s 1024 -pm 16384) 2>&1 |& tee -a 22_1/22_1.log 22_1/timestamped_log/22_1-${ts}.log

22_3: 1_3
	mkdir -p 22_3/Release
	cp 1_3/Release/1_3.o 22_3/Release/22_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 22_3/scripts/22_3.prx +W bridge,../Release/22_3.o) 2>&1 |& tee -a 22_3/22_3.log 22_3/timestamped_log/22_3-${ts}.log
	set -o pipefail; (coreverify -obj 22_3 -s 1024 -pm 16384) 2>&1 |& tee -a 22_3/22_3.log 22_3/timestamped_log/22_3-${ts}.log

22_5: 1_3
	mkdir -p 22_5/Release
	cp 1_3/Release/1_3.o 22_5/Release/22_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 22_5/scripts/22_5.prx +W bridge,../Release/22_5.o) 2>&1 |& tee -a 22_5/22_5.log 22_5/timestamped_log/22_5-${ts}.log
	set -o pipefail; (coreverify -obj 22_5 -s 1024 -pm 16384) 2>&1 |& tee -a 22_5/22_5.log 22_5/timestamped_log/22_5-${ts}.log

23_2: 1_3
	mkdir -p 23_2/Release
	cp 1_3/Release/1_3.o 23_2/Release/23_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 23_2/scripts/23_2.prx +W bridge,../Release/23_2.o) 2>&1 |& tee -a 23_2/23_2.log 23_2/timestamped_log/23_2-${ts}.log
	set -o pipefail; (coreverify -obj 23_2 -s 1024 -pm 16384) 2>&1 |& tee -a 23_2/23_2.log 23_2/timestamped_log/23_2-${ts}.log

23_4: 1_3
	mkdir -p 23_4/Release
	cp 1_3/Release/1_3.o 23_4/Release/23_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 23_4/scripts/23_4.prx +W bridge,../Release/23_4.o) 2>&1 |& tee -a 23_4/23_4.log 23_4/timestamped_log/23_4-${ts}.log
	set -o pipefail; (coreverify -obj 23_4 -s 1024 -pm 16384) 2>&1 |& tee -a 23_4/23_4.log 23_4/timestamped_log/23_4-${ts}.log

23_6: 1_3
	mkdir -p 23_6/Release
	cp 1_3/Release/1_3.o 23_6/Release/23_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 23_6/scripts/23_6.prx +W bridge,../Release/23_6.o) 2>&1 |& tee -a 23_6/23_6.log 23_6/timestamped_log/23_6-${ts}.log
	set -o pipefail; (coreverify -obj 23_6 -s 1024 -pm 16384) 2>&1 |& tee -a 23_6/23_6.log 23_6/timestamped_log/23_6-${ts}.log

2_1: 1_5
	mkdir -p 2_1/Release
	cp 1_5/Release/1_5.o 2_1/Release/2_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 2_1/scripts/2_1.prx +W bridge,../Release/2_1.o) 2>&1 |& tee -a 2_1/2_1.log 2_1/timestamped_log/2_1-${ts}.log
	set -o pipefail; (coreverify -obj 2_1 -s 1024 -pm 16384) 2>&1 |& tee -a 2_1/2_1.log 2_1/timestamped_log/2_1-${ts}.log

2_4: 1_5
	mkdir -p 2_4/Release
	cp 1_5/Release/1_5.o 2_4/Release/2_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 2_4/scripts/2_4.prx +W bridge,../Release/2_4.o) 2>&1 |& tee -a 2_4/2_4.log 2_4/timestamped_log/2_4-${ts}.log
	set -o pipefail; (coreverify -obj 2_4 -s 1024 -pm 16384) 2>&1 |& tee -a 2_4/2_4.log 2_4/timestamped_log/2_4-${ts}.log

2_5: 1_5
	mkdir -p 2_5/Release
	cp 1_5/Release/1_5.o 2_5/Release/2_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 2_5/scripts/2_5.prx +W bridge,../Release/2_5.o) 2>&1 |& tee -a 2_5/2_5.log 2_5/timestamped_log/2_5-${ts}.log
	set -o pipefail; (coreverify -obj 2_5 -s 1024 -pm 16384) 2>&1 |& tee -a 2_5/2_5.log 2_5/timestamped_log/2_5-${ts}.log

2_6: 1_5
	mkdir -p 2_6/Release
	cp 1_5/Release/1_5.o 2_6/Release/2_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 2_6/scripts/2_6.prx +W bridge,../Release/2_6.o) 2>&1 |& tee -a 2_6/2_6.log 2_6/timestamped_log/2_6-${ts}.log
	set -o pipefail; (coreverify -obj 2_6 -s 1024 -pm 16384) 2>&1 |& tee -a 2_6/2_6.log 2_6/timestamped_log/2_6-${ts}.log

3_4: 1_5
	mkdir -p 3_4/Release
	cp 1_5/Release/1_5.o 3_4/Release/3_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 3_4/scripts/3_4.prx +W bridge,../Release/3_4.o) 2>&1 |& tee -a 3_4/3_4.log 3_4/timestamped_log/3_4-${ts}.log
	set -o pipefail; (coreverify -obj 3_4 -s 1024 -pm 16384) 2>&1 |& tee -a 3_4/3_4.log 3_4/timestamped_log/3_4-${ts}.log

3_6: 1_5
	mkdir -p 3_6/Release
	cp 1_5/Release/1_5.o 3_6/Release/3_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 3_6/scripts/3_6.prx +W bridge,../Release/3_6.o) 2>&1 |& tee -a 3_6/3_6.log 3_6/timestamped_log/3_6-${ts}.log
	set -o pipefail; (coreverify -obj 3_6 -s 1024 -pm 16384) 2>&1 |& tee -a 3_6/3_6.log 3_6/timestamped_log/3_6-${ts}.log

6_1: 1_5
	mkdir -p 6_1/Release
	cp 1_5/Release/1_5.o 6_1/Release/6_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 6_1/scripts/6_1.prx +W bridge,../Release/6_1.o) 2>&1 |& tee -a 6_1/6_1.log 6_1/timestamped_log/6_1-${ts}.log
	set -o pipefail; (coreverify -obj 6_1 -s 1024 -pm 16384) 2>&1 |& tee -a 6_1/6_1.log 6_1/timestamped_log/6_1-${ts}.log

6_5: 1_5
	mkdir -p 6_5/Release
	cp 1_5/Release/1_5.o 6_5/Release/6_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 6_5/scripts/6_5.prx +W bridge,../Release/6_5.o) 2>&1 |& tee -a 6_5/6_5.log 6_5/timestamped_log/6_5-${ts}.log
	set -o pipefail; (coreverify -obj 6_5 -s 1024 -pm 16384) 2>&1 |& tee -a 6_5/6_5.log 6_5/timestamped_log/6_5-${ts}.log

7_1: 1_5
	mkdir -p 7_1/Release
	cp 1_5/Release/1_5.o 7_1/Release/7_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 7_1/scripts/7_1.prx +W bridge,../Release/7_1.o) 2>&1 |& tee -a 7_1/7_1.log 7_1/timestamped_log/7_1-${ts}.log
	set -o pipefail; (coreverify -obj 7_1 -s 1024 -pm 16384) 2>&1 |& tee -a 7_1/7_1.log 7_1/timestamped_log/7_1-${ts}.log

7_2: 1_5
	mkdir -p 7_2/Release
	cp 1_5/Release/1_5.o 7_2/Release/7_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 7_2/scripts/7_2.prx +W bridge,../Release/7_2.o) 2>&1 |& tee -a 7_2/7_2.log 7_2/timestamped_log/7_2-${ts}.log
	set -o pipefail; (coreverify -obj 7_2 -s 1024 -pm 16384) 2>&1 |& tee -a 7_2/7_2.log 7_2/timestamped_log/7_2-${ts}.log

7_5: 1_5
	mkdir -p 7_5/Release
	cp 1_5/Release/1_5.o 7_5/Release/7_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 7_5/scripts/7_5.prx +W bridge,../Release/7_5.o) 2>&1 |& tee -a 7_5/7_5.log 7_5/timestamped_log/7_5-${ts}.log
	set -o pipefail; (coreverify -obj 7_5 -s 1024 -pm 16384) 2>&1 |& tee -a 7_5/7_5.log 7_5/timestamped_log/7_5-${ts}.log

7_6: 1_5
	mkdir -p 7_6/Release
	cp 1_5/Release/1_5.o 7_6/Release/7_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 7_6/scripts/7_6.prx +W bridge,../Release/7_6.o) 2>&1 |& tee -a 7_6/7_6.log 7_6/timestamped_log/7_6-${ts}.log
	set -o pipefail; (coreverify -obj 7_6 -s 1024 -pm 16384) 2>&1 |& tee -a 7_6/7_6.log 7_6/timestamped_log/7_6-${ts}.log

8_2: 1_5
	mkdir -p 8_2/Release
	cp 1_5/Release/1_5.o 8_2/Release/8_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 8_2/scripts/8_2.prx +W bridge,../Release/8_2.o) 2>&1 |& tee -a 8_2/8_2.log 8_2/timestamped_log/8_2-${ts}.log
	set -o pipefail; (coreverify -obj 8_2 -s 1024 -pm 16384) 2>&1 |& tee -a 8_2/8_2.log 8_2/timestamped_log/8_2-${ts}.log

8_6: 1_5
	mkdir -p 8_6/Release
	cp 1_5/Release/1_5.o 8_6/Release/8_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 8_6/scripts/8_6.prx +W bridge,../Release/8_6.o) 2>&1 |& tee -a 8_6/8_6.log 8_6/timestamped_log/8_6-${ts}.log
	set -o pipefail; (coreverify -obj 8_6 -s 1024 -pm 16384) 2>&1 |& tee -a 8_6/8_6.log 8_6/timestamped_log/8_6-${ts}.log

11_1: 1_5
	mkdir -p 11_1/Release
	cp 1_5/Release/1_5.o 11_1/Release/11_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 11_1/scripts/11_1.prx +W bridge,../Release/11_1.o) 2>&1 |& tee -a 11_1/11_1.log 11_1/timestamped_log/11_1-${ts}.log
	set -o pipefail; (coreverify -obj 11_1 -s 1024 -pm 16384) 2>&1 |& tee -a 11_1/11_1.log 11_1/timestamped_log/11_1-${ts}.log

11_3: 1_5
	mkdir -p 11_3/Release
	cp 1_5/Release/1_5.o 11_3/Release/11_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 11_3/scripts/11_3.prx +W bridge,../Release/11_3.o) 2>&1 |& tee -a 11_3/11_3.log 11_3/timestamped_log/11_3-${ts}.log
	set -o pipefail; (coreverify -obj 11_3 -s 1024 -pm 16384) 2>&1 |& tee -a 11_3/11_3.log 11_3/timestamped_log/11_3-${ts}.log

11_5: 1_5
	mkdir -p 11_5/Release
	cp 1_5/Release/1_5.o 11_5/Release/11_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 11_5/scripts/11_5.prx +W bridge,../Release/11_5.o) 2>&1 |& tee -a 11_5/11_5.log 11_5/timestamped_log/11_5-${ts}.log
	set -o pipefail; (coreverify -obj 11_5 -s 1024 -pm 16384) 2>&1 |& tee -a 11_5/11_5.log 11_5/timestamped_log/11_5-${ts}.log

12_1: 1_5
	mkdir -p 12_1/Release
	cp 1_5/Release/1_5.o 12_1/Release/12_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 12_1/scripts/12_1.prx +W bridge,../Release/12_1.o) 2>&1 |& tee -a 12_1/12_1.log 12_1/timestamped_log/12_1-${ts}.log
	set -o pipefail; (coreverify -obj 12_1 -s 1024 -pm 16384) 2>&1 |& tee -a 12_1/12_1.log 12_1/timestamped_log/12_1-${ts}.log

12_2: 1_5
	mkdir -p 12_2/Release
	cp 1_5/Release/1_5.o 12_2/Release/12_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 12_2/scripts/12_2.prx +W bridge,../Release/12_2.o) 2>&1 |& tee -a 12_2/12_2.log 12_2/timestamped_log/12_2-${ts}.log
	set -o pipefail; (coreverify -obj 12_2 -s 1024 -pm 16384) 2>&1 |& tee -a 12_2/12_2.log 12_2/timestamped_log/12_2-${ts}.log

12_3: 1_5
	mkdir -p 12_3/Release
	cp 1_5/Release/1_5.o 12_3/Release/12_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 12_3/scripts/12_3.prx +W bridge,../Release/12_3.o) 2>&1 |& tee -a 12_3/12_3.log 12_3/timestamped_log/12_3-${ts}.log
	set -o pipefail; (coreverify -obj 12_3 -s 1024 -pm 16384) 2>&1 |& tee -a 12_3/12_3.log 12_3/timestamped_log/12_3-${ts}.log

12_4: 1_5
	mkdir -p 12_4/Release
	cp 1_5/Release/1_5.o 12_4/Release/12_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 12_4/scripts/12_4.prx +W bridge,../Release/12_4.o) 2>&1 |& tee -a 12_4/12_4.log 12_4/timestamped_log/12_4-${ts}.log
	set -o pipefail; (coreverify -obj 12_4 -s 1024 -pm 16384) 2>&1 |& tee -a 12_4/12_4.log 12_4/timestamped_log/12_4-${ts}.log

12_5: 1_5
	mkdir -p 12_5/Release
	cp 1_5/Release/1_5.o 12_5/Release/12_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 12_5/scripts/12_5.prx +W bridge,../Release/12_5.o) 2>&1 |& tee -a 12_5/12_5.log 12_5/timestamped_log/12_5-${ts}.log
	set -o pipefail; (coreverify -obj 12_5 -s 1024 -pm 16384) 2>&1 |& tee -a 12_5/12_5.log 12_5/timestamped_log/12_5-${ts}.log

12_6: 1_5
	mkdir -p 12_6/Release
	cp 1_5/Release/1_5.o 12_6/Release/12_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 12_6/scripts/12_6.prx +W bridge,../Release/12_6.o) 2>&1 |& tee -a 12_6/12_6.log 12_6/timestamped_log/12_6-${ts}.log
	set -o pipefail; (coreverify -obj 12_6 -s 1024 -pm 16384) 2>&1 |& tee -a 12_6/12_6.log 12_6/timestamped_log/12_6-${ts}.log

13_2: 1_5
	mkdir -p 13_2/Release
	cp 1_5/Release/1_5.o 13_2/Release/13_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 13_2/scripts/13_2.prx +W bridge,../Release/13_2.o) 2>&1 |& tee -a 13_2/13_2.log 13_2/timestamped_log/13_2-${ts}.log
	set -o pipefail; (coreverify -obj 13_2 -s 1024 -pm 16384) 2>&1 |& tee -a 13_2/13_2.log 13_2/timestamped_log/13_2-${ts}.log

13_4: 1_5
	mkdir -p 13_4/Release
	cp 1_5/Release/1_5.o 13_4/Release/13_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 13_4/scripts/13_4.prx +W bridge,../Release/13_4.o) 2>&1 |& tee -a 13_4/13_4.log 13_4/timestamped_log/13_4-${ts}.log
	set -o pipefail; (coreverify -obj 13_4 -s 1024 -pm 16384) 2>&1 |& tee -a 13_4/13_4.log 13_4/timestamped_log/13_4-${ts}.log

13_6: 1_5
	mkdir -p 13_6/Release
	cp 1_5/Release/1_5.o 13_6/Release/13_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 13_6/scripts/13_6.prx +W bridge,../Release/13_6.o) 2>&1 |& tee -a 13_6/13_6.log 13_6/timestamped_log/13_6-${ts}.log
	set -o pipefail; (coreverify -obj 13_6 -s 1024 -pm 16384) 2>&1 |& tee -a 13_6/13_6.log 13_6/timestamped_log/13_6-${ts}.log

20_1: 1_5
	mkdir -p 20_1/Release
	cp 1_5/Release/1_5.o 20_1/Release/20_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 20_1/scripts/20_1.prx +W bridge,../Release/20_1.o) 2>&1 |& tee -a 20_1/20_1.log 20_1/timestamped_log/20_1-${ts}.log
	set -o pipefail; (coreverify -obj 20_1 -s 1024 -pm 16384) 2>&1 |& tee -a 20_1/20_1.log 20_1/timestamped_log/20_1-${ts}.log

20_3: 1_5
	mkdir -p 20_3/Release
	cp 1_5/Release/1_5.o 20_3/Release/20_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 20_3/scripts/20_3.prx +W bridge,../Release/20_3.o) 2>&1 |& tee -a 20_3/20_3.log 20_3/timestamped_log/20_3-${ts}.log
	set -o pipefail; (coreverify -obj 20_3 -s 1024 -pm 16384) 2>&1 |& tee -a 20_3/20_3.log 20_3/timestamped_log/20_3-${ts}.log

20_5: 1_5
	mkdir -p 20_5/Release
	cp 1_5/Release/1_5.o 20_5/Release/20_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 20_5/scripts/20_5.prx +W bridge,../Release/20_5.o) 2>&1 |& tee -a 20_5/20_5.log 20_5/timestamped_log/20_5-${ts}.log
	set -o pipefail; (coreverify -obj 20_5 -s 1024 -pm 16384) 2>&1 |& tee -a 20_5/20_5.log 20_5/timestamped_log/20_5-${ts}.log

21_1: 1_5
	mkdir -p 21_1/Release
	cp 1_5/Release/1_5.o 21_1/Release/21_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 21_1/scripts/21_1.prx +W bridge,../Release/21_1.o) 2>&1 |& tee -a 21_1/21_1.log 21_1/timestamped_log/21_1-${ts}.log
	set -o pipefail; (coreverify -obj 21_1 -s 1024 -pm 16384) 2>&1 |& tee -a 21_1/21_1.log 21_1/timestamped_log/21_1-${ts}.log

21_2: 1_5
	mkdir -p 21_2/Release
	cp 1_5/Release/1_5.o 21_2/Release/21_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 21_2/scripts/21_2.prx +W bridge,../Release/21_2.o) 2>&1 |& tee -a 21_2/21_2.log 21_2/timestamped_log/21_2-${ts}.log
	set -o pipefail; (coreverify -obj 21_2 -s 1024 -pm 16384) 2>&1 |& tee -a 21_2/21_2.log 21_2/timestamped_log/21_2-${ts}.log

21_3: 1_5
	mkdir -p 21_3/Release
	cp 1_5/Release/1_5.o 21_3/Release/21_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 21_3/scripts/21_3.prx +W bridge,../Release/21_3.o) 2>&1 |& tee -a 21_3/21_3.log 21_3/timestamped_log/21_3-${ts}.log
	set -o pipefail; (coreverify -obj 21_3 -s 1024 -pm 16384) 2>&1 |& tee -a 21_3/21_3.log 21_3/timestamped_log/21_3-${ts}.log

21_4: 1_5
	mkdir -p 21_4/Release
	cp 1_5/Release/1_5.o 21_4/Release/21_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 21_4/scripts/21_4.prx +W bridge,../Release/21_4.o) 2>&1 |& tee -a 21_4/21_4.log 21_4/timestamped_log/21_4-${ts}.log
	set -o pipefail; (coreverify -obj 21_4 -s 1024 -pm 16384) 2>&1 |& tee -a 21_4/21_4.log 21_4/timestamped_log/21_4-${ts}.log

21_5: 1_5
	mkdir -p 21_5/Release
	cp 1_5/Release/1_5.o 21_5/Release/21_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 21_5/scripts/21_5.prx +W bridge,../Release/21_5.o) 2>&1 |& tee -a 21_5/21_5.log 21_5/timestamped_log/21_5-${ts}.log
	set -o pipefail; (coreverify -obj 21_5 -s 1024 -pm 16384) 2>&1 |& tee -a 21_5/21_5.log 21_5/timestamped_log/21_5-${ts}.log

21_6: 1_5
	mkdir -p 21_6/Release
	cp 1_5/Release/1_5.o 21_6/Release/21_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 21_6/scripts/21_6.prx +W bridge,../Release/21_6.o) 2>&1 |& tee -a 21_6/21_6.log 21_6/timestamped_log/21_6-${ts}.log
	set -o pipefail; (coreverify -obj 21_6 -s 1024 -pm 16384) 2>&1 |& tee -a 21_6/21_6.log 21_6/timestamped_log/21_6-${ts}.log

22_2: 1_5
	mkdir -p 22_2/Release
	cp 1_5/Release/1_5.o 22_2/Release/22_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 22_2/scripts/22_2.prx +W bridge,../Release/22_2.o) 2>&1 |& tee -a 22_2/22_2.log 22_2/timestamped_log/22_2-${ts}.log
	set -o pipefail; (coreverify -obj 22_2 -s 1024 -pm 16384) 2>&1 |& tee -a 22_2/22_2.log 22_2/timestamped_log/22_2-${ts}.log

22_4: 1_5
	mkdir -p 22_4/Release
	cp 1_5/Release/1_5.o 22_4/Release/22_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 22_4/scripts/22_4.prx +W bridge,../Release/22_4.o) 2>&1 |& tee -a 22_4/22_4.log 22_4/timestamped_log/22_4-${ts}.log
	set -o pipefail; (coreverify -obj 22_4 -s 1024 -pm 16384) 2>&1 |& tee -a 22_4/22_4.log 22_4/timestamped_log/22_4-${ts}.log

22_6: 1_5
	mkdir -p 22_6/Release
	cp 1_5/Release/1_5.o 22_6/Release/22_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 22_6/scripts/22_6.prx +W bridge,../Release/22_6.o) 2>&1 |& tee -a 22_6/22_6.log 22_6/timestamped_log/22_6-${ts}.log
	set -o pipefail; (coreverify -obj 22_6 -s 1024 -pm 16384) 2>&1 |& tee -a 22_6/22_6.log 22_6/timestamped_log/22_6-${ts}.log

4_0: 3_0
	mkdir -p 4_0/Release
	cp 3_0/Release/3_0.o 4_0/Release/4_0.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 4_0/scripts/4_0.prx +W bridge,../Release/4_0.o) 2>&1 |& tee -a 4_0/4_0.log 4_0/timestamped_log/4_0-${ts}.log
	set -o pipefail; (coreverify -obj 4_0 -s 1024 -pm 16384) 2>&1 |& tee -a 4_0/4_0.log 4_0/timestamped_log/4_0-${ts}.log

13_0: 4_2
	mkdir -p 13_0/Release
	cp 4_2/Release/4_2.o 13_0/Release/13_0.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 13_0/scripts/13_0.prx +W bridge,../Release/13_0.o) 2>&1 |& tee -a 13_0/13_0.log 13_0/timestamped_log/13_0-${ts}.log
	set -o pipefail; (coreverify -obj 13_0 -s 1024 -pm 16384) 2>&1 |& tee -a 13_0/13_0.log 13_0/timestamped_log/13_0-${ts}.log

4_5: 4_3
	mkdir -p 4_5/Release
	cp 4_3/Release/4_3.o 4_5/Release/4_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 4_5/scripts/4_5.prx +W bridge,../Release/4_5.o) 2>&1 |& tee -a 4_5/4_5.log 4_5/timestamped_log/4_5-${ts}.log
	set -o pipefail; (coreverify -obj 4_5 -s 1024 -pm 16384) 2>&1 |& tee -a 4_5/4_5.log 4_5/timestamped_log/4_5-${ts}.log

9_1: 4_3
	mkdir -p 9_1/Release
	cp 4_3/Release/4_3.o 9_1/Release/9_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 9_1/scripts/9_1.prx +W bridge,../Release/9_1.o) 2>&1 |& tee -a 9_1/9_1.log 9_1/timestamped_log/9_1-${ts}.log
	set -o pipefail; (coreverify -obj 9_1 -s 1024 -pm 16384) 2>&1 |& tee -a 9_1/9_1.log 9_1/timestamped_log/9_1-${ts}.log

9_5: 4_3
	mkdir -p 9_5/Release
	cp 4_3/Release/4_3.o 9_5/Release/9_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 9_5/scripts/9_5.prx +W bridge,../Release/9_5.o) 2>&1 |& tee -a 9_5/9_5.log 9_5/timestamped_log/9_5-${ts}.log
	set -o pipefail; (coreverify -obj 9_5 -s 1024 -pm 16384) 2>&1 |& tee -a 9_5/9_5.log 9_5/timestamped_log/9_5-${ts}.log

14_1: 4_3
	mkdir -p 14_1/Release
	cp 4_3/Release/4_3.o 14_1/Release/14_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 14_1/scripts/14_1.prx +W bridge,../Release/14_1.o) 2>&1 |& tee -a 14_1/14_1.log 14_1/timestamped_log/14_1-${ts}.log
	set -o pipefail; (coreverify -obj 14_1 -s 1024 -pm 16384) 2>&1 |& tee -a 14_1/14_1.log 14_1/timestamped_log/14_1-${ts}.log

14_3: 4_3
	mkdir -p 14_3/Release
	cp 4_3/Release/4_3.o 14_3/Release/14_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 14_3/scripts/14_3.prx +W bridge,../Release/14_3.o) 2>&1 |& tee -a 14_3/14_3.log 14_3/timestamped_log/14_3-${ts}.log
	set -o pipefail; (coreverify -obj 14_3 -s 1024 -pm 16384) 2>&1 |& tee -a 14_3/14_3.log 14_3/timestamped_log/14_3-${ts}.log

14_5: 4_3
	mkdir -p 14_5/Release
	cp 4_3/Release/4_3.o 14_5/Release/14_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 14_5/scripts/14_5.prx +W bridge,../Release/14_5.o) 2>&1 |& tee -a 14_5/14_5.log 14_5/timestamped_log/14_5-${ts}.log
	set -o pipefail; (coreverify -obj 14_5 -s 1024 -pm 16384) 2>&1 |& tee -a 14_5/14_5.log 14_5/timestamped_log/14_5-${ts}.log

23_1: 4_3
	mkdir -p 23_1/Release
	cp 4_3/Release/4_3.o 23_1/Release/23_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 23_1/scripts/23_1.prx +W bridge,../Release/23_1.o) 2>&1 |& tee -a 23_1/23_1.log 23_1/timestamped_log/23_1-${ts}.log
	set -o pipefail; (coreverify -obj 23_1 -s 1024 -pm 16384) 2>&1 |& tee -a 23_1/23_1.log 23_1/timestamped_log/23_1-${ts}.log

23_3: 4_3
	mkdir -p 23_3/Release
	cp 4_3/Release/4_3.o 23_3/Release/23_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 23_3/scripts/23_3.prx +W bridge,../Release/23_3.o) 2>&1 |& tee -a 23_3/23_3.log 23_3/timestamped_log/23_3-${ts}.log
	set -o pipefail; (coreverify -obj 23_3 -s 1024 -pm 16384) 2>&1 |& tee -a 23_3/23_3.log 23_3/timestamped_log/23_3-${ts}.log

23_5: 4_3
	mkdir -p 23_5/Release
	cp 4_3/Release/4_3.o 23_5/Release/23_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 23_5/scripts/23_5.prx +W bridge,../Release/23_5.o) 2>&1 |& tee -a 23_5/23_5.log 23_5/timestamped_log/23_5-${ts}.log
	set -o pipefail; (coreverify -obj 23_5 -s 1024 -pm 16384) 2>&1 |& tee -a 23_5/23_5.log 23_5/timestamped_log/23_5-${ts}.log

7_0: 6_0
	mkdir -p 7_0/Release
	cp 6_0/Release/6_0.o 7_0/Release/7_0.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 7_0/scripts/7_0.prx +W bridge,../Release/7_0.o) 2>&1 |& tee -a 7_0/7_0.log 7_0/timestamped_log/7_0-${ts}.log
	set -o pipefail; (coreverify -obj 7_0 -s 1024 -pm 16384) 2>&1 |& tee -a 7_0/7_0.log 7_0/timestamped_log/7_0-${ts}.log

8_0: 6_0
	mkdir -p 8_0/Release
	cp 6_0/Release/6_0.o 8_0/Release/8_0.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 8_0/scripts/8_0.prx +W bridge,../Release/8_0.o) 2>&1 |& tee -a 8_0/8_0.log 8_0/timestamped_log/8_0-${ts}.log
	set -o pipefail; (coreverify -obj 8_0 -s 1024 -pm 16384) 2>&1 |& tee -a 8_0/8_0.log 8_0/timestamped_log/8_0-${ts}.log

11_0: 6_0
	mkdir -p 11_0/Release
	cp 6_0/Release/6_0.o 11_0/Release/11_0.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 11_0/scripts/11_0.prx +W bridge,../Release/11_0.o) 2>&1 |& tee -a 11_0/11_0.log 11_0/timestamped_log/11_0-${ts}.log
	set -o pipefail; (coreverify -obj 11_0 -s 1024 -pm 16384) 2>&1 |& tee -a 11_0/11_0.log 11_0/timestamped_log/11_0-${ts}.log

20_0: 6_0
	mkdir -p 20_0/Release
	cp 6_0/Release/6_0.o 20_0/Release/20_0.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 20_0/scripts/20_0.prx +W bridge,../Release/20_0.o) 2>&1 |& tee -a 20_0/20_0.log 20_0/timestamped_log/20_0-${ts}.log
	set -o pipefail; (coreverify -obj 20_0 -s 1024 -pm 16384) 2>&1 |& tee -a 20_0/20_0.log 20_0/timestamped_log/20_0-${ts}.log

7_3: 6_3
	mkdir -p 7_3/Release
	cp 6_3/Release/6_3.o 7_3/Release/7_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 7_3/scripts/7_3.prx +W bridge,../Release/7_3.o) 2>&1 |& tee -a 7_3/7_3.log 7_3/timestamped_log/7_3-${ts}.log
	set -o pipefail; (coreverify -obj 7_3 -s 1024 -pm 16384) 2>&1 |& tee -a 7_3/7_3.log 7_3/timestamped_log/7_3-${ts}.log

8_4: 7_4
	mkdir -p 8_4/Release
	cp 7_4/Release/7_4.o 8_4/Release/8_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 8_4/scripts/8_4.prx +W bridge,../Release/8_4.o) 2>&1 |& tee -a 8_4/8_4.log 8_4/timestamped_log/8_4-${ts}.log
	set -o pipefail; (coreverify -obj 8_4 -s 1024 -pm 16384) 2>&1 |& tee -a 8_4/8_4.log 8_4/timestamped_log/8_4-${ts}.log

14_0: 9_0
	mkdir -p 14_0/Release
	cp 9_0/Release/9_0.o 14_0/Release/14_0.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 14_0/scripts/14_0.prx +W bridge,../Release/14_0.o) 2>&1 |& tee -a 14_0/14_0.log 14_0/timestamped_log/14_0-${ts}.log
	set -o pipefail; (coreverify -obj 14_0 -s 1024 -pm 16384) 2>&1 |& tee -a 14_0/14_0.log 14_0/timestamped_log/14_0-${ts}.log

22_0: 9_0
	mkdir -p 22_0/Release
	cp 9_0/Release/9_0.o 22_0/Release/22_0.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 22_0/scripts/22_0.prx +W bridge,../Release/22_0.o) 2>&1 |& tee -a 22_0/22_0.log 22_0/timestamped_log/22_0-${ts}.log
	set -o pipefail; (coreverify -obj 22_0 -s 1024 -pm 16384) 2>&1 |& tee -a 22_0/22_0.log 22_0/timestamped_log/22_0-${ts}.log

23_0: 9_0
	mkdir -p 23_0/Release
	cp 9_0/Release/9_0.o 23_0/Release/23_0.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 23_0/scripts/23_0.prx +W bridge,../Release/23_0.o) 2>&1 |& tee -a 23_0/23_0.log 23_0/timestamped_log/23_0-${ts}.log
	set -o pipefail; (coreverify -obj 23_0 -s 1024 -pm 16384) 2>&1 |& tee -a 23_0/23_0.log 23_0/timestamped_log/23_0-${ts}.log

clean:
	(rm -rf 0_0/Release)
	(rm -rf 0_1/Release)
	(rm -rf 0_2/Release)
	(rm -rf 0_3/Release)
	(rm -rf 1_0/Release)
	(rm -rf 1_1/Release)
	(rm -rf 1_2/Release)
	(rm -rf 1_3/Release)
	(rm -rf 1_4/Release)
	(rm -rf 1_5/Release)
	(rm -rf 1_6/Release)
	(rm -rf 2_0/Release)
	(rm -rf 2_1/Release)
	(rm -rf 2_2/Release)
	(rm -rf 2_3/Release)
	(rm -rf 2_4/Release)
	(rm -rf 2_5/Release)
	(rm -rf 2_6/Release)
	(rm -rf 3_0/Release)
	(rm -rf 3_1/Release)
	(rm -rf 3_2/Release)
	(rm -rf 3_3/Release)
	(rm -rf 3_4/Release)
	(rm -rf 3_5/Release)
	(rm -rf 3_6/Release)
	(rm -rf 4_0/Release)
	(rm -rf 4_1/Release)
	(rm -rf 4_2/Release)
	(rm -rf 4_3/Release)
	(rm -rf 4_4/Release)
	(rm -rf 4_5/Release)
	(rm -rf 4_6/Release)
	(rm -rf 6_0/Release)
	(rm -rf 6_1/Release)
	(rm -rf 6_2/Release)
	(rm -rf 6_3/Release)
	(rm -rf 6_4/Release)
	(rm -rf 6_5/Release)
	(rm -rf 6_6/Release)
	(rm -rf 7_0/Release)
	(rm -rf 7_1/Release)
	(rm -rf 7_2/Release)
	(rm -rf 7_3/Release)
	(rm -rf 7_4/Release)
	(rm -rf 7_5/Release)
	(rm -rf 7_6/Release)
	(rm -rf 8_0/Release)
	(rm -rf 8_1/Release)
	(rm -rf 8_2/Release)
	(rm -rf 8_3/Release)
	(rm -rf 8_4/Release)
	(rm -rf 8_5/Release)
	(rm -rf 8_6/Release)
	(rm -rf 9_0/Release)
	(rm -rf 9_1/Release)
	(rm -rf 9_2/Release)
	(rm -rf 9_3/Release)
	(rm -rf 9_4/Release)
	(rm -rf 9_5/Release)
	(rm -rf 9_6/Release)
	(rm -rf 11_0/Release)
	(rm -rf 11_1/Release)
	(rm -rf 11_2/Release)
	(rm -rf 11_3/Release)
	(rm -rf 11_4/Release)
	(rm -rf 11_5/Release)
	(rm -rf 11_6/Release)
	(rm -rf 12_0/Release)
	(rm -rf 12_1/Release)
	(rm -rf 12_2/Release)
	(rm -rf 12_3/Release)
	(rm -rf 12_4/Release)
	(rm -rf 12_5/Release)
	(rm -rf 12_6/Release)
	(rm -rf 13_0/Release)
	(rm -rf 13_1/Release)
	(rm -rf 13_2/Release)
	(rm -rf 13_3/Release)
	(rm -rf 13_4/Release)
	(rm -rf 13_5/Release)
	(rm -rf 13_6/Release)
	(rm -rf 14_0/Release)
	(rm -rf 14_1/Release)
	(rm -rf 14_2/Release)
	(rm -rf 14_3/Release)
	(rm -rf 14_4/Release)
	(rm -rf 14_5/Release)
	(rm -rf 14_6/Release)
	(rm -rf 20_0/Release)
	(rm -rf 20_1/Release)
	(rm -rf 20_2/Release)
	(rm -rf 20_3/Release)
	(rm -rf 20_4/Release)
	(rm -rf 20_5/Release)
	(rm -rf 20_6/Release)
	(rm -rf 21_0/Release)
	(rm -rf 21_1/Release)
	(rm -rf 21_2/Release)
	(rm -rf 21_3/Release)
	(rm -rf 21_4/Release)
	(rm -rf 21_5/Release)
	(rm -rf 21_6/Release)
	(rm -rf 22_0/Release)
	(rm -rf 22_1/Release)
	(rm -rf 22_2/Release)
	(rm -rf 22_3/Release)
	(rm -rf 22_4/Release)
	(rm -rf 22_5/Release)
	(rm -rf 22_6/Release)
	(rm -rf 23_0/Release)
	(rm -rf 23_1/Release)
	(rm -rf 23_2/Release)
	(rm -rf 23_3/Release)
	(rm -rf 23_4/Release)
	(rm -rf 23_5/Release)
	(rm -rf 23_6/Release)
