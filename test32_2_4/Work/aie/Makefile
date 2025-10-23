SHELL=/bin/bash 
.PHONY: all 0_0 0_1 1_0 1_1 1_2 2_0 2_1 2_2 6_0 6_1 6_2 7_0 7_1 7_2 11_0 11_1 11_2 12_0 12_1 12_2 20_0 20_1 20_2 21_0 21_1 21_2 clean

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
all: 0_0 0_1 1_0 1_1 1_2 2_0 2_1 2_2 6_0 6_1 6_2 7_0 7_1 7_2 11_0 11_1 11_2 12_0 12_1 12_2 20_0 20_1 20_2 21_0 21_1 21_2 

0_0:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 0_0/scripts/0_0.prx) 2>&1 |& tee -a 0_0/0_0.log 0_0/timestamped_log/0_0-${ts}.log
	set -o pipefail; (coreverify -obj 0_0 -s 1024 -pm 16384) 2>&1 |& tee -a 0_0/0_0.log 0_0/timestamped_log/0_0-${ts}.log
	(readelf --debug-dump=decodedline 0_0/Release/0_0 >> 0_0/Release/0_0.txt)
0_1:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 0_1/scripts/0_1.prx) 2>&1 |& tee -a 0_1/0_1.log 0_1/timestamped_log/0_1-${ts}.log
	set -o pipefail; (coreverify -obj 0_1 -s 1024 -pm 16384) 2>&1 |& tee -a 0_1/0_1.log 0_1/timestamped_log/0_1-${ts}.log
	(readelf --debug-dump=decodedline 0_1/Release/0_1 >> 0_1/Release/0_1.txt)
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
2_1:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 2_1/scripts/2_1.prx) 2>&1 |& tee -a 2_1/2_1.log 2_1/timestamped_log/2_1-${ts}.log
	set -o pipefail; (coreverify -obj 2_1 -s 1024 -pm 16384) 2>&1 |& tee -a 2_1/2_1.log 2_1/timestamped_log/2_1-${ts}.log
	(readelf --debug-dump=decodedline 2_1/Release/2_1 >> 2_1/Release/2_1.txt)
2_2:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 2_2/scripts/2_2.prx) 2>&1 |& tee -a 2_2/2_2.log 2_2/timestamped_log/2_2-${ts}.log
	set -o pipefail; (coreverify -obj 2_2 -s 1024 -pm 16384) 2>&1 |& tee -a 2_2/2_2.log 2_2/timestamped_log/2_2-${ts}.log
	(readelf --debug-dump=decodedline 2_2/Release/2_2 >> 2_2/Release/2_2.txt)
6_0:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 6_0/scripts/6_0.prx) 2>&1 |& tee -a 6_0/6_0.log 6_0/timestamped_log/6_0-${ts}.log
	set -o pipefail; (coreverify -obj 6_0 -s 1024 -pm 16384) 2>&1 |& tee -a 6_0/6_0.log 6_0/timestamped_log/6_0-${ts}.log
	(readelf --debug-dump=decodedline 6_0/Release/6_0 >> 6_0/Release/6_0.txt)
6_1:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 6_1/scripts/6_1.prx) 2>&1 |& tee -a 6_1/6_1.log 6_1/timestamped_log/6_1-${ts}.log
	set -o pipefail; (coreverify -obj 6_1 -s 1024 -pm 16384) 2>&1 |& tee -a 6_1/6_1.log 6_1/timestamped_log/6_1-${ts}.log
	(readelf --debug-dump=decodedline 6_1/Release/6_1 >> 6_1/Release/6_1.txt)
6_2:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 6_2/scripts/6_2.prx) 2>&1 |& tee -a 6_2/6_2.log 6_2/timestamped_log/6_2-${ts}.log
	set -o pipefail; (coreverify -obj 6_2 -s 1024 -pm 16384) 2>&1 |& tee -a 6_2/6_2.log 6_2/timestamped_log/6_2-${ts}.log
	(readelf --debug-dump=decodedline 6_2/Release/6_2 >> 6_2/Release/6_2.txt)
7_0:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 7_0/scripts/7_0.prx) 2>&1 |& tee -a 7_0/7_0.log 7_0/timestamped_log/7_0-${ts}.log
	set -o pipefail; (coreverify -obj 7_0 -s 1024 -pm 16384) 2>&1 |& tee -a 7_0/7_0.log 7_0/timestamped_log/7_0-${ts}.log
	(readelf --debug-dump=decodedline 7_0/Release/7_0 >> 7_0/Release/7_0.txt)
7_1:
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 7_1/scripts/7_1.prx) 2>&1 |& tee -a 7_1/7_1.log 7_1/timestamped_log/7_1-${ts}.log
	set -o pipefail; (coreverify -obj 7_1 -s 1024 -pm 16384) 2>&1 |& tee -a 7_1/7_1.log 7_1/timestamped_log/7_1-${ts}.log
	(readelf --debug-dump=decodedline 7_1/Release/7_1 >> 7_1/Release/7_1.txt)

2_0: 1_0
	mkdir -p 2_0/Release
	cp 1_0/Release/1_0.o 2_0/Release/2_0.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 2_0/scripts/2_0.prx +W bridge,../Release/2_0.o) 2>&1 |& tee -a 2_0/2_0.log 2_0/timestamped_log/2_0-${ts}.log
	set -o pipefail; (coreverify -obj 2_0 -s 1024 -pm 16384) 2>&1 |& tee -a 2_0/2_0.log 2_0/timestamped_log/2_0-${ts}.log

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

7_2: 6_1
	mkdir -p 7_2/Release
	cp 6_1/Release/6_1.o 7_2/Release/7_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 7_2/scripts/7_2.prx +W bridge,../Release/7_2.o) 2>&1 |& tee -a 7_2/7_2.log 7_2/timestamped_log/7_2-${ts}.log
	set -o pipefail; (coreverify -obj 7_2 -s 1024 -pm 16384) 2>&1 |& tee -a 7_2/7_2.log 7_2/timestamped_log/7_2-${ts}.log

11_1: 6_1
	mkdir -p 11_1/Release
	cp 6_1/Release/6_1.o 11_1/Release/11_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 11_1/scripts/11_1.prx +W bridge,../Release/11_1.o) 2>&1 |& tee -a 11_1/11_1.log 11_1/timestamped_log/11_1-${ts}.log
	set -o pipefail; (coreverify -obj 11_1 -s 1024 -pm 16384) 2>&1 |& tee -a 11_1/11_1.log 11_1/timestamped_log/11_1-${ts}.log

12_2: 6_1
	mkdir -p 12_2/Release
	cp 6_1/Release/6_1.o 12_2/Release/12_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 12_2/scripts/12_2.prx +W bridge,../Release/12_2.o) 2>&1 |& tee -a 12_2/12_2.log 12_2/timestamped_log/12_2-${ts}.log
	set -o pipefail; (coreverify -obj 12_2 -s 1024 -pm 16384) 2>&1 |& tee -a 12_2/12_2.log 12_2/timestamped_log/12_2-${ts}.log

20_1: 6_1
	mkdir -p 20_1/Release
	cp 6_1/Release/6_1.o 20_1/Release/20_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 20_1/scripts/20_1.prx +W bridge,../Release/20_1.o) 2>&1 |& tee -a 20_1/20_1.log 20_1/timestamped_log/20_1-${ts}.log
	set -o pipefail; (coreverify -obj 20_1 -s 1024 -pm 16384) 2>&1 |& tee -a 20_1/20_1.log 20_1/timestamped_log/20_1-${ts}.log

21_2: 6_1
	mkdir -p 21_2/Release
	cp 6_1/Release/6_1.o 21_2/Release/21_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 21_2/scripts/21_2.prx +W bridge,../Release/21_2.o) 2>&1 |& tee -a 21_2/21_2.log 21_2/timestamped_log/21_2-${ts}.log
	set -o pipefail; (coreverify -obj 21_2 -s 1024 -pm 16384) 2>&1 |& tee -a 21_2/21_2.log 21_2/timestamped_log/21_2-${ts}.log

11_2: 6_2
	mkdir -p 11_2/Release
	cp 6_2/Release/6_2.o 11_2/Release/11_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 11_2/scripts/11_2.prx +W bridge,../Release/11_2.o) 2>&1 |& tee -a 11_2/11_2.log 11_2/timestamped_log/11_2-${ts}.log
	set -o pipefail; (coreverify -obj 11_2 -s 1024 -pm 16384) 2>&1 |& tee -a 11_2/11_2.log 11_2/timestamped_log/11_2-${ts}.log

20_2: 6_2
	mkdir -p 20_2/Release
	cp 6_2/Release/6_2.o 20_2/Release/20_2.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 20_2/scripts/20_2.prx +W bridge,../Release/20_2.o) 2>&1 |& tee -a 20_2/20_2.log 20_2/timestamped_log/20_2-${ts}.log
	set -o pipefail; (coreverify -obj 20_2 -s 1024 -pm 16384) 2>&1 |& tee -a 20_2/20_2.log 20_2/timestamped_log/20_2-${ts}.log

12_0: 7_0
	mkdir -p 12_0/Release
	cp 7_0/Release/7_0.o 12_0/Release/12_0.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 12_0/scripts/12_0.prx +W bridge,../Release/12_0.o) 2>&1 |& tee -a 12_0/12_0.log 12_0/timestamped_log/12_0-${ts}.log
	set -o pipefail; (coreverify -obj 12_0 -s 1024 -pm 16384) 2>&1 |& tee -a 12_0/12_0.log 12_0/timestamped_log/12_0-${ts}.log

21_0: 7_0
	mkdir -p 21_0/Release
	cp 7_0/Release/7_0.o 21_0/Release/21_0.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 21_0/scripts/21_0.prx +W bridge,../Release/21_0.o) 2>&1 |& tee -a 21_0/21_0.log 21_0/timestamped_log/21_0-${ts}.log
	set -o pipefail; (coreverify -obj 21_0 -s 1024 -pm 16384) 2>&1 |& tee -a 21_0/21_0.log 21_0/timestamped_log/21_0-${ts}.log

12_1: 7_1
	mkdir -p 12_1/Release
	cp 7_1/Release/7_1.o 12_1/Release/12_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 12_1/scripts/12_1.prx +W bridge,../Release/12_1.o) 2>&1 |& tee -a 12_1/12_1.log 12_1/timestamped_log/12_1-${ts}.log
	set -o pipefail; (coreverify -obj 12_1 -s 1024 -pm 16384) 2>&1 |& tee -a 12_1/12_1.log 12_1/timestamped_log/12_1-${ts}.log

21_1: 7_1
	mkdir -p 21_1/Release
	cp 7_1/Release/7_1.o 21_1/Release/21_1.o 
	set -o pipefail; (${XCHESSMK}  -C Release_LLVM -P ${CARDANO_AIE_ARCH_MODEL_DIR} +P 4 -v  -DDEPLOYMENT_ELF=1 -D__LOCK_FENCE_MODE__=0 -DAIE_OPTION_SCALAR_FLOAT_ON_VECTOR  +o ../Release 21_1/scripts/21_1.prx +W bridge,../Release/21_1.o) 2>&1 |& tee -a 21_1/21_1.log 21_1/timestamped_log/21_1-${ts}.log
	set -o pipefail; (coreverify -obj 21_1 -s 1024 -pm 16384) 2>&1 |& tee -a 21_1/21_1.log 21_1/timestamped_log/21_1-${ts}.log

clean:
	(rm -rf 0_0/Release)
	(rm -rf 0_1/Release)
	(rm -rf 1_0/Release)
	(rm -rf 1_1/Release)
	(rm -rf 1_2/Release)
	(rm -rf 2_0/Release)
	(rm -rf 2_1/Release)
	(rm -rf 2_2/Release)
	(rm -rf 6_0/Release)
	(rm -rf 6_1/Release)
	(rm -rf 6_2/Release)
	(rm -rf 7_0/Release)
	(rm -rf 7_1/Release)
	(rm -rf 7_2/Release)
	(rm -rf 11_0/Release)
	(rm -rf 11_1/Release)
	(rm -rf 11_2/Release)
	(rm -rf 12_0/Release)
	(rm -rf 12_1/Release)
	(rm -rf 12_2/Release)
	(rm -rf 20_0/Release)
	(rm -rf 20_1/Release)
	(rm -rf 20_2/Release)
	(rm -rf 21_0/Release)
	(rm -rf 21_1/Release)
	(rm -rf 21_2/Release)
