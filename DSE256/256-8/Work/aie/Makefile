SHELL=/bin/bash 
.PHONY: all 0_0 0_1 0_2 0_3 0_4 0_5 0_6 0_7 1_0 1_1 1_2 1_3 1_4 1_5 1_6 2_0 2_1 2_2 2_3 2_4 2_5 2_6 3_0 3_1 3_2 3_3 3_4 3_5 3_6 4_0 4_1 4_2 4_3 4_4 4_5 4_6 5_0 5_1 5_2 5_3 5_4 5_5 5_6 6_0 6_1 6_2 6_3 6_4 6_5 6_6 7_0 7_1 7_2 7_3 7_4 7_5 7_6 8_0 8_1 8_2 8_3 8_4 8_5 8_6 10_1 10_2 10_3 10_4 10_5 10_6 10_7 11_1 11_2 11_3 11_4 11_5 11_6 11_7 12_1 12_2 12_3 12_4 12_5 12_6 12_7 13_1 13_2 13_3 13_4 13_5 13_6 13_7 14_1 14_2 14_3 14_4 14_5 14_6 14_7 15_1 15_2 15_3 15_4 15_5 15_6 15_7 16_1 16_2 16_3 16_4 16_5 16_6 16_7 17_1 17_2 17_3 17_4 17_5 17_6 17_7 18_2 18_3 18_4 18_5 18_6 18_7 19_0 19_2 19_3 19_4 19_5 19_6 20_0 20_2 20_3 20_4 20_5 20_6 21_0 21_2 21_3 21_4 21_5 21_6 22_0 22_2 22_3 22_4 22_5 22_6 23_0 23_2 23_3 23_4 23_5 23_6 24_0 24_2 24_3 24_4 24_5 24_6 25_0 25_2 25_3 25_4 25_5 25_6 26_0 26_2 26_3 26_4 26_5 26_6 27_6 27_7 28_1 28_2 28_3 28_4 28_5 28_6 28_7 29_1 29_2 29_3 29_4 29_5 29_6 29_7 30_1 30_2 30_3 30_4 30_5 30_6 30_7 31_1 31_2 31_3 31_4 31_5 31_6 31_7 32_1 32_2 32_3 32_4 32_5 32_6 32_7 33_1 33_2 33_3 33_4 33_5 33_6 33_7 34_1 34_2 34_3 34_4 34_5 34_6 34_7 35_1 35_2 35_3 35_4 35_5 35_6 35_7 37_0 37_1 37_2 38_0 38_1 38_2 39_0 39_1 39_2 40_0 40_1 40_2 41_0 41_1 41_2 42_0 42_1 42_2 43_0 43_1 43_2 44_0 44_1 44_2 clean

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
all: 0_0 0_1 0_2 0_3 0_4 0_5 0_6 0_7 1_0 1_1 1_2 1_3 1_4 1_5 1_6 2_0 2_1 2_2 2_3 2_4 2_5 2_6 3_0 3_1 3_2 3_3 3_4 3_5 3_6 4_0 4_1 4_2 4_3 4_4 4_5 4_6 5_0 5_1 5_2 5_3 5_4 5_5 5_6 6_0 6_1 6_2 6_3 6_4 6_5 6_6 7_0 7_1 7_2 7_3 7_4 7_5 7_6 8_0 8_1 8_2 8_3 8_4 8_5 8_6 10_1 10_2 10_3 10_4 10_5 10_6 10_7 11_1 11_2 11_3 11_4 11_5 11_6 11_7 12_1 12_2 12_3 12_4 12_5 12_6 12_7 13_1 13_2 13_3 13_4 13_5 13_6 13_7 14_1 14_2 14_3 14_4 14_5 14_6 14_7 15_1 15_2 15_3 15_4 15_5 15_6 15_7 16_1 16_2 16_3 16_4 16_5 16_6 16_7 17_1 17_2 17_3 17_4 17_5 17_6 17_7 18_2 18_3 18_4 18_5 18_6 18_7 19_0 19_2 19_3 19_4 19_5 19_6 20_0 20_2 20_3 20_4 20_5 20_6 21_0 21_2 21_3 21_4 21_5 21_6 22_0 22_2 22_3 22_4 22_5 22_6 23_0 23_2 23_3 23_4 23_5 23_6 24_0 24_2 24_3 24_4 24_5 24_6 25_0 25_2 25_3 25_4 25_5 25_6 26_0 26_2 26_3 26_4 26_5 26_6 27_6 27_7 28_1 28_2 28_3 28_4 28_5 28_6 28_7 29_1 29_2 29_3 29_4 29_5 29_6 29_7 30_1 30_2 30_3 30_4 30_5 30_6 30_7 31_1 31_2 31_3 31_4 31_5 31_6 31_7 32_1 32_2 32_3 32_4 32_5 32_6 32_7 33_1 33_2 33_3 33_4 33_5 33_6 33_7 34_1 34_2 34_3 34_4 34_5 34_6 34_7 35_1 35_2 35_3 35_4 35_5 35_6 35_7 37_0 37_1 37_2 38_0 38_1 38_2 39_0 39_1 39_2 40_0 40_1 40_2 41_0 41_1 41_2 42_0 42_1 42_2 43_0 43_1 43_2 44_0 44_1 44_2 

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
0_7:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 0_7/scripts/0_7.prx) 2>&1 |& tee -a 0_7/0_7.log 0_7/timestamped_log/0_7-${ts}.log
	set -o pipefail; (coreverify -obj 0_7 -s 1024 -pm 16384) 2>&1 |& tee -a 0_7/0_7.log 0_7/timestamped_log/0_7-${ts}.log
	(readelf --debug-dump=decodedline 0_7/Release/0_7 >> 0_7/Release/0_7.txt)
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
1_5:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 1_5/scripts/1_5.prx) 2>&1 |& tee -a 1_5/1_5.log 1_5/timestamped_log/1_5-${ts}.log
	set -o pipefail; (coreverify -obj 1_5 -s 1024 -pm 16384) 2>&1 |& tee -a 1_5/1_5.log 1_5/timestamped_log/1_5-${ts}.log
	(readelf --debug-dump=decodedline 1_5/Release/1_5 >> 1_5/Release/1_5.txt)
1_6:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 1_6/scripts/1_6.prx) 2>&1 |& tee -a 1_6/1_6.log 1_6/timestamped_log/1_6-${ts}.log
	set -o pipefail; (coreverify -obj 1_6 -s 1024 -pm 16384) 2>&1 |& tee -a 1_6/1_6.log 1_6/timestamped_log/1_6-${ts}.log
	(readelf --debug-dump=decodedline 1_6/Release/1_6 >> 1_6/Release/1_6.txt)
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
2_5:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 2_5/scripts/2_5.prx) 2>&1 |& tee -a 2_5/2_5.log 2_5/timestamped_log/2_5-${ts}.log
	set -o pipefail; (coreverify -obj 2_5 -s 1024 -pm 16384) 2>&1 |& tee -a 2_5/2_5.log 2_5/timestamped_log/2_5-${ts}.log
	(readelf --debug-dump=decodedline 2_5/Release/2_5 >> 2_5/Release/2_5.txt)
2_6:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 2_6/scripts/2_6.prx) 2>&1 |& tee -a 2_6/2_6.log 2_6/timestamped_log/2_6-${ts}.log
	set -o pipefail; (coreverify -obj 2_6 -s 1024 -pm 16384) 2>&1 |& tee -a 2_6/2_6.log 2_6/timestamped_log/2_6-${ts}.log
	(readelf --debug-dump=decodedline 2_6/Release/2_6 >> 2_6/Release/2_6.txt)
3_1:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 3_1/scripts/3_1.prx) 2>&1 |& tee -a 3_1/3_1.log 3_1/timestamped_log/3_1-${ts}.log
	set -o pipefail; (coreverify -obj 3_1 -s 1024 -pm 16384) 2>&1 |& tee -a 3_1/3_1.log 3_1/timestamped_log/3_1-${ts}.log
	(readelf --debug-dump=decodedline 3_1/Release/3_1 >> 3_1/Release/3_1.txt)
4_0:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 4_0/scripts/4_0.prx) 2>&1 |& tee -a 4_0/4_0.log 4_0/timestamped_log/4_0-${ts}.log
	set -o pipefail; (coreverify -obj 4_0 -s 1024 -pm 16384) 2>&1 |& tee -a 4_0/4_0.log 4_0/timestamped_log/4_0-${ts}.log
	(readelf --debug-dump=decodedline 4_0/Release/4_0 >> 4_0/Release/4_0.txt)
5_5:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 5_5/scripts/5_5.prx) 2>&1 |& tee -a 5_5/5_5.log 5_5/timestamped_log/5_5-${ts}.log
	set -o pipefail; (coreverify -obj 5_5 -s 1024 -pm 16384) 2>&1 |& tee -a 5_5/5_5.log 5_5/timestamped_log/5_5-${ts}.log
	(readelf --debug-dump=decodedline 5_5/Release/5_5 >> 5_5/Release/5_5.txt)
6_0:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 6_0/scripts/6_0.prx) 2>&1 |& tee -a 6_0/6_0.log 6_0/timestamped_log/6_0-${ts}.log
	set -o pipefail; (coreverify -obj 6_0 -s 1024 -pm 16384) 2>&1 |& tee -a 6_0/6_0.log 6_0/timestamped_log/6_0-${ts}.log
	(readelf --debug-dump=decodedline 6_0/Release/6_0 >> 6_0/Release/6_0.txt)
7_5:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 7_5/scripts/7_5.prx) 2>&1 |& tee -a 7_5/7_5.log 7_5/timestamped_log/7_5-${ts}.log
	set -o pipefail; (coreverify -obj 7_5 -s 1024 -pm 16384) 2>&1 |& tee -a 7_5/7_5.log 7_5/timestamped_log/7_5-${ts}.log
	(readelf --debug-dump=decodedline 7_5/Release/7_5 >> 7_5/Release/7_5.txt)
8_1:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 8_1/scripts/8_1.prx) 2>&1 |& tee -a 8_1/8_1.log 8_1/timestamped_log/8_1-${ts}.log
	set -o pipefail; (coreverify -obj 8_1 -s 1024 -pm 16384) 2>&1 |& tee -a 8_1/8_1.log 8_1/timestamped_log/8_1-${ts}.log
	(readelf --debug-dump=decodedline 8_1/Release/8_1 >> 8_1/Release/8_1.txt)
8_5:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 8_5/scripts/8_5.prx) 2>&1 |& tee -a 8_5/8_5.log 8_5/timestamped_log/8_5-${ts}.log
	set -o pipefail; (coreverify -obj 8_5 -s 1024 -pm 16384) 2>&1 |& tee -a 8_5/8_5.log 8_5/timestamped_log/8_5-${ts}.log
	(readelf --debug-dump=decodedline 8_5/Release/8_5 >> 8_5/Release/8_5.txt)
10_1:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 10_1/scripts/10_1.prx) 2>&1 |& tee -a 10_1/10_1.log 10_1/timestamped_log/10_1-${ts}.log
	set -o pipefail; (coreverify -obj 10_1 -s 1024 -pm 16384) 2>&1 |& tee -a 10_1/10_1.log 10_1/timestamped_log/10_1-${ts}.log
	(readelf --debug-dump=decodedline 10_1/Release/10_1 >> 10_1/Release/10_1.txt)
10_2:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 10_2/scripts/10_2.prx) 2>&1 |& tee -a 10_2/10_2.log 10_2/timestamped_log/10_2-${ts}.log
	set -o pipefail; (coreverify -obj 10_2 -s 1024 -pm 16384) 2>&1 |& tee -a 10_2/10_2.log 10_2/timestamped_log/10_2-${ts}.log
	(readelf --debug-dump=decodedline 10_2/Release/10_2 >> 10_2/Release/10_2.txt)
10_3:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 10_3/scripts/10_3.prx) 2>&1 |& tee -a 10_3/10_3.log 10_3/timestamped_log/10_3-${ts}.log
	set -o pipefail; (coreverify -obj 10_3 -s 1024 -pm 16384) 2>&1 |& tee -a 10_3/10_3.log 10_3/timestamped_log/10_3-${ts}.log
	(readelf --debug-dump=decodedline 10_3/Release/10_3 >> 10_3/Release/10_3.txt)
10_7:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 10_7/scripts/10_7.prx) 2>&1 |& tee -a 10_7/10_7.log 10_7/timestamped_log/10_7-${ts}.log
	set -o pipefail; (coreverify -obj 10_7 -s 1024 -pm 16384) 2>&1 |& tee -a 10_7/10_7.log 10_7/timestamped_log/10_7-${ts}.log
	(readelf --debug-dump=decodedline 10_7/Release/10_7 >> 10_7/Release/10_7.txt)
11_1:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 11_1/scripts/11_1.prx) 2>&1 |& tee -a 11_1/11_1.log 11_1/timestamped_log/11_1-${ts}.log
	set -o pipefail; (coreverify -obj 11_1 -s 1024 -pm 16384) 2>&1 |& tee -a 11_1/11_1.log 11_1/timestamped_log/11_1-${ts}.log
	(readelf --debug-dump=decodedline 11_1/Release/11_1 >> 11_1/Release/11_1.txt)
11_2:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 11_2/scripts/11_2.prx) 2>&1 |& tee -a 11_2/11_2.log 11_2/timestamped_log/11_2-${ts}.log
	set -o pipefail; (coreverify -obj 11_2 -s 1024 -pm 16384) 2>&1 |& tee -a 11_2/11_2.log 11_2/timestamped_log/11_2-${ts}.log
	(readelf --debug-dump=decodedline 11_2/Release/11_2 >> 11_2/Release/11_2.txt)
11_7:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 11_7/scripts/11_7.prx) 2>&1 |& tee -a 11_7/11_7.log 11_7/timestamped_log/11_7-${ts}.log
	set -o pipefail; (coreverify -obj 11_7 -s 1024 -pm 16384) 2>&1 |& tee -a 11_7/11_7.log 11_7/timestamped_log/11_7-${ts}.log
	(readelf --debug-dump=decodedline 11_7/Release/11_7 >> 11_7/Release/11_7.txt)
13_1:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 13_1/scripts/13_1.prx) 2>&1 |& tee -a 13_1/13_1.log 13_1/timestamped_log/13_1-${ts}.log
	set -o pipefail; (coreverify -obj 13_1 -s 1024 -pm 16384) 2>&1 |& tee -a 13_1/13_1.log 13_1/timestamped_log/13_1-${ts}.log
	(readelf --debug-dump=decodedline 13_1/Release/13_1 >> 13_1/Release/13_1.txt)
16_3:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 16_3/scripts/16_3.prx) 2>&1 |& tee -a 16_3/16_3.log 16_3/timestamped_log/16_3-${ts}.log
	set -o pipefail; (coreverify -obj 16_3 -s 1024 -pm 16384) 2>&1 |& tee -a 16_3/16_3.log 16_3/timestamped_log/16_3-${ts}.log
	(readelf --debug-dump=decodedline 16_3/Release/16_3 >> 16_3/Release/16_3.txt)
17_1:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 17_1/scripts/17_1.prx) 2>&1 |& tee -a 17_1/17_1.log 17_1/timestamped_log/17_1-${ts}.log
	set -o pipefail; (coreverify -obj 17_1 -s 1024 -pm 16384) 2>&1 |& tee -a 17_1/17_1.log 17_1/timestamped_log/17_1-${ts}.log
	(readelf --debug-dump=decodedline 17_1/Release/17_1 >> 17_1/Release/17_1.txt)
17_3:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 17_3/scripts/17_3.prx) 2>&1 |& tee -a 17_3/17_3.log 17_3/timestamped_log/17_3-${ts}.log
	set -o pipefail; (coreverify -obj 17_3 -s 1024 -pm 16384) 2>&1 |& tee -a 17_3/17_3.log 17_3/timestamped_log/17_3-${ts}.log
	(readelf --debug-dump=decodedline 17_3/Release/17_3 >> 17_3/Release/17_3.txt)
17_5:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 17_5/scripts/17_5.prx) 2>&1 |& tee -a 17_5/17_5.log 17_5/timestamped_log/17_5-${ts}.log
	set -o pipefail; (coreverify -obj 17_5 -s 1024 -pm 16384) 2>&1 |& tee -a 17_5/17_5.log 17_5/timestamped_log/17_5-${ts}.log
	(readelf --debug-dump=decodedline 17_5/Release/17_5 >> 17_5/Release/17_5.txt)
17_7:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 17_7/scripts/17_7.prx) 2>&1 |& tee -a 17_7/17_7.log 17_7/timestamped_log/17_7-${ts}.log
	set -o pipefail; (coreverify -obj 17_7 -s 1024 -pm 16384) 2>&1 |& tee -a 17_7/17_7.log 17_7/timestamped_log/17_7-${ts}.log
	(readelf --debug-dump=decodedline 17_7/Release/17_7 >> 17_7/Release/17_7.txt)
18_2:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 18_2/scripts/18_2.prx) 2>&1 |& tee -a 18_2/18_2.log 18_2/timestamped_log/18_2-${ts}.log
	set -o pipefail; (coreverify -obj 18_2 -s 1024 -pm 16384) 2>&1 |& tee -a 18_2/18_2.log 18_2/timestamped_log/18_2-${ts}.log
	(readelf --debug-dump=decodedline 18_2/Release/18_2 >> 18_2/Release/18_2.txt)
18_3:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 18_3/scripts/18_3.prx) 2>&1 |& tee -a 18_3/18_3.log 18_3/timestamped_log/18_3-${ts}.log
	set -o pipefail; (coreverify -obj 18_3 -s 1024 -pm 16384) 2>&1 |& tee -a 18_3/18_3.log 18_3/timestamped_log/18_3-${ts}.log
	(readelf --debug-dump=decodedline 18_3/Release/18_3 >> 18_3/Release/18_3.txt)
18_6:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 18_6/scripts/18_6.prx) 2>&1 |& tee -a 18_6/18_6.log 18_6/timestamped_log/18_6-${ts}.log
	set -o pipefail; (coreverify -obj 18_6 -s 1024 -pm 16384) 2>&1 |& tee -a 18_6/18_6.log 18_6/timestamped_log/18_6-${ts}.log
	(readelf --debug-dump=decodedline 18_6/Release/18_6 >> 18_6/Release/18_6.txt)
18_7:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 18_7/scripts/18_7.prx) 2>&1 |& tee -a 18_7/18_7.log 18_7/timestamped_log/18_7-${ts}.log
	set -o pipefail; (coreverify -obj 18_7 -s 1024 -pm 16384) 2>&1 |& tee -a 18_7/18_7.log 18_7/timestamped_log/18_7-${ts}.log
	(readelf --debug-dump=decodedline 18_7/Release/18_7 >> 18_7/Release/18_7.txt)
19_0:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 19_0/scripts/19_0.prx) 2>&1 |& tee -a 19_0/19_0.log 19_0/timestamped_log/19_0-${ts}.log
	set -o pipefail; (coreverify -obj 19_0 -s 1024 -pm 16384) 2>&1 |& tee -a 19_0/19_0.log 19_0/timestamped_log/19_0-${ts}.log
	(readelf --debug-dump=decodedline 19_0/Release/19_0 >> 19_0/Release/19_0.txt)
19_2:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 19_2/scripts/19_2.prx) 2>&1 |& tee -a 19_2/19_2.log 19_2/timestamped_log/19_2-${ts}.log
	set -o pipefail; (coreverify -obj 19_2 -s 1024 -pm 16384) 2>&1 |& tee -a 19_2/19_2.log 19_2/timestamped_log/19_2-${ts}.log
	(readelf --debug-dump=decodedline 19_2/Release/19_2 >> 19_2/Release/19_2.txt)
20_2:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 20_2/scripts/20_2.prx) 2>&1 |& tee -a 20_2/20_2.log 20_2/timestamped_log/20_2-${ts}.log
	set -o pipefail; (coreverify -obj 20_2 -s 1024 -pm 16384) 2>&1 |& tee -a 20_2/20_2.log 20_2/timestamped_log/20_2-${ts}.log
	(readelf --debug-dump=decodedline 20_2/Release/20_2 >> 20_2/Release/20_2.txt)
23_0:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 23_0/scripts/23_0.prx) 2>&1 |& tee -a 23_0/23_0.log 23_0/timestamped_log/23_0-${ts}.log
	set -o pipefail; (coreverify -obj 23_0 -s 1024 -pm 16384) 2>&1 |& tee -a 23_0/23_0.log 23_0/timestamped_log/23_0-${ts}.log
	(readelf --debug-dump=decodedline 23_0/Release/23_0 >> 23_0/Release/23_0.txt)
24_0:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 24_0/scripts/24_0.prx) 2>&1 |& tee -a 24_0/24_0.log 24_0/timestamped_log/24_0-${ts}.log
	set -o pipefail; (coreverify -obj 24_0 -s 1024 -pm 16384) 2>&1 |& tee -a 24_0/24_0.log 24_0/timestamped_log/24_0-${ts}.log
	(readelf --debug-dump=decodedline 24_0/Release/24_0 >> 24_0/Release/24_0.txt)
27_6:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 27_6/scripts/27_6.prx) 2>&1 |& tee -a 27_6/27_6.log 27_6/timestamped_log/27_6-${ts}.log
	set -o pipefail; (coreverify -obj 27_6 -s 1024 -pm 16384) 2>&1 |& tee -a 27_6/27_6.log 27_6/timestamped_log/27_6-${ts}.log
	(readelf --debug-dump=decodedline 27_6/Release/27_6 >> 27_6/Release/27_6.txt)
27_7:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 27_7/scripts/27_7.prx) 2>&1 |& tee -a 27_7/27_7.log 27_7/timestamped_log/27_7-${ts}.log
	set -o pipefail; (coreverify -obj 27_7 -s 1024 -pm 16384) 2>&1 |& tee -a 27_7/27_7.log 27_7/timestamped_log/27_7-${ts}.log
	(readelf --debug-dump=decodedline 27_7/Release/27_7 >> 27_7/Release/27_7.txt)
31_6:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 31_6/scripts/31_6.prx) 2>&1 |& tee -a 31_6/31_6.log 31_6/timestamped_log/31_6-${ts}.log
	set -o pipefail; (coreverify -obj 31_6 -s 1024 -pm 16384) 2>&1 |& tee -a 31_6/31_6.log 31_6/timestamped_log/31_6-${ts}.log
	(readelf --debug-dump=decodedline 31_6/Release/31_6 >> 31_6/Release/31_6.txt)
31_7:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 31_7/scripts/31_7.prx) 2>&1 |& tee -a 31_7/31_7.log 31_7/timestamped_log/31_7-${ts}.log
	set -o pipefail; (coreverify -obj 31_7 -s 1024 -pm 16384) 2>&1 |& tee -a 31_7/31_7.log 31_7/timestamped_log/31_7-${ts}.log
	(readelf --debug-dump=decodedline 31_7/Release/31_7 >> 31_7/Release/31_7.txt)
32_6:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 32_6/scripts/32_6.prx) 2>&1 |& tee -a 32_6/32_6.log 32_6/timestamped_log/32_6-${ts}.log
	set -o pipefail; (coreverify -obj 32_6 -s 1024 -pm 16384) 2>&1 |& tee -a 32_6/32_6.log 32_6/timestamped_log/32_6-${ts}.log
	(readelf --debug-dump=decodedline 32_6/Release/32_6 >> 32_6/Release/32_6.txt)
32_7:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 32_7/scripts/32_7.prx) 2>&1 |& tee -a 32_7/32_7.log 32_7/timestamped_log/32_7-${ts}.log
	set -o pipefail; (coreverify -obj 32_7 -s 1024 -pm 16384) 2>&1 |& tee -a 32_7/32_7.log 32_7/timestamped_log/32_7-${ts}.log
	(readelf --debug-dump=decodedline 32_7/Release/32_7 >> 32_7/Release/32_7.txt)
33_7:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 33_7/scripts/33_7.prx) 2>&1 |& tee -a 33_7/33_7.log 33_7/timestamped_log/33_7-${ts}.log
	set -o pipefail; (coreverify -obj 33_7 -s 1024 -pm 16384) 2>&1 |& tee -a 33_7/33_7.log 33_7/timestamped_log/33_7-${ts}.log
	(readelf --debug-dump=decodedline 33_7/Release/33_7 >> 33_7/Release/33_7.txt)
35_1:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 35_1/scripts/35_1.prx) 2>&1 |& tee -a 35_1/35_1.log 35_1/timestamped_log/35_1-${ts}.log
	set -o pipefail; (coreverify -obj 35_1 -s 1024 -pm 16384) 2>&1 |& tee -a 35_1/35_1.log 35_1/timestamped_log/35_1-${ts}.log
	(readelf --debug-dump=decodedline 35_1/Release/35_1 >> 35_1/Release/35_1.txt)
37_0:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 37_0/scripts/37_0.prx) 2>&1 |& tee -a 37_0/37_0.log 37_0/timestamped_log/37_0-${ts}.log
	set -o pipefail; (coreverify -obj 37_0 -s 1024 -pm 16384) 2>&1 |& tee -a 37_0/37_0.log 37_0/timestamped_log/37_0-${ts}.log
	(readelf --debug-dump=decodedline 37_0/Release/37_0 >> 37_0/Release/37_0.txt)
37_2:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 37_2/scripts/37_2.prx) 2>&1 |& tee -a 37_2/37_2.log 37_2/timestamped_log/37_2-${ts}.log
	set -o pipefail; (coreverify -obj 37_2 -s 1024 -pm 16384) 2>&1 |& tee -a 37_2/37_2.log 37_2/timestamped_log/37_2-${ts}.log
	(readelf --debug-dump=decodedline 37_2/Release/37_2 >> 37_2/Release/37_2.txt)
38_0:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 38_0/scripts/38_0.prx) 2>&1 |& tee -a 38_0/38_0.log 38_0/timestamped_log/38_0-${ts}.log
	set -o pipefail; (coreverify -obj 38_0 -s 1024 -pm 16384) 2>&1 |& tee -a 38_0/38_0.log 38_0/timestamped_log/38_0-${ts}.log
	(readelf --debug-dump=decodedline 38_0/Release/38_0 >> 38_0/Release/38_0.txt)

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

18_4: 0_0
	mkdir -p 18_4/Release
	cp 0_0/Release/0_0.o 18_4/Release/18_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 18_4/scripts/18_4.prx +W bridge,../Release/18_4.o) 2>&1 |& tee -a 18_4/18_4.log 18_4/timestamped_log/18_4-${ts}.log
	set -o pipefail; (coreverify -obj 18_4 -s 1024 -pm 16384) 2>&1 |& tee -a 18_4/18_4.log 18_4/timestamped_log/18_4-${ts}.log

2_1: 1_1
	mkdir -p 2_1/Release
	cp 1_1/Release/1_1.o 2_1/Release/2_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 2_1/scripts/2_1.prx +W bridge,../Release/2_1.o) 2>&1 |& tee -a 2_1/2_1.log 2_1/timestamped_log/2_1-${ts}.log
	set -o pipefail; (coreverify -obj 2_1 -s 1024 -pm 16384) 2>&1 |& tee -a 2_1/2_1.log 2_1/timestamped_log/2_1-${ts}.log

3_2: 1_3
	mkdir -p 3_2/Release
	cp 1_3/Release/1_3.o 3_2/Release/3_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 3_2/scripts/3_2.prx +W bridge,../Release/3_2.o) 2>&1 |& tee -a 3_2/3_2.log 3_2/timestamped_log/3_2-${ts}.log
	set -o pipefail; (coreverify -obj 3_2 -s 1024 -pm 16384) 2>&1 |& tee -a 3_2/3_2.log 3_2/timestamped_log/3_2-${ts}.log

19_5: 1_3
	mkdir -p 19_5/Release
	cp 1_3/Release/1_3.o 19_5/Release/19_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 19_5/scripts/19_5.prx +W bridge,../Release/19_5.o) 2>&1 |& tee -a 19_5/19_5.log 19_5/timestamped_log/19_5-${ts}.log
	set -o pipefail; (coreverify -obj 19_5 -s 1024 -pm 16384) 2>&1 |& tee -a 19_5/19_5.log 19_5/timestamped_log/19_5-${ts}.log

19_4: 1_6
	mkdir -p 19_4/Release
	cp 1_6/Release/1_6.o 19_4/Release/19_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 19_4/scripts/19_4.prx +W bridge,../Release/19_4.o) 2>&1 |& tee -a 19_4/19_4.log 19_4/timestamped_log/19_4-${ts}.log
	set -o pipefail; (coreverify -obj 19_4 -s 1024 -pm 16384) 2>&1 |& tee -a 19_4/19_4.log 19_4/timestamped_log/19_4-${ts}.log

19_6: 1_6
	mkdir -p 19_6/Release
	cp 1_6/Release/1_6.o 19_6/Release/19_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 19_6/scripts/19_6.prx +W bridge,../Release/19_6.o) 2>&1 |& tee -a 19_6/19_6.log 19_6/timestamped_log/19_6-${ts}.log
	set -o pipefail; (coreverify -obj 19_6 -s 1024 -pm 16384) 2>&1 |& tee -a 19_6/19_6.log 19_6/timestamped_log/19_6-${ts}.log

3_0: 2_0
	mkdir -p 3_0/Release
	cp 2_0/Release/2_0.o 3_0/Release/3_0.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 3_0/scripts/3_0.prx +W bridge,../Release/3_0.o) 2>&1 |& tee -a 3_0/3_0.log 3_0/timestamped_log/3_0-${ts}.log
	set -o pipefail; (coreverify -obj 3_0 -s 1024 -pm 16384) 2>&1 |& tee -a 3_0/3_0.log 3_0/timestamped_log/3_0-${ts}.log

4_1: 2_2
	mkdir -p 4_1/Release
	cp 2_2/Release/2_2.o 4_1/Release/4_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 4_1/scripts/4_1.prx +W bridge,../Release/4_1.o) 2>&1 |& tee -a 4_1/4_1.log 4_1/timestamped_log/4_1-${ts}.log
	set -o pipefail; (coreverify -obj 4_1 -s 1024 -pm 16384) 2>&1 |& tee -a 4_1/4_1.log 4_1/timestamped_log/4_1-${ts}.log

5_1: 2_2
	mkdir -p 5_1/Release
	cp 2_2/Release/2_2.o 5_1/Release/5_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 5_1/scripts/5_1.prx +W bridge,../Release/5_1.o) 2>&1 |& tee -a 5_1/5_1.log 5_1/timestamped_log/5_1-${ts}.log
	set -o pipefail; (coreverify -obj 5_1 -s 1024 -pm 16384) 2>&1 |& tee -a 5_1/5_1.log 5_1/timestamped_log/5_1-${ts}.log

6_1: 2_2
	mkdir -p 6_1/Release
	cp 2_2/Release/2_2.o 6_1/Release/6_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 6_1/scripts/6_1.prx +W bridge,../Release/6_1.o) 2>&1 |& tee -a 6_1/6_1.log 6_1/timestamped_log/6_1-${ts}.log
	set -o pipefail; (coreverify -obj 6_1 -s 1024 -pm 16384) 2>&1 |& tee -a 6_1/6_1.log 6_1/timestamped_log/6_1-${ts}.log

7_1: 2_2
	mkdir -p 7_1/Release
	cp 2_2/Release/2_2.o 7_1/Release/7_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 7_1/scripts/7_1.prx +W bridge,../Release/7_1.o) 2>&1 |& tee -a 7_1/7_1.log 7_1/timestamped_log/7_1-${ts}.log
	set -o pipefail; (coreverify -obj 7_1 -s 1024 -pm 16384) 2>&1 |& tee -a 7_1/7_1.log 7_1/timestamped_log/7_1-${ts}.log

2_4: 2_3
	mkdir -p 2_4/Release
	cp 2_3/Release/2_3.o 2_4/Release/2_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 2_4/scripts/2_4.prx +W bridge,../Release/2_4.o) 2>&1 |& tee -a 2_4/2_4.log 2_4/timestamped_log/2_4-${ts}.log
	set -o pipefail; (coreverify -obj 2_4 -s 1024 -pm 16384) 2>&1 |& tee -a 2_4/2_4.log 2_4/timestamped_log/2_4-${ts}.log

3_3: 2_3
	mkdir -p 3_3/Release
	cp 2_3/Release/2_3.o 3_3/Release/3_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 3_3/scripts/3_3.prx +W bridge,../Release/3_3.o) 2>&1 |& tee -a 3_3/3_3.log 3_3/timestamped_log/3_3-${ts}.log
	set -o pipefail; (coreverify -obj 3_3 -s 1024 -pm 16384) 2>&1 |& tee -a 3_3/3_3.log 3_3/timestamped_log/3_3-${ts}.log

3_4: 2_3
	mkdir -p 3_4/Release
	cp 2_3/Release/2_3.o 3_4/Release/3_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 3_4/scripts/3_4.prx +W bridge,../Release/3_4.o) 2>&1 |& tee -a 3_4/3_4.log 3_4/timestamped_log/3_4-${ts}.log
	set -o pipefail; (coreverify -obj 3_4 -s 1024 -pm 16384) 2>&1 |& tee -a 3_4/3_4.log 3_4/timestamped_log/3_4-${ts}.log

4_2: 2_3
	mkdir -p 4_2/Release
	cp 2_3/Release/2_3.o 4_2/Release/4_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 4_2/scripts/4_2.prx +W bridge,../Release/4_2.o) 2>&1 |& tee -a 4_2/4_2.log 4_2/timestamped_log/4_2-${ts}.log
	set -o pipefail; (coreverify -obj 4_2 -s 1024 -pm 16384) 2>&1 |& tee -a 4_2/4_2.log 4_2/timestamped_log/4_2-${ts}.log

4_3: 2_3
	mkdir -p 4_3/Release
	cp 2_3/Release/2_3.o 4_3/Release/4_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 4_3/scripts/4_3.prx +W bridge,../Release/4_3.o) 2>&1 |& tee -a 4_3/4_3.log 4_3/timestamped_log/4_3-${ts}.log
	set -o pipefail; (coreverify -obj 4_3 -s 1024 -pm 16384) 2>&1 |& tee -a 4_3/4_3.log 4_3/timestamped_log/4_3-${ts}.log

4_4: 2_3
	mkdir -p 4_4/Release
	cp 2_3/Release/2_3.o 4_4/Release/4_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 4_4/scripts/4_4.prx +W bridge,../Release/4_4.o) 2>&1 |& tee -a 4_4/4_4.log 4_4/timestamped_log/4_4-${ts}.log
	set -o pipefail; (coreverify -obj 4_4 -s 1024 -pm 16384) 2>&1 |& tee -a 4_4/4_4.log 4_4/timestamped_log/4_4-${ts}.log

5_2: 2_3
	mkdir -p 5_2/Release
	cp 2_3/Release/2_3.o 5_2/Release/5_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 5_2/scripts/5_2.prx +W bridge,../Release/5_2.o) 2>&1 |& tee -a 5_2/5_2.log 5_2/timestamped_log/5_2-${ts}.log
	set -o pipefail; (coreverify -obj 5_2 -s 1024 -pm 16384) 2>&1 |& tee -a 5_2/5_2.log 5_2/timestamped_log/5_2-${ts}.log

5_3: 2_3
	mkdir -p 5_3/Release
	cp 2_3/Release/2_3.o 5_3/Release/5_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 5_3/scripts/5_3.prx +W bridge,../Release/5_3.o) 2>&1 |& tee -a 5_3/5_3.log 5_3/timestamped_log/5_3-${ts}.log
	set -o pipefail; (coreverify -obj 5_3 -s 1024 -pm 16384) 2>&1 |& tee -a 5_3/5_3.log 5_3/timestamped_log/5_3-${ts}.log

5_4: 2_3
	mkdir -p 5_4/Release
	cp 2_3/Release/2_3.o 5_4/Release/5_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 5_4/scripts/5_4.prx +W bridge,../Release/5_4.o) 2>&1 |& tee -a 5_4/5_4.log 5_4/timestamped_log/5_4-${ts}.log
	set -o pipefail; (coreverify -obj 5_4 -s 1024 -pm 16384) 2>&1 |& tee -a 5_4/5_4.log 5_4/timestamped_log/5_4-${ts}.log

6_2: 2_3
	mkdir -p 6_2/Release
	cp 2_3/Release/2_3.o 6_2/Release/6_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 6_2/scripts/6_2.prx +W bridge,../Release/6_2.o) 2>&1 |& tee -a 6_2/6_2.log 6_2/timestamped_log/6_2-${ts}.log
	set -o pipefail; (coreverify -obj 6_2 -s 1024 -pm 16384) 2>&1 |& tee -a 6_2/6_2.log 6_2/timestamped_log/6_2-${ts}.log

6_3: 2_3
	mkdir -p 6_3/Release
	cp 2_3/Release/2_3.o 6_3/Release/6_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 6_3/scripts/6_3.prx +W bridge,../Release/6_3.o) 2>&1 |& tee -a 6_3/6_3.log 6_3/timestamped_log/6_3-${ts}.log
	set -o pipefail; (coreverify -obj 6_3 -s 1024 -pm 16384) 2>&1 |& tee -a 6_3/6_3.log 6_3/timestamped_log/6_3-${ts}.log

6_4: 2_3
	mkdir -p 6_4/Release
	cp 2_3/Release/2_3.o 6_4/Release/6_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 6_4/scripts/6_4.prx +W bridge,../Release/6_4.o) 2>&1 |& tee -a 6_4/6_4.log 6_4/timestamped_log/6_4-${ts}.log
	set -o pipefail; (coreverify -obj 6_4 -s 1024 -pm 16384) 2>&1 |& tee -a 6_4/6_4.log 6_4/timestamped_log/6_4-${ts}.log

6_6: 2_3
	mkdir -p 6_6/Release
	cp 2_3/Release/2_3.o 6_6/Release/6_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 6_6/scripts/6_6.prx +W bridge,../Release/6_6.o) 2>&1 |& tee -a 6_6/6_6.log 6_6/timestamped_log/6_6-${ts}.log
	set -o pipefail; (coreverify -obj 6_6 -s 1024 -pm 16384) 2>&1 |& tee -a 6_6/6_6.log 6_6/timestamped_log/6_6-${ts}.log

7_2: 2_3
	mkdir -p 7_2/Release
	cp 2_3/Release/2_3.o 7_2/Release/7_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 7_2/scripts/7_2.prx +W bridge,../Release/7_2.o) 2>&1 |& tee -a 7_2/7_2.log 7_2/timestamped_log/7_2-${ts}.log
	set -o pipefail; (coreverify -obj 7_2 -s 1024 -pm 16384) 2>&1 |& tee -a 7_2/7_2.log 7_2/timestamped_log/7_2-${ts}.log

7_4: 2_3
	mkdir -p 7_4/Release
	cp 2_3/Release/2_3.o 7_4/Release/7_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 7_4/scripts/7_4.prx +W bridge,../Release/7_4.o) 2>&1 |& tee -a 7_4/7_4.log 7_4/timestamped_log/7_4-${ts}.log
	set -o pipefail; (coreverify -obj 7_4 -s 1024 -pm 16384) 2>&1 |& tee -a 7_4/7_4.log 7_4/timestamped_log/7_4-${ts}.log

7_6: 2_3
	mkdir -p 7_6/Release
	cp 2_3/Release/2_3.o 7_6/Release/7_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 7_6/scripts/7_6.prx +W bridge,../Release/7_6.o) 2>&1 |& tee -a 7_6/7_6.log 7_6/timestamped_log/7_6-${ts}.log
	set -o pipefail; (coreverify -obj 7_6 -s 1024 -pm 16384) 2>&1 |& tee -a 7_6/7_6.log 7_6/timestamped_log/7_6-${ts}.log

19_3: 2_3
	mkdir -p 19_3/Release
	cp 2_3/Release/2_3.o 19_3/Release/19_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 19_3/scripts/19_3.prx +W bridge,../Release/19_3.o) 2>&1 |& tee -a 19_3/19_3.log 19_3/timestamped_log/19_3-${ts}.log
	set -o pipefail; (coreverify -obj 19_3 -s 1024 -pm 16384) 2>&1 |& tee -a 19_3/19_3.log 19_3/timestamped_log/19_3-${ts}.log

20_3: 2_3
	mkdir -p 20_3/Release
	cp 2_3/Release/2_3.o 20_3/Release/20_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 20_3/scripts/20_3.prx +W bridge,../Release/20_3.o) 2>&1 |& tee -a 20_3/20_3.log 20_3/timestamped_log/20_3-${ts}.log
	set -o pipefail; (coreverify -obj 20_3 -s 1024 -pm 16384) 2>&1 |& tee -a 20_3/20_3.log 20_3/timestamped_log/20_3-${ts}.log

20_4: 2_3
	mkdir -p 20_4/Release
	cp 2_3/Release/2_3.o 20_4/Release/20_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 20_4/scripts/20_4.prx +W bridge,../Release/20_4.o) 2>&1 |& tee -a 20_4/20_4.log 20_4/timestamped_log/20_4-${ts}.log
	set -o pipefail; (coreverify -obj 20_4 -s 1024 -pm 16384) 2>&1 |& tee -a 20_4/20_4.log 20_4/timestamped_log/20_4-${ts}.log

20_5: 2_3
	mkdir -p 20_5/Release
	cp 2_3/Release/2_3.o 20_5/Release/20_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 20_5/scripts/20_5.prx +W bridge,../Release/20_5.o) 2>&1 |& tee -a 20_5/20_5.log 20_5/timestamped_log/20_5-${ts}.log
	set -o pipefail; (coreverify -obj 20_5 -s 1024 -pm 16384) 2>&1 |& tee -a 20_5/20_5.log 20_5/timestamped_log/20_5-${ts}.log

20_6: 2_3
	mkdir -p 20_6/Release
	cp 2_3/Release/2_3.o 20_6/Release/20_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 20_6/scripts/20_6.prx +W bridge,../Release/20_6.o) 2>&1 |& tee -a 20_6/20_6.log 20_6/timestamped_log/20_6-${ts}.log
	set -o pipefail; (coreverify -obj 20_6 -s 1024 -pm 16384) 2>&1 |& tee -a 20_6/20_6.log 20_6/timestamped_log/20_6-${ts}.log

21_3: 2_3
	mkdir -p 21_3/Release
	cp 2_3/Release/2_3.o 21_3/Release/21_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 21_3/scripts/21_3.prx +W bridge,../Release/21_3.o) 2>&1 |& tee -a 21_3/21_3.log 21_3/timestamped_log/21_3-${ts}.log
	set -o pipefail; (coreverify -obj 21_3 -s 1024 -pm 16384) 2>&1 |& tee -a 21_3/21_3.log 21_3/timestamped_log/21_3-${ts}.log

21_4: 2_3
	mkdir -p 21_4/Release
	cp 2_3/Release/2_3.o 21_4/Release/21_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 21_4/scripts/21_4.prx +W bridge,../Release/21_4.o) 2>&1 |& tee -a 21_4/21_4.log 21_4/timestamped_log/21_4-${ts}.log
	set -o pipefail; (coreverify -obj 21_4 -s 1024 -pm 16384) 2>&1 |& tee -a 21_4/21_4.log 21_4/timestamped_log/21_4-${ts}.log

21_5: 2_3
	mkdir -p 21_5/Release
	cp 2_3/Release/2_3.o 21_5/Release/21_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 21_5/scripts/21_5.prx +W bridge,../Release/21_5.o) 2>&1 |& tee -a 21_5/21_5.log 21_5/timestamped_log/21_5-${ts}.log
	set -o pipefail; (coreverify -obj 21_5 -s 1024 -pm 16384) 2>&1 |& tee -a 21_5/21_5.log 21_5/timestamped_log/21_5-${ts}.log

21_6: 2_3
	mkdir -p 21_6/Release
	cp 2_3/Release/2_3.o 21_6/Release/21_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 21_6/scripts/21_6.prx +W bridge,../Release/21_6.o) 2>&1 |& tee -a 21_6/21_6.log 21_6/timestamped_log/21_6-${ts}.log
	set -o pipefail; (coreverify -obj 21_6 -s 1024 -pm 16384) 2>&1 |& tee -a 21_6/21_6.log 21_6/timestamped_log/21_6-${ts}.log

22_3: 2_3
	mkdir -p 22_3/Release
	cp 2_3/Release/2_3.o 22_3/Release/22_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 22_3/scripts/22_3.prx +W bridge,../Release/22_3.o) 2>&1 |& tee -a 22_3/22_3.log 22_3/timestamped_log/22_3-${ts}.log
	set -o pipefail; (coreverify -obj 22_3 -s 1024 -pm 16384) 2>&1 |& tee -a 22_3/22_3.log 22_3/timestamped_log/22_3-${ts}.log

22_4: 2_3
	mkdir -p 22_4/Release
	cp 2_3/Release/2_3.o 22_4/Release/22_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 22_4/scripts/22_4.prx +W bridge,../Release/22_4.o) 2>&1 |& tee -a 22_4/22_4.log 22_4/timestamped_log/22_4-${ts}.log
	set -o pipefail; (coreverify -obj 22_4 -s 1024 -pm 16384) 2>&1 |& tee -a 22_4/22_4.log 22_4/timestamped_log/22_4-${ts}.log

22_5: 2_3
	mkdir -p 22_5/Release
	cp 2_3/Release/2_3.o 22_5/Release/22_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 22_5/scripts/22_5.prx +W bridge,../Release/22_5.o) 2>&1 |& tee -a 22_5/22_5.log 22_5/timestamped_log/22_5-${ts}.log
	set -o pipefail; (coreverify -obj 22_5 -s 1024 -pm 16384) 2>&1 |& tee -a 22_5/22_5.log 22_5/timestamped_log/22_5-${ts}.log

22_6: 2_3
	mkdir -p 22_6/Release
	cp 2_3/Release/2_3.o 22_6/Release/22_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 22_6/scripts/22_6.prx +W bridge,../Release/22_6.o) 2>&1 |& tee -a 22_6/22_6.log 22_6/timestamped_log/22_6-${ts}.log
	set -o pipefail; (coreverify -obj 22_6 -s 1024 -pm 16384) 2>&1 |& tee -a 22_6/22_6.log 22_6/timestamped_log/22_6-${ts}.log

23_3: 2_3
	mkdir -p 23_3/Release
	cp 2_3/Release/2_3.o 23_3/Release/23_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 23_3/scripts/23_3.prx +W bridge,../Release/23_3.o) 2>&1 |& tee -a 23_3/23_3.log 23_3/timestamped_log/23_3-${ts}.log
	set -o pipefail; (coreverify -obj 23_3 -s 1024 -pm 16384) 2>&1 |& tee -a 23_3/23_3.log 23_3/timestamped_log/23_3-${ts}.log

23_4: 2_3
	mkdir -p 23_4/Release
	cp 2_3/Release/2_3.o 23_4/Release/23_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 23_4/scripts/23_4.prx +W bridge,../Release/23_4.o) 2>&1 |& tee -a 23_4/23_4.log 23_4/timestamped_log/23_4-${ts}.log
	set -o pipefail; (coreverify -obj 23_4 -s 1024 -pm 16384) 2>&1 |& tee -a 23_4/23_4.log 23_4/timestamped_log/23_4-${ts}.log

23_5: 2_3
	mkdir -p 23_5/Release
	cp 2_3/Release/2_3.o 23_5/Release/23_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 23_5/scripts/23_5.prx +W bridge,../Release/23_5.o) 2>&1 |& tee -a 23_5/23_5.log 23_5/timestamped_log/23_5-${ts}.log
	set -o pipefail; (coreverify -obj 23_5 -s 1024 -pm 16384) 2>&1 |& tee -a 23_5/23_5.log 23_5/timestamped_log/23_5-${ts}.log

23_6: 2_3
	mkdir -p 23_6/Release
	cp 2_3/Release/2_3.o 23_6/Release/23_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 23_6/scripts/23_6.prx +W bridge,../Release/23_6.o) 2>&1 |& tee -a 23_6/23_6.log 23_6/timestamped_log/23_6-${ts}.log
	set -o pipefail; (coreverify -obj 23_6 -s 1024 -pm 16384) 2>&1 |& tee -a 23_6/23_6.log 23_6/timestamped_log/23_6-${ts}.log

24_3: 2_3
	mkdir -p 24_3/Release
	cp 2_3/Release/2_3.o 24_3/Release/24_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 24_3/scripts/24_3.prx +W bridge,../Release/24_3.o) 2>&1 |& tee -a 24_3/24_3.log 24_3/timestamped_log/24_3-${ts}.log
	set -o pipefail; (coreverify -obj 24_3 -s 1024 -pm 16384) 2>&1 |& tee -a 24_3/24_3.log 24_3/timestamped_log/24_3-${ts}.log

24_4: 2_3
	mkdir -p 24_4/Release
	cp 2_3/Release/2_3.o 24_4/Release/24_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 24_4/scripts/24_4.prx +W bridge,../Release/24_4.o) 2>&1 |& tee -a 24_4/24_4.log 24_4/timestamped_log/24_4-${ts}.log
	set -o pipefail; (coreverify -obj 24_4 -s 1024 -pm 16384) 2>&1 |& tee -a 24_4/24_4.log 24_4/timestamped_log/24_4-${ts}.log

24_5: 2_3
	mkdir -p 24_5/Release
	cp 2_3/Release/2_3.o 24_5/Release/24_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 24_5/scripts/24_5.prx +W bridge,../Release/24_5.o) 2>&1 |& tee -a 24_5/24_5.log 24_5/timestamped_log/24_5-${ts}.log
	set -o pipefail; (coreverify -obj 24_5 -s 1024 -pm 16384) 2>&1 |& tee -a 24_5/24_5.log 24_5/timestamped_log/24_5-${ts}.log

24_6: 2_3
	mkdir -p 24_6/Release
	cp 2_3/Release/2_3.o 24_6/Release/24_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 24_6/scripts/24_6.prx +W bridge,../Release/24_6.o) 2>&1 |& tee -a 24_6/24_6.log 24_6/timestamped_log/24_6-${ts}.log
	set -o pipefail; (coreverify -obj 24_6 -s 1024 -pm 16384) 2>&1 |& tee -a 24_6/24_6.log 24_6/timestamped_log/24_6-${ts}.log

25_4: 2_3
	mkdir -p 25_4/Release
	cp 2_3/Release/2_3.o 25_4/Release/25_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 25_4/scripts/25_4.prx +W bridge,../Release/25_4.o) 2>&1 |& tee -a 25_4/25_4.log 25_4/timestamped_log/25_4-${ts}.log
	set -o pipefail; (coreverify -obj 25_4 -s 1024 -pm 16384) 2>&1 |& tee -a 25_4/25_4.log 25_4/timestamped_log/25_4-${ts}.log

25_6: 2_3
	mkdir -p 25_6/Release
	cp 2_3/Release/2_3.o 25_6/Release/25_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 25_6/scripts/25_6.prx +W bridge,../Release/25_6.o) 2>&1 |& tee -a 25_6/25_6.log 25_6/timestamped_log/25_6-${ts}.log
	set -o pipefail; (coreverify -obj 25_6 -s 1024 -pm 16384) 2>&1 |& tee -a 25_6/25_6.log 25_6/timestamped_log/25_6-${ts}.log

37_1: 2_3
	mkdir -p 37_1/Release
	cp 2_3/Release/2_3.o 37_1/Release/37_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 37_1/scripts/37_1.prx +W bridge,../Release/37_1.o) 2>&1 |& tee -a 37_1/37_1.log 37_1/timestamped_log/37_1-${ts}.log
	set -o pipefail; (coreverify -obj 37_1 -s 1024 -pm 16384) 2>&1 |& tee -a 37_1/37_1.log 37_1/timestamped_log/37_1-${ts}.log

38_1: 2_3
	mkdir -p 38_1/Release
	cp 2_3/Release/2_3.o 38_1/Release/38_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 38_1/scripts/38_1.prx +W bridge,../Release/38_1.o) 2>&1 |& tee -a 38_1/38_1.log 38_1/timestamped_log/38_1-${ts}.log
	set -o pipefail; (coreverify -obj 38_1 -s 1024 -pm 16384) 2>&1 |& tee -a 38_1/38_1.log 38_1/timestamped_log/38_1-${ts}.log

38_2: 2_3
	mkdir -p 38_2/Release
	cp 2_3/Release/2_3.o 38_2/Release/38_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 38_2/scripts/38_2.prx +W bridge,../Release/38_2.o) 2>&1 |& tee -a 38_2/38_2.log 38_2/timestamped_log/38_2-${ts}.log
	set -o pipefail; (coreverify -obj 38_2 -s 1024 -pm 16384) 2>&1 |& tee -a 38_2/38_2.log 38_2/timestamped_log/38_2-${ts}.log

39_1: 2_3
	mkdir -p 39_1/Release
	cp 2_3/Release/2_3.o 39_1/Release/39_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 39_1/scripts/39_1.prx +W bridge,../Release/39_1.o) 2>&1 |& tee -a 39_1/39_1.log 39_1/timestamped_log/39_1-${ts}.log
	set -o pipefail; (coreverify -obj 39_1 -s 1024 -pm 16384) 2>&1 |& tee -a 39_1/39_1.log 39_1/timestamped_log/39_1-${ts}.log

39_2: 2_3
	mkdir -p 39_2/Release
	cp 2_3/Release/2_3.o 39_2/Release/39_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 39_2/scripts/39_2.prx +W bridge,../Release/39_2.o) 2>&1 |& tee -a 39_2/39_2.log 39_2/timestamped_log/39_2-${ts}.log
	set -o pipefail; (coreverify -obj 39_2 -s 1024 -pm 16384) 2>&1 |& tee -a 39_2/39_2.log 39_2/timestamped_log/39_2-${ts}.log

40_1: 2_3
	mkdir -p 40_1/Release
	cp 2_3/Release/2_3.o 40_1/Release/40_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 40_1/scripts/40_1.prx +W bridge,../Release/40_1.o) 2>&1 |& tee -a 40_1/40_1.log 40_1/timestamped_log/40_1-${ts}.log
	set -o pipefail; (coreverify -obj 40_1 -s 1024 -pm 16384) 2>&1 |& tee -a 40_1/40_1.log 40_1/timestamped_log/40_1-${ts}.log

40_2: 2_3
	mkdir -p 40_2/Release
	cp 2_3/Release/2_3.o 40_2/Release/40_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 40_2/scripts/40_2.prx +W bridge,../Release/40_2.o) 2>&1 |& tee -a 40_2/40_2.log 40_2/timestamped_log/40_2-${ts}.log
	set -o pipefail; (coreverify -obj 40_2 -s 1024 -pm 16384) 2>&1 |& tee -a 40_2/40_2.log 40_2/timestamped_log/40_2-${ts}.log

41_1: 2_3
	mkdir -p 41_1/Release
	cp 2_3/Release/2_3.o 41_1/Release/41_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 41_1/scripts/41_1.prx +W bridge,../Release/41_1.o) 2>&1 |& tee -a 41_1/41_1.log 41_1/timestamped_log/41_1-${ts}.log
	set -o pipefail; (coreverify -obj 41_1 -s 1024 -pm 16384) 2>&1 |& tee -a 41_1/41_1.log 41_1/timestamped_log/41_1-${ts}.log

41_2: 2_3
	mkdir -p 41_2/Release
	cp 2_3/Release/2_3.o 41_2/Release/41_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 41_2/scripts/41_2.prx +W bridge,../Release/41_2.o) 2>&1 |& tee -a 41_2/41_2.log 41_2/timestamped_log/41_2-${ts}.log
	set -o pipefail; (coreverify -obj 41_2 -s 1024 -pm 16384) 2>&1 |& tee -a 41_2/41_2.log 41_2/timestamped_log/41_2-${ts}.log

42_1: 2_3
	mkdir -p 42_1/Release
	cp 2_3/Release/2_3.o 42_1/Release/42_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 42_1/scripts/42_1.prx +W bridge,../Release/42_1.o) 2>&1 |& tee -a 42_1/42_1.log 42_1/timestamped_log/42_1-${ts}.log
	set -o pipefail; (coreverify -obj 42_1 -s 1024 -pm 16384) 2>&1 |& tee -a 42_1/42_1.log 42_1/timestamped_log/42_1-${ts}.log

42_2: 2_3
	mkdir -p 42_2/Release
	cp 2_3/Release/2_3.o 42_2/Release/42_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 42_2/scripts/42_2.prx +W bridge,../Release/42_2.o) 2>&1 |& tee -a 42_2/42_2.log 42_2/timestamped_log/42_2-${ts}.log
	set -o pipefail; (coreverify -obj 42_2 -s 1024 -pm 16384) 2>&1 |& tee -a 42_2/42_2.log 42_2/timestamped_log/42_2-${ts}.log

43_2: 2_3
	mkdir -p 43_2/Release
	cp 2_3/Release/2_3.o 43_2/Release/43_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 43_2/scripts/43_2.prx +W bridge,../Release/43_2.o) 2>&1 |& tee -a 43_2/43_2.log 43_2/timestamped_log/43_2-${ts}.log
	set -o pipefail; (coreverify -obj 43_2 -s 1024 -pm 16384) 2>&1 |& tee -a 43_2/43_2.log 43_2/timestamped_log/43_2-${ts}.log

3_5: 2_5
	mkdir -p 3_5/Release
	cp 2_5/Release/2_5.o 3_5/Release/3_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 3_5/scripts/3_5.prx +W bridge,../Release/3_5.o) 2>&1 |& tee -a 3_5/3_5.log 3_5/timestamped_log/3_5-${ts}.log
	set -o pipefail; (coreverify -obj 3_5 -s 1024 -pm 16384) 2>&1 |& tee -a 3_5/3_5.log 3_5/timestamped_log/3_5-${ts}.log

4_5: 2_5
	mkdir -p 4_5/Release
	cp 2_5/Release/2_5.o 4_5/Release/4_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 4_5/scripts/4_5.prx +W bridge,../Release/4_5.o) 2>&1 |& tee -a 4_5/4_5.log 4_5/timestamped_log/4_5-${ts}.log
	set -o pipefail; (coreverify -obj 4_5 -s 1024 -pm 16384) 2>&1 |& tee -a 4_5/4_5.log 4_5/timestamped_log/4_5-${ts}.log

3_6: 2_6
	mkdir -p 3_6/Release
	cp 2_6/Release/2_6.o 3_6/Release/3_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 3_6/scripts/3_6.prx +W bridge,../Release/3_6.o) 2>&1 |& tee -a 3_6/3_6.log 3_6/timestamped_log/3_6-${ts}.log
	set -o pipefail; (coreverify -obj 3_6 -s 1024 -pm 16384) 2>&1 |& tee -a 3_6/3_6.log 3_6/timestamped_log/3_6-${ts}.log

4_6: 2_6
	mkdir -p 4_6/Release
	cp 2_6/Release/2_6.o 4_6/Release/4_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 4_6/scripts/4_6.prx +W bridge,../Release/4_6.o) 2>&1 |& tee -a 4_6/4_6.log 4_6/timestamped_log/4_6-${ts}.log
	set -o pipefail; (coreverify -obj 4_6 -s 1024 -pm 16384) 2>&1 |& tee -a 4_6/4_6.log 4_6/timestamped_log/4_6-${ts}.log

5_6: 2_6
	mkdir -p 5_6/Release
	cp 2_6/Release/2_6.o 5_6/Release/5_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 5_6/scripts/5_6.prx +W bridge,../Release/5_6.o) 2>&1 |& tee -a 5_6/5_6.log 5_6/timestamped_log/5_6-${ts}.log
	set -o pipefail; (coreverify -obj 5_6 -s 1024 -pm 16384) 2>&1 |& tee -a 5_6/5_6.log 5_6/timestamped_log/5_6-${ts}.log

7_3: 3_1
	mkdir -p 7_3/Release
	cp 3_1/Release/3_1.o 7_3/Release/7_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 7_3/scripts/7_3.prx +W bridge,../Release/7_3.o) 2>&1 |& tee -a 7_3/7_3.log 7_3/timestamped_log/7_3-${ts}.log
	set -o pipefail; (coreverify -obj 7_3 -s 1024 -pm 16384) 2>&1 |& tee -a 7_3/7_3.log 7_3/timestamped_log/7_3-${ts}.log

8_0: 3_1
	mkdir -p 8_0/Release
	cp 3_1/Release/3_1.o 8_0/Release/8_0.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 8_0/scripts/8_0.prx +W bridge,../Release/8_0.o) 2>&1 |& tee -a 8_0/8_0.log 8_0/timestamped_log/8_0-${ts}.log
	set -o pipefail; (coreverify -obj 8_0 -s 1024 -pm 16384) 2>&1 |& tee -a 8_0/8_0.log 8_0/timestamped_log/8_0-${ts}.log

8_2: 3_1
	mkdir -p 8_2/Release
	cp 3_1/Release/3_1.o 8_2/Release/8_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 8_2/scripts/8_2.prx +W bridge,../Release/8_2.o) 2>&1 |& tee -a 8_2/8_2.log 8_2/timestamped_log/8_2-${ts}.log
	set -o pipefail; (coreverify -obj 8_2 -s 1024 -pm 16384) 2>&1 |& tee -a 8_2/8_2.log 8_2/timestamped_log/8_2-${ts}.log

8_4: 3_1
	mkdir -p 8_4/Release
	cp 3_1/Release/3_1.o 8_4/Release/8_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 8_4/scripts/8_4.prx +W bridge,../Release/8_4.o) 2>&1 |& tee -a 8_4/8_4.log 8_4/timestamped_log/8_4-${ts}.log
	set -o pipefail; (coreverify -obj 8_4 -s 1024 -pm 16384) 2>&1 |& tee -a 8_4/8_4.log 8_4/timestamped_log/8_4-${ts}.log

8_6: 3_1
	mkdir -p 8_6/Release
	cp 3_1/Release/3_1.o 8_6/Release/8_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 8_6/scripts/8_6.prx +W bridge,../Release/8_6.o) 2>&1 |& tee -a 8_6/8_6.log 8_6/timestamped_log/8_6-${ts}.log
	set -o pipefail; (coreverify -obj 8_6 -s 1024 -pm 16384) 2>&1 |& tee -a 8_6/8_6.log 8_6/timestamped_log/8_6-${ts}.log

25_3: 3_1
	mkdir -p 25_3/Release
	cp 3_1/Release/3_1.o 25_3/Release/25_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 25_3/scripts/25_3.prx +W bridge,../Release/25_3.o) 2>&1 |& tee -a 25_3/25_3.log 25_3/timestamped_log/25_3-${ts}.log
	set -o pipefail; (coreverify -obj 25_3 -s 1024 -pm 16384) 2>&1 |& tee -a 25_3/25_3.log 25_3/timestamped_log/25_3-${ts}.log

25_5: 3_1
	mkdir -p 25_5/Release
	cp 3_1/Release/3_1.o 25_5/Release/25_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 25_5/scripts/25_5.prx +W bridge,../Release/25_5.o) 2>&1 |& tee -a 25_5/25_5.log 25_5/timestamped_log/25_5-${ts}.log
	set -o pipefail; (coreverify -obj 25_5 -s 1024 -pm 16384) 2>&1 |& tee -a 25_5/25_5.log 25_5/timestamped_log/25_5-${ts}.log

26_4: 3_1
	mkdir -p 26_4/Release
	cp 3_1/Release/3_1.o 26_4/Release/26_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 26_4/scripts/26_4.prx +W bridge,../Release/26_4.o) 2>&1 |& tee -a 26_4/26_4.log 26_4/timestamped_log/26_4-${ts}.log
	set -o pipefail; (coreverify -obj 26_4 -s 1024 -pm 16384) 2>&1 |& tee -a 26_4/26_4.log 26_4/timestamped_log/26_4-${ts}.log

26_6: 3_1
	mkdir -p 26_6/Release
	cp 3_1/Release/3_1.o 26_6/Release/26_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 26_6/scripts/26_6.prx +W bridge,../Release/26_6.o) 2>&1 |& tee -a 26_6/26_6.log 26_6/timestamped_log/26_6-${ts}.log
	set -o pipefail; (coreverify -obj 26_6 -s 1024 -pm 16384) 2>&1 |& tee -a 26_6/26_6.log 26_6/timestamped_log/26_6-${ts}.log

43_1: 3_1
	mkdir -p 43_1/Release
	cp 3_1/Release/3_1.o 43_1/Release/43_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 43_1/scripts/43_1.prx +W bridge,../Release/43_1.o) 2>&1 |& tee -a 43_1/43_1.log 43_1/timestamped_log/43_1-${ts}.log
	set -o pipefail; (coreverify -obj 43_1 -s 1024 -pm 16384) 2>&1 |& tee -a 43_1/43_1.log 43_1/timestamped_log/43_1-${ts}.log

44_2: 3_1
	mkdir -p 44_2/Release
	cp 3_1/Release/3_1.o 44_2/Release/44_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 44_2/scripts/44_2.prx +W bridge,../Release/44_2.o) 2>&1 |& tee -a 44_2/44_2.log 44_2/timestamped_log/44_2-${ts}.log
	set -o pipefail; (coreverify -obj 44_2 -s 1024 -pm 16384) 2>&1 |& tee -a 44_2/44_2.log 44_2/timestamped_log/44_2-${ts}.log

5_0: 4_0
	mkdir -p 5_0/Release
	cp 4_0/Release/4_0.o 5_0/Release/5_0.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 5_0/scripts/5_0.prx +W bridge,../Release/5_0.o) 2>&1 |& tee -a 5_0/5_0.log 5_0/timestamped_log/5_0-${ts}.log
	set -o pipefail; (coreverify -obj 5_0 -s 1024 -pm 16384) 2>&1 |& tee -a 5_0/5_0.log 5_0/timestamped_log/5_0-${ts}.log

6_5: 5_5
	mkdir -p 6_5/Release
	cp 5_5/Release/5_5.o 6_5/Release/6_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 6_5/scripts/6_5.prx +W bridge,../Release/6_5.o) 2>&1 |& tee -a 6_5/6_5.log 6_5/timestamped_log/6_5-${ts}.log
	set -o pipefail; (coreverify -obj 6_5 -s 1024 -pm 16384) 2>&1 |& tee -a 6_5/6_5.log 6_5/timestamped_log/6_5-${ts}.log

7_0: 6_0
	mkdir -p 7_0/Release
	cp 6_0/Release/6_0.o 7_0/Release/7_0.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 7_0/scripts/7_0.prx +W bridge,../Release/7_0.o) 2>&1 |& tee -a 7_0/7_0.log 7_0/timestamped_log/7_0-${ts}.log
	set -o pipefail; (coreverify -obj 7_0 -s 1024 -pm 16384) 2>&1 |& tee -a 7_0/7_0.log 7_0/timestamped_log/7_0-${ts}.log

8_3: 8_1
	mkdir -p 8_3/Release
	cp 8_1/Release/8_1.o 8_3/Release/8_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 8_3/scripts/8_3.prx +W bridge,../Release/8_3.o) 2>&1 |& tee -a 8_3/8_3.log 8_3/timestamped_log/8_3-${ts}.log
	set -o pipefail; (coreverify -obj 8_3 -s 1024 -pm 16384) 2>&1 |& tee -a 8_3/8_3.log 8_3/timestamped_log/8_3-${ts}.log

26_3: 8_1
	mkdir -p 26_3/Release
	cp 8_1/Release/8_1.o 26_3/Release/26_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 26_3/scripts/26_3.prx +W bridge,../Release/26_3.o) 2>&1 |& tee -a 26_3/26_3.log 26_3/timestamped_log/26_3-${ts}.log
	set -o pipefail; (coreverify -obj 26_3 -s 1024 -pm 16384) 2>&1 |& tee -a 26_3/26_3.log 26_3/timestamped_log/26_3-${ts}.log

26_5: 8_1
	mkdir -p 26_5/Release
	cp 8_1/Release/8_1.o 26_5/Release/26_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 26_5/scripts/26_5.prx +W bridge,../Release/26_5.o) 2>&1 |& tee -a 26_5/26_5.log 26_5/timestamped_log/26_5-${ts}.log
	set -o pipefail; (coreverify -obj 26_5 -s 1024 -pm 16384) 2>&1 |& tee -a 26_5/26_5.log 26_5/timestamped_log/26_5-${ts}.log

44_1: 8_1
	mkdir -p 44_1/Release
	cp 8_1/Release/8_1.o 44_1/Release/44_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 44_1/scripts/44_1.prx +W bridge,../Release/44_1.o) 2>&1 |& tee -a 44_1/44_1.log 44_1/timestamped_log/44_1-${ts}.log
	set -o pipefail; (coreverify -obj 44_1 -s 1024 -pm 16384) 2>&1 |& tee -a 44_1/44_1.log 44_1/timestamped_log/44_1-${ts}.log

14_2: 10_1
	mkdir -p 14_2/Release
	cp 10_1/Release/10_1.o 14_2/Release/14_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 14_2/scripts/14_2.prx +W bridge,../Release/14_2.o) 2>&1 |& tee -a 14_2/14_2.log 14_2/timestamped_log/14_2-${ts}.log
	set -o pipefail; (coreverify -obj 14_2 -s 1024 -pm 16384) 2>&1 |& tee -a 14_2/14_2.log 14_2/timestamped_log/14_2-${ts}.log

16_1: 10_1
	mkdir -p 16_1/Release
	cp 10_1/Release/10_1.o 16_1/Release/16_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 16_1/scripts/16_1.prx +W bridge,../Release/16_1.o) 2>&1 |& tee -a 16_1/16_1.log 16_1/timestamped_log/16_1-${ts}.log
	set -o pipefail; (coreverify -obj 16_1 -s 1024 -pm 16384) 2>&1 |& tee -a 16_1/16_1.log 16_1/timestamped_log/16_1-${ts}.log

16_5: 10_1
	mkdir -p 16_5/Release
	cp 10_1/Release/10_1.o 16_5/Release/16_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 16_5/scripts/16_5.prx +W bridge,../Release/16_5.o) 2>&1 |& tee -a 16_5/16_5.log 16_5/timestamped_log/16_5-${ts}.log
	set -o pipefail; (coreverify -obj 16_5 -s 1024 -pm 16384) 2>&1 |& tee -a 16_5/16_5.log 16_5/timestamped_log/16_5-${ts}.log

17_4: 10_1
	mkdir -p 17_4/Release
	cp 10_1/Release/10_1.o 17_4/Release/17_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 17_4/scripts/17_4.prx +W bridge,../Release/17_4.o) 2>&1 |& tee -a 17_4/17_4.log 17_4/timestamped_log/17_4-${ts}.log
	set -o pipefail; (coreverify -obj 17_4 -s 1024 -pm 16384) 2>&1 |& tee -a 17_4/17_4.log 17_4/timestamped_log/17_4-${ts}.log

17_6: 10_1
	mkdir -p 17_6/Release
	cp 10_1/Release/10_1.o 17_6/Release/17_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 17_6/scripts/17_6.prx +W bridge,../Release/17_6.o) 2>&1 |& tee -a 17_6/17_6.log 17_6/timestamped_log/17_6-${ts}.log
	set -o pipefail; (coreverify -obj 17_6 -s 1024 -pm 16384) 2>&1 |& tee -a 17_6/17_6.log 17_6/timestamped_log/17_6-${ts}.log

34_1: 10_1
	mkdir -p 34_1/Release
	cp 10_1/Release/10_1.o 34_1/Release/34_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 34_1/scripts/34_1.prx +W bridge,../Release/34_1.o) 2>&1 |& tee -a 34_1/34_1.log 34_1/timestamped_log/34_1-${ts}.log
	set -o pipefail; (coreverify -obj 34_1 -s 1024 -pm 16384) 2>&1 |& tee -a 34_1/34_1.log 34_1/timestamped_log/34_1-${ts}.log

34_3: 10_1
	mkdir -p 34_3/Release
	cp 10_1/Release/10_1.o 34_3/Release/34_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 34_3/scripts/34_3.prx +W bridge,../Release/34_3.o) 2>&1 |& tee -a 34_3/34_3.log 34_3/timestamped_log/34_3-${ts}.log
	set -o pipefail; (coreverify -obj 34_3 -s 1024 -pm 16384) 2>&1 |& tee -a 34_3/34_3.log 34_3/timestamped_log/34_3-${ts}.log

34_5: 10_1
	mkdir -p 34_5/Release
	cp 10_1/Release/10_1.o 34_5/Release/34_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 34_5/scripts/34_5.prx +W bridge,../Release/34_5.o) 2>&1 |& tee -a 34_5/34_5.log 34_5/timestamped_log/34_5-${ts}.log
	set -o pipefail; (coreverify -obj 34_5 -s 1024 -pm 16384) 2>&1 |& tee -a 34_5/34_5.log 34_5/timestamped_log/34_5-${ts}.log

35_2: 10_1
	mkdir -p 35_2/Release
	cp 10_1/Release/10_1.o 35_2/Release/35_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 35_2/scripts/35_2.prx +W bridge,../Release/35_2.o) 2>&1 |& tee -a 35_2/35_2.log 35_2/timestamped_log/35_2-${ts}.log
	set -o pipefail; (coreverify -obj 35_2 -s 1024 -pm 16384) 2>&1 |& tee -a 35_2/35_2.log 35_2/timestamped_log/35_2-${ts}.log

35_4: 10_1
	mkdir -p 35_4/Release
	cp 10_1/Release/10_1.o 35_4/Release/35_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 35_4/scripts/35_4.prx +W bridge,../Release/35_4.o) 2>&1 |& tee -a 35_4/35_4.log 35_4/timestamped_log/35_4-${ts}.log
	set -o pipefail; (coreverify -obj 35_4 -s 1024 -pm 16384) 2>&1 |& tee -a 35_4/35_4.log 35_4/timestamped_log/35_4-${ts}.log

35_6: 10_1
	mkdir -p 35_6/Release
	cp 10_1/Release/10_1.o 35_6/Release/35_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 35_6/scripts/35_6.prx +W bridge,../Release/35_6.o) 2>&1 |& tee -a 35_6/35_6.log 35_6/timestamped_log/35_6-${ts}.log
	set -o pipefail; (coreverify -obj 35_6 -s 1024 -pm 16384) 2>&1 |& tee -a 35_6/35_6.log 35_6/timestamped_log/35_6-${ts}.log

10_4: 10_2
	mkdir -p 10_4/Release
	cp 10_2/Release/10_2.o 10_4/Release/10_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 10_4/scripts/10_4.prx +W bridge,../Release/10_4.o) 2>&1 |& tee -a 10_4/10_4.log 10_4/timestamped_log/10_4-${ts}.log
	set -o pipefail; (coreverify -obj 10_4 -s 1024 -pm 16384) 2>&1 |& tee -a 10_4/10_4.log 10_4/timestamped_log/10_4-${ts}.log

10_6: 10_2
	mkdir -p 10_6/Release
	cp 10_2/Release/10_2.o 10_6/Release/10_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 10_6/scripts/10_6.prx +W bridge,../Release/10_6.o) 2>&1 |& tee -a 10_6/10_6.log 10_6/timestamped_log/10_6-${ts}.log
	set -o pipefail; (coreverify -obj 10_6 -s 1024 -pm 16384) 2>&1 |& tee -a 10_6/10_6.log 10_6/timestamped_log/10_6-${ts}.log

28_2: 10_2
	mkdir -p 28_2/Release
	cp 10_2/Release/10_2.o 28_2/Release/28_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 28_2/scripts/28_2.prx +W bridge,../Release/28_2.o) 2>&1 |& tee -a 28_2/28_2.log 28_2/timestamped_log/28_2-${ts}.log
	set -o pipefail; (coreverify -obj 28_2 -s 1024 -pm 16384) 2>&1 |& tee -a 28_2/28_2.log 28_2/timestamped_log/28_2-${ts}.log

28_4: 10_2
	mkdir -p 28_4/Release
	cp 10_2/Release/10_2.o 28_4/Release/28_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 28_4/scripts/28_4.prx +W bridge,../Release/28_4.o) 2>&1 |& tee -a 28_4/28_4.log 28_4/timestamped_log/28_4-${ts}.log
	set -o pipefail; (coreverify -obj 28_4 -s 1024 -pm 16384) 2>&1 |& tee -a 28_4/28_4.log 28_4/timestamped_log/28_4-${ts}.log

28_6: 10_2
	mkdir -p 28_6/Release
	cp 10_2/Release/10_2.o 28_6/Release/28_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 28_6/scripts/28_6.prx +W bridge,../Release/28_6.o) 2>&1 |& tee -a 28_6/28_6.log 28_6/timestamped_log/28_6-${ts}.log
	set -o pipefail; (coreverify -obj 28_6 -s 1024 -pm 16384) 2>&1 |& tee -a 28_6/28_6.log 28_6/timestamped_log/28_6-${ts}.log

10_5: 10_3
	mkdir -p 10_5/Release
	cp 10_3/Release/10_3.o 10_5/Release/10_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 10_5/scripts/10_5.prx +W bridge,../Release/10_5.o) 2>&1 |& tee -a 10_5/10_5.log 10_5/timestamped_log/10_5-${ts}.log
	set -o pipefail; (coreverify -obj 10_5 -s 1024 -pm 16384) 2>&1 |& tee -a 10_5/10_5.log 10_5/timestamped_log/10_5-${ts}.log

11_3: 10_3
	mkdir -p 11_3/Release
	cp 10_3/Release/10_3.o 11_3/Release/11_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 11_3/scripts/11_3.prx +W bridge,../Release/11_3.o) 2>&1 |& tee -a 11_3/11_3.log 11_3/timestamped_log/11_3-${ts}.log
	set -o pipefail; (coreverify -obj 11_3 -s 1024 -pm 16384) 2>&1 |& tee -a 11_3/11_3.log 11_3/timestamped_log/11_3-${ts}.log

11_4: 10_3
	mkdir -p 11_4/Release
	cp 10_3/Release/10_3.o 11_4/Release/11_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 11_4/scripts/11_4.prx +W bridge,../Release/11_4.o) 2>&1 |& tee -a 11_4/11_4.log 11_4/timestamped_log/11_4-${ts}.log
	set -o pipefail; (coreverify -obj 11_4 -s 1024 -pm 16384) 2>&1 |& tee -a 11_4/11_4.log 11_4/timestamped_log/11_4-${ts}.log

11_5: 10_3
	mkdir -p 11_5/Release
	cp 10_3/Release/10_3.o 11_5/Release/11_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 11_5/scripts/11_5.prx +W bridge,../Release/11_5.o) 2>&1 |& tee -a 11_5/11_5.log 11_5/timestamped_log/11_5-${ts}.log
	set -o pipefail; (coreverify -obj 11_5 -s 1024 -pm 16384) 2>&1 |& tee -a 11_5/11_5.log 11_5/timestamped_log/11_5-${ts}.log

11_6: 10_3
	mkdir -p 11_6/Release
	cp 10_3/Release/10_3.o 11_6/Release/11_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 11_6/scripts/11_6.prx +W bridge,../Release/11_6.o) 2>&1 |& tee -a 11_6/11_6.log 11_6/timestamped_log/11_6-${ts}.log
	set -o pipefail; (coreverify -obj 11_6 -s 1024 -pm 16384) 2>&1 |& tee -a 11_6/11_6.log 11_6/timestamped_log/11_6-${ts}.log

12_3: 10_3
	mkdir -p 12_3/Release
	cp 10_3/Release/10_3.o 12_3/Release/12_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 12_3/scripts/12_3.prx +W bridge,../Release/12_3.o) 2>&1 |& tee -a 12_3/12_3.log 12_3/timestamped_log/12_3-${ts}.log
	set -o pipefail; (coreverify -obj 12_3 -s 1024 -pm 16384) 2>&1 |& tee -a 12_3/12_3.log 12_3/timestamped_log/12_3-${ts}.log

12_4: 10_3
	mkdir -p 12_4/Release
	cp 10_3/Release/10_3.o 12_4/Release/12_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 12_4/scripts/12_4.prx +W bridge,../Release/12_4.o) 2>&1 |& tee -a 12_4/12_4.log 12_4/timestamped_log/12_4-${ts}.log
	set -o pipefail; (coreverify -obj 12_4 -s 1024 -pm 16384) 2>&1 |& tee -a 12_4/12_4.log 12_4/timestamped_log/12_4-${ts}.log

12_5: 10_3
	mkdir -p 12_5/Release
	cp 10_3/Release/10_3.o 12_5/Release/12_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 12_5/scripts/12_5.prx +W bridge,../Release/12_5.o) 2>&1 |& tee -a 12_5/12_5.log 12_5/timestamped_log/12_5-${ts}.log
	set -o pipefail; (coreverify -obj 12_5 -s 1024 -pm 16384) 2>&1 |& tee -a 12_5/12_5.log 12_5/timestamped_log/12_5-${ts}.log

12_6: 10_3
	mkdir -p 12_6/Release
	cp 10_3/Release/10_3.o 12_6/Release/12_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 12_6/scripts/12_6.prx +W bridge,../Release/12_6.o) 2>&1 |& tee -a 12_6/12_6.log 12_6/timestamped_log/12_6-${ts}.log
	set -o pipefail; (coreverify -obj 12_6 -s 1024 -pm 16384) 2>&1 |& tee -a 12_6/12_6.log 12_6/timestamped_log/12_6-${ts}.log

13_3: 10_3
	mkdir -p 13_3/Release
	cp 10_3/Release/10_3.o 13_3/Release/13_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 13_3/scripts/13_3.prx +W bridge,../Release/13_3.o) 2>&1 |& tee -a 13_3/13_3.log 13_3/timestamped_log/13_3-${ts}.log
	set -o pipefail; (coreverify -obj 13_3 -s 1024 -pm 16384) 2>&1 |& tee -a 13_3/13_3.log 13_3/timestamped_log/13_3-${ts}.log

13_4: 10_3
	mkdir -p 13_4/Release
	cp 10_3/Release/10_3.o 13_4/Release/13_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 13_4/scripts/13_4.prx +W bridge,../Release/13_4.o) 2>&1 |& tee -a 13_4/13_4.log 13_4/timestamped_log/13_4-${ts}.log
	set -o pipefail; (coreverify -obj 13_4 -s 1024 -pm 16384) 2>&1 |& tee -a 13_4/13_4.log 13_4/timestamped_log/13_4-${ts}.log

13_5: 10_3
	mkdir -p 13_5/Release
	cp 10_3/Release/10_3.o 13_5/Release/13_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 13_5/scripts/13_5.prx +W bridge,../Release/13_5.o) 2>&1 |& tee -a 13_5/13_5.log 13_5/timestamped_log/13_5-${ts}.log
	set -o pipefail; (coreverify -obj 13_5 -s 1024 -pm 16384) 2>&1 |& tee -a 13_5/13_5.log 13_5/timestamped_log/13_5-${ts}.log

13_6: 10_3
	mkdir -p 13_6/Release
	cp 10_3/Release/10_3.o 13_6/Release/13_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 13_6/scripts/13_6.prx +W bridge,../Release/13_6.o) 2>&1 |& tee -a 13_6/13_6.log 13_6/timestamped_log/13_6-${ts}.log
	set -o pipefail; (coreverify -obj 13_6 -s 1024 -pm 16384) 2>&1 |& tee -a 13_6/13_6.log 13_6/timestamped_log/13_6-${ts}.log

14_1: 10_3
	mkdir -p 14_1/Release
	cp 10_3/Release/10_3.o 14_1/Release/14_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 14_1/scripts/14_1.prx +W bridge,../Release/14_1.o) 2>&1 |& tee -a 14_1/14_1.log 14_1/timestamped_log/14_1-${ts}.log
	set -o pipefail; (coreverify -obj 14_1 -s 1024 -pm 16384) 2>&1 |& tee -a 14_1/14_1.log 14_1/timestamped_log/14_1-${ts}.log

14_4: 10_3
	mkdir -p 14_4/Release
	cp 10_3/Release/10_3.o 14_4/Release/14_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 14_4/scripts/14_4.prx +W bridge,../Release/14_4.o) 2>&1 |& tee -a 14_4/14_4.log 14_4/timestamped_log/14_4-${ts}.log
	set -o pipefail; (coreverify -obj 14_4 -s 1024 -pm 16384) 2>&1 |& tee -a 14_4/14_4.log 14_4/timestamped_log/14_4-${ts}.log

14_5: 10_3
	mkdir -p 14_5/Release
	cp 10_3/Release/10_3.o 14_5/Release/14_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 14_5/scripts/14_5.prx +W bridge,../Release/14_5.o) 2>&1 |& tee -a 14_5/14_5.log 14_5/timestamped_log/14_5-${ts}.log
	set -o pipefail; (coreverify -obj 14_5 -s 1024 -pm 16384) 2>&1 |& tee -a 14_5/14_5.log 14_5/timestamped_log/14_5-${ts}.log

14_6: 10_3
	mkdir -p 14_6/Release
	cp 10_3/Release/10_3.o 14_6/Release/14_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 14_6/scripts/14_6.prx +W bridge,../Release/14_6.o) 2>&1 |& tee -a 14_6/14_6.log 14_6/timestamped_log/14_6-${ts}.log
	set -o pipefail; (coreverify -obj 14_6 -s 1024 -pm 16384) 2>&1 |& tee -a 14_6/14_6.log 14_6/timestamped_log/14_6-${ts}.log

15_1: 10_3
	mkdir -p 15_1/Release
	cp 10_3/Release/10_3.o 15_1/Release/15_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 15_1/scripts/15_1.prx +W bridge,../Release/15_1.o) 2>&1 |& tee -a 15_1/15_1.log 15_1/timestamped_log/15_1-${ts}.log
	set -o pipefail; (coreverify -obj 15_1 -s 1024 -pm 16384) 2>&1 |& tee -a 15_1/15_1.log 15_1/timestamped_log/15_1-${ts}.log

15_4: 10_3
	mkdir -p 15_4/Release
	cp 10_3/Release/10_3.o 15_4/Release/15_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 15_4/scripts/15_4.prx +W bridge,../Release/15_4.o) 2>&1 |& tee -a 15_4/15_4.log 15_4/timestamped_log/15_4-${ts}.log
	set -o pipefail; (coreverify -obj 15_4 -s 1024 -pm 16384) 2>&1 |& tee -a 15_4/15_4.log 15_4/timestamped_log/15_4-${ts}.log

15_5: 10_3
	mkdir -p 15_5/Release
	cp 10_3/Release/10_3.o 15_5/Release/15_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 15_5/scripts/15_5.prx +W bridge,../Release/15_5.o) 2>&1 |& tee -a 15_5/15_5.log 15_5/timestamped_log/15_5-${ts}.log
	set -o pipefail; (coreverify -obj 15_5 -s 1024 -pm 16384) 2>&1 |& tee -a 15_5/15_5.log 15_5/timestamped_log/15_5-${ts}.log

15_6: 10_3
	mkdir -p 15_6/Release
	cp 10_3/Release/10_3.o 15_6/Release/15_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 15_6/scripts/15_6.prx +W bridge,../Release/15_6.o) 2>&1 |& tee -a 15_6/15_6.log 15_6/timestamped_log/15_6-${ts}.log
	set -o pipefail; (coreverify -obj 15_6 -s 1024 -pm 16384) 2>&1 |& tee -a 15_6/15_6.log 15_6/timestamped_log/15_6-${ts}.log

16_4: 10_3
	mkdir -p 16_4/Release
	cp 10_3/Release/10_3.o 16_4/Release/16_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 16_4/scripts/16_4.prx +W bridge,../Release/16_4.o) 2>&1 |& tee -a 16_4/16_4.log 16_4/timestamped_log/16_4-${ts}.log
	set -o pipefail; (coreverify -obj 16_4 -s 1024 -pm 16384) 2>&1 |& tee -a 16_4/16_4.log 16_4/timestamped_log/16_4-${ts}.log

16_6: 10_3
	mkdir -p 16_6/Release
	cp 10_3/Release/10_3.o 16_6/Release/16_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 16_6/scripts/16_6.prx +W bridge,../Release/16_6.o) 2>&1 |& tee -a 16_6/16_6.log 16_6/timestamped_log/16_6-${ts}.log
	set -o pipefail; (coreverify -obj 16_6 -s 1024 -pm 16384) 2>&1 |& tee -a 16_6/16_6.log 16_6/timestamped_log/16_6-${ts}.log

28_1: 10_3
	mkdir -p 28_1/Release
	cp 10_3/Release/10_3.o 28_1/Release/28_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 28_1/scripts/28_1.prx +W bridge,../Release/28_1.o) 2>&1 |& tee -a 28_1/28_1.log 28_1/timestamped_log/28_1-${ts}.log
	set -o pipefail; (coreverify -obj 28_1 -s 1024 -pm 16384) 2>&1 |& tee -a 28_1/28_1.log 28_1/timestamped_log/28_1-${ts}.log

28_3: 10_3
	mkdir -p 28_3/Release
	cp 10_3/Release/10_3.o 28_3/Release/28_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 28_3/scripts/28_3.prx +W bridge,../Release/28_3.o) 2>&1 |& tee -a 28_3/28_3.log 28_3/timestamped_log/28_3-${ts}.log
	set -o pipefail; (coreverify -obj 28_3 -s 1024 -pm 16384) 2>&1 |& tee -a 28_3/28_3.log 28_3/timestamped_log/28_3-${ts}.log

28_5: 10_3
	mkdir -p 28_5/Release
	cp 10_3/Release/10_3.o 28_5/Release/28_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 28_5/scripts/28_5.prx +W bridge,../Release/28_5.o) 2>&1 |& tee -a 28_5/28_5.log 28_5/timestamped_log/28_5-${ts}.log
	set -o pipefail; (coreverify -obj 28_5 -s 1024 -pm 16384) 2>&1 |& tee -a 28_5/28_5.log 28_5/timestamped_log/28_5-${ts}.log

29_1: 10_3
	mkdir -p 29_1/Release
	cp 10_3/Release/10_3.o 29_1/Release/29_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 29_1/scripts/29_1.prx +W bridge,../Release/29_1.o) 2>&1 |& tee -a 29_1/29_1.log 29_1/timestamped_log/29_1-${ts}.log
	set -o pipefail; (coreverify -obj 29_1 -s 1024 -pm 16384) 2>&1 |& tee -a 29_1/29_1.log 29_1/timestamped_log/29_1-${ts}.log

29_2: 10_3
	mkdir -p 29_2/Release
	cp 10_3/Release/10_3.o 29_2/Release/29_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 29_2/scripts/29_2.prx +W bridge,../Release/29_2.o) 2>&1 |& tee -a 29_2/29_2.log 29_2/timestamped_log/29_2-${ts}.log
	set -o pipefail; (coreverify -obj 29_2 -s 1024 -pm 16384) 2>&1 |& tee -a 29_2/29_2.log 29_2/timestamped_log/29_2-${ts}.log

29_3: 10_3
	mkdir -p 29_3/Release
	cp 10_3/Release/10_3.o 29_3/Release/29_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 29_3/scripts/29_3.prx +W bridge,../Release/29_3.o) 2>&1 |& tee -a 29_3/29_3.log 29_3/timestamped_log/29_3-${ts}.log
	set -o pipefail; (coreverify -obj 29_3 -s 1024 -pm 16384) 2>&1 |& tee -a 29_3/29_3.log 29_3/timestamped_log/29_3-${ts}.log

29_4: 10_3
	mkdir -p 29_4/Release
	cp 10_3/Release/10_3.o 29_4/Release/29_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 29_4/scripts/29_4.prx +W bridge,../Release/29_4.o) 2>&1 |& tee -a 29_4/29_4.log 29_4/timestamped_log/29_4-${ts}.log
	set -o pipefail; (coreverify -obj 29_4 -s 1024 -pm 16384) 2>&1 |& tee -a 29_4/29_4.log 29_4/timestamped_log/29_4-${ts}.log

29_5: 10_3
	mkdir -p 29_5/Release
	cp 10_3/Release/10_3.o 29_5/Release/29_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 29_5/scripts/29_5.prx +W bridge,../Release/29_5.o) 2>&1 |& tee -a 29_5/29_5.log 29_5/timestamped_log/29_5-${ts}.log
	set -o pipefail; (coreverify -obj 29_5 -s 1024 -pm 16384) 2>&1 |& tee -a 29_5/29_5.log 29_5/timestamped_log/29_5-${ts}.log

29_6: 10_3
	mkdir -p 29_6/Release
	cp 10_3/Release/10_3.o 29_6/Release/29_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 29_6/scripts/29_6.prx +W bridge,../Release/29_6.o) 2>&1 |& tee -a 29_6/29_6.log 29_6/timestamped_log/29_6-${ts}.log
	set -o pipefail; (coreverify -obj 29_6 -s 1024 -pm 16384) 2>&1 |& tee -a 29_6/29_6.log 29_6/timestamped_log/29_6-${ts}.log

30_1: 10_3
	mkdir -p 30_1/Release
	cp 10_3/Release/10_3.o 30_1/Release/30_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 30_1/scripts/30_1.prx +W bridge,../Release/30_1.o) 2>&1 |& tee -a 30_1/30_1.log 30_1/timestamped_log/30_1-${ts}.log
	set -o pipefail; (coreverify -obj 30_1 -s 1024 -pm 16384) 2>&1 |& tee -a 30_1/30_1.log 30_1/timestamped_log/30_1-${ts}.log

30_2: 10_3
	mkdir -p 30_2/Release
	cp 10_3/Release/10_3.o 30_2/Release/30_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 30_2/scripts/30_2.prx +W bridge,../Release/30_2.o) 2>&1 |& tee -a 30_2/30_2.log 30_2/timestamped_log/30_2-${ts}.log
	set -o pipefail; (coreverify -obj 30_2 -s 1024 -pm 16384) 2>&1 |& tee -a 30_2/30_2.log 30_2/timestamped_log/30_2-${ts}.log

30_3: 10_3
	mkdir -p 30_3/Release
	cp 10_3/Release/10_3.o 30_3/Release/30_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 30_3/scripts/30_3.prx +W bridge,../Release/30_3.o) 2>&1 |& tee -a 30_3/30_3.log 30_3/timestamped_log/30_3-${ts}.log
	set -o pipefail; (coreverify -obj 30_3 -s 1024 -pm 16384) 2>&1 |& tee -a 30_3/30_3.log 30_3/timestamped_log/30_3-${ts}.log

30_4: 10_3
	mkdir -p 30_4/Release
	cp 10_3/Release/10_3.o 30_4/Release/30_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 30_4/scripts/30_4.prx +W bridge,../Release/30_4.o) 2>&1 |& tee -a 30_4/30_4.log 30_4/timestamped_log/30_4-${ts}.log
	set -o pipefail; (coreverify -obj 30_4 -s 1024 -pm 16384) 2>&1 |& tee -a 30_4/30_4.log 30_4/timestamped_log/30_4-${ts}.log

30_5: 10_3
	mkdir -p 30_5/Release
	cp 10_3/Release/10_3.o 30_5/Release/30_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 30_5/scripts/30_5.prx +W bridge,../Release/30_5.o) 2>&1 |& tee -a 30_5/30_5.log 30_5/timestamped_log/30_5-${ts}.log
	set -o pipefail; (coreverify -obj 30_5 -s 1024 -pm 16384) 2>&1 |& tee -a 30_5/30_5.log 30_5/timestamped_log/30_5-${ts}.log

30_6: 10_3
	mkdir -p 30_6/Release
	cp 10_3/Release/10_3.o 30_6/Release/30_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 30_6/scripts/30_6.prx +W bridge,../Release/30_6.o) 2>&1 |& tee -a 30_6/30_6.log 30_6/timestamped_log/30_6-${ts}.log
	set -o pipefail; (coreverify -obj 30_6 -s 1024 -pm 16384) 2>&1 |& tee -a 30_6/30_6.log 30_6/timestamped_log/30_6-${ts}.log

31_1: 10_3
	mkdir -p 31_1/Release
	cp 10_3/Release/10_3.o 31_1/Release/31_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 31_1/scripts/31_1.prx +W bridge,../Release/31_1.o) 2>&1 |& tee -a 31_1/31_1.log 31_1/timestamped_log/31_1-${ts}.log
	set -o pipefail; (coreverify -obj 31_1 -s 1024 -pm 16384) 2>&1 |& tee -a 31_1/31_1.log 31_1/timestamped_log/31_1-${ts}.log

31_2: 10_3
	mkdir -p 31_2/Release
	cp 10_3/Release/10_3.o 31_2/Release/31_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 31_2/scripts/31_2.prx +W bridge,../Release/31_2.o) 2>&1 |& tee -a 31_2/31_2.log 31_2/timestamped_log/31_2-${ts}.log
	set -o pipefail; (coreverify -obj 31_2 -s 1024 -pm 16384) 2>&1 |& tee -a 31_2/31_2.log 31_2/timestamped_log/31_2-${ts}.log

31_3: 10_3
	mkdir -p 31_3/Release
	cp 10_3/Release/10_3.o 31_3/Release/31_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 31_3/scripts/31_3.prx +W bridge,../Release/31_3.o) 2>&1 |& tee -a 31_3/31_3.log 31_3/timestamped_log/31_3-${ts}.log
	set -o pipefail; (coreverify -obj 31_3 -s 1024 -pm 16384) 2>&1 |& tee -a 31_3/31_3.log 31_3/timestamped_log/31_3-${ts}.log

31_4: 10_3
	mkdir -p 31_4/Release
	cp 10_3/Release/10_3.o 31_4/Release/31_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 31_4/scripts/31_4.prx +W bridge,../Release/31_4.o) 2>&1 |& tee -a 31_4/31_4.log 31_4/timestamped_log/31_4-${ts}.log
	set -o pipefail; (coreverify -obj 31_4 -s 1024 -pm 16384) 2>&1 |& tee -a 31_4/31_4.log 31_4/timestamped_log/31_4-${ts}.log

31_5: 10_3
	mkdir -p 31_5/Release
	cp 10_3/Release/10_3.o 31_5/Release/31_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 31_5/scripts/31_5.prx +W bridge,../Release/31_5.o) 2>&1 |& tee -a 31_5/31_5.log 31_5/timestamped_log/31_5-${ts}.log
	set -o pipefail; (coreverify -obj 31_5 -s 1024 -pm 16384) 2>&1 |& tee -a 31_5/31_5.log 31_5/timestamped_log/31_5-${ts}.log

32_1: 10_3
	mkdir -p 32_1/Release
	cp 10_3/Release/10_3.o 32_1/Release/32_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 32_1/scripts/32_1.prx +W bridge,../Release/32_1.o) 2>&1 |& tee -a 32_1/32_1.log 32_1/timestamped_log/32_1-${ts}.log
	set -o pipefail; (coreverify -obj 32_1 -s 1024 -pm 16384) 2>&1 |& tee -a 32_1/32_1.log 32_1/timestamped_log/32_1-${ts}.log

32_2: 10_3
	mkdir -p 32_2/Release
	cp 10_3/Release/10_3.o 32_2/Release/32_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 32_2/scripts/32_2.prx +W bridge,../Release/32_2.o) 2>&1 |& tee -a 32_2/32_2.log 32_2/timestamped_log/32_2-${ts}.log
	set -o pipefail; (coreverify -obj 32_2 -s 1024 -pm 16384) 2>&1 |& tee -a 32_2/32_2.log 32_2/timestamped_log/32_2-${ts}.log

32_3: 10_3
	mkdir -p 32_3/Release
	cp 10_3/Release/10_3.o 32_3/Release/32_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 32_3/scripts/32_3.prx +W bridge,../Release/32_3.o) 2>&1 |& tee -a 32_3/32_3.log 32_3/timestamped_log/32_3-${ts}.log
	set -o pipefail; (coreverify -obj 32_3 -s 1024 -pm 16384) 2>&1 |& tee -a 32_3/32_3.log 32_3/timestamped_log/32_3-${ts}.log

32_4: 10_3
	mkdir -p 32_4/Release
	cp 10_3/Release/10_3.o 32_4/Release/32_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 32_4/scripts/32_4.prx +W bridge,../Release/32_4.o) 2>&1 |& tee -a 32_4/32_4.log 32_4/timestamped_log/32_4-${ts}.log
	set -o pipefail; (coreverify -obj 32_4 -s 1024 -pm 16384) 2>&1 |& tee -a 32_4/32_4.log 32_4/timestamped_log/32_4-${ts}.log

32_5: 10_3
	mkdir -p 32_5/Release
	cp 10_3/Release/10_3.o 32_5/Release/32_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 32_5/scripts/32_5.prx +W bridge,../Release/32_5.o) 2>&1 |& tee -a 32_5/32_5.log 32_5/timestamped_log/32_5-${ts}.log
	set -o pipefail; (coreverify -obj 32_5 -s 1024 -pm 16384) 2>&1 |& tee -a 32_5/32_5.log 32_5/timestamped_log/32_5-${ts}.log

33_1: 10_3
	mkdir -p 33_1/Release
	cp 10_3/Release/10_3.o 33_1/Release/33_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 33_1/scripts/33_1.prx +W bridge,../Release/33_1.o) 2>&1 |& tee -a 33_1/33_1.log 33_1/timestamped_log/33_1-${ts}.log
	set -o pipefail; (coreverify -obj 33_1 -s 1024 -pm 16384) 2>&1 |& tee -a 33_1/33_1.log 33_1/timestamped_log/33_1-${ts}.log

33_2: 10_3
	mkdir -p 33_2/Release
	cp 10_3/Release/10_3.o 33_2/Release/33_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 33_2/scripts/33_2.prx +W bridge,../Release/33_2.o) 2>&1 |& tee -a 33_2/33_2.log 33_2/timestamped_log/33_2-${ts}.log
	set -o pipefail; (coreverify -obj 33_2 -s 1024 -pm 16384) 2>&1 |& tee -a 33_2/33_2.log 33_2/timestamped_log/33_2-${ts}.log

33_3: 10_3
	mkdir -p 33_3/Release
	cp 10_3/Release/10_3.o 33_3/Release/33_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 33_3/scripts/33_3.prx +W bridge,../Release/33_3.o) 2>&1 |& tee -a 33_3/33_3.log 33_3/timestamped_log/33_3-${ts}.log
	set -o pipefail; (coreverify -obj 33_3 -s 1024 -pm 16384) 2>&1 |& tee -a 33_3/33_3.log 33_3/timestamped_log/33_3-${ts}.log

33_4: 10_3
	mkdir -p 33_4/Release
	cp 10_3/Release/10_3.o 33_4/Release/33_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 33_4/scripts/33_4.prx +W bridge,../Release/33_4.o) 2>&1 |& tee -a 33_4/33_4.log 33_4/timestamped_log/33_4-${ts}.log
	set -o pipefail; (coreverify -obj 33_4 -s 1024 -pm 16384) 2>&1 |& tee -a 33_4/33_4.log 33_4/timestamped_log/33_4-${ts}.log

33_5: 10_3
	mkdir -p 33_5/Release
	cp 10_3/Release/10_3.o 33_5/Release/33_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 33_5/scripts/33_5.prx +W bridge,../Release/33_5.o) 2>&1 |& tee -a 33_5/33_5.log 33_5/timestamped_log/33_5-${ts}.log
	set -o pipefail; (coreverify -obj 33_5 -s 1024 -pm 16384) 2>&1 |& tee -a 33_5/33_5.log 33_5/timestamped_log/33_5-${ts}.log

34_2: 10_3
	mkdir -p 34_2/Release
	cp 10_3/Release/10_3.o 34_2/Release/34_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 34_2/scripts/34_2.prx +W bridge,../Release/34_2.o) 2>&1 |& tee -a 34_2/34_2.log 34_2/timestamped_log/34_2-${ts}.log
	set -o pipefail; (coreverify -obj 34_2 -s 1024 -pm 16384) 2>&1 |& tee -a 34_2/34_2.log 34_2/timestamped_log/34_2-${ts}.log

34_4: 10_3
	mkdir -p 34_4/Release
	cp 10_3/Release/10_3.o 34_4/Release/34_4.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 34_4/scripts/34_4.prx +W bridge,../Release/34_4.o) 2>&1 |& tee -a 34_4/34_4.log 34_4/timestamped_log/34_4-${ts}.log
	set -o pipefail; (coreverify -obj 34_4 -s 1024 -pm 16384) 2>&1 |& tee -a 34_4/34_4.log 34_4/timestamped_log/34_4-${ts}.log

34_6: 10_3
	mkdir -p 34_6/Release
	cp 10_3/Release/10_3.o 34_6/Release/34_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 34_6/scripts/34_6.prx +W bridge,../Release/34_6.o) 2>&1 |& tee -a 34_6/34_6.log 34_6/timestamped_log/34_6-${ts}.log
	set -o pipefail; (coreverify -obj 34_6 -s 1024 -pm 16384) 2>&1 |& tee -a 34_6/34_6.log 34_6/timestamped_log/34_6-${ts}.log

28_7: 10_7
	mkdir -p 28_7/Release
	cp 10_7/Release/10_7.o 28_7/Release/28_7.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 28_7/scripts/28_7.prx +W bridge,../Release/28_7.o) 2>&1 |& tee -a 28_7/28_7.log 28_7/timestamped_log/28_7-${ts}.log
	set -o pipefail; (coreverify -obj 28_7 -s 1024 -pm 16384) 2>&1 |& tee -a 28_7/28_7.log 28_7/timestamped_log/28_7-${ts}.log

12_1: 11_1
	mkdir -p 12_1/Release
	cp 11_1/Release/11_1.o 12_1/Release/12_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 12_1/scripts/12_1.prx +W bridge,../Release/12_1.o) 2>&1 |& tee -a 12_1/12_1.log 12_1/timestamped_log/12_1-${ts}.log
	set -o pipefail; (coreverify -obj 12_1 -s 1024 -pm 16384) 2>&1 |& tee -a 12_1/12_1.log 12_1/timestamped_log/12_1-${ts}.log

15_2: 11_1
	mkdir -p 15_2/Release
	cp 11_1/Release/11_1.o 15_2/Release/15_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 15_2/scripts/15_2.prx +W bridge,../Release/15_2.o) 2>&1 |& tee -a 15_2/15_2.log 15_2/timestamped_log/15_2-${ts}.log
	set -o pipefail; (coreverify -obj 15_2 -s 1024 -pm 16384) 2>&1 |& tee -a 15_2/15_2.log 15_2/timestamped_log/15_2-${ts}.log

16_2: 11_1
	mkdir -p 16_2/Release
	cp 11_1/Release/11_1.o 16_2/Release/16_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 16_2/scripts/16_2.prx +W bridge,../Release/16_2.o) 2>&1 |& tee -a 16_2/16_2.log 16_2/timestamped_log/16_2-${ts}.log
	set -o pipefail; (coreverify -obj 16_2 -s 1024 -pm 16384) 2>&1 |& tee -a 16_2/16_2.log 16_2/timestamped_log/16_2-${ts}.log

17_2: 11_1
	mkdir -p 17_2/Release
	cp 11_1/Release/11_1.o 17_2/Release/17_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 17_2/scripts/17_2.prx +W bridge,../Release/17_2.o) 2>&1 |& tee -a 17_2/17_2.log 17_2/timestamped_log/17_2-${ts}.log
	set -o pipefail; (coreverify -obj 17_2 -s 1024 -pm 16384) 2>&1 |& tee -a 17_2/17_2.log 17_2/timestamped_log/17_2-${ts}.log

12_2: 11_2
	mkdir -p 12_2/Release
	cp 11_2/Release/11_2.o 12_2/Release/12_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 12_2/scripts/12_2.prx +W bridge,../Release/12_2.o) 2>&1 |& tee -a 12_2/12_2.log 12_2/timestamped_log/12_2-${ts}.log
	set -o pipefail; (coreverify -obj 12_2 -s 1024 -pm 16384) 2>&1 |& tee -a 12_2/12_2.log 12_2/timestamped_log/12_2-${ts}.log

13_2: 11_2
	mkdir -p 13_2/Release
	cp 11_2/Release/11_2.o 13_2/Release/13_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 13_2/scripts/13_2.prx +W bridge,../Release/13_2.o) 2>&1 |& tee -a 13_2/13_2.log 13_2/timestamped_log/13_2-${ts}.log
	set -o pipefail; (coreverify -obj 13_2 -s 1024 -pm 16384) 2>&1 |& tee -a 13_2/13_2.log 13_2/timestamped_log/13_2-${ts}.log

14_3: 11_2
	mkdir -p 14_3/Release
	cp 11_2/Release/11_2.o 14_3/Release/14_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 14_3/scripts/14_3.prx +W bridge,../Release/14_3.o) 2>&1 |& tee -a 14_3/14_3.log 14_3/timestamped_log/14_3-${ts}.log
	set -o pipefail; (coreverify -obj 14_3 -s 1024 -pm 16384) 2>&1 |& tee -a 14_3/14_3.log 14_3/timestamped_log/14_3-${ts}.log

15_3: 11_2
	mkdir -p 15_3/Release
	cp 11_2/Release/11_2.o 15_3/Release/15_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 15_3/scripts/15_3.prx +W bridge,../Release/15_3.o) 2>&1 |& tee -a 15_3/15_3.log 15_3/timestamped_log/15_3-${ts}.log
	set -o pipefail; (coreverify -obj 15_3 -s 1024 -pm 16384) 2>&1 |& tee -a 15_3/15_3.log 15_3/timestamped_log/15_3-${ts}.log

12_7: 11_7
	mkdir -p 12_7/Release
	cp 11_7/Release/11_7.o 12_7/Release/12_7.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 12_7/scripts/12_7.prx +W bridge,../Release/12_7.o) 2>&1 |& tee -a 12_7/12_7.log 12_7/timestamped_log/12_7-${ts}.log
	set -o pipefail; (coreverify -obj 12_7 -s 1024 -pm 16384) 2>&1 |& tee -a 12_7/12_7.log 12_7/timestamped_log/12_7-${ts}.log

13_7: 11_7
	mkdir -p 13_7/Release
	cp 11_7/Release/11_7.o 13_7/Release/13_7.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 13_7/scripts/13_7.prx +W bridge,../Release/13_7.o) 2>&1 |& tee -a 13_7/13_7.log 13_7/timestamped_log/13_7-${ts}.log
	set -o pipefail; (coreverify -obj 13_7 -s 1024 -pm 16384) 2>&1 |& tee -a 13_7/13_7.log 13_7/timestamped_log/13_7-${ts}.log

14_7: 11_7
	mkdir -p 14_7/Release
	cp 11_7/Release/11_7.o 14_7/Release/14_7.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 14_7/scripts/14_7.prx +W bridge,../Release/14_7.o) 2>&1 |& tee -a 14_7/14_7.log 14_7/timestamped_log/14_7-${ts}.log
	set -o pipefail; (coreverify -obj 14_7 -s 1024 -pm 16384) 2>&1 |& tee -a 14_7/14_7.log 14_7/timestamped_log/14_7-${ts}.log

15_7: 11_7
	mkdir -p 15_7/Release
	cp 11_7/Release/11_7.o 15_7/Release/15_7.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 15_7/scripts/15_7.prx +W bridge,../Release/15_7.o) 2>&1 |& tee -a 15_7/15_7.log 15_7/timestamped_log/15_7-${ts}.log
	set -o pipefail; (coreverify -obj 15_7 -s 1024 -pm 16384) 2>&1 |& tee -a 15_7/15_7.log 15_7/timestamped_log/15_7-${ts}.log

16_7: 11_7
	mkdir -p 16_7/Release
	cp 11_7/Release/11_7.o 16_7/Release/16_7.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 16_7/scripts/16_7.prx +W bridge,../Release/16_7.o) 2>&1 |& tee -a 16_7/16_7.log 16_7/timestamped_log/16_7-${ts}.log
	set -o pipefail; (coreverify -obj 16_7 -s 1024 -pm 16384) 2>&1 |& tee -a 16_7/16_7.log 16_7/timestamped_log/16_7-${ts}.log

29_7: 11_7
	mkdir -p 29_7/Release
	cp 11_7/Release/11_7.o 29_7/Release/29_7.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 29_7/scripts/29_7.prx +W bridge,../Release/29_7.o) 2>&1 |& tee -a 29_7/29_7.log 29_7/timestamped_log/29_7-${ts}.log
	set -o pipefail; (coreverify -obj 29_7 -s 1024 -pm 16384) 2>&1 |& tee -a 29_7/29_7.log 29_7/timestamped_log/29_7-${ts}.log

30_7: 11_7
	mkdir -p 30_7/Release
	cp 11_7/Release/11_7.o 30_7/Release/30_7.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 30_7/scripts/30_7.prx +W bridge,../Release/30_7.o) 2>&1 |& tee -a 30_7/30_7.log 30_7/timestamped_log/30_7-${ts}.log
	set -o pipefail; (coreverify -obj 30_7 -s 1024 -pm 16384) 2>&1 |& tee -a 30_7/30_7.log 30_7/timestamped_log/30_7-${ts}.log

33_6: 13_1
	mkdir -p 33_6/Release
	cp 13_1/Release/13_1.o 33_6/Release/33_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 33_6/scripts/33_6.prx +W bridge,../Release/33_6.o) 2>&1 |& tee -a 33_6/33_6.log 33_6/timestamped_log/33_6-${ts}.log
	set -o pipefail; (coreverify -obj 33_6 -s 1024 -pm 16384) 2>&1 |& tee -a 33_6/33_6.log 33_6/timestamped_log/33_6-${ts}.log

35_7: 17_7
	mkdir -p 35_7/Release
	cp 17_7/Release/17_7.o 35_7/Release/35_7.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 35_7/scripts/35_7.prx +W bridge,../Release/35_7.o) 2>&1 |& tee -a 35_7/35_7.log 35_7/timestamped_log/35_7-${ts}.log
	set -o pipefail; (coreverify -obj 35_7 -s 1024 -pm 16384) 2>&1 |& tee -a 35_7/35_7.log 35_7/timestamped_log/35_7-${ts}.log

18_5: 18_3
	mkdir -p 18_5/Release
	cp 18_3/Release/18_3.o 18_5/Release/18_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 18_5/scripts/18_5.prx +W bridge,../Release/18_5.o) 2>&1 |& tee -a 18_5/18_5.log 18_5/timestamped_log/18_5-${ts}.log
	set -o pipefail; (coreverify -obj 18_5 -s 1024 -pm 16384) 2>&1 |& tee -a 18_5/18_5.log 18_5/timestamped_log/18_5-${ts}.log

20_0: 19_0
	mkdir -p 20_0/Release
	cp 19_0/Release/19_0.o 20_0/Release/20_0.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 20_0/scripts/20_0.prx +W bridge,../Release/20_0.o) 2>&1 |& tee -a 20_0/20_0.log 20_0/timestamped_log/20_0-${ts}.log
	set -o pipefail; (coreverify -obj 20_0 -s 1024 -pm 16384) 2>&1 |& tee -a 20_0/20_0.log 20_0/timestamped_log/20_0-${ts}.log

21_0: 19_0
	mkdir -p 21_0/Release
	cp 19_0/Release/19_0.o 21_0/Release/21_0.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 21_0/scripts/21_0.prx +W bridge,../Release/21_0.o) 2>&1 |& tee -a 21_0/21_0.log 21_0/timestamped_log/21_0-${ts}.log
	set -o pipefail; (coreverify -obj 21_0 -s 1024 -pm 16384) 2>&1 |& tee -a 21_0/21_0.log 21_0/timestamped_log/21_0-${ts}.log

22_0: 19_0
	mkdir -p 22_0/Release
	cp 19_0/Release/19_0.o 22_0/Release/22_0.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 22_0/scripts/22_0.prx +W bridge,../Release/22_0.o) 2>&1 |& tee -a 22_0/22_0.log 22_0/timestamped_log/22_0-${ts}.log
	set -o pipefail; (coreverify -obj 22_0 -s 1024 -pm 16384) 2>&1 |& tee -a 22_0/22_0.log 22_0/timestamped_log/22_0-${ts}.log

21_2: 20_2
	mkdir -p 21_2/Release
	cp 20_2/Release/20_2.o 21_2/Release/21_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 21_2/scripts/21_2.prx +W bridge,../Release/21_2.o) 2>&1 |& tee -a 21_2/21_2.log 21_2/timestamped_log/21_2-${ts}.log
	set -o pipefail; (coreverify -obj 21_2 -s 1024 -pm 16384) 2>&1 |& tee -a 21_2/21_2.log 21_2/timestamped_log/21_2-${ts}.log

22_2: 20_2
	mkdir -p 22_2/Release
	cp 20_2/Release/20_2.o 22_2/Release/22_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 22_2/scripts/22_2.prx +W bridge,../Release/22_2.o) 2>&1 |& tee -a 22_2/22_2.log 22_2/timestamped_log/22_2-${ts}.log
	set -o pipefail; (coreverify -obj 22_2 -s 1024 -pm 16384) 2>&1 |& tee -a 22_2/22_2.log 22_2/timestamped_log/22_2-${ts}.log

23_2: 20_2
	mkdir -p 23_2/Release
	cp 20_2/Release/20_2.o 23_2/Release/23_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 23_2/scripts/23_2.prx +W bridge,../Release/23_2.o) 2>&1 |& tee -a 23_2/23_2.log 23_2/timestamped_log/23_2-${ts}.log
	set -o pipefail; (coreverify -obj 23_2 -s 1024 -pm 16384) 2>&1 |& tee -a 23_2/23_2.log 23_2/timestamped_log/23_2-${ts}.log

24_2: 20_2
	mkdir -p 24_2/Release
	cp 20_2/Release/20_2.o 24_2/Release/24_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 24_2/scripts/24_2.prx +W bridge,../Release/24_2.o) 2>&1 |& tee -a 24_2/24_2.log 24_2/timestamped_log/24_2-${ts}.log
	set -o pipefail; (coreverify -obj 24_2 -s 1024 -pm 16384) 2>&1 |& tee -a 24_2/24_2.log 24_2/timestamped_log/24_2-${ts}.log

25_2: 20_2
	mkdir -p 25_2/Release
	cp 20_2/Release/20_2.o 25_2/Release/25_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 25_2/scripts/25_2.prx +W bridge,../Release/25_2.o) 2>&1 |& tee -a 25_2/25_2.log 25_2/timestamped_log/25_2-${ts}.log
	set -o pipefail; (coreverify -obj 25_2 -s 1024 -pm 16384) 2>&1 |& tee -a 25_2/25_2.log 25_2/timestamped_log/25_2-${ts}.log

26_2: 20_2
	mkdir -p 26_2/Release
	cp 20_2/Release/20_2.o 26_2/Release/26_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 26_2/scripts/26_2.prx +W bridge,../Release/26_2.o) 2>&1 |& tee -a 26_2/26_2.log 26_2/timestamped_log/26_2-${ts}.log
	set -o pipefail; (coreverify -obj 26_2 -s 1024 -pm 16384) 2>&1 |& tee -a 26_2/26_2.log 26_2/timestamped_log/26_2-${ts}.log

25_0: 24_0
	mkdir -p 25_0/Release
	cp 24_0/Release/24_0.o 25_0/Release/25_0.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 25_0/scripts/25_0.prx +W bridge,../Release/25_0.o) 2>&1 |& tee -a 25_0/25_0.log 25_0/timestamped_log/25_0-${ts}.log
	set -o pipefail; (coreverify -obj 25_0 -s 1024 -pm 16384) 2>&1 |& tee -a 25_0/25_0.log 25_0/timestamped_log/25_0-${ts}.log

26_0: 24_0
	mkdir -p 26_0/Release
	cp 24_0/Release/24_0.o 26_0/Release/26_0.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 26_0/scripts/26_0.prx +W bridge,../Release/26_0.o) 2>&1 |& tee -a 26_0/26_0.log 26_0/timestamped_log/26_0-${ts}.log
	set -o pipefail; (coreverify -obj 26_0 -s 1024 -pm 16384) 2>&1 |& tee -a 26_0/26_0.log 26_0/timestamped_log/26_0-${ts}.log

39_0: 24_0
	mkdir -p 39_0/Release
	cp 24_0/Release/24_0.o 39_0/Release/39_0.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 39_0/scripts/39_0.prx +W bridge,../Release/39_0.o) 2>&1 |& tee -a 39_0/39_0.log 39_0/timestamped_log/39_0-${ts}.log
	set -o pipefail; (coreverify -obj 39_0 -s 1024 -pm 16384) 2>&1 |& tee -a 39_0/39_0.log 39_0/timestamped_log/39_0-${ts}.log

40_0: 24_0
	mkdir -p 40_0/Release
	cp 24_0/Release/24_0.o 40_0/Release/40_0.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 40_0/scripts/40_0.prx +W bridge,../Release/40_0.o) 2>&1 |& tee -a 40_0/40_0.log 40_0/timestamped_log/40_0-${ts}.log
	set -o pipefail; (coreverify -obj 40_0 -s 1024 -pm 16384) 2>&1 |& tee -a 40_0/40_0.log 40_0/timestamped_log/40_0-${ts}.log

41_0: 24_0
	mkdir -p 41_0/Release
	cp 24_0/Release/24_0.o 41_0/Release/41_0.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 41_0/scripts/41_0.prx +W bridge,../Release/41_0.o) 2>&1 |& tee -a 41_0/41_0.log 41_0/timestamped_log/41_0-${ts}.log
	set -o pipefail; (coreverify -obj 41_0 -s 1024 -pm 16384) 2>&1 |& tee -a 41_0/41_0.log 41_0/timestamped_log/41_0-${ts}.log

42_0: 24_0
	mkdir -p 42_0/Release
	cp 24_0/Release/24_0.o 42_0/Release/42_0.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 42_0/scripts/42_0.prx +W bridge,../Release/42_0.o) 2>&1 |& tee -a 42_0/42_0.log 42_0/timestamped_log/42_0-${ts}.log
	set -o pipefail; (coreverify -obj 42_0 -s 1024 -pm 16384) 2>&1 |& tee -a 42_0/42_0.log 42_0/timestamped_log/42_0-${ts}.log

43_0: 24_0
	mkdir -p 43_0/Release
	cp 24_0/Release/24_0.o 43_0/Release/43_0.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 43_0/scripts/43_0.prx +W bridge,../Release/43_0.o) 2>&1 |& tee -a 43_0/43_0.log 43_0/timestamped_log/43_0-${ts}.log
	set -o pipefail; (coreverify -obj 43_0 -s 1024 -pm 16384) 2>&1 |& tee -a 43_0/43_0.log 43_0/timestamped_log/43_0-${ts}.log

44_0: 24_0
	mkdir -p 44_0/Release
	cp 24_0/Release/24_0.o 44_0/Release/44_0.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 44_0/scripts/44_0.prx +W bridge,../Release/44_0.o) 2>&1 |& tee -a 44_0/44_0.log 44_0/timestamped_log/44_0-${ts}.log
	set -o pipefail; (coreverify -obj 44_0 -s 1024 -pm 16384) 2>&1 |& tee -a 44_0/44_0.log 44_0/timestamped_log/44_0-${ts}.log

34_7: 33_7
	mkdir -p 34_7/Release
	cp 33_7/Release/33_7.o 34_7/Release/34_7.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 34_7/scripts/34_7.prx +W bridge,../Release/34_7.o) 2>&1 |& tee -a 34_7/34_7.log 34_7/timestamped_log/34_7-${ts}.log
	set -o pipefail; (coreverify -obj 34_7 -s 1024 -pm 16384) 2>&1 |& tee -a 34_7/34_7.log 34_7/timestamped_log/34_7-${ts}.log

35_3: 35_1
	mkdir -p 35_3/Release
	cp 35_1/Release/35_1.o 35_3/Release/35_3.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 35_3/scripts/35_3.prx +W bridge,../Release/35_3.o) 2>&1 |& tee -a 35_3/35_3.log 35_3/timestamped_log/35_3-${ts}.log
	set -o pipefail; (coreverify -obj 35_3 -s 1024 -pm 16384) 2>&1 |& tee -a 35_3/35_3.log 35_3/timestamped_log/35_3-${ts}.log

35_5: 35_1
	mkdir -p 35_5/Release
	cp 35_1/Release/35_1.o 35_5/Release/35_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 35_5/scripts/35_5.prx +W bridge,../Release/35_5.o) 2>&1 |& tee -a 35_5/35_5.log 35_5/timestamped_log/35_5-${ts}.log
	set -o pipefail; (coreverify -obj 35_5 -s 1024 -pm 16384) 2>&1 |& tee -a 35_5/35_5.log 35_5/timestamped_log/35_5-${ts}.log

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
	(rm -rf 10_1/Release)
	(rm -rf 10_2/Release)
	(rm -rf 10_3/Release)
	(rm -rf 10_4/Release)
	(rm -rf 10_5/Release)
	(rm -rf 10_6/Release)
	(rm -rf 10_7/Release)
	(rm -rf 11_1/Release)
	(rm -rf 11_2/Release)
	(rm -rf 11_3/Release)
	(rm -rf 11_4/Release)
	(rm -rf 11_5/Release)
	(rm -rf 11_6/Release)
	(rm -rf 11_7/Release)
	(rm -rf 12_1/Release)
	(rm -rf 12_2/Release)
	(rm -rf 12_3/Release)
	(rm -rf 12_4/Release)
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
	(rm -rf 18_2/Release)
	(rm -rf 18_3/Release)
	(rm -rf 18_4/Release)
	(rm -rf 18_5/Release)
	(rm -rf 18_6/Release)
	(rm -rf 18_7/Release)
	(rm -rf 19_0/Release)
	(rm -rf 19_2/Release)
	(rm -rf 19_3/Release)
	(rm -rf 19_4/Release)
	(rm -rf 19_5/Release)
	(rm -rf 19_6/Release)
	(rm -rf 20_0/Release)
	(rm -rf 20_2/Release)
	(rm -rf 20_3/Release)
	(rm -rf 20_4/Release)
	(rm -rf 20_5/Release)
	(rm -rf 20_6/Release)
	(rm -rf 21_0/Release)
	(rm -rf 21_2/Release)
	(rm -rf 21_3/Release)
	(rm -rf 21_4/Release)
	(rm -rf 21_5/Release)
	(rm -rf 21_6/Release)
	(rm -rf 22_0/Release)
	(rm -rf 22_2/Release)
	(rm -rf 22_3/Release)
	(rm -rf 22_4/Release)
	(rm -rf 22_5/Release)
	(rm -rf 22_6/Release)
	(rm -rf 23_0/Release)
	(rm -rf 23_2/Release)
	(rm -rf 23_3/Release)
	(rm -rf 23_4/Release)
	(rm -rf 23_5/Release)
	(rm -rf 23_6/Release)
	(rm -rf 24_0/Release)
	(rm -rf 24_2/Release)
	(rm -rf 24_3/Release)
	(rm -rf 24_4/Release)
	(rm -rf 24_5/Release)
	(rm -rf 24_6/Release)
	(rm -rf 25_0/Release)
	(rm -rf 25_2/Release)
	(rm -rf 25_3/Release)
	(rm -rf 25_4/Release)
	(rm -rf 25_5/Release)
	(rm -rf 25_6/Release)
	(rm -rf 26_0/Release)
	(rm -rf 26_2/Release)
	(rm -rf 26_3/Release)
	(rm -rf 26_4/Release)
	(rm -rf 26_5/Release)
	(rm -rf 26_6/Release)
	(rm -rf 27_6/Release)
	(rm -rf 27_7/Release)
	(rm -rf 28_1/Release)
	(rm -rf 28_2/Release)
	(rm -rf 28_3/Release)
	(rm -rf 28_4/Release)
	(rm -rf 28_5/Release)
	(rm -rf 28_6/Release)
	(rm -rf 28_7/Release)
	(rm -rf 29_1/Release)
	(rm -rf 29_2/Release)
	(rm -rf 29_3/Release)
	(rm -rf 29_4/Release)
	(rm -rf 29_5/Release)
	(rm -rf 29_6/Release)
	(rm -rf 29_7/Release)
	(rm -rf 30_1/Release)
	(rm -rf 30_2/Release)
	(rm -rf 30_3/Release)
	(rm -rf 30_4/Release)
	(rm -rf 30_5/Release)
	(rm -rf 30_6/Release)
	(rm -rf 30_7/Release)
	(rm -rf 31_1/Release)
	(rm -rf 31_2/Release)
	(rm -rf 31_3/Release)
	(rm -rf 31_4/Release)
	(rm -rf 31_5/Release)
	(rm -rf 31_6/Release)
	(rm -rf 31_7/Release)
	(rm -rf 32_1/Release)
	(rm -rf 32_2/Release)
	(rm -rf 32_3/Release)
	(rm -rf 32_4/Release)
	(rm -rf 32_5/Release)
	(rm -rf 32_6/Release)
	(rm -rf 32_7/Release)
	(rm -rf 33_1/Release)
	(rm -rf 33_2/Release)
	(rm -rf 33_3/Release)
	(rm -rf 33_4/Release)
	(rm -rf 33_5/Release)
	(rm -rf 33_6/Release)
	(rm -rf 33_7/Release)
	(rm -rf 34_1/Release)
	(rm -rf 34_2/Release)
	(rm -rf 34_3/Release)
	(rm -rf 34_4/Release)
	(rm -rf 34_5/Release)
	(rm -rf 34_6/Release)
	(rm -rf 34_7/Release)
	(rm -rf 35_1/Release)
	(rm -rf 35_2/Release)
	(rm -rf 35_3/Release)
	(rm -rf 35_4/Release)
	(rm -rf 35_5/Release)
	(rm -rf 35_6/Release)
	(rm -rf 35_7/Release)
	(rm -rf 37_0/Release)
	(rm -rf 37_1/Release)
	(rm -rf 37_2/Release)
	(rm -rf 38_0/Release)
	(rm -rf 38_1/Release)
	(rm -rf 38_2/Release)
	(rm -rf 39_0/Release)
	(rm -rf 39_1/Release)
	(rm -rf 39_2/Release)
	(rm -rf 40_0/Release)
	(rm -rf 40_1/Release)
	(rm -rf 40_2/Release)
	(rm -rf 41_0/Release)
	(rm -rf 41_1/Release)
	(rm -rf 41_2/Release)
	(rm -rf 42_0/Release)
	(rm -rf 42_1/Release)
	(rm -rf 42_2/Release)
	(rm -rf 43_0/Release)
	(rm -rf 43_1/Release)
	(rm -rf 43_2/Release)
	(rm -rf 44_0/Release)
	(rm -rf 44_1/Release)
	(rm -rf 44_2/Release)
