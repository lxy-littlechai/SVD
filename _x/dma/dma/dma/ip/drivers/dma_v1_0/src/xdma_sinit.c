// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xdma.h"

extern XDma_Config XDma_ConfigTable[];

#ifdef SDT
XDma_Config *XDma_LookupConfig(UINTPTR BaseAddress) {
	XDma_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XDma_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XDma_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XDma_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XDma_Initialize(XDma *InstancePtr, UINTPTR BaseAddress) {
	XDma_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XDma_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XDma_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XDma_Config *XDma_LookupConfig(u16 DeviceId) {
	XDma_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XDMA_NUM_INSTANCES; Index++) {
		if (XDma_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XDma_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XDma_Initialize(XDma *InstancePtr, u16 DeviceId) {
	XDma_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XDma_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XDma_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

