// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xdma.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XDma_CfgInitialize(XDma *InstancePtr, XDma_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XDma_Start(XDma *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDma_ReadReg(InstancePtr->Control_BaseAddress, XDMA_CONTROL_ADDR_AP_CTRL) & 0x80;
    XDma_WriteReg(InstancePtr->Control_BaseAddress, XDMA_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XDma_IsDone(XDma *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDma_ReadReg(InstancePtr->Control_BaseAddress, XDMA_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XDma_IsIdle(XDma *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDma_ReadReg(InstancePtr->Control_BaseAddress, XDMA_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XDma_IsReady(XDma *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDma_ReadReg(InstancePtr->Control_BaseAddress, XDMA_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XDma_Continue(XDma *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDma_ReadReg(InstancePtr->Control_BaseAddress, XDMA_CONTROL_ADDR_AP_CTRL) & 0x80;
    XDma_WriteReg(InstancePtr->Control_BaseAddress, XDMA_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XDma_EnableAutoRestart(XDma *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDma_WriteReg(InstancePtr->Control_BaseAddress, XDMA_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XDma_DisableAutoRestart(XDma *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDma_WriteReg(InstancePtr->Control_BaseAddress, XDMA_CONTROL_ADDR_AP_CTRL, 0);
}

void XDma_Set_in_r(XDma *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDma_WriteReg(InstancePtr->Control_BaseAddress, XDMA_CONTROL_ADDR_IN_R_DATA, (u32)(Data));
    XDma_WriteReg(InstancePtr->Control_BaseAddress, XDMA_CONTROL_ADDR_IN_R_DATA + 4, (u32)(Data >> 32));
}

u64 XDma_Get_in_r(XDma *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDma_ReadReg(InstancePtr->Control_BaseAddress, XDMA_CONTROL_ADDR_IN_R_DATA);
    Data += (u64)XDma_ReadReg(InstancePtr->Control_BaseAddress, XDMA_CONTROL_ADDR_IN_R_DATA + 4) << 32;
    return Data;
}

void XDma_Set_out_r(XDma *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDma_WriteReg(InstancePtr->Control_BaseAddress, XDMA_CONTROL_ADDR_OUT_R_DATA, (u32)(Data));
    XDma_WriteReg(InstancePtr->Control_BaseAddress, XDMA_CONTROL_ADDR_OUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XDma_Get_out_r(XDma *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDma_ReadReg(InstancePtr->Control_BaseAddress, XDMA_CONTROL_ADDR_OUT_R_DATA);
    Data += (u64)XDma_ReadReg(InstancePtr->Control_BaseAddress, XDMA_CONTROL_ADDR_OUT_R_DATA + 4) << 32;
    return Data;
}

void XDma_InterruptGlobalEnable(XDma *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDma_WriteReg(InstancePtr->Control_BaseAddress, XDMA_CONTROL_ADDR_GIE, 1);
}

void XDma_InterruptGlobalDisable(XDma *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDma_WriteReg(InstancePtr->Control_BaseAddress, XDMA_CONTROL_ADDR_GIE, 0);
}

void XDma_InterruptEnable(XDma *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDma_ReadReg(InstancePtr->Control_BaseAddress, XDMA_CONTROL_ADDR_IER);
    XDma_WriteReg(InstancePtr->Control_BaseAddress, XDMA_CONTROL_ADDR_IER, Register | Mask);
}

void XDma_InterruptDisable(XDma *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDma_ReadReg(InstancePtr->Control_BaseAddress, XDMA_CONTROL_ADDR_IER);
    XDma_WriteReg(InstancePtr->Control_BaseAddress, XDMA_CONTROL_ADDR_IER, Register & (~Mask));
}

void XDma_InterruptClear(XDma *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDma_WriteReg(InstancePtr->Control_BaseAddress, XDMA_CONTROL_ADDR_ISR, Mask);
}

u32 XDma_InterruptGetEnabled(XDma *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDma_ReadReg(InstancePtr->Control_BaseAddress, XDMA_CONTROL_ADDR_IER);
}

u32 XDma_InterruptGetStatus(XDma *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDma_ReadReg(InstancePtr->Control_BaseAddress, XDMA_CONTROL_ADDR_ISR);
}

