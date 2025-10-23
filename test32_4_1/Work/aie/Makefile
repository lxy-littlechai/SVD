SHELL=/bin/bash 
.PHONY: all 0_0 0_1 0_2 0_3 1_0 1_1 1_2 1_3 1_4 1_5 1_6 2_0 2_1 2_2 2_3 2_4 2_5 2_6 3_0 3_1 3_2 3_3 3_4 3_5 3_6 4_0 4_1 4_2 4_3 4_4 4_5 4_6 clean

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
all: 0_0 0_1 0_2 0_3 1_0 1_1 1_2 1_3 1_4 1_5 1_6 2_0 2_1 2_2 2_3 2_4 2_5 2_6 3_0 3_1 3_2 3_3 3_4 3_5 3_6 4_0 4_1 4_2 4_3 4_4 4_5 4_6 

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
1_4:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 1_4/scripts/1_4.prx) 2>&1 |& tee -a 1_4/1_4.log 1_4/timestamped_log/1_4-${ts}.log
	set -o pipefail; (coreverify -obj 1_4 -s 1024 -pm 16384) 2>&1 |& tee -a 1_4/1_4.log 1_4/timestamped_log/1_4-${ts}.log
	(readelf --debug-dump=decodedline 1_4/Release/1_4 >> 1_4/Release/1_4.txt)
1_5:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 1_5/scripts/1_5.prx) 2>&1 |& tee -a 1_5/1_5.log 1_5/timestamped_log/1_5-${ts}.log
	set -o pipefail; (coreverify -obj 1_5 -s 1024 -pm 16384) 2>&1 |& tee -a 1_5/1_5.log 1_5/timestamped_log/1_5-${ts}.log
	(readelf --debug-dump=decodedline 1_5/Release/1_5 >> 1_5/Release/1_5.txt)
2_0:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 2_0/scripts/2_0.prx) 2>&1 |& tee -a 2_0/2_0.log 2_0/timestamped_log/2_0-${ts}.log
	set -o pipefail; (coreverify -obj 2_0 -s 1024 -pm 16384) 2>&1 |& tee -a 2_0/2_0.log 2_0/timestamped_log/2_0-${ts}.log
	(readelf --debug-dump=decodedline 2_0/Release/2_0 >> 2_0/Release/2_0.txt)
2_1:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 2_1/scripts/2_1.prx) 2>&1 |& tee -a 2_1/2_1.log 2_1/timestamped_log/2_1-${ts}.log
	set -o pipefail; (coreverify -obj 2_1 -s 1024 -pm 16384) 2>&1 |& tee -a 2_1/2_1.log 2_1/timestamped_log/2_1-${ts}.log
	(readelf --debug-dump=decodedline 2_1/Release/2_1 >> 2_1/Release/2_1.txt)
2_2:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 2_2/scripts/2_2.prx) 2>&1 |& tee -a 2_2/2_2.log 2_2/timestamped_log/2_2-${ts}.log
	set -o pipefail; (coreverify -obj 2_2 -s 1024 -pm 16384) 2>&1 |& tee -a 2_2/2_2.log 2_2/timestamped_log/2_2-${ts}.log
	(readelf --debug-dump=decodedline 2_2/Release/2_2 >> 2_2/Release/2_2.txt)
2_3:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 2_3/scripts/2_3.prx) 2>&1 |& tee -a 2_3/2_3.log 2_3/timestamped_log/2_3-${ts}.log
	set -o pipefail; (coreverify -obj 2_3 -s 1024 -pm 16384) 2>&1 |& tee -a 2_3/2_3.log 2_3/timestamped_log/2_3-${ts}.log
	(readelf --debug-dump=decodedline 2_3/Release/2_3 >> 2_3/Release/2_3.txt)
3_1:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 3_1/scripts/3_1.prx) 2>&1 |& tee -a 3_1/3_1.log 3_1/timestamped_log/3_1-${ts}.log
	set -o pipefail; (coreverify -obj 3_1 -s 1024 -pm 16384) 2>&1 |& tee -a 3_1/3_1.log 3_1/timestamped_log/3_1-${ts}.log
	(readelf --debug-dump=decodedline 3_1/Release/3_1 >> 3_1/Release/3_1.txt)
4_0:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 4_0/scripts/4_0.prx) 2>&1 |& tee -a 4_0/4_0.log 4_0/timestamped_log/4_0-${ts}.log
	set -o pipefail; (coreverify -obj 4_0 -s 1024 -pm 16384) 2>&1 |& tee -a 4_0/4_0.log 4_0/timestamped_log/4_0-${ts}.log
	(readelf --debug-dump=decodedline 4_0/Release/4_0 >> 4_0/Release/4_0.txt)
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

0_2: 0_0
	mkdir -p 0_2/Release
	cp 0_0/Release/0_0.o 0_2/Release/0_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 0_2/scripts/0_2.prx +W bridge,../Release/0_2.o) 2>&1 |& tee -a 0_2/0_2.log 0_2/timestamped_log/0_2-${ts}.log
	set -o pipefail; (coreverify -obj 0_2 -s 1024 -pm 16384) 2>&1 |& tee -a 0_2/0_2.log 0_2/timestamped_log/0_2-${ts}.log

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

1_6: 1_4
	mkdir -p 1_6/Release
	cp 1_4/Release/1_4.o 1_6/Release/1_6.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 1_6/scripts/1_6.prx +W bridge,../Release/1_6.o) 2>&1 |& tee -a 1_6/1_6.log 1_6/timestamped_log/1_6-${ts}.log
	set -o pipefail; (coreverify -obj 1_6 -s 1024 -pm 16384) 2>&1 |& tee -a 1_6/1_6.log 1_6/timestamped_log/1_6-${ts}.log

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

3_0: 2_0
	mkdir -p 3_0/Release
	cp 2_0/Release/2_0.o 3_0/Release/3_0.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 3_0/scripts/3_0.prx +W bridge,../Release/3_0.o) 2>&1 |& tee -a 3_0/3_0.log 3_0/timestamped_log/3_0-${ts}.log
	set -o pipefail; (coreverify -obj 3_0 -s 1024 -pm 16384) 2>&1 |& tee -a 3_0/3_0.log 3_0/timestamped_log/3_0-${ts}.log

4_5: 4_3
	mkdir -p 4_5/Release
	cp 4_3/Release/4_3.o 4_5/Release/4_5.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 4_5/scripts/4_5.prx +W bridge,../Release/4_5.o) 2>&1 |& tee -a 4_5/4_5.log 4_5/timestamped_log/4_5-${ts}.log
	set -o pipefail; (coreverify -obj 4_5 -s 1024 -pm 16384) 2>&1 |& tee -a 4_5/4_5.log 4_5/timestamped_log/4_5-${ts}.log

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
