SHELL=/bin/bash 
.PHONY: all 0_0 0_1 0_2 0_3 0_4 0_5 0_6 0_7 1_0 1_1 1_2 1_3 1_4 1_5 1_6 2_0 2_1 2_2 2_3 2_4 2_5 2_6 3_0 3_1 3_2 3_3 3_4 3_5 3_6 4_0 4_1 4_2 4_3 4_4 4_5 4_6 5_0 5_1 5_2 5_3 5_4 5_5 5_6 6_0 6_1 6_2 6_3 6_4 6_5 6_6 7_0 7_1 7_2 7_3 7_4 7_5 7_6 8_0 8_1 8_2 8_3 8_4 8_5 8_6 9_0 9_1 9_2 9_3 9_4 9_5 9_6 10_0 10_1 10_2 10_3 10_4 10_5 10_6 11_0 11_1 11_2 11_3 11_4 11_5 11_6 12_5 12_6 12_7 13_1 13_2 13_3 13_4 13_5 13_6 13_7 14_1 14_2 14_3 14_4 14_5 14_6 14_7 15_1 15_2 15_3 15_4 15_5 15_6 15_7 16_1 16_2 16_3 16_4 16_5 16_6 16_7 17_1 17_2 17_3 17_4 17_5 17_6 17_7 18_1 18_2 18_3 18_4 18_5 18_6 18_7 19_1 19_2 19_3 19_4 19_5 19_6 19_7 20_1 20_2 20_3 20_4 20_5 20_6 20_7 21_1 21_2 21_3 21_4 21_5 21_6 21_7 22_1 22_2 22_3 22_4 22_5 22_6 22_7 23_1 23_2 23_3 23_4 23_5 23_6 23_7 25_0 25_1 25_2 25_3 25_4 25_5 25_6 26_0 26_1 26_2 26_3 26_4 26_5 26_6 27_0 27_1 27_2 27_3 27_4 27_5 27_6 28_0 28_1 28_2 28_3 28_4 28_5 28_6 29_0 29_1 29_2 29_3 29_4 29_5 29_6 30_0 30_1 30_2 30_3 30_4 30_5 30_6 31_0 31_1 31_2 31_3 31_4 31_5 31_6 32_0 32_1 32_2 32_3 32_4 32_5 32_6 33_0 33_1 33_2 33_3 33_4 33_5 33_6 34_0 34_1 34_2 34_3 34_4 34_5 34_6 35_0 35_1 35_2 35_3 35_4 35_5 35_6 clean

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
all: 0_0 0_1 0_2 0_3 0_4 0_5 0_6 0_7 1_0 1_1 1_2 1_3 1_4 1_5 1_6 2_0 2_1 2_2 2_3 2_4 2_5 2_6 3_0 3_1 3_2 3_3 3_4 3_5 3_6 4_0 4_1 4_2 4_3 4_4 4_5 4_6 5_0 5_1 5_2 5_3 5_4 5_5 5_6 6_0 6_1 6_2 6_3 6_4 6_5 6_6 7_0 7_1 7_2 7_3 7_4 7_5 7_6 8_0 8_1 8_2 8_3 8_4 8_5 8_6 9_0 9_1 9_2 9_3 9_4 9_5 9_6 10_0 10_1 10_2 10_3 10_4 10_5 10_6 11_0 11_1 11_2 11_3 11_4 11_5 11_6 12_5 12_6 12_7 13_1 13_2 13_3 13_4 13_5 13_6 13_7 14_1 14_2 14_3 14_4 14_5 14_6 14_7 15_1 15_2 15_3 15_4 15_5 15_6 15_7 16_1 16_2 16_3 16_4 16_5 16_6 16_7 17_1 17_2 17_3 17_4 17_5 17_6 17_7 18_1 18_2 18_3 18_4 18_5 18_6 18_7 19_1 19_2 19_3 19_4 19_5 19_6 19_7 20_1 20_2 20_3 20_4 20_5 20_6 20_7 21_1 21_2 21_3 21_4 21_5 21_6 21_7 22_1 22_2 22_3 22_4 22_5 22_6 22_7 23_1 23_2 23_3 23_4 23_5 23_6 23_7 25_0 25_1 25_2 25_3 25_4 25_5 25_6 26_0 26_1 26_2 26_3 26_4 26_5 26_6 27_0 27_1 27_2 27_3 27_4 27_5 27_6 28_0 28_1 28_2 28_3 28_4 28_5 28_6 29_0 29_1 29_2 29_3 29_4 29_5 29_6 30_0 30_1 30_2 30_3 30_4 30_5 30_6 31_0 31_1 31_2 31_3 31_4 31_5 31_6 32_0 32_1 32_2 32_3 32_4 32_5 32_6 33_0 33_1 33_2 33_3 33_4 33_5 33_6 34_0 34_1 34_2 34_3 34_4 34_5 34_6 35_0 35_1 35_2 35_3 35_4 35_5 35_6 

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
0_5:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 0_5/scripts/0_5.prx) 2>&1 |& tee -a 0_5/0_5.log 0_5/timestamped_log/0_5-${ts}.log
	set -o pipefail; (coreverify -obj 0_5 -s 1024 -pm 16384) 2>&1 |& tee -a 0_5/0_5.log 0_5/timestamped_log/0_5-${ts}.log
	(readelf --debug-dump=decodedline 0_5/Release/0_5 >> 0_5/Release/0_5.txt)
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
1_4:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 1_4/scripts/1_4.prx) 2>&1 |& tee -a 1_4/1_4.log 1_4/timestamped_log/1_4-${ts}.log
	set -o pipefail; (coreverify -obj 1_4 -s 1024 -pm 16384) 2>&1 |& tee -a 1_4/1_4.log 1_4/timestamped_log/1_4-${ts}.log
	(readelf --debug-dump=decodedline 1_4/Release/1_4 >> 1_4/Release/1_4.txt)
1_6:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 1_6/scripts/1_6.prx) 2>&1 |& tee -a 1_6/1_6.log 1_6/timestamped_log/1_6-${ts}.log
	set -o pipefail; (coreverify -obj 1_6 -s 1024 -pm 16384) 2>&1 |& tee -a 1_6/1_6.log 1_6/timestamped_log/1_6-${ts}.log
	(readelf --debug-dump=decodedline 1_6/Release/1_6 >> 1_6/Release/1_6.txt)
2_0:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 2_0/scripts/2_0.prx) 2>&1 |& tee -a 2_0/2_0.log 2_0/timestamped_log/2_0-${ts}.log
	set -o pipefail; (coreverify -obj 2_0 -s 1024 -pm 16384) 2>&1 |& tee -a 2_0/2_0.log 2_0/timestamped_log/2_0-${ts}.log
	(readelf --debug-dump=decodedline 2_0/Release/2_0 >> 2_0/Release/2_0.txt)
2_1:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 2_1/scripts/2_1.prx) 2>&1 |& tee -a 2_1/2_1.log 2_1/timestamped_log/2_1-${ts}.log
	set -o pipefail; (coreverify -obj 2_1 -s 1024 -pm 16384) 2>&1 |& tee -a 2_1/2_1.log 2_1/timestamped_log/2_1-${ts}.log
	(readelf --debug-dump=decodedline 2_1/Release/2_1 >> 2_1/Release/2_1.txt)
2_4:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 2_4/scripts/2_4.prx) 2>&1 |& tee -a 2_4/2_4.log 2_4/timestamped_log/2_4-${ts}.log
	set -o pipefail; (coreverify -obj 2_4 -s 1024 -pm 16384) 2>&1 |& tee -a 2_4/2_4.log 2_4/timestamped_log/2_4-${ts}.log
	(readelf --debug-dump=decodedline 2_4/Release/2_4 >> 2_4/Release/2_4.txt)
3_0:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 3_0/scripts/3_0.prx) 2>&1 |& tee -a 3_0/3_0.log 3_0/timestamped_log/3_0-${ts}.log
	set -o pipefail; (coreverify -obj 3_0 -s 1024 -pm 16384) 2>&1 |& tee -a 3_0/3_0.log 3_0/timestamped_log/3_0-${ts}.log
	(readelf --debug-dump=decodedline 3_0/Release/3_0 >> 3_0/Release/3_0.txt)
4_0:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 4_0/scripts/4_0.prx) 2>&1 |& tee -a 4_0/4_0.log 4_0/timestamped_log/4_0-${ts}.log
	set -o pipefail; (coreverify -obj 4_0 -s 1024 -pm 16384) 2>&1 |& tee -a 4_0/4_0.log 4_0/timestamped_log/4_0-${ts}.log
	(readelf --debug-dump=decodedline 4_0/Release/4_0 >> 4_0/Release/4_0.txt)
5_3:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 5_3/scripts/5_3.prx) 2>&1 |& tee -a 5_3/5_3.log 5_3/timestamped_log/5_3-${ts}.log
	set -o pipefail; (coreverify -obj 5_3 -s 1024 -pm 16384) 2>&1 |& tee -a 5_3/5_3.log 5_3/timestamped_log/5_3-${ts}.log
	(readelf --debug-dump=decodedline 5_3/Release/5_3 >> 5_3/Release/5_3.txt)
5_4:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 5_4/scripts/5_4.prx) 2>&1 |& tee -a 5_4/5_4.log 5_4/timestamped_log/5_4-${ts}.log
	set -o pipefail; (coreverify -obj 5_4 -s 1024 -pm 16384) 2>&1 |& tee -a 5_4/5_4.log 5_4/timestamped_log/5_4-${ts}.log
	(readelf --debug-dump=decodedline 5_4/Release/5_4 >> 5_4/Release/5_4.txt)
6_0:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 6_0/scripts/6_0.prx) 2>&1 |& tee -a 6_0/6_0.log 6_0/timestamped_log/6_0-${ts}.log
	set -o pipefail; (coreverify -obj 6_0 -s 1024 -pm 16384) 2>&1 |& tee -a 6_0/6_0.log 6_0/timestamped_log/6_0-${ts}.log
	(readelf --debug-dump=decodedline 6_0/Release/6_0 >> 6_0/Release/6_0.txt)
7_0:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 7_0/scripts/7_0.prx) 2>&1 |& tee -a 7_0/7_0.log 7_0/timestamped_log/7_0-${ts}.log
	set -o pipefail; (coreverify -obj 7_0 -s 1024 -pm 16384) 2>&1 |& tee -a 7_0/7_0.log 7_0/timestamped_log/7_0-${ts}.log
	(readelf --debug-dump=decodedline 7_0/Release/7_0 >> 7_0/Release/7_0.txt)
8_0:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 8_0/scripts/8_0.prx) 2>&1 |& tee -a 8_0/8_0.log 8_0/timestamped_log/8_0-${ts}.log
	set -o pipefail; (coreverify -obj 8_0 -s 1024 -pm 16384) 2>&1 |& tee -a 8_0/8_0.log 8_0/timestamped_log/8_0-${ts}.log
	(readelf --debug-dump=decodedline 8_0/Release/8_0 >> 8_0/Release/8_0.txt)
10_0:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 10_0/scripts/10_0.prx) 2>&1 |& tee -a 10_0/10_0.log 10_0/timestamped_log/10_0-${ts}.log
	set -o pipefail; (coreverify -obj 10_0 -s 1024 -pm 16384) 2>&1 |& tee -a 10_0/10_0.log 10_0/timestamped_log/10_0-${ts}.log
	(readelf --debug-dump=decodedline 10_0/Release/10_0 >> 10_0/Release/10_0.txt)
10_3:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 10_3/scripts/10_3.prx) 2>&1 |& tee -a 10_3/10_3.log 10_3/timestamped_log/10_3-${ts}.log
	set -o pipefail; (coreverify -obj 10_3 -s 1024 -pm 16384) 2>&1 |& tee -a 10_3/10_3.log 10_3/timestamped_log/10_3-${ts}.log
	(readelf --debug-dump=decodedline 10_3/Release/10_3 >> 10_3/Release/10_3.txt)
11_0:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 11_0/scripts/11_0.prx) 2>&1 |& tee -a 11_0/11_0.log 11_0/timestamped_log/11_0-${ts}.log
	set -o pipefail; (coreverify -obj 11_0 -s 1024 -pm 16384) 2>&1 |& tee -a 11_0/11_0.log 11_0/timestamped_log/11_0-${ts}.log
	(readelf --debug-dump=decodedline 11_0/Release/11_0 >> 11_0/Release/11_0.txt)
11_1:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 11_1/scripts/11_1.prx) 2>&1 |& tee -a 11_1/11_1.log 11_1/timestamped_log/11_1-${ts}.log
	set -o pipefail; (coreverify -obj 11_1 -s 1024 -pm 16384) 2>&1 |& tee -a 11_1/11_1.log 11_1/timestamped_log/11_1-${ts}.log
	(readelf --debug-dump=decodedline 11_1/Release/11_1 >> 11_1/Release/11_1.txt)
11_3:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 11_3/scripts/11_3.prx) 2>&1 |& tee -a 11_3/11_3.log 11_3/timestamped_log/11_3-${ts}.log
	set -o pipefail; (coreverify -obj 11_3 -s 1024 -pm 16384) 2>&1 |& tee -a 11_3/11_3.log 11_3/timestamped_log/11_3-${ts}.log
	(readelf --debug-dump=decodedline 11_3/Release/11_3 >> 11_3/Release/11_3.txt)
12_5:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 12_5/scripts/12_5.prx) 2>&1 |& tee -a 12_5/12_5.log 12_5/timestamped_log/12_5-${ts}.log
	set -o pipefail; (coreverify -obj 12_5 -s 1024 -pm 16384) 2>&1 |& tee -a 12_5/12_5.log 12_5/timestamped_log/12_5-${ts}.log
	(readelf --debug-dump=decodedline 12_5/Release/12_5 >> 12_5/Release/12_5.txt)
12_6:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 12_6/scripts/12_6.prx) 2>&1 |& tee -a 12_6/12_6.log 12_6/timestamped_log/12_6-${ts}.log
	set -o pipefail; (coreverify -obj 12_6 -s 1024 -pm 16384) 2>&1 |& tee -a 12_6/12_6.log 12_6/timestamped_log/12_6-${ts}.log
	(readelf --debug-dump=decodedline 12_6/Release/12_6 >> 12_6/Release/12_6.txt)
12_7:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 12_7/scripts/12_7.prx) 2>&1 |& tee -a 12_7/12_7.log 12_7/timestamped_log/12_7-${ts}.log
	set -o pipefail; (coreverify -obj 12_7 -s 1024 -pm 16384) 2>&1 |& tee -a 12_7/12_7.log 12_7/timestamped_log/12_7-${ts}.log
	(readelf --debug-dump=decodedline 12_7/Release/12_7 >> 12_7/Release/12_7.txt)
13_1:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 13_1/scripts/13_1.prx) 2>&1 |& tee -a 13_1/13_1.log 13_1/timestamped_log/13_1-${ts}.log
	set -o pipefail; (coreverify -obj 13_1 -s 1024 -pm 16384) 2>&1 |& tee -a 13_1/13_1.log 13_1/timestamped_log/13_1-${ts}.log
	(readelf --debug-dump=decodedline 13_1/Release/13_1 >> 13_1/Release/13_1.txt)
13_2:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 13_2/scripts/13_2.prx) 2>&1 |& tee -a 13_2/13_2.log 13_2/timestamped_log/13_2-${ts}.log
	set -o pipefail; (coreverify -obj 13_2 -s 1024 -pm 16384) 2>&1 |& tee -a 13_2/13_2.log 13_2/timestamped_log/13_2-${ts}.log
	(readelf --debug-dump=decodedline 13_2/Release/13_2 >> 13_2/Release/13_2.txt)
13_4:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 13_4/scripts/13_4.prx) 2>&1 |& tee -a 13_4/13_4.log 13_4/timestamped_log/13_4-${ts}.log
	set -o pipefail; (coreverify -obj 13_4 -s 1024 -pm 16384) 2>&1 |& tee -a 13_4/13_4.log 13_4/timestamped_log/13_4-${ts}.log
	(readelf --debug-dump=decodedline 13_4/Release/13_4 >> 13_4/Release/13_4.txt)
13_5:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 13_5/scripts/13_5.prx) 2>&1 |& tee -a 13_5/13_5.log 13_5/timestamped_log/13_5-${ts}.log
	set -o pipefail; (coreverify -obj 13_5 -s 1024 -pm 16384) 2>&1 |& tee -a 13_5/13_5.log 13_5/timestamped_log/13_5-${ts}.log
	(readelf --debug-dump=decodedline 13_5/Release/13_5 >> 13_5/Release/13_5.txt)
13_6:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 13_6/scripts/13_6.prx) 2>&1 |& tee -a 13_6/13_6.log 13_6/timestamped_log/13_6-${ts}.log
	set -o pipefail; (coreverify -obj 13_6 -s 1024 -pm 16384) 2>&1 |& tee -a 13_6/13_6.log 13_6/timestamped_log/13_6-${ts}.log
	(readelf --debug-dump=decodedline 13_6/Release/13_6 >> 13_6/Release/13_6.txt)
13_7:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 13_7/scripts/13_7.prx) 2>&1 |& tee -a 13_7/13_7.log 13_7/timestamped_log/13_7-${ts}.log
	set -o pipefail; (coreverify -obj 13_7 -s 1024 -pm 16384) 2>&1 |& tee -a 13_7/13_7.log 13_7/timestamped_log/13_7-${ts}.log
	(readelf --debug-dump=decodedline 13_7/Release/13_7 >> 13_7/Release/13_7.txt)
14_4:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 14_4/scripts/14_4.prx) 2>&1 |& tee -a 14_4/14_4.log 14_4/timestamped_log/14_4-${ts}.log
	set -o pipefail; (coreverify -obj 14_4 -s 1024 -pm 16384) 2>&1 |& tee -a 14_4/14_4.log 14_4/timestamped_log/14_4-${ts}.log
	(readelf --debug-dump=decodedline 14_4/Release/14_4 >> 14_4/Release/14_4.txt)
14_5:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 14_5/scripts/14_5.prx) 2>&1 |& tee -a 14_5/14_5.log 14_5/timestamped_log/14_5-${ts}.log
	set -o pipefail; (coreverify -obj 14_5 -s 1024 -pm 16384) 2>&1 |& tee -a 14_5/14_5.log 14_5/timestamped_log/14_5-${ts}.log
	(readelf --debug-dump=decodedline 14_5/Release/14_5 >> 14_5/Release/14_5.txt)
14_7:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 14_7/scripts/14_7.prx) 2>&1 |& tee -a 14_7/14_7.log 14_7/timestamped_log/14_7-${ts}.log
	set -o pipefail; (coreverify -obj 14_7 -s 1024 -pm 16384) 2>&1 |& tee -a 14_7/14_7.log 14_7/timestamped_log/14_7-${ts}.log
	(readelf --debug-dump=decodedline 14_7/Release/14_7 >> 14_7/Release/14_7.txt)
15_5:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 15_5/scripts/15_5.prx) 2>&1 |& tee -a 15_5/15_5.log 15_5/timestamped_log/15_5-${ts}.log
	set -o pipefail; (coreverify -obj 15_5 -s 1024 -pm 16384) 2>&1 |& tee -a 15_5/15_5.log 15_5/timestamped_log/15_5-${ts}.log
	(readelf --debug-dump=decodedline 15_5/Release/15_5 >> 15_5/Release/15_5.txt)
23_1:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 23_1/scripts/23_1.prx) 2>&1 |& tee -a 23_1/23_1.log 23_1/timestamped_log/23_1-${ts}.log
	set -o pipefail; (coreverify -obj 23_1 -s 1024 -pm 16384) 2>&1 |& tee -a 23_1/23_1.log 23_1/timestamped_log/23_1-${ts}.log
	(readelf --debug-dump=decodedline 23_1/Release/23_1 >> 23_1/Release/23_1.txt)
23_7:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 23_7/scripts/23_7.prx) 2>&1 |& tee -a 23_7/23_7.log 23_7/timestamped_log/23_7-${ts}.log
	set -o pipefail; (coreverify -obj 23_7 -s 1024 -pm 16384) 2>&1 |& tee -a 23_7/23_7.log 23_7/timestamped_log/23_7-${ts}.log
	(readelf --debug-dump=decodedline 23_7/Release/23_7 >> 23_7/Release/23_7.txt)
25_0:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 25_0/scripts/25_0.prx) 2>&1 |& tee -a 25_0/25_0.log 25_0/timestamped_log/25_0-${ts}.log
	set -o pipefail; (coreverify -obj 25_0 -s 1024 -pm 16384) 2>&1 |& tee -a 25_0/25_0.log 25_0/timestamped_log/25_0-${ts}.log
	(readelf --debug-dump=decodedline 25_0/Release/25_0 >> 25_0/Release/25_0.txt)
26_0:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 26_0/scripts/26_0.prx) 2>&1 |& tee -a 26_0/26_0.log 26_0/timestamped_log/26_0-${ts}.log
	set -o pipefail; (coreverify -obj 26_0 -s 1024 -pm 16384) 2>&1 |& tee -a 26_0/26_0.log 26_0/timestamped_log/26_0-${ts}.log
	(readelf --debug-dump=decodedline 26_0/Release/26_0 >> 26_0/Release/26_0.txt)
27_0:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 27_0/scripts/27_0.prx) 2>&1 |& tee -a 27_0/27_0.log 27_0/timestamped_log/27_0-${ts}.log
	set -o pipefail; (coreverify -obj 27_0 -s 1024 -pm 16384) 2>&1 |& tee -a 27_0/27_0.log 27_0/timestamped_log/27_0-${ts}.log
	(readelf --debug-dump=decodedline 27_0/Release/27_0 >> 27_0/Release/27_0.txt)
29_0:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 29_0/scripts/29_0.prx) 2>&1 |& tee -a 29_0/29_0.log 29_0/timestamped_log/29_0-${ts}.log
	set -o pipefail; (coreverify -obj 29_0 -s 1024 -pm 16384) 2>&1 |& tee -a 29_0/29_0.log 29_0/timestamped_log/29_0-${ts}.log
	(readelf --debug-dump=decodedline 29_0/Release/29_0 >> 29_0/Release/29_0.txt)
33_1:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 33_1/scripts/33_1.prx) 2>&1 |& tee -a 33_1/33_1.log 33_1/timestamped_log/33_1-${ts}.log
	set -o pipefail; (coreverify -obj 33_1 -s 1024 -pm 16384) 2>&1 |& tee -a 33_1/33_1.log 33_1/timestamped_log/33_1-${ts}.log
	(readelf --debug-dump=decodedline 33_1/Release/33_1 >> 33_1/Release/33_1.txt)
34_0:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 34_0/scripts/34_0.prx) 2>&1 |& tee -a 34_0/34_0.log 34_0/timestamped_log/34_0-${ts}.log
	set -o pipefail; (coreverify -obj 34_0 -s 1024 -pm 16384) 2>&1 |& tee -a 34_0/34_0.log 34_0/timestamped_log/34_0-${ts}.log
	(readelf --debug-dump=decodedline 34_0/Release/34_0 >> 34_0/Release/34_0.txt)
34_1:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 34_1/scripts/34_1.prx) 2>&1 |& tee -a 34_1/34_1.log 34_1/timestamped_log/34_1-${ts}.log
	set -o pipefail; (coreverify -obj 34_1 -s 1024 -pm 16384) 2>&1 |& tee -a 34_1/34_1.log 34_1/timestamped_log/34_1-${ts}.log
	(readelf --debug-dump=decodedline 34_1/Release/34_1 >> 34_1/Release/34_1.txt)

0_2: 0_0
	mkdir -p 0_2/Release
	cp 0_0/Release/0_0.o 0_2/Release/0_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 0_2/scripts/0_2.prx +W bridge,../Release/0_2.o) 2>&1 |& tee -a 0_2/0_2.log 0_2/timestamped_log/0_2-${ts}.log
	set -o pipefail; (coreverify -obj 0_2 -s 1024 -pm 16384) 2>&1 |& tee -a 0_2/0_2.log 0_2/timestamped_log/0_2-${ts}.log

0_4: 0_0
	mkdir -p 0_4/Release
	cp 0_0/Release/0_0.o 0_4/Release/0_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 0_4/scripts/0_4.prx +W bridge,../Release/0_4.o) 2>&1 |& tee -a 0_4/0_4.log 0_4/timestamped_log/0_4-${ts}.log
	set -o pipefail; (coreverify -obj 0_4 -s 1024 -pm 16384) 2>&1 |& tee -a 0_4/0_4.log 0_4/timestamped_log/0_4-${ts}.log

0_6: 0_0
	mkdir -p 0_6/Release
	cp 0_0/Release/0_0.o 0_6/Release/0_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 0_6/scripts/0_6.prx +W bridge,../Release/0_6.o) 2>&1 |& tee -a 0_6/0_6.log 0_6/timestamped_log/0_6-${ts}.log
	set -o pipefail; (coreverify -obj 0_6 -s 1024 -pm 16384) 2>&1 |& tee -a 0_6/0_6.log 0_6/timestamped_log/0_6-${ts}.log

0_7: 0_5
	mkdir -p 0_7/Release
	cp 0_5/Release/0_5.o 0_7/Release/0_7.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 0_7/scripts/0_7.prx +W bridge,../Release/0_7.o) 2>&1 |& tee -a 0_7/0_7.log 0_7/timestamped_log/0_7-${ts}.log
	set -o pipefail; (coreverify -obj 0_7 -s 1024 -pm 16384) 2>&1 |& tee -a 0_7/0_7.log 0_7/timestamped_log/0_7-${ts}.log

10_5: 1_1
	mkdir -p 10_5/Release
	cp 1_1/Release/1_1.o 10_5/Release/10_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 10_5/scripts/10_5.prx +W bridge,../Release/10_5.o) 2>&1 |& tee -a 10_5/10_5.log 10_5/timestamped_log/10_5-${ts}.log
	set -o pipefail; (coreverify -obj 10_5 -s 1024 -pm 16384) 2>&1 |& tee -a 10_5/10_5.log 10_5/timestamped_log/10_5-${ts}.log

11_2: 1_1
	mkdir -p 11_2/Release
	cp 1_1/Release/1_1.o 11_2/Release/11_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 11_2/scripts/11_2.prx +W bridge,../Release/11_2.o) 2>&1 |& tee -a 11_2/11_2.log 11_2/timestamped_log/11_2-${ts}.log
	set -o pipefail; (coreverify -obj 11_2 -s 1024 -pm 16384) 2>&1 |& tee -a 11_2/11_2.log 11_2/timestamped_log/11_2-${ts}.log

11_4: 1_1
	mkdir -p 11_4/Release
	cp 1_1/Release/1_1.o 11_4/Release/11_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 11_4/scripts/11_4.prx +W bridge,../Release/11_4.o) 2>&1 |& tee -a 11_4/11_4.log 11_4/timestamped_log/11_4-${ts}.log
	set -o pipefail; (coreverify -obj 11_4 -s 1024 -pm 16384) 2>&1 |& tee -a 11_4/11_4.log 11_4/timestamped_log/11_4-${ts}.log

11_6: 1_1
	mkdir -p 11_6/Release
	cp 1_1/Release/1_1.o 11_6/Release/11_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 11_6/scripts/11_6.prx +W bridge,../Release/11_6.o) 2>&1 |& tee -a 11_6/11_6.log 11_6/timestamped_log/11_6-${ts}.log
	set -o pipefail; (coreverify -obj 11_6 -s 1024 -pm 16384) 2>&1 |& tee -a 11_6/11_6.log 11_6/timestamped_log/11_6-${ts}.log

34_3: 1_1
	mkdir -p 34_3/Release
	cp 1_1/Release/1_1.o 34_3/Release/34_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 34_3/scripts/34_3.prx +W bridge,../Release/34_3.o) 2>&1 |& tee -a 34_3/34_3.log 34_3/timestamped_log/34_3-${ts}.log
	set -o pipefail; (coreverify -obj 34_3 -s 1024 -pm 16384) 2>&1 |& tee -a 34_3/34_3.log 34_3/timestamped_log/34_3-${ts}.log

34_5: 1_1
	mkdir -p 34_5/Release
	cp 1_1/Release/1_1.o 34_5/Release/34_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 34_5/scripts/34_5.prx +W bridge,../Release/34_5.o) 2>&1 |& tee -a 34_5/34_5.log 34_5/timestamped_log/34_5-${ts}.log
	set -o pipefail; (coreverify -obj 34_5 -s 1024 -pm 16384) 2>&1 |& tee -a 34_5/34_5.log 34_5/timestamped_log/34_5-${ts}.log

35_2: 1_1
	mkdir -p 35_2/Release
	cp 1_1/Release/1_1.o 35_2/Release/35_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 35_2/scripts/35_2.prx +W bridge,../Release/35_2.o) 2>&1 |& tee -a 35_2/35_2.log 35_2/timestamped_log/35_2-${ts}.log
	set -o pipefail; (coreverify -obj 35_2 -s 1024 -pm 16384) 2>&1 |& tee -a 35_2/35_2.log 35_2/timestamped_log/35_2-${ts}.log

35_4: 1_1
	mkdir -p 35_4/Release
	cp 1_1/Release/1_1.o 35_4/Release/35_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 35_4/scripts/35_4.prx +W bridge,../Release/35_4.o) 2>&1 |& tee -a 35_4/35_4.log 35_4/timestamped_log/35_4-${ts}.log
	set -o pipefail; (coreverify -obj 35_4 -s 1024 -pm 16384) 2>&1 |& tee -a 35_4/35_4.log 35_4/timestamped_log/35_4-${ts}.log

35_6: 1_1
	mkdir -p 35_6/Release
	cp 1_1/Release/1_1.o 35_6/Release/35_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 35_6/scripts/35_6.prx +W bridge,../Release/35_6.o) 2>&1 |& tee -a 35_6/35_6.log 35_6/timestamped_log/35_6-${ts}.log
	set -o pipefail; (coreverify -obj 35_6 -s 1024 -pm 16384) 2>&1 |& tee -a 35_6/35_6.log 35_6/timestamped_log/35_6-${ts}.log

25_2: 1_2
	mkdir -p 25_2/Release
	cp 1_2/Release/1_2.o 25_2/Release/25_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 25_2/scripts/25_2.prx +W bridge,../Release/25_2.o) 2>&1 |& tee -a 25_2/25_2.log 25_2/timestamped_log/25_2-${ts}.log
	set -o pipefail; (coreverify -obj 25_2 -s 1024 -pm 16384) 2>&1 |& tee -a 25_2/25_2.log 25_2/timestamped_log/25_2-${ts}.log

25_4: 1_2
	mkdir -p 25_4/Release
	cp 1_2/Release/1_2.o 25_4/Release/25_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 25_4/scripts/25_4.prx +W bridge,../Release/25_4.o) 2>&1 |& tee -a 25_4/25_4.log 25_4/timestamped_log/25_4-${ts}.log
	set -o pipefail; (coreverify -obj 25_4 -s 1024 -pm 16384) 2>&1 |& tee -a 25_4/25_4.log 25_4/timestamped_log/25_4-${ts}.log

25_6: 1_2
	mkdir -p 25_6/Release
	cp 1_2/Release/1_2.o 25_6/Release/25_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 25_6/scripts/25_6.prx +W bridge,../Release/25_6.o) 2>&1 |& tee -a 25_6/25_6.log 25_6/timestamped_log/25_6-${ts}.log
	set -o pipefail; (coreverify -obj 25_6 -s 1024 -pm 16384) 2>&1 |& tee -a 25_6/25_6.log 25_6/timestamped_log/25_6-${ts}.log

1_5: 1_3
	mkdir -p 1_5/Release
	cp 1_3/Release/1_3.o 1_5/Release/1_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 1_5/scripts/1_5.prx +W bridge,../Release/1_5.o) 2>&1 |& tee -a 1_5/1_5.log 1_5/timestamped_log/1_5-${ts}.log
	set -o pipefail; (coreverify -obj 1_5 -s 1024 -pm 16384) 2>&1 |& tee -a 1_5/1_5.log 1_5/timestamped_log/1_5-${ts}.log

2_2: 1_3
	mkdir -p 2_2/Release
	cp 1_3/Release/1_3.o 2_2/Release/2_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 2_2/scripts/2_2.prx +W bridge,../Release/2_2.o) 2>&1 |& tee -a 2_2/2_2.log 2_2/timestamped_log/2_2-${ts}.log
	set -o pipefail; (coreverify -obj 2_2 -s 1024 -pm 16384) 2>&1 |& tee -a 2_2/2_2.log 2_2/timestamped_log/2_2-${ts}.log

2_3: 1_3
	mkdir -p 2_3/Release
	cp 1_3/Release/1_3.o 2_3/Release/2_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 2_3/scripts/2_3.prx +W bridge,../Release/2_3.o) 2>&1 |& tee -a 2_3/2_3.log 2_3/timestamped_log/2_3-${ts}.log
	set -o pipefail; (coreverify -obj 2_3 -s 1024 -pm 16384) 2>&1 |& tee -a 2_3/2_3.log 2_3/timestamped_log/2_3-${ts}.log

2_5: 1_3
	mkdir -p 2_5/Release
	cp 1_3/Release/1_3.o 2_5/Release/2_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 2_5/scripts/2_5.prx +W bridge,../Release/2_5.o) 2>&1 |& tee -a 2_5/2_5.log 2_5/timestamped_log/2_5-${ts}.log
	set -o pipefail; (coreverify -obj 2_5 -s 1024 -pm 16384) 2>&1 |& tee -a 2_5/2_5.log 2_5/timestamped_log/2_5-${ts}.log

2_6: 1_3
	mkdir -p 2_6/Release
	cp 1_3/Release/1_3.o 2_6/Release/2_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 2_6/scripts/2_6.prx +W bridge,../Release/2_6.o) 2>&1 |& tee -a 2_6/2_6.log 2_6/timestamped_log/2_6-${ts}.log
	set -o pipefail; (coreverify -obj 2_6 -s 1024 -pm 16384) 2>&1 |& tee -a 2_6/2_6.log 2_6/timestamped_log/2_6-${ts}.log

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

3_6: 1_3
	mkdir -p 3_6/Release
	cp 1_3/Release/1_3.o 3_6/Release/3_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 3_6/scripts/3_6.prx +W bridge,../Release/3_6.o) 2>&1 |& tee -a 3_6/3_6.log 3_6/timestamped_log/3_6-${ts}.log
	set -o pipefail; (coreverify -obj 3_6 -s 1024 -pm 16384) 2>&1 |& tee -a 3_6/3_6.log 3_6/timestamped_log/3_6-${ts}.log

4_2: 1_3
	mkdir -p 4_2/Release
	cp 1_3/Release/1_3.o 4_2/Release/4_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 4_2/scripts/4_2.prx +W bridge,../Release/4_2.o) 2>&1 |& tee -a 4_2/4_2.log 4_2/timestamped_log/4_2-${ts}.log
	set -o pipefail; (coreverify -obj 4_2 -s 1024 -pm 16384) 2>&1 |& tee -a 4_2/4_2.log 4_2/timestamped_log/4_2-${ts}.log

4_3: 1_3
	mkdir -p 4_3/Release
	cp 1_3/Release/1_3.o 4_3/Release/4_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 4_3/scripts/4_3.prx +W bridge,../Release/4_3.o) 2>&1 |& tee -a 4_3/4_3.log 4_3/timestamped_log/4_3-${ts}.log
	set -o pipefail; (coreverify -obj 4_3 -s 1024 -pm 16384) 2>&1 |& tee -a 4_3/4_3.log 4_3/timestamped_log/4_3-${ts}.log

4_5: 1_3
	mkdir -p 4_5/Release
	cp 1_3/Release/1_3.o 4_5/Release/4_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 4_5/scripts/4_5.prx +W bridge,../Release/4_5.o) 2>&1 |& tee -a 4_5/4_5.log 4_5/timestamped_log/4_5-${ts}.log
	set -o pipefail; (coreverify -obj 4_5 -s 1024 -pm 16384) 2>&1 |& tee -a 4_5/4_5.log 4_5/timestamped_log/4_5-${ts}.log

4_6: 1_3
	mkdir -p 4_6/Release
	cp 1_3/Release/1_3.o 4_6/Release/4_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 4_6/scripts/4_6.prx +W bridge,../Release/4_6.o) 2>&1 |& tee -a 4_6/4_6.log 4_6/timestamped_log/4_6-${ts}.log
	set -o pipefail; (coreverify -obj 4_6 -s 1024 -pm 16384) 2>&1 |& tee -a 4_6/4_6.log 4_6/timestamped_log/4_6-${ts}.log

5_2: 1_3
	mkdir -p 5_2/Release
	cp 1_3/Release/1_3.o 5_2/Release/5_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 5_2/scripts/5_2.prx +W bridge,../Release/5_2.o) 2>&1 |& tee -a 5_2/5_2.log 5_2/timestamped_log/5_2-${ts}.log
	set -o pipefail; (coreverify -obj 5_2 -s 1024 -pm 16384) 2>&1 |& tee -a 5_2/5_2.log 5_2/timestamped_log/5_2-${ts}.log

5_5: 1_3
	mkdir -p 5_5/Release
	cp 1_3/Release/1_3.o 5_5/Release/5_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 5_5/scripts/5_5.prx +W bridge,../Release/5_5.o) 2>&1 |& tee -a 5_5/5_5.log 5_5/timestamped_log/5_5-${ts}.log
	set -o pipefail; (coreverify -obj 5_5 -s 1024 -pm 16384) 2>&1 |& tee -a 5_5/5_5.log 5_5/timestamped_log/5_5-${ts}.log

5_6: 1_3
	mkdir -p 5_6/Release
	cp 1_3/Release/1_3.o 5_6/Release/5_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 5_6/scripts/5_6.prx +W bridge,../Release/5_6.o) 2>&1 |& tee -a 5_6/5_6.log 5_6/timestamped_log/5_6-${ts}.log
	set -o pipefail; (coreverify -obj 5_6 -s 1024 -pm 16384) 2>&1 |& tee -a 5_6/5_6.log 5_6/timestamped_log/5_6-${ts}.log

6_2: 1_3
	mkdir -p 6_2/Release
	cp 1_3/Release/1_3.o 6_2/Release/6_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 6_2/scripts/6_2.prx +W bridge,../Release/6_2.o) 2>&1 |& tee -a 6_2/6_2.log 6_2/timestamped_log/6_2-${ts}.log
	set -o pipefail; (coreverify -obj 6_2 -s 1024 -pm 16384) 2>&1 |& tee -a 6_2/6_2.log 6_2/timestamped_log/6_2-${ts}.log

6_5: 1_3
	mkdir -p 6_5/Release
	cp 1_3/Release/1_3.o 6_5/Release/6_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 6_5/scripts/6_5.prx +W bridge,../Release/6_5.o) 2>&1 |& tee -a 6_5/6_5.log 6_5/timestamped_log/6_5-${ts}.log
	set -o pipefail; (coreverify -obj 6_5 -s 1024 -pm 16384) 2>&1 |& tee -a 6_5/6_5.log 6_5/timestamped_log/6_5-${ts}.log

6_6: 1_3
	mkdir -p 6_6/Release
	cp 1_3/Release/1_3.o 6_6/Release/6_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 6_6/scripts/6_6.prx +W bridge,../Release/6_6.o) 2>&1 |& tee -a 6_6/6_6.log 6_6/timestamped_log/6_6-${ts}.log
	set -o pipefail; (coreverify -obj 6_6 -s 1024 -pm 16384) 2>&1 |& tee -a 6_6/6_6.log 6_6/timestamped_log/6_6-${ts}.log

7_2: 1_3
	mkdir -p 7_2/Release
	cp 1_3/Release/1_3.o 7_2/Release/7_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 7_2/scripts/7_2.prx +W bridge,../Release/7_2.o) 2>&1 |& tee -a 7_2/7_2.log 7_2/timestamped_log/7_2-${ts}.log
	set -o pipefail; (coreverify -obj 7_2 -s 1024 -pm 16384) 2>&1 |& tee -a 7_2/7_2.log 7_2/timestamped_log/7_2-${ts}.log

7_5: 1_3
	mkdir -p 7_5/Release
	cp 1_3/Release/1_3.o 7_5/Release/7_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 7_5/scripts/7_5.prx +W bridge,../Release/7_5.o) 2>&1 |& tee -a 7_5/7_5.log 7_5/timestamped_log/7_5-${ts}.log
	set -o pipefail; (coreverify -obj 7_5 -s 1024 -pm 16384) 2>&1 |& tee -a 7_5/7_5.log 7_5/timestamped_log/7_5-${ts}.log

7_6: 1_3
	mkdir -p 7_6/Release
	cp 1_3/Release/1_3.o 7_6/Release/7_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 7_6/scripts/7_6.prx +W bridge,../Release/7_6.o) 2>&1 |& tee -a 7_6/7_6.log 7_6/timestamped_log/7_6-${ts}.log
	set -o pipefail; (coreverify -obj 7_6 -s 1024 -pm 16384) 2>&1 |& tee -a 7_6/7_6.log 7_6/timestamped_log/7_6-${ts}.log

8_2: 1_3
	mkdir -p 8_2/Release
	cp 1_3/Release/1_3.o 8_2/Release/8_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 8_2/scripts/8_2.prx +W bridge,../Release/8_2.o) 2>&1 |& tee -a 8_2/8_2.log 8_2/timestamped_log/8_2-${ts}.log
	set -o pipefail; (coreverify -obj 8_2 -s 1024 -pm 16384) 2>&1 |& tee -a 8_2/8_2.log 8_2/timestamped_log/8_2-${ts}.log

8_5: 1_3
	mkdir -p 8_5/Release
	cp 1_3/Release/1_3.o 8_5/Release/8_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 8_5/scripts/8_5.prx +W bridge,../Release/8_5.o) 2>&1 |& tee -a 8_5/8_5.log 8_5/timestamped_log/8_5-${ts}.log
	set -o pipefail; (coreverify -obj 8_5 -s 1024 -pm 16384) 2>&1 |& tee -a 8_5/8_5.log 8_5/timestamped_log/8_5-${ts}.log

8_6: 1_3
	mkdir -p 8_6/Release
	cp 1_3/Release/1_3.o 8_6/Release/8_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 8_6/scripts/8_6.prx +W bridge,../Release/8_6.o) 2>&1 |& tee -a 8_6/8_6.log 8_6/timestamped_log/8_6-${ts}.log
	set -o pipefail; (coreverify -obj 8_6 -s 1024 -pm 16384) 2>&1 |& tee -a 8_6/8_6.log 8_6/timestamped_log/8_6-${ts}.log

9_2: 1_3
	mkdir -p 9_2/Release
	cp 1_3/Release/1_3.o 9_2/Release/9_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 9_2/scripts/9_2.prx +W bridge,../Release/9_2.o) 2>&1 |& tee -a 9_2/9_2.log 9_2/timestamped_log/9_2-${ts}.log
	set -o pipefail; (coreverify -obj 9_2 -s 1024 -pm 16384) 2>&1 |& tee -a 9_2/9_2.log 9_2/timestamped_log/9_2-${ts}.log

9_4: 1_3
	mkdir -p 9_4/Release
	cp 1_3/Release/1_3.o 9_4/Release/9_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 9_4/scripts/9_4.prx +W bridge,../Release/9_4.o) 2>&1 |& tee -a 9_4/9_4.log 9_4/timestamped_log/9_4-${ts}.log
	set -o pipefail; (coreverify -obj 9_4 -s 1024 -pm 16384) 2>&1 |& tee -a 9_4/9_4.log 9_4/timestamped_log/9_4-${ts}.log

9_5: 1_3
	mkdir -p 9_5/Release
	cp 1_3/Release/1_3.o 9_5/Release/9_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 9_5/scripts/9_5.prx +W bridge,../Release/9_5.o) 2>&1 |& tee -a 9_5/9_5.log 9_5/timestamped_log/9_5-${ts}.log
	set -o pipefail; (coreverify -obj 9_5 -s 1024 -pm 16384) 2>&1 |& tee -a 9_5/9_5.log 9_5/timestamped_log/9_5-${ts}.log

9_6: 1_3
	mkdir -p 9_6/Release
	cp 1_3/Release/1_3.o 9_6/Release/9_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 9_6/scripts/9_6.prx +W bridge,../Release/9_6.o) 2>&1 |& tee -a 9_6/9_6.log 9_6/timestamped_log/9_6-${ts}.log
	set -o pipefail; (coreverify -obj 9_6 -s 1024 -pm 16384) 2>&1 |& tee -a 9_6/9_6.log 9_6/timestamped_log/9_6-${ts}.log

10_2: 1_3
	mkdir -p 10_2/Release
	cp 1_3/Release/1_3.o 10_2/Release/10_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 10_2/scripts/10_2.prx +W bridge,../Release/10_2.o) 2>&1 |& tee -a 10_2/10_2.log 10_2/timestamped_log/10_2-${ts}.log
	set -o pipefail; (coreverify -obj 10_2 -s 1024 -pm 16384) 2>&1 |& tee -a 10_2/10_2.log 10_2/timestamped_log/10_2-${ts}.log

10_4: 1_3
	mkdir -p 10_4/Release
	cp 1_3/Release/1_3.o 10_4/Release/10_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 10_4/scripts/10_4.prx +W bridge,../Release/10_4.o) 2>&1 |& tee -a 10_4/10_4.log 10_4/timestamped_log/10_4-${ts}.log
	set -o pipefail; (coreverify -obj 10_4 -s 1024 -pm 16384) 2>&1 |& tee -a 10_4/10_4.log 10_4/timestamped_log/10_4-${ts}.log

10_6: 1_3
	mkdir -p 10_6/Release
	cp 1_3/Release/1_3.o 10_6/Release/10_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 10_6/scripts/10_6.prx +W bridge,../Release/10_6.o) 2>&1 |& tee -a 10_6/10_6.log 10_6/timestamped_log/10_6-${ts}.log
	set -o pipefail; (coreverify -obj 10_6 -s 1024 -pm 16384) 2>&1 |& tee -a 10_6/10_6.log 10_6/timestamped_log/10_6-${ts}.log

25_1: 1_3
	mkdir -p 25_1/Release
	cp 1_3/Release/1_3.o 25_1/Release/25_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 25_1/scripts/25_1.prx +W bridge,../Release/25_1.o) 2>&1 |& tee -a 25_1/25_1.log 25_1/timestamped_log/25_1-${ts}.log
	set -o pipefail; (coreverify -obj 25_1 -s 1024 -pm 16384) 2>&1 |& tee -a 25_1/25_1.log 25_1/timestamped_log/25_1-${ts}.log

25_3: 1_3
	mkdir -p 25_3/Release
	cp 1_3/Release/1_3.o 25_3/Release/25_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 25_3/scripts/25_3.prx +W bridge,../Release/25_3.o) 2>&1 |& tee -a 25_3/25_3.log 25_3/timestamped_log/25_3-${ts}.log
	set -o pipefail; (coreverify -obj 25_3 -s 1024 -pm 16384) 2>&1 |& tee -a 25_3/25_3.log 25_3/timestamped_log/25_3-${ts}.log

25_5: 1_3
	mkdir -p 25_5/Release
	cp 1_3/Release/1_3.o 25_5/Release/25_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 25_5/scripts/25_5.prx +W bridge,../Release/25_5.o) 2>&1 |& tee -a 25_5/25_5.log 25_5/timestamped_log/25_5-${ts}.log
	set -o pipefail; (coreverify -obj 25_5 -s 1024 -pm 16384) 2>&1 |& tee -a 25_5/25_5.log 25_5/timestamped_log/25_5-${ts}.log

26_1: 1_3
	mkdir -p 26_1/Release
	cp 1_3/Release/1_3.o 26_1/Release/26_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 26_1/scripts/26_1.prx +W bridge,../Release/26_1.o) 2>&1 |& tee -a 26_1/26_1.log 26_1/timestamped_log/26_1-${ts}.log
	set -o pipefail; (coreverify -obj 26_1 -s 1024 -pm 16384) 2>&1 |& tee -a 26_1/26_1.log 26_1/timestamped_log/26_1-${ts}.log

26_2: 1_3
	mkdir -p 26_2/Release
	cp 1_3/Release/1_3.o 26_2/Release/26_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 26_2/scripts/26_2.prx +W bridge,../Release/26_2.o) 2>&1 |& tee -a 26_2/26_2.log 26_2/timestamped_log/26_2-${ts}.log
	set -o pipefail; (coreverify -obj 26_2 -s 1024 -pm 16384) 2>&1 |& tee -a 26_2/26_2.log 26_2/timestamped_log/26_2-${ts}.log

26_3: 1_3
	mkdir -p 26_3/Release
	cp 1_3/Release/1_3.o 26_3/Release/26_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 26_3/scripts/26_3.prx +W bridge,../Release/26_3.o) 2>&1 |& tee -a 26_3/26_3.log 26_3/timestamped_log/26_3-${ts}.log
	set -o pipefail; (coreverify -obj 26_3 -s 1024 -pm 16384) 2>&1 |& tee -a 26_3/26_3.log 26_3/timestamped_log/26_3-${ts}.log

26_4: 1_3
	mkdir -p 26_4/Release
	cp 1_3/Release/1_3.o 26_4/Release/26_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 26_4/scripts/26_4.prx +W bridge,../Release/26_4.o) 2>&1 |& tee -a 26_4/26_4.log 26_4/timestamped_log/26_4-${ts}.log
	set -o pipefail; (coreverify -obj 26_4 -s 1024 -pm 16384) 2>&1 |& tee -a 26_4/26_4.log 26_4/timestamped_log/26_4-${ts}.log

26_5: 1_3
	mkdir -p 26_5/Release
	cp 1_3/Release/1_3.o 26_5/Release/26_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 26_5/scripts/26_5.prx +W bridge,../Release/26_5.o) 2>&1 |& tee -a 26_5/26_5.log 26_5/timestamped_log/26_5-${ts}.log
	set -o pipefail; (coreverify -obj 26_5 -s 1024 -pm 16384) 2>&1 |& tee -a 26_5/26_5.log 26_5/timestamped_log/26_5-${ts}.log

26_6: 1_3
	mkdir -p 26_6/Release
	cp 1_3/Release/1_3.o 26_6/Release/26_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 26_6/scripts/26_6.prx +W bridge,../Release/26_6.o) 2>&1 |& tee -a 26_6/26_6.log 26_6/timestamped_log/26_6-${ts}.log
	set -o pipefail; (coreverify -obj 26_6 -s 1024 -pm 16384) 2>&1 |& tee -a 26_6/26_6.log 26_6/timestamped_log/26_6-${ts}.log

27_1: 1_3
	mkdir -p 27_1/Release
	cp 1_3/Release/1_3.o 27_1/Release/27_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 27_1/scripts/27_1.prx +W bridge,../Release/27_1.o) 2>&1 |& tee -a 27_1/27_1.log 27_1/timestamped_log/27_1-${ts}.log
	set -o pipefail; (coreverify -obj 27_1 -s 1024 -pm 16384) 2>&1 |& tee -a 27_1/27_1.log 27_1/timestamped_log/27_1-${ts}.log

27_2: 1_3
	mkdir -p 27_2/Release
	cp 1_3/Release/1_3.o 27_2/Release/27_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 27_2/scripts/27_2.prx +W bridge,../Release/27_2.o) 2>&1 |& tee -a 27_2/27_2.log 27_2/timestamped_log/27_2-${ts}.log
	set -o pipefail; (coreverify -obj 27_2 -s 1024 -pm 16384) 2>&1 |& tee -a 27_2/27_2.log 27_2/timestamped_log/27_2-${ts}.log

27_3: 1_3
	mkdir -p 27_3/Release
	cp 1_3/Release/1_3.o 27_3/Release/27_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 27_3/scripts/27_3.prx +W bridge,../Release/27_3.o) 2>&1 |& tee -a 27_3/27_3.log 27_3/timestamped_log/27_3-${ts}.log
	set -o pipefail; (coreverify -obj 27_3 -s 1024 -pm 16384) 2>&1 |& tee -a 27_3/27_3.log 27_3/timestamped_log/27_3-${ts}.log

27_4: 1_3
	mkdir -p 27_4/Release
	cp 1_3/Release/1_3.o 27_4/Release/27_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 27_4/scripts/27_4.prx +W bridge,../Release/27_4.o) 2>&1 |& tee -a 27_4/27_4.log 27_4/timestamped_log/27_4-${ts}.log
	set -o pipefail; (coreverify -obj 27_4 -s 1024 -pm 16384) 2>&1 |& tee -a 27_4/27_4.log 27_4/timestamped_log/27_4-${ts}.log

27_5: 1_3
	mkdir -p 27_5/Release
	cp 1_3/Release/1_3.o 27_5/Release/27_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 27_5/scripts/27_5.prx +W bridge,../Release/27_5.o) 2>&1 |& tee -a 27_5/27_5.log 27_5/timestamped_log/27_5-${ts}.log
	set -o pipefail; (coreverify -obj 27_5 -s 1024 -pm 16384) 2>&1 |& tee -a 27_5/27_5.log 27_5/timestamped_log/27_5-${ts}.log

27_6: 1_3
	mkdir -p 27_6/Release
	cp 1_3/Release/1_3.o 27_6/Release/27_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 27_6/scripts/27_6.prx +W bridge,../Release/27_6.o) 2>&1 |& tee -a 27_6/27_6.log 27_6/timestamped_log/27_6-${ts}.log
	set -o pipefail; (coreverify -obj 27_6 -s 1024 -pm 16384) 2>&1 |& tee -a 27_6/27_6.log 27_6/timestamped_log/27_6-${ts}.log

28_1: 1_3
	mkdir -p 28_1/Release
	cp 1_3/Release/1_3.o 28_1/Release/28_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 28_1/scripts/28_1.prx +W bridge,../Release/28_1.o) 2>&1 |& tee -a 28_1/28_1.log 28_1/timestamped_log/28_1-${ts}.log
	set -o pipefail; (coreverify -obj 28_1 -s 1024 -pm 16384) 2>&1 |& tee -a 28_1/28_1.log 28_1/timestamped_log/28_1-${ts}.log

28_2: 1_3
	mkdir -p 28_2/Release
	cp 1_3/Release/1_3.o 28_2/Release/28_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 28_2/scripts/28_2.prx +W bridge,../Release/28_2.o) 2>&1 |& tee -a 28_2/28_2.log 28_2/timestamped_log/28_2-${ts}.log
	set -o pipefail; (coreverify -obj 28_2 -s 1024 -pm 16384) 2>&1 |& tee -a 28_2/28_2.log 28_2/timestamped_log/28_2-${ts}.log

28_3: 1_3
	mkdir -p 28_3/Release
	cp 1_3/Release/1_3.o 28_3/Release/28_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 28_3/scripts/28_3.prx +W bridge,../Release/28_3.o) 2>&1 |& tee -a 28_3/28_3.log 28_3/timestamped_log/28_3-${ts}.log
	set -o pipefail; (coreverify -obj 28_3 -s 1024 -pm 16384) 2>&1 |& tee -a 28_3/28_3.log 28_3/timestamped_log/28_3-${ts}.log

28_4: 1_3
	mkdir -p 28_4/Release
	cp 1_3/Release/1_3.o 28_4/Release/28_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 28_4/scripts/28_4.prx +W bridge,../Release/28_4.o) 2>&1 |& tee -a 28_4/28_4.log 28_4/timestamped_log/28_4-${ts}.log
	set -o pipefail; (coreverify -obj 28_4 -s 1024 -pm 16384) 2>&1 |& tee -a 28_4/28_4.log 28_4/timestamped_log/28_4-${ts}.log

28_5: 1_3
	mkdir -p 28_5/Release
	cp 1_3/Release/1_3.o 28_5/Release/28_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 28_5/scripts/28_5.prx +W bridge,../Release/28_5.o) 2>&1 |& tee -a 28_5/28_5.log 28_5/timestamped_log/28_5-${ts}.log
	set -o pipefail; (coreverify -obj 28_5 -s 1024 -pm 16384) 2>&1 |& tee -a 28_5/28_5.log 28_5/timestamped_log/28_5-${ts}.log

28_6: 1_3
	mkdir -p 28_6/Release
	cp 1_3/Release/1_3.o 28_6/Release/28_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 28_6/scripts/28_6.prx +W bridge,../Release/28_6.o) 2>&1 |& tee -a 28_6/28_6.log 28_6/timestamped_log/28_6-${ts}.log
	set -o pipefail; (coreverify -obj 28_6 -s 1024 -pm 16384) 2>&1 |& tee -a 28_6/28_6.log 28_6/timestamped_log/28_6-${ts}.log

29_1: 1_3
	mkdir -p 29_1/Release
	cp 1_3/Release/1_3.o 29_1/Release/29_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 29_1/scripts/29_1.prx +W bridge,../Release/29_1.o) 2>&1 |& tee -a 29_1/29_1.log 29_1/timestamped_log/29_1-${ts}.log
	set -o pipefail; (coreverify -obj 29_1 -s 1024 -pm 16384) 2>&1 |& tee -a 29_1/29_1.log 29_1/timestamped_log/29_1-${ts}.log

29_2: 1_3
	mkdir -p 29_2/Release
	cp 1_3/Release/1_3.o 29_2/Release/29_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 29_2/scripts/29_2.prx +W bridge,../Release/29_2.o) 2>&1 |& tee -a 29_2/29_2.log 29_2/timestamped_log/29_2-${ts}.log
	set -o pipefail; (coreverify -obj 29_2 -s 1024 -pm 16384) 2>&1 |& tee -a 29_2/29_2.log 29_2/timestamped_log/29_2-${ts}.log

29_3: 1_3
	mkdir -p 29_3/Release
	cp 1_3/Release/1_3.o 29_3/Release/29_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 29_3/scripts/29_3.prx +W bridge,../Release/29_3.o) 2>&1 |& tee -a 29_3/29_3.log 29_3/timestamped_log/29_3-${ts}.log
	set -o pipefail; (coreverify -obj 29_3 -s 1024 -pm 16384) 2>&1 |& tee -a 29_3/29_3.log 29_3/timestamped_log/29_3-${ts}.log

29_4: 1_3
	mkdir -p 29_4/Release
	cp 1_3/Release/1_3.o 29_4/Release/29_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 29_4/scripts/29_4.prx +W bridge,../Release/29_4.o) 2>&1 |& tee -a 29_4/29_4.log 29_4/timestamped_log/29_4-${ts}.log
	set -o pipefail; (coreverify -obj 29_4 -s 1024 -pm 16384) 2>&1 |& tee -a 29_4/29_4.log 29_4/timestamped_log/29_4-${ts}.log

29_5: 1_3
	mkdir -p 29_5/Release
	cp 1_3/Release/1_3.o 29_5/Release/29_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 29_5/scripts/29_5.prx +W bridge,../Release/29_5.o) 2>&1 |& tee -a 29_5/29_5.log 29_5/timestamped_log/29_5-${ts}.log
	set -o pipefail; (coreverify -obj 29_5 -s 1024 -pm 16384) 2>&1 |& tee -a 29_5/29_5.log 29_5/timestamped_log/29_5-${ts}.log

29_6: 1_3
	mkdir -p 29_6/Release
	cp 1_3/Release/1_3.o 29_6/Release/29_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 29_6/scripts/29_6.prx +W bridge,../Release/29_6.o) 2>&1 |& tee -a 29_6/29_6.log 29_6/timestamped_log/29_6-${ts}.log
	set -o pipefail; (coreverify -obj 29_6 -s 1024 -pm 16384) 2>&1 |& tee -a 29_6/29_6.log 29_6/timestamped_log/29_6-${ts}.log

30_1: 1_3
	mkdir -p 30_1/Release
	cp 1_3/Release/1_3.o 30_1/Release/30_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 30_1/scripts/30_1.prx +W bridge,../Release/30_1.o) 2>&1 |& tee -a 30_1/30_1.log 30_1/timestamped_log/30_1-${ts}.log
	set -o pipefail; (coreverify -obj 30_1 -s 1024 -pm 16384) 2>&1 |& tee -a 30_1/30_1.log 30_1/timestamped_log/30_1-${ts}.log

30_2: 1_3
	mkdir -p 30_2/Release
	cp 1_3/Release/1_3.o 30_2/Release/30_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 30_2/scripts/30_2.prx +W bridge,../Release/30_2.o) 2>&1 |& tee -a 30_2/30_2.log 30_2/timestamped_log/30_2-${ts}.log
	set -o pipefail; (coreverify -obj 30_2 -s 1024 -pm 16384) 2>&1 |& tee -a 30_2/30_2.log 30_2/timestamped_log/30_2-${ts}.log

30_3: 1_3
	mkdir -p 30_3/Release
	cp 1_3/Release/1_3.o 30_3/Release/30_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 30_3/scripts/30_3.prx +W bridge,../Release/30_3.o) 2>&1 |& tee -a 30_3/30_3.log 30_3/timestamped_log/30_3-${ts}.log
	set -o pipefail; (coreverify -obj 30_3 -s 1024 -pm 16384) 2>&1 |& tee -a 30_3/30_3.log 30_3/timestamped_log/30_3-${ts}.log

30_4: 1_3
	mkdir -p 30_4/Release
	cp 1_3/Release/1_3.o 30_4/Release/30_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 30_4/scripts/30_4.prx +W bridge,../Release/30_4.o) 2>&1 |& tee -a 30_4/30_4.log 30_4/timestamped_log/30_4-${ts}.log
	set -o pipefail; (coreverify -obj 30_4 -s 1024 -pm 16384) 2>&1 |& tee -a 30_4/30_4.log 30_4/timestamped_log/30_4-${ts}.log

30_5: 1_3
	mkdir -p 30_5/Release
	cp 1_3/Release/1_3.o 30_5/Release/30_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 30_5/scripts/30_5.prx +W bridge,../Release/30_5.o) 2>&1 |& tee -a 30_5/30_5.log 30_5/timestamped_log/30_5-${ts}.log
	set -o pipefail; (coreverify -obj 30_5 -s 1024 -pm 16384) 2>&1 |& tee -a 30_5/30_5.log 30_5/timestamped_log/30_5-${ts}.log

30_6: 1_3
	mkdir -p 30_6/Release
	cp 1_3/Release/1_3.o 30_6/Release/30_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 30_6/scripts/30_6.prx +W bridge,../Release/30_6.o) 2>&1 |& tee -a 30_6/30_6.log 30_6/timestamped_log/30_6-${ts}.log
	set -o pipefail; (coreverify -obj 30_6 -s 1024 -pm 16384) 2>&1 |& tee -a 30_6/30_6.log 30_6/timestamped_log/30_6-${ts}.log

31_1: 1_3
	mkdir -p 31_1/Release
	cp 1_3/Release/1_3.o 31_1/Release/31_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 31_1/scripts/31_1.prx +W bridge,../Release/31_1.o) 2>&1 |& tee -a 31_1/31_1.log 31_1/timestamped_log/31_1-${ts}.log
	set -o pipefail; (coreverify -obj 31_1 -s 1024 -pm 16384) 2>&1 |& tee -a 31_1/31_1.log 31_1/timestamped_log/31_1-${ts}.log

31_2: 1_3
	mkdir -p 31_2/Release
	cp 1_3/Release/1_3.o 31_2/Release/31_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 31_2/scripts/31_2.prx +W bridge,../Release/31_2.o) 2>&1 |& tee -a 31_2/31_2.log 31_2/timestamped_log/31_2-${ts}.log
	set -o pipefail; (coreverify -obj 31_2 -s 1024 -pm 16384) 2>&1 |& tee -a 31_2/31_2.log 31_2/timestamped_log/31_2-${ts}.log

31_3: 1_3
	mkdir -p 31_3/Release
	cp 1_3/Release/1_3.o 31_3/Release/31_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 31_3/scripts/31_3.prx +W bridge,../Release/31_3.o) 2>&1 |& tee -a 31_3/31_3.log 31_3/timestamped_log/31_3-${ts}.log
	set -o pipefail; (coreverify -obj 31_3 -s 1024 -pm 16384) 2>&1 |& tee -a 31_3/31_3.log 31_3/timestamped_log/31_3-${ts}.log

31_4: 1_3
	mkdir -p 31_4/Release
	cp 1_3/Release/1_3.o 31_4/Release/31_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 31_4/scripts/31_4.prx +W bridge,../Release/31_4.o) 2>&1 |& tee -a 31_4/31_4.log 31_4/timestamped_log/31_4-${ts}.log
	set -o pipefail; (coreverify -obj 31_4 -s 1024 -pm 16384) 2>&1 |& tee -a 31_4/31_4.log 31_4/timestamped_log/31_4-${ts}.log

31_5: 1_3
	mkdir -p 31_5/Release
	cp 1_3/Release/1_3.o 31_5/Release/31_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 31_5/scripts/31_5.prx +W bridge,../Release/31_5.o) 2>&1 |& tee -a 31_5/31_5.log 31_5/timestamped_log/31_5-${ts}.log
	set -o pipefail; (coreverify -obj 31_5 -s 1024 -pm 16384) 2>&1 |& tee -a 31_5/31_5.log 31_5/timestamped_log/31_5-${ts}.log

31_6: 1_3
	mkdir -p 31_6/Release
	cp 1_3/Release/1_3.o 31_6/Release/31_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 31_6/scripts/31_6.prx +W bridge,../Release/31_6.o) 2>&1 |& tee -a 31_6/31_6.log 31_6/timestamped_log/31_6-${ts}.log
	set -o pipefail; (coreverify -obj 31_6 -s 1024 -pm 16384) 2>&1 |& tee -a 31_6/31_6.log 31_6/timestamped_log/31_6-${ts}.log

32_1: 1_3
	mkdir -p 32_1/Release
	cp 1_3/Release/1_3.o 32_1/Release/32_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 32_1/scripts/32_1.prx +W bridge,../Release/32_1.o) 2>&1 |& tee -a 32_1/32_1.log 32_1/timestamped_log/32_1-${ts}.log
	set -o pipefail; (coreverify -obj 32_1 -s 1024 -pm 16384) 2>&1 |& tee -a 32_1/32_1.log 32_1/timestamped_log/32_1-${ts}.log

32_2: 1_3
	mkdir -p 32_2/Release
	cp 1_3/Release/1_3.o 32_2/Release/32_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 32_2/scripts/32_2.prx +W bridge,../Release/32_2.o) 2>&1 |& tee -a 32_2/32_2.log 32_2/timestamped_log/32_2-${ts}.log
	set -o pipefail; (coreverify -obj 32_2 -s 1024 -pm 16384) 2>&1 |& tee -a 32_2/32_2.log 32_2/timestamped_log/32_2-${ts}.log

32_3: 1_3
	mkdir -p 32_3/Release
	cp 1_3/Release/1_3.o 32_3/Release/32_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 32_3/scripts/32_3.prx +W bridge,../Release/32_3.o) 2>&1 |& tee -a 32_3/32_3.log 32_3/timestamped_log/32_3-${ts}.log
	set -o pipefail; (coreverify -obj 32_3 -s 1024 -pm 16384) 2>&1 |& tee -a 32_3/32_3.log 32_3/timestamped_log/32_3-${ts}.log

32_4: 1_3
	mkdir -p 32_4/Release
	cp 1_3/Release/1_3.o 32_4/Release/32_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 32_4/scripts/32_4.prx +W bridge,../Release/32_4.o) 2>&1 |& tee -a 32_4/32_4.log 32_4/timestamped_log/32_4-${ts}.log
	set -o pipefail; (coreverify -obj 32_4 -s 1024 -pm 16384) 2>&1 |& tee -a 32_4/32_4.log 32_4/timestamped_log/32_4-${ts}.log

32_5: 1_3
	mkdir -p 32_5/Release
	cp 1_3/Release/1_3.o 32_5/Release/32_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 32_5/scripts/32_5.prx +W bridge,../Release/32_5.o) 2>&1 |& tee -a 32_5/32_5.log 32_5/timestamped_log/32_5-${ts}.log
	set -o pipefail; (coreverify -obj 32_5 -s 1024 -pm 16384) 2>&1 |& tee -a 32_5/32_5.log 32_5/timestamped_log/32_5-${ts}.log

32_6: 1_3
	mkdir -p 32_6/Release
	cp 1_3/Release/1_3.o 32_6/Release/32_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 32_6/scripts/32_6.prx +W bridge,../Release/32_6.o) 2>&1 |& tee -a 32_6/32_6.log 32_6/timestamped_log/32_6-${ts}.log
	set -o pipefail; (coreverify -obj 32_6 -s 1024 -pm 16384) 2>&1 |& tee -a 32_6/32_6.log 32_6/timestamped_log/32_6-${ts}.log

33_2: 1_3
	mkdir -p 33_2/Release
	cp 1_3/Release/1_3.o 33_2/Release/33_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 33_2/scripts/33_2.prx +W bridge,../Release/33_2.o) 2>&1 |& tee -a 33_2/33_2.log 33_2/timestamped_log/33_2-${ts}.log
	set -o pipefail; (coreverify -obj 33_2 -s 1024 -pm 16384) 2>&1 |& tee -a 33_2/33_2.log 33_2/timestamped_log/33_2-${ts}.log

33_3: 1_3
	mkdir -p 33_3/Release
	cp 1_3/Release/1_3.o 33_3/Release/33_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 33_3/scripts/33_3.prx +W bridge,../Release/33_3.o) 2>&1 |& tee -a 33_3/33_3.log 33_3/timestamped_log/33_3-${ts}.log
	set -o pipefail; (coreverify -obj 33_3 -s 1024 -pm 16384) 2>&1 |& tee -a 33_3/33_3.log 33_3/timestamped_log/33_3-${ts}.log

33_4: 1_3
	mkdir -p 33_4/Release
	cp 1_3/Release/1_3.o 33_4/Release/33_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 33_4/scripts/33_4.prx +W bridge,../Release/33_4.o) 2>&1 |& tee -a 33_4/33_4.log 33_4/timestamped_log/33_4-${ts}.log
	set -o pipefail; (coreverify -obj 33_4 -s 1024 -pm 16384) 2>&1 |& tee -a 33_4/33_4.log 33_4/timestamped_log/33_4-${ts}.log

33_5: 1_3
	mkdir -p 33_5/Release
	cp 1_3/Release/1_3.o 33_5/Release/33_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 33_5/scripts/33_5.prx +W bridge,../Release/33_5.o) 2>&1 |& tee -a 33_5/33_5.log 33_5/timestamped_log/33_5-${ts}.log
	set -o pipefail; (coreverify -obj 33_5 -s 1024 -pm 16384) 2>&1 |& tee -a 33_5/33_5.log 33_5/timestamped_log/33_5-${ts}.log

33_6: 1_3
	mkdir -p 33_6/Release
	cp 1_3/Release/1_3.o 33_6/Release/33_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 33_6/scripts/33_6.prx +W bridge,../Release/33_6.o) 2>&1 |& tee -a 33_6/33_6.log 33_6/timestamped_log/33_6-${ts}.log
	set -o pipefail; (coreverify -obj 33_6 -s 1024 -pm 16384) 2>&1 |& tee -a 33_6/33_6.log 33_6/timestamped_log/33_6-${ts}.log

34_2: 1_3
	mkdir -p 34_2/Release
	cp 1_3/Release/1_3.o 34_2/Release/34_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 34_2/scripts/34_2.prx +W bridge,../Release/34_2.o) 2>&1 |& tee -a 34_2/34_2.log 34_2/timestamped_log/34_2-${ts}.log
	set -o pipefail; (coreverify -obj 34_2 -s 1024 -pm 16384) 2>&1 |& tee -a 34_2/34_2.log 34_2/timestamped_log/34_2-${ts}.log

34_4: 1_3
	mkdir -p 34_4/Release
	cp 1_3/Release/1_3.o 34_4/Release/34_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 34_4/scripts/34_4.prx +W bridge,../Release/34_4.o) 2>&1 |& tee -a 34_4/34_4.log 34_4/timestamped_log/34_4-${ts}.log
	set -o pipefail; (coreverify -obj 34_4 -s 1024 -pm 16384) 2>&1 |& tee -a 34_4/34_4.log 34_4/timestamped_log/34_4-${ts}.log

34_6: 1_3
	mkdir -p 34_6/Release
	cp 1_3/Release/1_3.o 34_6/Release/34_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 34_6/scripts/34_6.prx +W bridge,../Release/34_6.o) 2>&1 |& tee -a 34_6/34_6.log 34_6/timestamped_log/34_6-${ts}.log
	set -o pipefail; (coreverify -obj 34_6 -s 1024 -pm 16384) 2>&1 |& tee -a 34_6/34_6.log 34_6/timestamped_log/34_6-${ts}.log

3_1: 2_1
	mkdir -p 3_1/Release
	cp 2_1/Release/2_1.o 3_1/Release/3_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 3_1/scripts/3_1.prx +W bridge,../Release/3_1.o) 2>&1 |& tee -a 3_1/3_1.log 3_1/timestamped_log/3_1-${ts}.log
	set -o pipefail; (coreverify -obj 3_1 -s 1024 -pm 16384) 2>&1 |& tee -a 3_1/3_1.log 3_1/timestamped_log/3_1-${ts}.log

4_1: 2_1
	mkdir -p 4_1/Release
	cp 2_1/Release/2_1.o 4_1/Release/4_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 4_1/scripts/4_1.prx +W bridge,../Release/4_1.o) 2>&1 |& tee -a 4_1/4_1.log 4_1/timestamped_log/4_1-${ts}.log
	set -o pipefail; (coreverify -obj 4_1 -s 1024 -pm 16384) 2>&1 |& tee -a 4_1/4_1.log 4_1/timestamped_log/4_1-${ts}.log

5_1: 2_1
	mkdir -p 5_1/Release
	cp 2_1/Release/2_1.o 5_1/Release/5_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 5_1/scripts/5_1.prx +W bridge,../Release/5_1.o) 2>&1 |& tee -a 5_1/5_1.log 5_1/timestamped_log/5_1-${ts}.log
	set -o pipefail; (coreverify -obj 5_1 -s 1024 -pm 16384) 2>&1 |& tee -a 5_1/5_1.log 5_1/timestamped_log/5_1-${ts}.log

6_1: 2_1
	mkdir -p 6_1/Release
	cp 2_1/Release/2_1.o 6_1/Release/6_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 6_1/scripts/6_1.prx +W bridge,../Release/6_1.o) 2>&1 |& tee -a 6_1/6_1.log 6_1/timestamped_log/6_1-${ts}.log
	set -o pipefail; (coreverify -obj 6_1 -s 1024 -pm 16384) 2>&1 |& tee -a 6_1/6_1.log 6_1/timestamped_log/6_1-${ts}.log

7_1: 2_1
	mkdir -p 7_1/Release
	cp 2_1/Release/2_1.o 7_1/Release/7_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 7_1/scripts/7_1.prx +W bridge,../Release/7_1.o) 2>&1 |& tee -a 7_1/7_1.log 7_1/timestamped_log/7_1-${ts}.log
	set -o pipefail; (coreverify -obj 7_1 -s 1024 -pm 16384) 2>&1 |& tee -a 7_1/7_1.log 7_1/timestamped_log/7_1-${ts}.log

8_1: 2_1
	mkdir -p 8_1/Release
	cp 2_1/Release/2_1.o 8_1/Release/8_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 8_1/scripts/8_1.prx +W bridge,../Release/8_1.o) 2>&1 |& tee -a 8_1/8_1.log 8_1/timestamped_log/8_1-${ts}.log
	set -o pipefail; (coreverify -obj 8_1 -s 1024 -pm 16384) 2>&1 |& tee -a 8_1/8_1.log 8_1/timestamped_log/8_1-${ts}.log

9_1: 2_1
	mkdir -p 9_1/Release
	cp 2_1/Release/2_1.o 9_1/Release/9_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 9_1/scripts/9_1.prx +W bridge,../Release/9_1.o) 2>&1 |& tee -a 9_1/9_1.log 9_1/timestamped_log/9_1-${ts}.log
	set -o pipefail; (coreverify -obj 9_1 -s 1024 -pm 16384) 2>&1 |& tee -a 9_1/9_1.log 9_1/timestamped_log/9_1-${ts}.log

10_1: 2_1
	mkdir -p 10_1/Release
	cp 2_1/Release/2_1.o 10_1/Release/10_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 10_1/scripts/10_1.prx +W bridge,../Release/10_1.o) 2>&1 |& tee -a 10_1/10_1.log 10_1/timestamped_log/10_1-${ts}.log
	set -o pipefail; (coreverify -obj 10_1 -s 1024 -pm 16384) 2>&1 |& tee -a 10_1/10_1.log 10_1/timestamped_log/10_1-${ts}.log

3_4: 2_4
	mkdir -p 3_4/Release
	cp 2_4/Release/2_4.o 3_4/Release/3_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 3_4/scripts/3_4.prx +W bridge,../Release/3_4.o) 2>&1 |& tee -a 3_4/3_4.log 3_4/timestamped_log/3_4-${ts}.log
	set -o pipefail; (coreverify -obj 3_4 -s 1024 -pm 16384) 2>&1 |& tee -a 3_4/3_4.log 3_4/timestamped_log/3_4-${ts}.log

4_4: 2_4
	mkdir -p 4_4/Release
	cp 2_4/Release/2_4.o 4_4/Release/4_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 4_4/scripts/4_4.prx +W bridge,../Release/4_4.o) 2>&1 |& tee -a 4_4/4_4.log 4_4/timestamped_log/4_4-${ts}.log
	set -o pipefail; (coreverify -obj 4_4 -s 1024 -pm 16384) 2>&1 |& tee -a 4_4/4_4.log 4_4/timestamped_log/4_4-${ts}.log

8_3: 2_4
	mkdir -p 8_3/Release
	cp 2_4/Release/2_4.o 8_3/Release/8_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 8_3/scripts/8_3.prx +W bridge,../Release/8_3.o) 2>&1 |& tee -a 8_3/8_3.log 8_3/timestamped_log/8_3-${ts}.log
	set -o pipefail; (coreverify -obj 8_3 -s 1024 -pm 16384) 2>&1 |& tee -a 8_3/8_3.log 8_3/timestamped_log/8_3-${ts}.log

9_3: 2_4
	mkdir -p 9_3/Release
	cp 2_4/Release/2_4.o 9_3/Release/9_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 9_3/scripts/9_3.prx +W bridge,../Release/9_3.o) 2>&1 |& tee -a 9_3/9_3.log 9_3/timestamped_log/9_3-${ts}.log
	set -o pipefail; (coreverify -obj 9_3 -s 1024 -pm 16384) 2>&1 |& tee -a 9_3/9_3.log 9_3/timestamped_log/9_3-${ts}.log

5_0: 4_0
	mkdir -p 5_0/Release
	cp 4_0/Release/4_0.o 5_0/Release/5_0.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 5_0/scripts/5_0.prx +W bridge,../Release/5_0.o) 2>&1 |& tee -a 5_0/5_0.log 5_0/timestamped_log/5_0-${ts}.log
	set -o pipefail; (coreverify -obj 5_0 -s 1024 -pm 16384) 2>&1 |& tee -a 5_0/5_0.log 5_0/timestamped_log/5_0-${ts}.log

6_3: 5_3
	mkdir -p 6_3/Release
	cp 5_3/Release/5_3.o 6_3/Release/6_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 6_3/scripts/6_3.prx +W bridge,../Release/6_3.o) 2>&1 |& tee -a 6_3/6_3.log 6_3/timestamped_log/6_3-${ts}.log
	set -o pipefail; (coreverify -obj 6_3 -s 1024 -pm 16384) 2>&1 |& tee -a 6_3/6_3.log 6_3/timestamped_log/6_3-${ts}.log

7_3: 5_3
	mkdir -p 7_3/Release
	cp 5_3/Release/5_3.o 7_3/Release/7_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 7_3/scripts/7_3.prx +W bridge,../Release/7_3.o) 2>&1 |& tee -a 7_3/7_3.log 7_3/timestamped_log/7_3-${ts}.log
	set -o pipefail; (coreverify -obj 7_3 -s 1024 -pm 16384) 2>&1 |& tee -a 7_3/7_3.log 7_3/timestamped_log/7_3-${ts}.log

6_4: 5_4
	mkdir -p 6_4/Release
	cp 5_4/Release/5_4.o 6_4/Release/6_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 6_4/scripts/6_4.prx +W bridge,../Release/6_4.o) 2>&1 |& tee -a 6_4/6_4.log 6_4/timestamped_log/6_4-${ts}.log
	set -o pipefail; (coreverify -obj 6_4 -s 1024 -pm 16384) 2>&1 |& tee -a 6_4/6_4.log 6_4/timestamped_log/6_4-${ts}.log

7_4: 5_4
	mkdir -p 7_4/Release
	cp 5_4/Release/5_4.o 7_4/Release/7_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 7_4/scripts/7_4.prx +W bridge,../Release/7_4.o) 2>&1 |& tee -a 7_4/7_4.log 7_4/timestamped_log/7_4-${ts}.log
	set -o pipefail; (coreverify -obj 7_4 -s 1024 -pm 16384) 2>&1 |& tee -a 7_4/7_4.log 7_4/timestamped_log/7_4-${ts}.log

8_4: 5_4
	mkdir -p 8_4/Release
	cp 5_4/Release/5_4.o 8_4/Release/8_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 8_4/scripts/8_4.prx +W bridge,../Release/8_4.o) 2>&1 |& tee -a 8_4/8_4.log 8_4/timestamped_log/8_4-${ts}.log
	set -o pipefail; (coreverify -obj 8_4 -s 1024 -pm 16384) 2>&1 |& tee -a 8_4/8_4.log 8_4/timestamped_log/8_4-${ts}.log

9_0: 7_0
	mkdir -p 9_0/Release
	cp 7_0/Release/7_0.o 9_0/Release/9_0.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 9_0/scripts/9_0.prx +W bridge,../Release/9_0.o) 2>&1 |& tee -a 9_0/9_0.log 9_0/timestamped_log/9_0-${ts}.log
	set -o pipefail; (coreverify -obj 9_0 -s 1024 -pm 16384) 2>&1 |& tee -a 9_0/9_0.log 9_0/timestamped_log/9_0-${ts}.log

11_5: 11_1
	mkdir -p 11_5/Release
	cp 11_1/Release/11_1.o 11_5/Release/11_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 11_5/scripts/11_5.prx +W bridge,../Release/11_5.o) 2>&1 |& tee -a 11_5/11_5.log 11_5/timestamped_log/11_5-${ts}.log
	set -o pipefail; (coreverify -obj 11_5 -s 1024 -pm 16384) 2>&1 |& tee -a 11_5/11_5.log 11_5/timestamped_log/11_5-${ts}.log

35_1: 11_1
	mkdir -p 35_1/Release
	cp 11_1/Release/11_1.o 35_1/Release/35_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 35_1/scripts/35_1.prx +W bridge,../Release/35_1.o) 2>&1 |& tee -a 35_1/35_1.log 35_1/timestamped_log/35_1-${ts}.log
	set -o pipefail; (coreverify -obj 35_1 -s 1024 -pm 16384) 2>&1 |& tee -a 35_1/35_1.log 35_1/timestamped_log/35_1-${ts}.log

35_3: 11_1
	mkdir -p 35_3/Release
	cp 11_1/Release/11_1.o 35_3/Release/35_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 35_3/scripts/35_3.prx +W bridge,../Release/35_3.o) 2>&1 |& tee -a 35_3/35_3.log 35_3/timestamped_log/35_3-${ts}.log
	set -o pipefail; (coreverify -obj 35_3 -s 1024 -pm 16384) 2>&1 |& tee -a 35_3/35_3.log 35_3/timestamped_log/35_3-${ts}.log

35_5: 11_1
	mkdir -p 35_5/Release
	cp 11_1/Release/11_1.o 35_5/Release/35_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 35_5/scripts/35_5.prx +W bridge,../Release/35_5.o) 2>&1 |& tee -a 35_5/35_5.log 35_5/timestamped_log/35_5-${ts}.log
	set -o pipefail; (coreverify -obj 35_5 -s 1024 -pm 16384) 2>&1 |& tee -a 35_5/35_5.log 35_5/timestamped_log/35_5-${ts}.log

13_3: 13_1
	mkdir -p 13_3/Release
	cp 13_1/Release/13_1.o 13_3/Release/13_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 13_3/scripts/13_3.prx +W bridge,../Release/13_3.o) 2>&1 |& tee -a 13_3/13_3.log 13_3/timestamped_log/13_3-${ts}.log
	set -o pipefail; (coreverify -obj 13_3 -s 1024 -pm 16384) 2>&1 |& tee -a 13_3/13_3.log 13_3/timestamped_log/13_3-${ts}.log

14_1: 13_1
	mkdir -p 14_1/Release
	cp 13_1/Release/13_1.o 14_1/Release/14_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 14_1/scripts/14_1.prx +W bridge,../Release/14_1.o) 2>&1 |& tee -a 14_1/14_1.log 14_1/timestamped_log/14_1-${ts}.log
	set -o pipefail; (coreverify -obj 14_1 -s 1024 -pm 16384) 2>&1 |& tee -a 14_1/14_1.log 14_1/timestamped_log/14_1-${ts}.log

14_2: 13_1
	mkdir -p 14_2/Release
	cp 13_1/Release/13_1.o 14_2/Release/14_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 14_2/scripts/14_2.prx +W bridge,../Release/14_2.o) 2>&1 |& tee -a 14_2/14_2.log 14_2/timestamped_log/14_2-${ts}.log
	set -o pipefail; (coreverify -obj 14_2 -s 1024 -pm 16384) 2>&1 |& tee -a 14_2/14_2.log 14_2/timestamped_log/14_2-${ts}.log

14_3: 13_1
	mkdir -p 14_3/Release
	cp 13_1/Release/13_1.o 14_3/Release/14_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 14_3/scripts/14_3.prx +W bridge,../Release/14_3.o) 2>&1 |& tee -a 14_3/14_3.log 14_3/timestamped_log/14_3-${ts}.log
	set -o pipefail; (coreverify -obj 14_3 -s 1024 -pm 16384) 2>&1 |& tee -a 14_3/14_3.log 14_3/timestamped_log/14_3-${ts}.log

14_6: 13_1
	mkdir -p 14_6/Release
	cp 13_1/Release/13_1.o 14_6/Release/14_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 14_6/scripts/14_6.prx +W bridge,../Release/14_6.o) 2>&1 |& tee -a 14_6/14_6.log 14_6/timestamped_log/14_6-${ts}.log
	set -o pipefail; (coreverify -obj 14_6 -s 1024 -pm 16384) 2>&1 |& tee -a 14_6/14_6.log 14_6/timestamped_log/14_6-${ts}.log

15_1: 13_1
	mkdir -p 15_1/Release
	cp 13_1/Release/13_1.o 15_1/Release/15_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 15_1/scripts/15_1.prx +W bridge,../Release/15_1.o) 2>&1 |& tee -a 15_1/15_1.log 15_1/timestamped_log/15_1-${ts}.log
	set -o pipefail; (coreverify -obj 15_1 -s 1024 -pm 16384) 2>&1 |& tee -a 15_1/15_1.log 15_1/timestamped_log/15_1-${ts}.log

15_2: 13_1
	mkdir -p 15_2/Release
	cp 13_1/Release/13_1.o 15_2/Release/15_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 15_2/scripts/15_2.prx +W bridge,../Release/15_2.o) 2>&1 |& tee -a 15_2/15_2.log 15_2/timestamped_log/15_2-${ts}.log
	set -o pipefail; (coreverify -obj 15_2 -s 1024 -pm 16384) 2>&1 |& tee -a 15_2/15_2.log 15_2/timestamped_log/15_2-${ts}.log

15_3: 13_1
	mkdir -p 15_3/Release
	cp 13_1/Release/13_1.o 15_3/Release/15_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 15_3/scripts/15_3.prx +W bridge,../Release/15_3.o) 2>&1 |& tee -a 15_3/15_3.log 15_3/timestamped_log/15_3-${ts}.log
	set -o pipefail; (coreverify -obj 15_3 -s 1024 -pm 16384) 2>&1 |& tee -a 15_3/15_3.log 15_3/timestamped_log/15_3-${ts}.log

15_4: 13_1
	mkdir -p 15_4/Release
	cp 13_1/Release/13_1.o 15_4/Release/15_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 15_4/scripts/15_4.prx +W bridge,../Release/15_4.o) 2>&1 |& tee -a 15_4/15_4.log 15_4/timestamped_log/15_4-${ts}.log
	set -o pipefail; (coreverify -obj 15_4 -s 1024 -pm 16384) 2>&1 |& tee -a 15_4/15_4.log 15_4/timestamped_log/15_4-${ts}.log

16_1: 13_1
	mkdir -p 16_1/Release
	cp 13_1/Release/13_1.o 16_1/Release/16_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 16_1/scripts/16_1.prx +W bridge,../Release/16_1.o) 2>&1 |& tee -a 16_1/16_1.log 16_1/timestamped_log/16_1-${ts}.log
	set -o pipefail; (coreverify -obj 16_1 -s 1024 -pm 16384) 2>&1 |& tee -a 16_1/16_1.log 16_1/timestamped_log/16_1-${ts}.log

16_2: 13_1
	mkdir -p 16_2/Release
	cp 13_1/Release/13_1.o 16_2/Release/16_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 16_2/scripts/16_2.prx +W bridge,../Release/16_2.o) 2>&1 |& tee -a 16_2/16_2.log 16_2/timestamped_log/16_2-${ts}.log
	set -o pipefail; (coreverify -obj 16_2 -s 1024 -pm 16384) 2>&1 |& tee -a 16_2/16_2.log 16_2/timestamped_log/16_2-${ts}.log

16_3: 13_1
	mkdir -p 16_3/Release
	cp 13_1/Release/13_1.o 16_3/Release/16_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 16_3/scripts/16_3.prx +W bridge,../Release/16_3.o) 2>&1 |& tee -a 16_3/16_3.log 16_3/timestamped_log/16_3-${ts}.log
	set -o pipefail; (coreverify -obj 16_3 -s 1024 -pm 16384) 2>&1 |& tee -a 16_3/16_3.log 16_3/timestamped_log/16_3-${ts}.log

16_4: 13_1
	mkdir -p 16_4/Release
	cp 13_1/Release/13_1.o 16_4/Release/16_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 16_4/scripts/16_4.prx +W bridge,../Release/16_4.o) 2>&1 |& tee -a 16_4/16_4.log 16_4/timestamped_log/16_4-${ts}.log
	set -o pipefail; (coreverify -obj 16_4 -s 1024 -pm 16384) 2>&1 |& tee -a 16_4/16_4.log 16_4/timestamped_log/16_4-${ts}.log

17_1: 13_1
	mkdir -p 17_1/Release
	cp 13_1/Release/13_1.o 17_1/Release/17_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 17_1/scripts/17_1.prx +W bridge,../Release/17_1.o) 2>&1 |& tee -a 17_1/17_1.log 17_1/timestamped_log/17_1-${ts}.log
	set -o pipefail; (coreverify -obj 17_1 -s 1024 -pm 16384) 2>&1 |& tee -a 17_1/17_1.log 17_1/timestamped_log/17_1-${ts}.log

17_2: 13_1
	mkdir -p 17_2/Release
	cp 13_1/Release/13_1.o 17_2/Release/17_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 17_2/scripts/17_2.prx +W bridge,../Release/17_2.o) 2>&1 |& tee -a 17_2/17_2.log 17_2/timestamped_log/17_2-${ts}.log
	set -o pipefail; (coreverify -obj 17_2 -s 1024 -pm 16384) 2>&1 |& tee -a 17_2/17_2.log 17_2/timestamped_log/17_2-${ts}.log

17_3: 13_1
	mkdir -p 17_3/Release
	cp 13_1/Release/13_1.o 17_3/Release/17_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 17_3/scripts/17_3.prx +W bridge,../Release/17_3.o) 2>&1 |& tee -a 17_3/17_3.log 17_3/timestamped_log/17_3-${ts}.log
	set -o pipefail; (coreverify -obj 17_3 -s 1024 -pm 16384) 2>&1 |& tee -a 17_3/17_3.log 17_3/timestamped_log/17_3-${ts}.log

17_4: 13_1
	mkdir -p 17_4/Release
	cp 13_1/Release/13_1.o 17_4/Release/17_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 17_4/scripts/17_4.prx +W bridge,../Release/17_4.o) 2>&1 |& tee -a 17_4/17_4.log 17_4/timestamped_log/17_4-${ts}.log
	set -o pipefail; (coreverify -obj 17_4 -s 1024 -pm 16384) 2>&1 |& tee -a 17_4/17_4.log 17_4/timestamped_log/17_4-${ts}.log

18_1: 13_1
	mkdir -p 18_1/Release
	cp 13_1/Release/13_1.o 18_1/Release/18_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 18_1/scripts/18_1.prx +W bridge,../Release/18_1.o) 2>&1 |& tee -a 18_1/18_1.log 18_1/timestamped_log/18_1-${ts}.log
	set -o pipefail; (coreverify -obj 18_1 -s 1024 -pm 16384) 2>&1 |& tee -a 18_1/18_1.log 18_1/timestamped_log/18_1-${ts}.log

18_2: 13_1
	mkdir -p 18_2/Release
	cp 13_1/Release/13_1.o 18_2/Release/18_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 18_2/scripts/18_2.prx +W bridge,../Release/18_2.o) 2>&1 |& tee -a 18_2/18_2.log 18_2/timestamped_log/18_2-${ts}.log
	set -o pipefail; (coreverify -obj 18_2 -s 1024 -pm 16384) 2>&1 |& tee -a 18_2/18_2.log 18_2/timestamped_log/18_2-${ts}.log

18_3: 13_1
	mkdir -p 18_3/Release
	cp 13_1/Release/13_1.o 18_3/Release/18_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 18_3/scripts/18_3.prx +W bridge,../Release/18_3.o) 2>&1 |& tee -a 18_3/18_3.log 18_3/timestamped_log/18_3-${ts}.log
	set -o pipefail; (coreverify -obj 18_3 -s 1024 -pm 16384) 2>&1 |& tee -a 18_3/18_3.log 18_3/timestamped_log/18_3-${ts}.log

18_4: 13_1
	mkdir -p 18_4/Release
	cp 13_1/Release/13_1.o 18_4/Release/18_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 18_4/scripts/18_4.prx +W bridge,../Release/18_4.o) 2>&1 |& tee -a 18_4/18_4.log 18_4/timestamped_log/18_4-${ts}.log
	set -o pipefail; (coreverify -obj 18_4 -s 1024 -pm 16384) 2>&1 |& tee -a 18_4/18_4.log 18_4/timestamped_log/18_4-${ts}.log

19_1: 13_1
	mkdir -p 19_1/Release
	cp 13_1/Release/13_1.o 19_1/Release/19_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 19_1/scripts/19_1.prx +W bridge,../Release/19_1.o) 2>&1 |& tee -a 19_1/19_1.log 19_1/timestamped_log/19_1-${ts}.log
	set -o pipefail; (coreverify -obj 19_1 -s 1024 -pm 16384) 2>&1 |& tee -a 19_1/19_1.log 19_1/timestamped_log/19_1-${ts}.log

19_2: 13_1
	mkdir -p 19_2/Release
	cp 13_1/Release/13_1.o 19_2/Release/19_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 19_2/scripts/19_2.prx +W bridge,../Release/19_2.o) 2>&1 |& tee -a 19_2/19_2.log 19_2/timestamped_log/19_2-${ts}.log
	set -o pipefail; (coreverify -obj 19_2 -s 1024 -pm 16384) 2>&1 |& tee -a 19_2/19_2.log 19_2/timestamped_log/19_2-${ts}.log

19_3: 13_1
	mkdir -p 19_3/Release
	cp 13_1/Release/13_1.o 19_3/Release/19_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 19_3/scripts/19_3.prx +W bridge,../Release/19_3.o) 2>&1 |& tee -a 19_3/19_3.log 19_3/timestamped_log/19_3-${ts}.log
	set -o pipefail; (coreverify -obj 19_3 -s 1024 -pm 16384) 2>&1 |& tee -a 19_3/19_3.log 19_3/timestamped_log/19_3-${ts}.log

19_4: 13_1
	mkdir -p 19_4/Release
	cp 13_1/Release/13_1.o 19_4/Release/19_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 19_4/scripts/19_4.prx +W bridge,../Release/19_4.o) 2>&1 |& tee -a 19_4/19_4.log 19_4/timestamped_log/19_4-${ts}.log
	set -o pipefail; (coreverify -obj 19_4 -s 1024 -pm 16384) 2>&1 |& tee -a 19_4/19_4.log 19_4/timestamped_log/19_4-${ts}.log

20_1: 13_1
	mkdir -p 20_1/Release
	cp 13_1/Release/13_1.o 20_1/Release/20_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 20_1/scripts/20_1.prx +W bridge,../Release/20_1.o) 2>&1 |& tee -a 20_1/20_1.log 20_1/timestamped_log/20_1-${ts}.log
	set -o pipefail; (coreverify -obj 20_1 -s 1024 -pm 16384) 2>&1 |& tee -a 20_1/20_1.log 20_1/timestamped_log/20_1-${ts}.log

20_2: 13_1
	mkdir -p 20_2/Release
	cp 13_1/Release/13_1.o 20_2/Release/20_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 20_2/scripts/20_2.prx +W bridge,../Release/20_2.o) 2>&1 |& tee -a 20_2/20_2.log 20_2/timestamped_log/20_2-${ts}.log
	set -o pipefail; (coreverify -obj 20_2 -s 1024 -pm 16384) 2>&1 |& tee -a 20_2/20_2.log 20_2/timestamped_log/20_2-${ts}.log

20_3: 13_1
	mkdir -p 20_3/Release
	cp 13_1/Release/13_1.o 20_3/Release/20_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 20_3/scripts/20_3.prx +W bridge,../Release/20_3.o) 2>&1 |& tee -a 20_3/20_3.log 20_3/timestamped_log/20_3-${ts}.log
	set -o pipefail; (coreverify -obj 20_3 -s 1024 -pm 16384) 2>&1 |& tee -a 20_3/20_3.log 20_3/timestamped_log/20_3-${ts}.log

20_4: 13_1
	mkdir -p 20_4/Release
	cp 13_1/Release/13_1.o 20_4/Release/20_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 20_4/scripts/20_4.prx +W bridge,../Release/20_4.o) 2>&1 |& tee -a 20_4/20_4.log 20_4/timestamped_log/20_4-${ts}.log
	set -o pipefail; (coreverify -obj 20_4 -s 1024 -pm 16384) 2>&1 |& tee -a 20_4/20_4.log 20_4/timestamped_log/20_4-${ts}.log

21_1: 13_1
	mkdir -p 21_1/Release
	cp 13_1/Release/13_1.o 21_1/Release/21_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 21_1/scripts/21_1.prx +W bridge,../Release/21_1.o) 2>&1 |& tee -a 21_1/21_1.log 21_1/timestamped_log/21_1-${ts}.log
	set -o pipefail; (coreverify -obj 21_1 -s 1024 -pm 16384) 2>&1 |& tee -a 21_1/21_1.log 21_1/timestamped_log/21_1-${ts}.log

21_2: 13_1
	mkdir -p 21_2/Release
	cp 13_1/Release/13_1.o 21_2/Release/21_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 21_2/scripts/21_2.prx +W bridge,../Release/21_2.o) 2>&1 |& tee -a 21_2/21_2.log 21_2/timestamped_log/21_2-${ts}.log
	set -o pipefail; (coreverify -obj 21_2 -s 1024 -pm 16384) 2>&1 |& tee -a 21_2/21_2.log 21_2/timestamped_log/21_2-${ts}.log

21_3: 13_1
	mkdir -p 21_3/Release
	cp 13_1/Release/13_1.o 21_3/Release/21_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 21_3/scripts/21_3.prx +W bridge,../Release/21_3.o) 2>&1 |& tee -a 21_3/21_3.log 21_3/timestamped_log/21_3-${ts}.log
	set -o pipefail; (coreverify -obj 21_3 -s 1024 -pm 16384) 2>&1 |& tee -a 21_3/21_3.log 21_3/timestamped_log/21_3-${ts}.log

21_4: 13_1
	mkdir -p 21_4/Release
	cp 13_1/Release/13_1.o 21_4/Release/21_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 21_4/scripts/21_4.prx +W bridge,../Release/21_4.o) 2>&1 |& tee -a 21_4/21_4.log 21_4/timestamped_log/21_4-${ts}.log
	set -o pipefail; (coreverify -obj 21_4 -s 1024 -pm 16384) 2>&1 |& tee -a 21_4/21_4.log 21_4/timestamped_log/21_4-${ts}.log

22_2: 13_1
	mkdir -p 22_2/Release
	cp 13_1/Release/13_1.o 22_2/Release/22_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 22_2/scripts/22_2.prx +W bridge,../Release/22_2.o) 2>&1 |& tee -a 22_2/22_2.log 22_2/timestamped_log/22_2-${ts}.log
	set -o pipefail; (coreverify -obj 22_2 -s 1024 -pm 16384) 2>&1 |& tee -a 22_2/22_2.log 22_2/timestamped_log/22_2-${ts}.log

22_4: 13_1
	mkdir -p 22_4/Release
	cp 13_1/Release/13_1.o 22_4/Release/22_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 22_4/scripts/22_4.prx +W bridge,../Release/22_4.o) 2>&1 |& tee -a 22_4/22_4.log 22_4/timestamped_log/22_4-${ts}.log
	set -o pipefail; (coreverify -obj 22_4 -s 1024 -pm 16384) 2>&1 |& tee -a 22_4/22_4.log 22_4/timestamped_log/22_4-${ts}.log

15_6: 13_5
	mkdir -p 15_6/Release
	cp 13_5/Release/13_5.o 15_6/Release/15_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 15_6/scripts/15_6.prx +W bridge,../Release/15_6.o) 2>&1 |& tee -a 15_6/15_6.log 15_6/timestamped_log/15_6-${ts}.log
	set -o pipefail; (coreverify -obj 15_6 -s 1024 -pm 16384) 2>&1 |& tee -a 15_6/15_6.log 15_6/timestamped_log/15_6-${ts}.log

16_6: 13_5
	mkdir -p 16_6/Release
	cp 13_5/Release/13_5.o 16_6/Release/16_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 16_6/scripts/16_6.prx +W bridge,../Release/16_6.o) 2>&1 |& tee -a 16_6/16_6.log 16_6/timestamped_log/16_6-${ts}.log
	set -o pipefail; (coreverify -obj 16_6 -s 1024 -pm 16384) 2>&1 |& tee -a 16_6/16_6.log 16_6/timestamped_log/16_6-${ts}.log

17_6: 13_5
	mkdir -p 17_6/Release
	cp 13_5/Release/13_5.o 17_6/Release/17_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 17_6/scripts/17_6.prx +W bridge,../Release/17_6.o) 2>&1 |& tee -a 17_6/17_6.log 17_6/timestamped_log/17_6-${ts}.log
	set -o pipefail; (coreverify -obj 17_6 -s 1024 -pm 16384) 2>&1 |& tee -a 17_6/17_6.log 17_6/timestamped_log/17_6-${ts}.log

18_6: 13_5
	mkdir -p 18_6/Release
	cp 13_5/Release/13_5.o 18_6/Release/18_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 18_6/scripts/18_6.prx +W bridge,../Release/18_6.o) 2>&1 |& tee -a 18_6/18_6.log 18_6/timestamped_log/18_6-${ts}.log
	set -o pipefail; (coreverify -obj 18_6 -s 1024 -pm 16384) 2>&1 |& tee -a 18_6/18_6.log 18_6/timestamped_log/18_6-${ts}.log

19_6: 13_5
	mkdir -p 19_6/Release
	cp 13_5/Release/13_5.o 19_6/Release/19_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 19_6/scripts/19_6.prx +W bridge,../Release/19_6.o) 2>&1 |& tee -a 19_6/19_6.log 19_6/timestamped_log/19_6-${ts}.log
	set -o pipefail; (coreverify -obj 19_6 -s 1024 -pm 16384) 2>&1 |& tee -a 19_6/19_6.log 19_6/timestamped_log/19_6-${ts}.log

20_6: 13_5
	mkdir -p 20_6/Release
	cp 13_5/Release/13_5.o 20_6/Release/20_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 20_6/scripts/20_6.prx +W bridge,../Release/20_6.o) 2>&1 |& tee -a 20_6/20_6.log 20_6/timestamped_log/20_6-${ts}.log
	set -o pipefail; (coreverify -obj 20_6 -s 1024 -pm 16384) 2>&1 |& tee -a 20_6/20_6.log 20_6/timestamped_log/20_6-${ts}.log

21_6: 13_5
	mkdir -p 21_6/Release
	cp 13_5/Release/13_5.o 21_6/Release/21_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 21_6/scripts/21_6.prx +W bridge,../Release/21_6.o) 2>&1 |& tee -a 21_6/21_6.log 21_6/timestamped_log/21_6-${ts}.log
	set -o pipefail; (coreverify -obj 21_6 -s 1024 -pm 16384) 2>&1 |& tee -a 21_6/21_6.log 21_6/timestamped_log/21_6-${ts}.log

22_6: 13_5
	mkdir -p 22_6/Release
	cp 13_5/Release/13_5.o 22_6/Release/22_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 22_6/scripts/22_6.prx +W bridge,../Release/22_6.o) 2>&1 |& tee -a 22_6/22_6.log 22_6/timestamped_log/22_6-${ts}.log
	set -o pipefail; (coreverify -obj 22_6 -s 1024 -pm 16384) 2>&1 |& tee -a 22_6/22_6.log 22_6/timestamped_log/22_6-${ts}.log

22_1: 14_5
	mkdir -p 22_1/Release
	cp 14_5/Release/14_5.o 22_1/Release/22_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 22_1/scripts/22_1.prx +W bridge,../Release/22_1.o) 2>&1 |& tee -a 22_1/22_1.log 22_1/timestamped_log/22_1-${ts}.log
	set -o pipefail; (coreverify -obj 22_1 -s 1024 -pm 16384) 2>&1 |& tee -a 22_1/22_1.log 22_1/timestamped_log/22_1-${ts}.log

22_3: 14_5
	mkdir -p 22_3/Release
	cp 14_5/Release/14_5.o 22_3/Release/22_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 22_3/scripts/22_3.prx +W bridge,../Release/22_3.o) 2>&1 |& tee -a 22_3/22_3.log 22_3/timestamped_log/22_3-${ts}.log
	set -o pipefail; (coreverify -obj 22_3 -s 1024 -pm 16384) 2>&1 |& tee -a 22_3/22_3.log 22_3/timestamped_log/22_3-${ts}.log

23_2: 14_5
	mkdir -p 23_2/Release
	cp 14_5/Release/14_5.o 23_2/Release/23_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 23_2/scripts/23_2.prx +W bridge,../Release/23_2.o) 2>&1 |& tee -a 23_2/23_2.log 23_2/timestamped_log/23_2-${ts}.log
	set -o pipefail; (coreverify -obj 23_2 -s 1024 -pm 16384) 2>&1 |& tee -a 23_2/23_2.log 23_2/timestamped_log/23_2-${ts}.log

23_4: 14_5
	mkdir -p 23_4/Release
	cp 14_5/Release/14_5.o 23_4/Release/23_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 23_4/scripts/23_4.prx +W bridge,../Release/23_4.o) 2>&1 |& tee -a 23_4/23_4.log 23_4/timestamped_log/23_4-${ts}.log
	set -o pipefail; (coreverify -obj 23_4 -s 1024 -pm 16384) 2>&1 |& tee -a 23_4/23_4.log 23_4/timestamped_log/23_4-${ts}.log

23_6: 14_5
	mkdir -p 23_6/Release
	cp 14_5/Release/14_5.o 23_6/Release/23_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 23_6/scripts/23_6.prx +W bridge,../Release/23_6.o) 2>&1 |& tee -a 23_6/23_6.log 23_6/timestamped_log/23_6-${ts}.log
	set -o pipefail; (coreverify -obj 23_6 -s 1024 -pm 16384) 2>&1 |& tee -a 23_6/23_6.log 23_6/timestamped_log/23_6-${ts}.log

15_7: 14_7
	mkdir -p 15_7/Release
	cp 14_7/Release/14_7.o 15_7/Release/15_7.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 15_7/scripts/15_7.prx +W bridge,../Release/15_7.o) 2>&1 |& tee -a 15_7/15_7.log 15_7/timestamped_log/15_7-${ts}.log
	set -o pipefail; (coreverify -obj 15_7 -s 1024 -pm 16384) 2>&1 |& tee -a 15_7/15_7.log 15_7/timestamped_log/15_7-${ts}.log

16_7: 14_7
	mkdir -p 16_7/Release
	cp 14_7/Release/14_7.o 16_7/Release/16_7.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 16_7/scripts/16_7.prx +W bridge,../Release/16_7.o) 2>&1 |& tee -a 16_7/16_7.log 16_7/timestamped_log/16_7-${ts}.log
	set -o pipefail; (coreverify -obj 16_7 -s 1024 -pm 16384) 2>&1 |& tee -a 16_7/16_7.log 16_7/timestamped_log/16_7-${ts}.log

17_7: 14_7
	mkdir -p 17_7/Release
	cp 14_7/Release/14_7.o 17_7/Release/17_7.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 17_7/scripts/17_7.prx +W bridge,../Release/17_7.o) 2>&1 |& tee -a 17_7/17_7.log 17_7/timestamped_log/17_7-${ts}.log
	set -o pipefail; (coreverify -obj 17_7 -s 1024 -pm 16384) 2>&1 |& tee -a 17_7/17_7.log 17_7/timestamped_log/17_7-${ts}.log

18_7: 14_7
	mkdir -p 18_7/Release
	cp 14_7/Release/14_7.o 18_7/Release/18_7.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 18_7/scripts/18_7.prx +W bridge,../Release/18_7.o) 2>&1 |& tee -a 18_7/18_7.log 18_7/timestamped_log/18_7-${ts}.log
	set -o pipefail; (coreverify -obj 18_7 -s 1024 -pm 16384) 2>&1 |& tee -a 18_7/18_7.log 18_7/timestamped_log/18_7-${ts}.log

19_7: 14_7
	mkdir -p 19_7/Release
	cp 14_7/Release/14_7.o 19_7/Release/19_7.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 19_7/scripts/19_7.prx +W bridge,../Release/19_7.o) 2>&1 |& tee -a 19_7/19_7.log 19_7/timestamped_log/19_7-${ts}.log
	set -o pipefail; (coreverify -obj 19_7 -s 1024 -pm 16384) 2>&1 |& tee -a 19_7/19_7.log 19_7/timestamped_log/19_7-${ts}.log

20_7: 14_7
	mkdir -p 20_7/Release
	cp 14_7/Release/14_7.o 20_7/Release/20_7.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 20_7/scripts/20_7.prx +W bridge,../Release/20_7.o) 2>&1 |& tee -a 20_7/20_7.log 20_7/timestamped_log/20_7-${ts}.log
	set -o pipefail; (coreverify -obj 20_7 -s 1024 -pm 16384) 2>&1 |& tee -a 20_7/20_7.log 20_7/timestamped_log/20_7-${ts}.log

21_7: 14_7
	mkdir -p 21_7/Release
	cp 14_7/Release/14_7.o 21_7/Release/21_7.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 21_7/scripts/21_7.prx +W bridge,../Release/21_7.o) 2>&1 |& tee -a 21_7/21_7.log 21_7/timestamped_log/21_7-${ts}.log
	set -o pipefail; (coreverify -obj 21_7 -s 1024 -pm 16384) 2>&1 |& tee -a 21_7/21_7.log 21_7/timestamped_log/21_7-${ts}.log

22_7: 14_7
	mkdir -p 22_7/Release
	cp 14_7/Release/14_7.o 22_7/Release/22_7.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 22_7/scripts/22_7.prx +W bridge,../Release/22_7.o) 2>&1 |& tee -a 22_7/22_7.log 22_7/timestamped_log/22_7-${ts}.log
	set -o pipefail; (coreverify -obj 22_7 -s 1024 -pm 16384) 2>&1 |& tee -a 22_7/22_7.log 22_7/timestamped_log/22_7-${ts}.log

16_5: 15_5
	mkdir -p 16_5/Release
	cp 15_5/Release/15_5.o 16_5/Release/16_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 16_5/scripts/16_5.prx +W bridge,../Release/16_5.o) 2>&1 |& tee -a 16_5/16_5.log 16_5/timestamped_log/16_5-${ts}.log
	set -o pipefail; (coreverify -obj 16_5 -s 1024 -pm 16384) 2>&1 |& tee -a 16_5/16_5.log 16_5/timestamped_log/16_5-${ts}.log

17_5: 15_5
	mkdir -p 17_5/Release
	cp 15_5/Release/15_5.o 17_5/Release/17_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 17_5/scripts/17_5.prx +W bridge,../Release/17_5.o) 2>&1 |& tee -a 17_5/17_5.log 17_5/timestamped_log/17_5-${ts}.log
	set -o pipefail; (coreverify -obj 17_5 -s 1024 -pm 16384) 2>&1 |& tee -a 17_5/17_5.log 17_5/timestamped_log/17_5-${ts}.log

18_5: 15_5
	mkdir -p 18_5/Release
	cp 15_5/Release/15_5.o 18_5/Release/18_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 18_5/scripts/18_5.prx +W bridge,../Release/18_5.o) 2>&1 |& tee -a 18_5/18_5.log 18_5/timestamped_log/18_5-${ts}.log
	set -o pipefail; (coreverify -obj 18_5 -s 1024 -pm 16384) 2>&1 |& tee -a 18_5/18_5.log 18_5/timestamped_log/18_5-${ts}.log

19_5: 15_5
	mkdir -p 19_5/Release
	cp 15_5/Release/15_5.o 19_5/Release/19_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 19_5/scripts/19_5.prx +W bridge,../Release/19_5.o) 2>&1 |& tee -a 19_5/19_5.log 19_5/timestamped_log/19_5-${ts}.log
	set -o pipefail; (coreverify -obj 19_5 -s 1024 -pm 16384) 2>&1 |& tee -a 19_5/19_5.log 19_5/timestamped_log/19_5-${ts}.log

20_5: 15_5
	mkdir -p 20_5/Release
	cp 15_5/Release/15_5.o 20_5/Release/20_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 20_5/scripts/20_5.prx +W bridge,../Release/20_5.o) 2>&1 |& tee -a 20_5/20_5.log 20_5/timestamped_log/20_5-${ts}.log
	set -o pipefail; (coreverify -obj 20_5 -s 1024 -pm 16384) 2>&1 |& tee -a 20_5/20_5.log 20_5/timestamped_log/20_5-${ts}.log

21_5: 15_5
	mkdir -p 21_5/Release
	cp 15_5/Release/15_5.o 21_5/Release/21_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 21_5/scripts/21_5.prx +W bridge,../Release/21_5.o) 2>&1 |& tee -a 21_5/21_5.log 21_5/timestamped_log/21_5-${ts}.log
	set -o pipefail; (coreverify -obj 21_5 -s 1024 -pm 16384) 2>&1 |& tee -a 21_5/21_5.log 21_5/timestamped_log/21_5-${ts}.log

22_5: 15_5
	mkdir -p 22_5/Release
	cp 15_5/Release/15_5.o 22_5/Release/22_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 22_5/scripts/22_5.prx +W bridge,../Release/22_5.o) 2>&1 |& tee -a 22_5/22_5.log 22_5/timestamped_log/22_5-${ts}.log
	set -o pipefail; (coreverify -obj 22_5 -s 1024 -pm 16384) 2>&1 |& tee -a 22_5/22_5.log 22_5/timestamped_log/22_5-${ts}.log

23_3: 23_1
	mkdir -p 23_3/Release
	cp 23_1/Release/23_1.o 23_3/Release/23_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 23_3/scripts/23_3.prx +W bridge,../Release/23_3.o) 2>&1 |& tee -a 23_3/23_3.log 23_3/timestamped_log/23_3-${ts}.log
	set -o pipefail; (coreverify -obj 23_3 -s 1024 -pm 16384) 2>&1 |& tee -a 23_3/23_3.log 23_3/timestamped_log/23_3-${ts}.log

23_5: 23_1
	mkdir -p 23_5/Release
	cp 23_1/Release/23_1.o 23_5/Release/23_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 23_5/scripts/23_5.prx +W bridge,../Release/23_5.o) 2>&1 |& tee -a 23_5/23_5.log 23_5/timestamped_log/23_5-${ts}.log
	set -o pipefail; (coreverify -obj 23_5 -s 1024 -pm 16384) 2>&1 |& tee -a 23_5/23_5.log 23_5/timestamped_log/23_5-${ts}.log

35_0: 26_0
	mkdir -p 35_0/Release
	cp 26_0/Release/26_0.o 35_0/Release/35_0.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 35_0/scripts/35_0.prx +W bridge,../Release/35_0.o) 2>&1 |& tee -a 35_0/35_0.log 35_0/timestamped_log/35_0-${ts}.log
	set -o pipefail; (coreverify -obj 35_0 -s 1024 -pm 16384) 2>&1 |& tee -a 35_0/35_0.log 35_0/timestamped_log/35_0-${ts}.log

28_0: 27_0
	mkdir -p 28_0/Release
	cp 27_0/Release/27_0.o 28_0/Release/28_0.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 28_0/scripts/28_0.prx +W bridge,../Release/28_0.o) 2>&1 |& tee -a 28_0/28_0.log 28_0/timestamped_log/28_0-${ts}.log
	set -o pipefail; (coreverify -obj 28_0 -s 1024 -pm 16384) 2>&1 |& tee -a 28_0/28_0.log 28_0/timestamped_log/28_0-${ts}.log

30_0: 29_0
	mkdir -p 30_0/Release
	cp 29_0/Release/29_0.o 30_0/Release/30_0.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 30_0/scripts/30_0.prx +W bridge,../Release/30_0.o) 2>&1 |& tee -a 30_0/30_0.log 30_0/timestamped_log/30_0-${ts}.log
	set -o pipefail; (coreverify -obj 30_0 -s 1024 -pm 16384) 2>&1 |& tee -a 30_0/30_0.log 30_0/timestamped_log/30_0-${ts}.log

31_0: 29_0
	mkdir -p 31_0/Release
	cp 29_0/Release/29_0.o 31_0/Release/31_0.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 31_0/scripts/31_0.prx +W bridge,../Release/31_0.o) 2>&1 |& tee -a 31_0/31_0.log 31_0/timestamped_log/31_0-${ts}.log
	set -o pipefail; (coreverify -obj 31_0 -s 1024 -pm 16384) 2>&1 |& tee -a 31_0/31_0.log 31_0/timestamped_log/31_0-${ts}.log

32_0: 29_0
	mkdir -p 32_0/Release
	cp 29_0/Release/29_0.o 32_0/Release/32_0.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 32_0/scripts/32_0.prx +W bridge,../Release/32_0.o) 2>&1 |& tee -a 32_0/32_0.log 32_0/timestamped_log/32_0-${ts}.log
	set -o pipefail; (coreverify -obj 32_0 -s 1024 -pm 16384) 2>&1 |& tee -a 32_0/32_0.log 32_0/timestamped_log/32_0-${ts}.log

33_0: 29_0
	mkdir -p 33_0/Release
	cp 29_0/Release/29_0.o 33_0/Release/33_0.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 33_0/scripts/33_0.prx +W bridge,../Release/33_0.o) 2>&1 |& tee -a 33_0/33_0.log 33_0/timestamped_log/33_0-${ts}.log
	set -o pipefail; (coreverify -obj 33_0 -s 1024 -pm 16384) 2>&1 |& tee -a 33_0/33_0.log 33_0/timestamped_log/33_0-${ts}.log

clean:
	(rm -rf 0_0/Release)
	(rm -rf 0_1/Release)
	(rm -rf 0_2/Release)
	(rm -rf 0_3/Release)
	(rm -rf 0_4/Release)
	(rm -rf 0_5/Release)
	(rm -rf 0_6/Release)
	(rm -rf 0_7/Release)
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
	(rm -rf 5_0/Release)
	(rm -rf 5_1/Release)
	(rm -rf 5_2/Release)
	(rm -rf 5_3/Release)
	(rm -rf 5_4/Release)
	(rm -rf 5_5/Release)
	(rm -rf 5_6/Release)
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
	(rm -rf 10_0/Release)
	(rm -rf 10_1/Release)
	(rm -rf 10_2/Release)
	(rm -rf 10_3/Release)
	(rm -rf 10_4/Release)
	(rm -rf 10_5/Release)
	(rm -rf 10_6/Release)
	(rm -rf 11_0/Release)
	(rm -rf 11_1/Release)
	(rm -rf 11_2/Release)
	(rm -rf 11_3/Release)
	(rm -rf 11_4/Release)
	(rm -rf 11_5/Release)
	(rm -rf 11_6/Release)
	(rm -rf 12_5/Release)
	(rm -rf 12_6/Release)
	(rm -rf 12_7/Release)
	(rm -rf 13_1/Release)
	(rm -rf 13_2/Release)
	(rm -rf 13_3/Release)
	(rm -rf 13_4/Release)
	(rm -rf 13_5/Release)
	(rm -rf 13_6/Release)
	(rm -rf 13_7/Release)
	(rm -rf 14_1/Release)
	(rm -rf 14_2/Release)
	(rm -rf 14_3/Release)
	(rm -rf 14_4/Release)
	(rm -rf 14_5/Release)
	(rm -rf 14_6/Release)
	(rm -rf 14_7/Release)
	(rm -rf 15_1/Release)
	(rm -rf 15_2/Release)
	(rm -rf 15_3/Release)
	(rm -rf 15_4/Release)
	(rm -rf 15_5/Release)
	(rm -rf 15_6/Release)
	(rm -rf 15_7/Release)
	(rm -rf 16_1/Release)
	(rm -rf 16_2/Release)
	(rm -rf 16_3/Release)
	(rm -rf 16_4/Release)
	(rm -rf 16_5/Release)
	(rm -rf 16_6/Release)
	(rm -rf 16_7/Release)
	(rm -rf 17_1/Release)
	(rm -rf 17_2/Release)
	(rm -rf 17_3/Release)
	(rm -rf 17_4/Release)
	(rm -rf 17_5/Release)
	(rm -rf 17_6/Release)
	(rm -rf 17_7/Release)
	(rm -rf 18_1/Release)
	(rm -rf 18_2/Release)
	(rm -rf 18_3/Release)
	(rm -rf 18_4/Release)
	(rm -rf 18_5/Release)
	(rm -rf 18_6/Release)
	(rm -rf 18_7/Release)
	(rm -rf 19_1/Release)
	(rm -rf 19_2/Release)
	(rm -rf 19_3/Release)
	(rm -rf 19_4/Release)
	(rm -rf 19_5/Release)
	(rm -rf 19_6/Release)
	(rm -rf 19_7/Release)
	(rm -rf 20_1/Release)
	(rm -rf 20_2/Release)
	(rm -rf 20_3/Release)
	(rm -rf 20_4/Release)
	(rm -rf 20_5/Release)
	(rm -rf 20_6/Release)
	(rm -rf 20_7/Release)
	(rm -rf 21_1/Release)
	(rm -rf 21_2/Release)
	(rm -rf 21_3/Release)
	(rm -rf 21_4/Release)
	(rm -rf 21_5/Release)
	(rm -rf 21_6/Release)
	(rm -rf 21_7/Release)
	(rm -rf 22_1/Release)
	(rm -rf 22_2/Release)
	(rm -rf 22_3/Release)
	(rm -rf 22_4/Release)
	(rm -rf 22_5/Release)
	(rm -rf 22_6/Release)
	(rm -rf 22_7/Release)
	(rm -rf 23_1/Release)
	(rm -rf 23_2/Release)
	(rm -rf 23_3/Release)
	(rm -rf 23_4/Release)
	(rm -rf 23_5/Release)
	(rm -rf 23_6/Release)
	(rm -rf 23_7/Release)
	(rm -rf 25_0/Release)
	(rm -rf 25_1/Release)
	(rm -rf 25_2/Release)
	(rm -rf 25_3/Release)
	(rm -rf 25_4/Release)
	(rm -rf 25_5/Release)
	(rm -rf 25_6/Release)
	(rm -rf 26_0/Release)
	(rm -rf 26_1/Release)
	(rm -rf 26_2/Release)
	(rm -rf 26_3/Release)
	(rm -rf 26_4/Release)
	(rm -rf 26_5/Release)
	(rm -rf 26_6/Release)
	(rm -rf 27_0/Release)
	(rm -rf 27_1/Release)
	(rm -rf 27_2/Release)
	(rm -rf 27_3/Release)
	(rm -rf 27_4/Release)
	(rm -rf 27_5/Release)
	(rm -rf 27_6/Release)
	(rm -rf 28_0/Release)
	(rm -rf 28_1/Release)
	(rm -rf 28_2/Release)
	(rm -rf 28_3/Release)
	(rm -rf 28_4/Release)
	(rm -rf 28_5/Release)
	(rm -rf 28_6/Release)
	(rm -rf 29_0/Release)
	(rm -rf 29_1/Release)
	(rm -rf 29_2/Release)
	(rm -rf 29_3/Release)
	(rm -rf 29_4/Release)
	(rm -rf 29_5/Release)
	(rm -rf 29_6/Release)
	(rm -rf 30_0/Release)
	(rm -rf 30_1/Release)
	(rm -rf 30_2/Release)
	(rm -rf 30_3/Release)
	(rm -rf 30_4/Release)
	(rm -rf 30_5/Release)
	(rm -rf 30_6/Release)
	(rm -rf 31_0/Release)
	(rm -rf 31_1/Release)
	(rm -rf 31_2/Release)
	(rm -rf 31_3/Release)
	(rm -rf 31_4/Release)
	(rm -rf 31_5/Release)
	(rm -rf 31_6/Release)
	(rm -rf 32_0/Release)
	(rm -rf 32_1/Release)
	(rm -rf 32_2/Release)
	(rm -rf 32_3/Release)
	(rm -rf 32_4/Release)
	(rm -rf 32_5/Release)
	(rm -rf 32_6/Release)
	(rm -rf 33_0/Release)
	(rm -rf 33_1/Release)
	(rm -rf 33_2/Release)
	(rm -rf 33_3/Release)
	(rm -rf 33_4/Release)
	(rm -rf 33_5/Release)
	(rm -rf 33_6/Release)
	(rm -rf 34_0/Release)
	(rm -rf 34_1/Release)
	(rm -rf 34_2/Release)
	(rm -rf 34_3/Release)
	(rm -rf 34_4/Release)
	(rm -rf 34_5/Release)
	(rm -rf 34_6/Release)
	(rm -rf 35_0/Release)
	(rm -rf 35_1/Release)
	(rm -rf 35_2/Release)
	(rm -rf 35_3/Release)
	(rm -rf 35_4/Release)
	(rm -rf 35_5/Release)
	(rm -rf 35_6/Release)
