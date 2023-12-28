#!/bin/sh

# 
# v++(TM)
# runme.sh: a v++-generated Runs Script for UNIX
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/lxy/tools/Xilinx/Vitis_HLS/2023.2/bin:/home/lxy/tools/Xilinx/Vitis/2023.2/bin:/home/lxy/tools/Xilinx/Vitis/2023.2/bin
else
  PATH=/home/lxy/tools/Xilinx/Vitis_HLS/2023.2/bin:/home/lxy/tools/Xilinx/Vitis/2023.2/bin:/home/lxy/tools/Xilinx/Vitis/2023.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/lxy/Projects/SVD/_x/dma/dma'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vitis_hls -f dma.tcl -messageDb vitis_hls.pb
