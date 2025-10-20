#include "hls_signal_handler.h"
#include <algorithm>
#include <complex>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <exception>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <map>
#include "ap_fixed.h"
#include "ap_int.h"
#include "autopilot_cbe.h"
#include "hls_half.h"
#include "hls_stream.h"

using namespace std;

// wrapc file define:
#define AUTOTB_TVIN_dataIn "../tv/cdatafile/c.TopPL.autotvin_dataIn.dat"
#define AUTOTB_TVOUT_dataIn "../tv/cdatafile/c.TopPL.autotvout_dataIn.dat"
#define AUTOTB_TVIN_U "../tv/cdatafile/c.TopPL.autotvin_U.dat"
#define AUTOTB_TVOUT_U "../tv/cdatafile/c.TopPL.autotvout_U.dat"
#define AUTOTB_TVIN_S "../tv/cdatafile/c.TopPL.autotvin_S.dat"
#define AUTOTB_TVOUT_S "../tv/cdatafile/c.TopPL.autotvout_S.dat"
#define AUTOTB_TVIN_ConvArray "../tv/cdatafile/c.TopPL.autotvin_ConvArray.dat"
#define AUTOTB_TVOUT_ConvArray "../tv/cdatafile/c.TopPL.autotvout_ConvArray.dat"
#define AUTOTB_TVIN_ITER "../tv/cdatafile/c.TopPL.autotvin_ITER.dat"
#define AUTOTB_TVOUT_ITER "../tv/cdatafile/c.TopPL.autotvout_ITER.dat"
#define AUTOTB_TVIN_sweep_tx1_0_V_data_V "../tv/cdatafile/c.TopPL.autotvin_sweep_tx1_0_V_data_V.dat"
#define AUTOTB_TVOUT_sweep_tx1_0_V_data_V "../tv/cdatafile/c.TopPL.autotvout_sweep_tx1_0_V_data_V.dat"
#define AUTOTB_TVIN_sweep_tx1_0_V_keep_V "../tv/cdatafile/c.TopPL.autotvin_sweep_tx1_0_V_keep_V.dat"
#define AUTOTB_TVOUT_sweep_tx1_0_V_keep_V "../tv/cdatafile/c.TopPL.autotvout_sweep_tx1_0_V_keep_V.dat"
#define AUTOTB_TVIN_sweep_tx1_0_V_strb_V "../tv/cdatafile/c.TopPL.autotvin_sweep_tx1_0_V_strb_V.dat"
#define AUTOTB_TVOUT_sweep_tx1_0_V_strb_V "../tv/cdatafile/c.TopPL.autotvout_sweep_tx1_0_V_strb_V.dat"
#define AUTOTB_TVIN_sweep_tx1_0_V_last_V "../tv/cdatafile/c.TopPL.autotvin_sweep_tx1_0_V_last_V.dat"
#define AUTOTB_TVOUT_sweep_tx1_0_V_last_V "../tv/cdatafile/c.TopPL.autotvout_sweep_tx1_0_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_sweep_tx1_0_V_data_V "../tv/stream_size/stream_size_out_sweep_tx1_0_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_sweep_tx1_0_V_data_V "../tv/stream_size/stream_egress_status_sweep_tx1_0_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_sweep_tx1_0_V_keep_V "../tv/stream_size/stream_size_out_sweep_tx1_0_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_sweep_tx1_0_V_keep_V "../tv/stream_size/stream_egress_status_sweep_tx1_0_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_sweep_tx1_0_V_strb_V "../tv/stream_size/stream_size_out_sweep_tx1_0_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_sweep_tx1_0_V_strb_V "../tv/stream_size/stream_egress_status_sweep_tx1_0_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_sweep_tx1_0_V_last_V "../tv/stream_size/stream_size_out_sweep_tx1_0_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_sweep_tx1_0_V_last_V "../tv/stream_size/stream_egress_status_sweep_tx1_0_V_last_V.dat"
#define AUTOTB_TVIN_sweep_rx1_0_V_data_V "../tv/cdatafile/c.TopPL.autotvin_sweep_rx1_0_V_data_V.dat"
#define AUTOTB_TVOUT_sweep_rx1_0_V_data_V "../tv/cdatafile/c.TopPL.autotvout_sweep_rx1_0_V_data_V.dat"
#define AUTOTB_TVIN_sweep_rx1_0_V_keep_V "../tv/cdatafile/c.TopPL.autotvin_sweep_rx1_0_V_keep_V.dat"
#define AUTOTB_TVOUT_sweep_rx1_0_V_keep_V "../tv/cdatafile/c.TopPL.autotvout_sweep_rx1_0_V_keep_V.dat"
#define AUTOTB_TVIN_sweep_rx1_0_V_strb_V "../tv/cdatafile/c.TopPL.autotvin_sweep_rx1_0_V_strb_V.dat"
#define AUTOTB_TVOUT_sweep_rx1_0_V_strb_V "../tv/cdatafile/c.TopPL.autotvout_sweep_rx1_0_V_strb_V.dat"
#define AUTOTB_TVIN_sweep_rx1_0_V_last_V "../tv/cdatafile/c.TopPL.autotvin_sweep_rx1_0_V_last_V.dat"
#define AUTOTB_TVOUT_sweep_rx1_0_V_last_V "../tv/cdatafile/c.TopPL.autotvout_sweep_rx1_0_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_sweep_rx1_0_V_data_V "../tv/stream_size/stream_size_in_sweep_rx1_0_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_sweep_rx1_0_V_data_V "../tv/stream_size/stream_ingress_status_sweep_rx1_0_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_sweep_rx1_0_V_keep_V "../tv/stream_size/stream_size_in_sweep_rx1_0_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_sweep_rx1_0_V_keep_V "../tv/stream_size/stream_ingress_status_sweep_rx1_0_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_sweep_rx1_0_V_strb_V "../tv/stream_size/stream_size_in_sweep_rx1_0_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_sweep_rx1_0_V_strb_V "../tv/stream_size/stream_ingress_status_sweep_rx1_0_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_sweep_rx1_0_V_last_V "../tv/stream_size/stream_size_in_sweep_rx1_0_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_sweep_rx1_0_V_last_V "../tv/stream_size/stream_ingress_status_sweep_rx1_0_V_last_V.dat"
#define AUTOTB_TVIN_sweep_tx1_1_V_data_V "../tv/cdatafile/c.TopPL.autotvin_sweep_tx1_1_V_data_V.dat"
#define AUTOTB_TVOUT_sweep_tx1_1_V_data_V "../tv/cdatafile/c.TopPL.autotvout_sweep_tx1_1_V_data_V.dat"
#define AUTOTB_TVIN_sweep_tx1_1_V_keep_V "../tv/cdatafile/c.TopPL.autotvin_sweep_tx1_1_V_keep_V.dat"
#define AUTOTB_TVOUT_sweep_tx1_1_V_keep_V "../tv/cdatafile/c.TopPL.autotvout_sweep_tx1_1_V_keep_V.dat"
#define AUTOTB_TVIN_sweep_tx1_1_V_strb_V "../tv/cdatafile/c.TopPL.autotvin_sweep_tx1_1_V_strb_V.dat"
#define AUTOTB_TVOUT_sweep_tx1_1_V_strb_V "../tv/cdatafile/c.TopPL.autotvout_sweep_tx1_1_V_strb_V.dat"
#define AUTOTB_TVIN_sweep_tx1_1_V_last_V "../tv/cdatafile/c.TopPL.autotvin_sweep_tx1_1_V_last_V.dat"
#define AUTOTB_TVOUT_sweep_tx1_1_V_last_V "../tv/cdatafile/c.TopPL.autotvout_sweep_tx1_1_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_sweep_tx1_1_V_data_V "../tv/stream_size/stream_size_out_sweep_tx1_1_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_sweep_tx1_1_V_data_V "../tv/stream_size/stream_egress_status_sweep_tx1_1_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_sweep_tx1_1_V_keep_V "../tv/stream_size/stream_size_out_sweep_tx1_1_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_sweep_tx1_1_V_keep_V "../tv/stream_size/stream_egress_status_sweep_tx1_1_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_sweep_tx1_1_V_strb_V "../tv/stream_size/stream_size_out_sweep_tx1_1_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_sweep_tx1_1_V_strb_V "../tv/stream_size/stream_egress_status_sweep_tx1_1_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_sweep_tx1_1_V_last_V "../tv/stream_size/stream_size_out_sweep_tx1_1_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_sweep_tx1_1_V_last_V "../tv/stream_size/stream_egress_status_sweep_tx1_1_V_last_V.dat"
#define AUTOTB_TVIN_sweep_rx1_1_V_data_V "../tv/cdatafile/c.TopPL.autotvin_sweep_rx1_1_V_data_V.dat"
#define AUTOTB_TVOUT_sweep_rx1_1_V_data_V "../tv/cdatafile/c.TopPL.autotvout_sweep_rx1_1_V_data_V.dat"
#define AUTOTB_TVIN_sweep_rx1_1_V_keep_V "../tv/cdatafile/c.TopPL.autotvin_sweep_rx1_1_V_keep_V.dat"
#define AUTOTB_TVOUT_sweep_rx1_1_V_keep_V "../tv/cdatafile/c.TopPL.autotvout_sweep_rx1_1_V_keep_V.dat"
#define AUTOTB_TVIN_sweep_rx1_1_V_strb_V "../tv/cdatafile/c.TopPL.autotvin_sweep_rx1_1_V_strb_V.dat"
#define AUTOTB_TVOUT_sweep_rx1_1_V_strb_V "../tv/cdatafile/c.TopPL.autotvout_sweep_rx1_1_V_strb_V.dat"
#define AUTOTB_TVIN_sweep_rx1_1_V_last_V "../tv/cdatafile/c.TopPL.autotvin_sweep_rx1_1_V_last_V.dat"
#define AUTOTB_TVOUT_sweep_rx1_1_V_last_V "../tv/cdatafile/c.TopPL.autotvout_sweep_rx1_1_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_sweep_rx1_1_V_data_V "../tv/stream_size/stream_size_in_sweep_rx1_1_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_sweep_rx1_1_V_data_V "../tv/stream_size/stream_ingress_status_sweep_rx1_1_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_sweep_rx1_1_V_keep_V "../tv/stream_size/stream_size_in_sweep_rx1_1_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_sweep_rx1_1_V_keep_V "../tv/stream_size/stream_ingress_status_sweep_rx1_1_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_sweep_rx1_1_V_strb_V "../tv/stream_size/stream_size_in_sweep_rx1_1_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_sweep_rx1_1_V_strb_V "../tv/stream_size/stream_ingress_status_sweep_rx1_1_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_sweep_rx1_1_V_last_V "../tv/stream_size/stream_size_in_sweep_rx1_1_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_sweep_rx1_1_V_last_V "../tv/stream_size/stream_ingress_status_sweep_rx1_1_V_last_V.dat"
#define AUTOTB_TVIN_sweep_tx2_0_V_data_V "../tv/cdatafile/c.TopPL.autotvin_sweep_tx2_0_V_data_V.dat"
#define AUTOTB_TVOUT_sweep_tx2_0_V_data_V "../tv/cdatafile/c.TopPL.autotvout_sweep_tx2_0_V_data_V.dat"
#define AUTOTB_TVIN_sweep_tx2_0_V_keep_V "../tv/cdatafile/c.TopPL.autotvin_sweep_tx2_0_V_keep_V.dat"
#define AUTOTB_TVOUT_sweep_tx2_0_V_keep_V "../tv/cdatafile/c.TopPL.autotvout_sweep_tx2_0_V_keep_V.dat"
#define AUTOTB_TVIN_sweep_tx2_0_V_strb_V "../tv/cdatafile/c.TopPL.autotvin_sweep_tx2_0_V_strb_V.dat"
#define AUTOTB_TVOUT_sweep_tx2_0_V_strb_V "../tv/cdatafile/c.TopPL.autotvout_sweep_tx2_0_V_strb_V.dat"
#define AUTOTB_TVIN_sweep_tx2_0_V_last_V "../tv/cdatafile/c.TopPL.autotvin_sweep_tx2_0_V_last_V.dat"
#define AUTOTB_TVOUT_sweep_tx2_0_V_last_V "../tv/cdatafile/c.TopPL.autotvout_sweep_tx2_0_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_sweep_tx2_0_V_data_V "../tv/stream_size/stream_size_out_sweep_tx2_0_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_sweep_tx2_0_V_data_V "../tv/stream_size/stream_egress_status_sweep_tx2_0_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_sweep_tx2_0_V_keep_V "../tv/stream_size/stream_size_out_sweep_tx2_0_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_sweep_tx2_0_V_keep_V "../tv/stream_size/stream_egress_status_sweep_tx2_0_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_sweep_tx2_0_V_strb_V "../tv/stream_size/stream_size_out_sweep_tx2_0_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_sweep_tx2_0_V_strb_V "../tv/stream_size/stream_egress_status_sweep_tx2_0_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_sweep_tx2_0_V_last_V "../tv/stream_size/stream_size_out_sweep_tx2_0_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_sweep_tx2_0_V_last_V "../tv/stream_size/stream_egress_status_sweep_tx2_0_V_last_V.dat"
#define AUTOTB_TVIN_sweep_rx2_0_V_data_V "../tv/cdatafile/c.TopPL.autotvin_sweep_rx2_0_V_data_V.dat"
#define AUTOTB_TVOUT_sweep_rx2_0_V_data_V "../tv/cdatafile/c.TopPL.autotvout_sweep_rx2_0_V_data_V.dat"
#define AUTOTB_TVIN_sweep_rx2_0_V_keep_V "../tv/cdatafile/c.TopPL.autotvin_sweep_rx2_0_V_keep_V.dat"
#define AUTOTB_TVOUT_sweep_rx2_0_V_keep_V "../tv/cdatafile/c.TopPL.autotvout_sweep_rx2_0_V_keep_V.dat"
#define AUTOTB_TVIN_sweep_rx2_0_V_strb_V "../tv/cdatafile/c.TopPL.autotvin_sweep_rx2_0_V_strb_V.dat"
#define AUTOTB_TVOUT_sweep_rx2_0_V_strb_V "../tv/cdatafile/c.TopPL.autotvout_sweep_rx2_0_V_strb_V.dat"
#define AUTOTB_TVIN_sweep_rx2_0_V_last_V "../tv/cdatafile/c.TopPL.autotvin_sweep_rx2_0_V_last_V.dat"
#define AUTOTB_TVOUT_sweep_rx2_0_V_last_V "../tv/cdatafile/c.TopPL.autotvout_sweep_rx2_0_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_sweep_rx2_0_V_data_V "../tv/stream_size/stream_size_in_sweep_rx2_0_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_sweep_rx2_0_V_data_V "../tv/stream_size/stream_ingress_status_sweep_rx2_0_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_sweep_rx2_0_V_keep_V "../tv/stream_size/stream_size_in_sweep_rx2_0_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_sweep_rx2_0_V_keep_V "../tv/stream_size/stream_ingress_status_sweep_rx2_0_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_sweep_rx2_0_V_strb_V "../tv/stream_size/stream_size_in_sweep_rx2_0_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_sweep_rx2_0_V_strb_V "../tv/stream_size/stream_ingress_status_sweep_rx2_0_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_sweep_rx2_0_V_last_V "../tv/stream_size/stream_size_in_sweep_rx2_0_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_sweep_rx2_0_V_last_V "../tv/stream_size/stream_ingress_status_sweep_rx2_0_V_last_V.dat"
#define AUTOTB_TVIN_sweep_tx2_1_V_data_V "../tv/cdatafile/c.TopPL.autotvin_sweep_tx2_1_V_data_V.dat"
#define AUTOTB_TVOUT_sweep_tx2_1_V_data_V "../tv/cdatafile/c.TopPL.autotvout_sweep_tx2_1_V_data_V.dat"
#define AUTOTB_TVIN_sweep_tx2_1_V_keep_V "../tv/cdatafile/c.TopPL.autotvin_sweep_tx2_1_V_keep_V.dat"
#define AUTOTB_TVOUT_sweep_tx2_1_V_keep_V "../tv/cdatafile/c.TopPL.autotvout_sweep_tx2_1_V_keep_V.dat"
#define AUTOTB_TVIN_sweep_tx2_1_V_strb_V "../tv/cdatafile/c.TopPL.autotvin_sweep_tx2_1_V_strb_V.dat"
#define AUTOTB_TVOUT_sweep_tx2_1_V_strb_V "../tv/cdatafile/c.TopPL.autotvout_sweep_tx2_1_V_strb_V.dat"
#define AUTOTB_TVIN_sweep_tx2_1_V_last_V "../tv/cdatafile/c.TopPL.autotvin_sweep_tx2_1_V_last_V.dat"
#define AUTOTB_TVOUT_sweep_tx2_1_V_last_V "../tv/cdatafile/c.TopPL.autotvout_sweep_tx2_1_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_sweep_tx2_1_V_data_V "../tv/stream_size/stream_size_out_sweep_tx2_1_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_sweep_tx2_1_V_data_V "../tv/stream_size/stream_egress_status_sweep_tx2_1_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_sweep_tx2_1_V_keep_V "../tv/stream_size/stream_size_out_sweep_tx2_1_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_sweep_tx2_1_V_keep_V "../tv/stream_size/stream_egress_status_sweep_tx2_1_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_sweep_tx2_1_V_strb_V "../tv/stream_size/stream_size_out_sweep_tx2_1_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_sweep_tx2_1_V_strb_V "../tv/stream_size/stream_egress_status_sweep_tx2_1_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_sweep_tx2_1_V_last_V "../tv/stream_size/stream_size_out_sweep_tx2_1_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_sweep_tx2_1_V_last_V "../tv/stream_size/stream_egress_status_sweep_tx2_1_V_last_V.dat"
#define AUTOTB_TVIN_sweep_rx2_1_V_data_V "../tv/cdatafile/c.TopPL.autotvin_sweep_rx2_1_V_data_V.dat"
#define AUTOTB_TVOUT_sweep_rx2_1_V_data_V "../tv/cdatafile/c.TopPL.autotvout_sweep_rx2_1_V_data_V.dat"
#define AUTOTB_TVIN_sweep_rx2_1_V_keep_V "../tv/cdatafile/c.TopPL.autotvin_sweep_rx2_1_V_keep_V.dat"
#define AUTOTB_TVOUT_sweep_rx2_1_V_keep_V "../tv/cdatafile/c.TopPL.autotvout_sweep_rx2_1_V_keep_V.dat"
#define AUTOTB_TVIN_sweep_rx2_1_V_strb_V "../tv/cdatafile/c.TopPL.autotvin_sweep_rx2_1_V_strb_V.dat"
#define AUTOTB_TVOUT_sweep_rx2_1_V_strb_V "../tv/cdatafile/c.TopPL.autotvout_sweep_rx2_1_V_strb_V.dat"
#define AUTOTB_TVIN_sweep_rx2_1_V_last_V "../tv/cdatafile/c.TopPL.autotvin_sweep_rx2_1_V_last_V.dat"
#define AUTOTB_TVOUT_sweep_rx2_1_V_last_V "../tv/cdatafile/c.TopPL.autotvout_sweep_rx2_1_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_sweep_rx2_1_V_data_V "../tv/stream_size/stream_size_in_sweep_rx2_1_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_sweep_rx2_1_V_data_V "../tv/stream_size/stream_ingress_status_sweep_rx2_1_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_sweep_rx2_1_V_keep_V "../tv/stream_size/stream_size_in_sweep_rx2_1_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_sweep_rx2_1_V_keep_V "../tv/stream_size/stream_ingress_status_sweep_rx2_1_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_sweep_rx2_1_V_strb_V "../tv/stream_size/stream_size_in_sweep_rx2_1_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_sweep_rx2_1_V_strb_V "../tv/stream_size/stream_ingress_status_sweep_rx2_1_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_sweep_rx2_1_V_last_V "../tv/stream_size/stream_size_in_sweep_rx2_1_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_sweep_rx2_1_V_last_V "../tv/stream_size/stream_ingress_status_sweep_rx2_1_V_last_V.dat"
#define AUTOTB_TVIN_sweep_tx3_0_V_data_V "../tv/cdatafile/c.TopPL.autotvin_sweep_tx3_0_V_data_V.dat"
#define AUTOTB_TVOUT_sweep_tx3_0_V_data_V "../tv/cdatafile/c.TopPL.autotvout_sweep_tx3_0_V_data_V.dat"
#define AUTOTB_TVIN_sweep_tx3_0_V_keep_V "../tv/cdatafile/c.TopPL.autotvin_sweep_tx3_0_V_keep_V.dat"
#define AUTOTB_TVOUT_sweep_tx3_0_V_keep_V "../tv/cdatafile/c.TopPL.autotvout_sweep_tx3_0_V_keep_V.dat"
#define AUTOTB_TVIN_sweep_tx3_0_V_strb_V "../tv/cdatafile/c.TopPL.autotvin_sweep_tx3_0_V_strb_V.dat"
#define AUTOTB_TVOUT_sweep_tx3_0_V_strb_V "../tv/cdatafile/c.TopPL.autotvout_sweep_tx3_0_V_strb_V.dat"
#define AUTOTB_TVIN_sweep_tx3_0_V_last_V "../tv/cdatafile/c.TopPL.autotvin_sweep_tx3_0_V_last_V.dat"
#define AUTOTB_TVOUT_sweep_tx3_0_V_last_V "../tv/cdatafile/c.TopPL.autotvout_sweep_tx3_0_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_sweep_tx3_0_V_data_V "../tv/stream_size/stream_size_out_sweep_tx3_0_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_sweep_tx3_0_V_data_V "../tv/stream_size/stream_egress_status_sweep_tx3_0_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_sweep_tx3_0_V_keep_V "../tv/stream_size/stream_size_out_sweep_tx3_0_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_sweep_tx3_0_V_keep_V "../tv/stream_size/stream_egress_status_sweep_tx3_0_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_sweep_tx3_0_V_strb_V "../tv/stream_size/stream_size_out_sweep_tx3_0_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_sweep_tx3_0_V_strb_V "../tv/stream_size/stream_egress_status_sweep_tx3_0_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_sweep_tx3_0_V_last_V "../tv/stream_size/stream_size_out_sweep_tx3_0_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_sweep_tx3_0_V_last_V "../tv/stream_size/stream_egress_status_sweep_tx3_0_V_last_V.dat"
#define AUTOTB_TVIN_sweep_rx3_0_V_data_V "../tv/cdatafile/c.TopPL.autotvin_sweep_rx3_0_V_data_V.dat"
#define AUTOTB_TVOUT_sweep_rx3_0_V_data_V "../tv/cdatafile/c.TopPL.autotvout_sweep_rx3_0_V_data_V.dat"
#define AUTOTB_TVIN_sweep_rx3_0_V_keep_V "../tv/cdatafile/c.TopPL.autotvin_sweep_rx3_0_V_keep_V.dat"
#define AUTOTB_TVOUT_sweep_rx3_0_V_keep_V "../tv/cdatafile/c.TopPL.autotvout_sweep_rx3_0_V_keep_V.dat"
#define AUTOTB_TVIN_sweep_rx3_0_V_strb_V "../tv/cdatafile/c.TopPL.autotvin_sweep_rx3_0_V_strb_V.dat"
#define AUTOTB_TVOUT_sweep_rx3_0_V_strb_V "../tv/cdatafile/c.TopPL.autotvout_sweep_rx3_0_V_strb_V.dat"
#define AUTOTB_TVIN_sweep_rx3_0_V_last_V "../tv/cdatafile/c.TopPL.autotvin_sweep_rx3_0_V_last_V.dat"
#define AUTOTB_TVOUT_sweep_rx3_0_V_last_V "../tv/cdatafile/c.TopPL.autotvout_sweep_rx3_0_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_sweep_rx3_0_V_data_V "../tv/stream_size/stream_size_in_sweep_rx3_0_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_sweep_rx3_0_V_data_V "../tv/stream_size/stream_ingress_status_sweep_rx3_0_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_sweep_rx3_0_V_keep_V "../tv/stream_size/stream_size_in_sweep_rx3_0_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_sweep_rx3_0_V_keep_V "../tv/stream_size/stream_ingress_status_sweep_rx3_0_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_sweep_rx3_0_V_strb_V "../tv/stream_size/stream_size_in_sweep_rx3_0_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_sweep_rx3_0_V_strb_V "../tv/stream_size/stream_ingress_status_sweep_rx3_0_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_sweep_rx3_0_V_last_V "../tv/stream_size/stream_size_in_sweep_rx3_0_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_sweep_rx3_0_V_last_V "../tv/stream_size/stream_ingress_status_sweep_rx3_0_V_last_V.dat"
#define AUTOTB_TVIN_sweep_tx3_1_V_data_V "../tv/cdatafile/c.TopPL.autotvin_sweep_tx3_1_V_data_V.dat"
#define AUTOTB_TVOUT_sweep_tx3_1_V_data_V "../tv/cdatafile/c.TopPL.autotvout_sweep_tx3_1_V_data_V.dat"
#define AUTOTB_TVIN_sweep_tx3_1_V_keep_V "../tv/cdatafile/c.TopPL.autotvin_sweep_tx3_1_V_keep_V.dat"
#define AUTOTB_TVOUT_sweep_tx3_1_V_keep_V "../tv/cdatafile/c.TopPL.autotvout_sweep_tx3_1_V_keep_V.dat"
#define AUTOTB_TVIN_sweep_tx3_1_V_strb_V "../tv/cdatafile/c.TopPL.autotvin_sweep_tx3_1_V_strb_V.dat"
#define AUTOTB_TVOUT_sweep_tx3_1_V_strb_V "../tv/cdatafile/c.TopPL.autotvout_sweep_tx3_1_V_strb_V.dat"
#define AUTOTB_TVIN_sweep_tx3_1_V_last_V "../tv/cdatafile/c.TopPL.autotvin_sweep_tx3_1_V_last_V.dat"
#define AUTOTB_TVOUT_sweep_tx3_1_V_last_V "../tv/cdatafile/c.TopPL.autotvout_sweep_tx3_1_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_sweep_tx3_1_V_data_V "../tv/stream_size/stream_size_out_sweep_tx3_1_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_sweep_tx3_1_V_data_V "../tv/stream_size/stream_egress_status_sweep_tx3_1_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_sweep_tx3_1_V_keep_V "../tv/stream_size/stream_size_out_sweep_tx3_1_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_sweep_tx3_1_V_keep_V "../tv/stream_size/stream_egress_status_sweep_tx3_1_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_sweep_tx3_1_V_strb_V "../tv/stream_size/stream_size_out_sweep_tx3_1_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_sweep_tx3_1_V_strb_V "../tv/stream_size/stream_egress_status_sweep_tx3_1_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_sweep_tx3_1_V_last_V "../tv/stream_size/stream_size_out_sweep_tx3_1_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_sweep_tx3_1_V_last_V "../tv/stream_size/stream_egress_status_sweep_tx3_1_V_last_V.dat"
#define AUTOTB_TVIN_sweep_rx3_1_V_data_V "../tv/cdatafile/c.TopPL.autotvin_sweep_rx3_1_V_data_V.dat"
#define AUTOTB_TVOUT_sweep_rx3_1_V_data_V "../tv/cdatafile/c.TopPL.autotvout_sweep_rx3_1_V_data_V.dat"
#define AUTOTB_TVIN_sweep_rx3_1_V_keep_V "../tv/cdatafile/c.TopPL.autotvin_sweep_rx3_1_V_keep_V.dat"
#define AUTOTB_TVOUT_sweep_rx3_1_V_keep_V "../tv/cdatafile/c.TopPL.autotvout_sweep_rx3_1_V_keep_V.dat"
#define AUTOTB_TVIN_sweep_rx3_1_V_strb_V "../tv/cdatafile/c.TopPL.autotvin_sweep_rx3_1_V_strb_V.dat"
#define AUTOTB_TVOUT_sweep_rx3_1_V_strb_V "../tv/cdatafile/c.TopPL.autotvout_sweep_rx3_1_V_strb_V.dat"
#define AUTOTB_TVIN_sweep_rx3_1_V_last_V "../tv/cdatafile/c.TopPL.autotvin_sweep_rx3_1_V_last_V.dat"
#define AUTOTB_TVOUT_sweep_rx3_1_V_last_V "../tv/cdatafile/c.TopPL.autotvout_sweep_rx3_1_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_sweep_rx3_1_V_data_V "../tv/stream_size/stream_size_in_sweep_rx3_1_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_sweep_rx3_1_V_data_V "../tv/stream_size/stream_ingress_status_sweep_rx3_1_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_sweep_rx3_1_V_keep_V "../tv/stream_size/stream_size_in_sweep_rx3_1_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_sweep_rx3_1_V_keep_V "../tv/stream_size/stream_ingress_status_sweep_rx3_1_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_sweep_rx3_1_V_strb_V "../tv/stream_size/stream_size_in_sweep_rx3_1_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_sweep_rx3_1_V_strb_V "../tv/stream_size/stream_ingress_status_sweep_rx3_1_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_sweep_rx3_1_V_last_V "../tv/stream_size/stream_size_in_sweep_rx3_1_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_sweep_rx3_1_V_last_V "../tv/stream_size/stream_ingress_status_sweep_rx3_1_V_last_V.dat"
#define AUTOTB_TVIN_sweep_tx4_0_V_data_V "../tv/cdatafile/c.TopPL.autotvin_sweep_tx4_0_V_data_V.dat"
#define AUTOTB_TVOUT_sweep_tx4_0_V_data_V "../tv/cdatafile/c.TopPL.autotvout_sweep_tx4_0_V_data_V.dat"
#define AUTOTB_TVIN_sweep_tx4_0_V_keep_V "../tv/cdatafile/c.TopPL.autotvin_sweep_tx4_0_V_keep_V.dat"
#define AUTOTB_TVOUT_sweep_tx4_0_V_keep_V "../tv/cdatafile/c.TopPL.autotvout_sweep_tx4_0_V_keep_V.dat"
#define AUTOTB_TVIN_sweep_tx4_0_V_strb_V "../tv/cdatafile/c.TopPL.autotvin_sweep_tx4_0_V_strb_V.dat"
#define AUTOTB_TVOUT_sweep_tx4_0_V_strb_V "../tv/cdatafile/c.TopPL.autotvout_sweep_tx4_0_V_strb_V.dat"
#define AUTOTB_TVIN_sweep_tx4_0_V_last_V "../tv/cdatafile/c.TopPL.autotvin_sweep_tx4_0_V_last_V.dat"
#define AUTOTB_TVOUT_sweep_tx4_0_V_last_V "../tv/cdatafile/c.TopPL.autotvout_sweep_tx4_0_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_sweep_tx4_0_V_data_V "../tv/stream_size/stream_size_out_sweep_tx4_0_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_sweep_tx4_0_V_data_V "../tv/stream_size/stream_egress_status_sweep_tx4_0_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_sweep_tx4_0_V_keep_V "../tv/stream_size/stream_size_out_sweep_tx4_0_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_sweep_tx4_0_V_keep_V "../tv/stream_size/stream_egress_status_sweep_tx4_0_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_sweep_tx4_0_V_strb_V "../tv/stream_size/stream_size_out_sweep_tx4_0_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_sweep_tx4_0_V_strb_V "../tv/stream_size/stream_egress_status_sweep_tx4_0_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_sweep_tx4_0_V_last_V "../tv/stream_size/stream_size_out_sweep_tx4_0_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_sweep_tx4_0_V_last_V "../tv/stream_size/stream_egress_status_sweep_tx4_0_V_last_V.dat"
#define AUTOTB_TVIN_sweep_rx4_0_V_data_V "../tv/cdatafile/c.TopPL.autotvin_sweep_rx4_0_V_data_V.dat"
#define AUTOTB_TVOUT_sweep_rx4_0_V_data_V "../tv/cdatafile/c.TopPL.autotvout_sweep_rx4_0_V_data_V.dat"
#define AUTOTB_TVIN_sweep_rx4_0_V_keep_V "../tv/cdatafile/c.TopPL.autotvin_sweep_rx4_0_V_keep_V.dat"
#define AUTOTB_TVOUT_sweep_rx4_0_V_keep_V "../tv/cdatafile/c.TopPL.autotvout_sweep_rx4_0_V_keep_V.dat"
#define AUTOTB_TVIN_sweep_rx4_0_V_strb_V "../tv/cdatafile/c.TopPL.autotvin_sweep_rx4_0_V_strb_V.dat"
#define AUTOTB_TVOUT_sweep_rx4_0_V_strb_V "../tv/cdatafile/c.TopPL.autotvout_sweep_rx4_0_V_strb_V.dat"
#define AUTOTB_TVIN_sweep_rx4_0_V_last_V "../tv/cdatafile/c.TopPL.autotvin_sweep_rx4_0_V_last_V.dat"
#define AUTOTB_TVOUT_sweep_rx4_0_V_last_V "../tv/cdatafile/c.TopPL.autotvout_sweep_rx4_0_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_sweep_rx4_0_V_data_V "../tv/stream_size/stream_size_in_sweep_rx4_0_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_sweep_rx4_0_V_data_V "../tv/stream_size/stream_ingress_status_sweep_rx4_0_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_sweep_rx4_0_V_keep_V "../tv/stream_size/stream_size_in_sweep_rx4_0_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_sweep_rx4_0_V_keep_V "../tv/stream_size/stream_ingress_status_sweep_rx4_0_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_sweep_rx4_0_V_strb_V "../tv/stream_size/stream_size_in_sweep_rx4_0_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_sweep_rx4_0_V_strb_V "../tv/stream_size/stream_ingress_status_sweep_rx4_0_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_sweep_rx4_0_V_last_V "../tv/stream_size/stream_size_in_sweep_rx4_0_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_sweep_rx4_0_V_last_V "../tv/stream_size/stream_ingress_status_sweep_rx4_0_V_last_V.dat"
#define AUTOTB_TVIN_sweep_tx4_1_V_data_V "../tv/cdatafile/c.TopPL.autotvin_sweep_tx4_1_V_data_V.dat"
#define AUTOTB_TVOUT_sweep_tx4_1_V_data_V "../tv/cdatafile/c.TopPL.autotvout_sweep_tx4_1_V_data_V.dat"
#define AUTOTB_TVIN_sweep_tx4_1_V_keep_V "../tv/cdatafile/c.TopPL.autotvin_sweep_tx4_1_V_keep_V.dat"
#define AUTOTB_TVOUT_sweep_tx4_1_V_keep_V "../tv/cdatafile/c.TopPL.autotvout_sweep_tx4_1_V_keep_V.dat"
#define AUTOTB_TVIN_sweep_tx4_1_V_strb_V "../tv/cdatafile/c.TopPL.autotvin_sweep_tx4_1_V_strb_V.dat"
#define AUTOTB_TVOUT_sweep_tx4_1_V_strb_V "../tv/cdatafile/c.TopPL.autotvout_sweep_tx4_1_V_strb_V.dat"
#define AUTOTB_TVIN_sweep_tx4_1_V_last_V "../tv/cdatafile/c.TopPL.autotvin_sweep_tx4_1_V_last_V.dat"
#define AUTOTB_TVOUT_sweep_tx4_1_V_last_V "../tv/cdatafile/c.TopPL.autotvout_sweep_tx4_1_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_sweep_tx4_1_V_data_V "../tv/stream_size/stream_size_out_sweep_tx4_1_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_sweep_tx4_1_V_data_V "../tv/stream_size/stream_egress_status_sweep_tx4_1_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_sweep_tx4_1_V_keep_V "../tv/stream_size/stream_size_out_sweep_tx4_1_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_sweep_tx4_1_V_keep_V "../tv/stream_size/stream_egress_status_sweep_tx4_1_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_sweep_tx4_1_V_strb_V "../tv/stream_size/stream_size_out_sweep_tx4_1_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_sweep_tx4_1_V_strb_V "../tv/stream_size/stream_egress_status_sweep_tx4_1_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_sweep_tx4_1_V_last_V "../tv/stream_size/stream_size_out_sweep_tx4_1_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_sweep_tx4_1_V_last_V "../tv/stream_size/stream_egress_status_sweep_tx4_1_V_last_V.dat"
#define AUTOTB_TVIN_sweep_rx4_1_V_data_V "../tv/cdatafile/c.TopPL.autotvin_sweep_rx4_1_V_data_V.dat"
#define AUTOTB_TVOUT_sweep_rx4_1_V_data_V "../tv/cdatafile/c.TopPL.autotvout_sweep_rx4_1_V_data_V.dat"
#define AUTOTB_TVIN_sweep_rx4_1_V_keep_V "../tv/cdatafile/c.TopPL.autotvin_sweep_rx4_1_V_keep_V.dat"
#define AUTOTB_TVOUT_sweep_rx4_1_V_keep_V "../tv/cdatafile/c.TopPL.autotvout_sweep_rx4_1_V_keep_V.dat"
#define AUTOTB_TVIN_sweep_rx4_1_V_strb_V "../tv/cdatafile/c.TopPL.autotvin_sweep_rx4_1_V_strb_V.dat"
#define AUTOTB_TVOUT_sweep_rx4_1_V_strb_V "../tv/cdatafile/c.TopPL.autotvout_sweep_rx4_1_V_strb_V.dat"
#define AUTOTB_TVIN_sweep_rx4_1_V_last_V "../tv/cdatafile/c.TopPL.autotvin_sweep_rx4_1_V_last_V.dat"
#define AUTOTB_TVOUT_sweep_rx4_1_V_last_V "../tv/cdatafile/c.TopPL.autotvout_sweep_rx4_1_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_sweep_rx4_1_V_data_V "../tv/stream_size/stream_size_in_sweep_rx4_1_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_sweep_rx4_1_V_data_V "../tv/stream_size/stream_ingress_status_sweep_rx4_1_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_sweep_rx4_1_V_keep_V "../tv/stream_size/stream_size_in_sweep_rx4_1_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_sweep_rx4_1_V_keep_V "../tv/stream_size/stream_ingress_status_sweep_rx4_1_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_sweep_rx4_1_V_strb_V "../tv/stream_size/stream_size_in_sweep_rx4_1_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_sweep_rx4_1_V_strb_V "../tv/stream_size/stream_ingress_status_sweep_rx4_1_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_sweep_rx4_1_V_last_V "../tv/stream_size/stream_size_in_sweep_rx4_1_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_sweep_rx4_1_V_last_V "../tv/stream_size/stream_ingress_status_sweep_rx4_1_V_last_V.dat"
#define AUTOTB_TVIN_norm_tx0_V_data_V "../tv/cdatafile/c.TopPL.autotvin_norm_tx0_V_data_V.dat"
#define AUTOTB_TVOUT_norm_tx0_V_data_V "../tv/cdatafile/c.TopPL.autotvout_norm_tx0_V_data_V.dat"
#define AUTOTB_TVIN_norm_tx0_V_keep_V "../tv/cdatafile/c.TopPL.autotvin_norm_tx0_V_keep_V.dat"
#define AUTOTB_TVOUT_norm_tx0_V_keep_V "../tv/cdatafile/c.TopPL.autotvout_norm_tx0_V_keep_V.dat"
#define AUTOTB_TVIN_norm_tx0_V_strb_V "../tv/cdatafile/c.TopPL.autotvin_norm_tx0_V_strb_V.dat"
#define AUTOTB_TVOUT_norm_tx0_V_strb_V "../tv/cdatafile/c.TopPL.autotvout_norm_tx0_V_strb_V.dat"
#define AUTOTB_TVIN_norm_tx0_V_last_V "../tv/cdatafile/c.TopPL.autotvin_norm_tx0_V_last_V.dat"
#define AUTOTB_TVOUT_norm_tx0_V_last_V "../tv/cdatafile/c.TopPL.autotvout_norm_tx0_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_norm_tx0_V_data_V "../tv/stream_size/stream_size_out_norm_tx0_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_norm_tx0_V_data_V "../tv/stream_size/stream_egress_status_norm_tx0_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_norm_tx0_V_keep_V "../tv/stream_size/stream_size_out_norm_tx0_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_norm_tx0_V_keep_V "../tv/stream_size/stream_egress_status_norm_tx0_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_norm_tx0_V_strb_V "../tv/stream_size/stream_size_out_norm_tx0_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_norm_tx0_V_strb_V "../tv/stream_size/stream_egress_status_norm_tx0_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_norm_tx0_V_last_V "../tv/stream_size/stream_size_out_norm_tx0_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_norm_tx0_V_last_V "../tv/stream_size/stream_egress_status_norm_tx0_V_last_V.dat"
#define AUTOTB_TVIN_norm_rx0_V_data_V "../tv/cdatafile/c.TopPL.autotvin_norm_rx0_V_data_V.dat"
#define AUTOTB_TVOUT_norm_rx0_V_data_V "../tv/cdatafile/c.TopPL.autotvout_norm_rx0_V_data_V.dat"
#define AUTOTB_TVIN_norm_rx0_V_keep_V "../tv/cdatafile/c.TopPL.autotvin_norm_rx0_V_keep_V.dat"
#define AUTOTB_TVOUT_norm_rx0_V_keep_V "../tv/cdatafile/c.TopPL.autotvout_norm_rx0_V_keep_V.dat"
#define AUTOTB_TVIN_norm_rx0_V_strb_V "../tv/cdatafile/c.TopPL.autotvin_norm_rx0_V_strb_V.dat"
#define AUTOTB_TVOUT_norm_rx0_V_strb_V "../tv/cdatafile/c.TopPL.autotvout_norm_rx0_V_strb_V.dat"
#define AUTOTB_TVIN_norm_rx0_V_last_V "../tv/cdatafile/c.TopPL.autotvin_norm_rx0_V_last_V.dat"
#define AUTOTB_TVOUT_norm_rx0_V_last_V "../tv/cdatafile/c.TopPL.autotvout_norm_rx0_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_norm_rx0_V_data_V "../tv/stream_size/stream_size_in_norm_rx0_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_norm_rx0_V_data_V "../tv/stream_size/stream_ingress_status_norm_rx0_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_norm_rx0_V_keep_V "../tv/stream_size/stream_size_in_norm_rx0_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_norm_rx0_V_keep_V "../tv/stream_size/stream_ingress_status_norm_rx0_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_norm_rx0_V_strb_V "../tv/stream_size/stream_size_in_norm_rx0_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_norm_rx0_V_strb_V "../tv/stream_size/stream_ingress_status_norm_rx0_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_norm_rx0_V_last_V "../tv/stream_size/stream_size_in_norm_rx0_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_norm_rx0_V_last_V "../tv/stream_size/stream_ingress_status_norm_rx0_V_last_V.dat"
#define AUTOTB_TVIN_gmem0 "../tv/cdatafile/c.TopPL.autotvin_gmem0.dat"
#define AUTOTB_TVOUT_gmem0 "../tv/cdatafile/c.TopPL.autotvout_gmem0.dat"
#define AUTOTB_TVIN_gmem1 "../tv/cdatafile/c.TopPL.autotvin_gmem1.dat"
#define AUTOTB_TVOUT_gmem1 "../tv/cdatafile/c.TopPL.autotvout_gmem1.dat"
#define AUTOTB_TVIN_gmem2 "../tv/cdatafile/c.TopPL.autotvin_gmem2.dat"
#define AUTOTB_TVOUT_gmem2 "../tv/cdatafile/c.TopPL.autotvout_gmem2.dat"
#define AUTOTB_TVIN_gmem3 "../tv/cdatafile/c.TopPL.autotvin_gmem3.dat"
#define AUTOTB_TVOUT_gmem3 "../tv/cdatafile/c.TopPL.autotvout_gmem3.dat"


// tvout file define:
#define AUTOTB_TVOUT_PC_sweep_tx1_0_V_data_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_tx1_0_V_data_V.dat"
#define AUTOTB_TVOUT_PC_sweep_tx1_0_V_keep_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_tx1_0_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_sweep_tx1_0_V_strb_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_tx1_0_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_sweep_tx1_0_V_last_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_tx1_0_V_last_V.dat"
#define AUTOTB_TVOUT_PC_sweep_rx1_0_V_data_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_rx1_0_V_data_V.dat"
#define AUTOTB_TVOUT_PC_sweep_rx1_0_V_keep_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_rx1_0_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_sweep_rx1_0_V_strb_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_rx1_0_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_sweep_rx1_0_V_last_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_rx1_0_V_last_V.dat"
#define AUTOTB_TVOUT_PC_sweep_tx1_1_V_data_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_tx1_1_V_data_V.dat"
#define AUTOTB_TVOUT_PC_sweep_tx1_1_V_keep_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_tx1_1_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_sweep_tx1_1_V_strb_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_tx1_1_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_sweep_tx1_1_V_last_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_tx1_1_V_last_V.dat"
#define AUTOTB_TVOUT_PC_sweep_rx1_1_V_data_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_rx1_1_V_data_V.dat"
#define AUTOTB_TVOUT_PC_sweep_rx1_1_V_keep_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_rx1_1_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_sweep_rx1_1_V_strb_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_rx1_1_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_sweep_rx1_1_V_last_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_rx1_1_V_last_V.dat"
#define AUTOTB_TVOUT_PC_sweep_tx2_0_V_data_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_tx2_0_V_data_V.dat"
#define AUTOTB_TVOUT_PC_sweep_tx2_0_V_keep_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_tx2_0_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_sweep_tx2_0_V_strb_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_tx2_0_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_sweep_tx2_0_V_last_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_tx2_0_V_last_V.dat"
#define AUTOTB_TVOUT_PC_sweep_rx2_0_V_data_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_rx2_0_V_data_V.dat"
#define AUTOTB_TVOUT_PC_sweep_rx2_0_V_keep_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_rx2_0_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_sweep_rx2_0_V_strb_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_rx2_0_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_sweep_rx2_0_V_last_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_rx2_0_V_last_V.dat"
#define AUTOTB_TVOUT_PC_sweep_tx2_1_V_data_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_tx2_1_V_data_V.dat"
#define AUTOTB_TVOUT_PC_sweep_tx2_1_V_keep_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_tx2_1_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_sweep_tx2_1_V_strb_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_tx2_1_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_sweep_tx2_1_V_last_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_tx2_1_V_last_V.dat"
#define AUTOTB_TVOUT_PC_sweep_rx2_1_V_data_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_rx2_1_V_data_V.dat"
#define AUTOTB_TVOUT_PC_sweep_rx2_1_V_keep_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_rx2_1_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_sweep_rx2_1_V_strb_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_rx2_1_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_sweep_rx2_1_V_last_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_rx2_1_V_last_V.dat"
#define AUTOTB_TVOUT_PC_sweep_tx3_0_V_data_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_tx3_0_V_data_V.dat"
#define AUTOTB_TVOUT_PC_sweep_tx3_0_V_keep_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_tx3_0_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_sweep_tx3_0_V_strb_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_tx3_0_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_sweep_tx3_0_V_last_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_tx3_0_V_last_V.dat"
#define AUTOTB_TVOUT_PC_sweep_rx3_0_V_data_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_rx3_0_V_data_V.dat"
#define AUTOTB_TVOUT_PC_sweep_rx3_0_V_keep_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_rx3_0_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_sweep_rx3_0_V_strb_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_rx3_0_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_sweep_rx3_0_V_last_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_rx3_0_V_last_V.dat"
#define AUTOTB_TVOUT_PC_sweep_tx3_1_V_data_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_tx3_1_V_data_V.dat"
#define AUTOTB_TVOUT_PC_sweep_tx3_1_V_keep_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_tx3_1_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_sweep_tx3_1_V_strb_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_tx3_1_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_sweep_tx3_1_V_last_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_tx3_1_V_last_V.dat"
#define AUTOTB_TVOUT_PC_sweep_rx3_1_V_data_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_rx3_1_V_data_V.dat"
#define AUTOTB_TVOUT_PC_sweep_rx3_1_V_keep_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_rx3_1_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_sweep_rx3_1_V_strb_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_rx3_1_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_sweep_rx3_1_V_last_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_rx3_1_V_last_V.dat"
#define AUTOTB_TVOUT_PC_sweep_tx4_0_V_data_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_tx4_0_V_data_V.dat"
#define AUTOTB_TVOUT_PC_sweep_tx4_0_V_keep_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_tx4_0_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_sweep_tx4_0_V_strb_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_tx4_0_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_sweep_tx4_0_V_last_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_tx4_0_V_last_V.dat"
#define AUTOTB_TVOUT_PC_sweep_rx4_0_V_data_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_rx4_0_V_data_V.dat"
#define AUTOTB_TVOUT_PC_sweep_rx4_0_V_keep_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_rx4_0_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_sweep_rx4_0_V_strb_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_rx4_0_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_sweep_rx4_0_V_last_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_rx4_0_V_last_V.dat"
#define AUTOTB_TVOUT_PC_sweep_tx4_1_V_data_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_tx4_1_V_data_V.dat"
#define AUTOTB_TVOUT_PC_sweep_tx4_1_V_keep_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_tx4_1_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_sweep_tx4_1_V_strb_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_tx4_1_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_sweep_tx4_1_V_last_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_tx4_1_V_last_V.dat"
#define AUTOTB_TVOUT_PC_sweep_rx4_1_V_data_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_rx4_1_V_data_V.dat"
#define AUTOTB_TVOUT_PC_sweep_rx4_1_V_keep_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_rx4_1_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_sweep_rx4_1_V_strb_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_rx4_1_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_sweep_rx4_1_V_last_V "../tv/rtldatafile/rtl.TopPL.autotvout_sweep_rx4_1_V_last_V.dat"
#define AUTOTB_TVOUT_PC_norm_tx0_V_data_V "../tv/rtldatafile/rtl.TopPL.autotvout_norm_tx0_V_data_V.dat"
#define AUTOTB_TVOUT_PC_norm_tx0_V_keep_V "../tv/rtldatafile/rtl.TopPL.autotvout_norm_tx0_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_norm_tx0_V_strb_V "../tv/rtldatafile/rtl.TopPL.autotvout_norm_tx0_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_norm_tx0_V_last_V "../tv/rtldatafile/rtl.TopPL.autotvout_norm_tx0_V_last_V.dat"
#define AUTOTB_TVOUT_PC_norm_rx0_V_data_V "../tv/rtldatafile/rtl.TopPL.autotvout_norm_rx0_V_data_V.dat"
#define AUTOTB_TVOUT_PC_norm_rx0_V_keep_V "../tv/rtldatafile/rtl.TopPL.autotvout_norm_rx0_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_norm_rx0_V_strb_V "../tv/rtldatafile/rtl.TopPL.autotvout_norm_rx0_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_norm_rx0_V_last_V "../tv/rtldatafile/rtl.TopPL.autotvout_norm_rx0_V_last_V.dat"
#define AUTOTB_TVOUT_PC_gmem0 "../tv/rtldatafile/rtl.TopPL.autotvout_gmem0.dat"
#define AUTOTB_TVOUT_PC_gmem1 "../tv/rtldatafile/rtl.TopPL.autotvout_gmem1.dat"
#define AUTOTB_TVOUT_PC_gmem2 "../tv/rtldatafile/rtl.TopPL.autotvout_gmem2.dat"
#define AUTOTB_TVOUT_PC_gmem3 "../tv/rtldatafile/rtl.TopPL.autotvout_gmem3.dat"


namespace hls::sim
{
  template<size_t n>
  struct Byte {
    unsigned char a[n];

    Byte()
    {
      for (size_t i = 0; i < n; ++i) {
        a[i] = 0;
      }
    }

    template<typename T>
    Byte<n>& operator= (const T &val)
    {
      std::memcpy(a, &val, n);
      return *this;
    }
  };

  struct SimException : public std::exception {
    const std::string msg;
    const size_t line;
    SimException(const std::string &msg, const size_t line)
      : msg(msg), line(line)
    {
    }
  };

  void errExit(const size_t line, const std::string &msg)
  {
    std::string s;
    s += "ERROR";
//  s += '(';
//  s += __FILE__;
//  s += ":";
//  s += std::to_string(line);
//  s += ')';
    s += ": ";
    s += msg;
    s += "\n";
    fputs(s.c_str(), stderr);
    exit(1);
  }
}

namespace hls::sim
{
  size_t divide_ceil(size_t a, size_t b)
  {
    return (a + b - 1) / b;
  }

  const bool little_endian()
  {
    int a = 1;
    return *(char*)&a == 1;
  }

  inline void rev_endian(unsigned char *p, size_t nbytes)
  {
    std::reverse(p, p+nbytes);
  }

  const bool LE = little_endian();

  inline size_t least_nbyte(size_t width)
  {
    return (width+7)>>3;
  }

  std::string formatData(unsigned char *pos, size_t wbits)
  {
    size_t wbytes = least_nbyte(wbits);
    size_t i = LE ? wbytes-1 : 0;
    auto next = [&] () {
      auto c = pos[i];
      LE ? --i : ++i;
      return c;
    };
    std::ostringstream ss;
    ss << "0x";
    if (int t = (wbits & 0x7)) {
      if (t <= 4) {
        unsigned char mask = (1<<t)-1;
        ss << std::hex << std::setfill('0') << std::setw(1)
           << (int) (next() & mask);
        wbytes -= 1;
      }
    }
    for (size_t i = 0; i < wbytes; ++i) {
      ss << std::hex << std::setfill('0') << std::setw(2) << (int)next();
    }
    return ss.str();
  }

  char ord(char c)
  {
    if (c >= 'a' && c <= 'f') {
      return c-'a'+10;
    } else if (c >= 'A' && c <= 'F') {
      return c-'A'+10;
    } else if (c >= '0' && c <= '9') {
      return c-'0';
    } else {
      throw SimException("Not Hexdecimal Digit", __LINE__);
    }
  }

  void unformatData(const char *data, unsigned char *put, size_t pbytes = 0)
  {
    size_t nchars = strlen(data+2);
    size_t nbytes = (nchars+1)>>1;
    if (pbytes == 0) {
      pbytes = nbytes;
    } else if (pbytes > nbytes) {
      throw SimException("Wrong size specified", __LINE__);
    }
    put = LE ? put : put+pbytes-1;
    auto nextp = [&] () {
      return LE ? put++ : put--;
    };
    const char *c = data + (nchars + 2) - 1;
    auto next = [&] () {
      char res { *c == 'x' ? (char)0 : ord(*c) };
      --c;
      return res;
    };
    for (size_t i = 0; i < pbytes; ++i) {
      char l = next();
      char h = next();
      *nextp() = (h<<4)+l;
    }
  }

  char* strip(char *s)
  {
    while (isspace(*s)) {
      ++s;
    }
    for (char *p = s+strlen(s)-1; p >= s; --p) {
      if (isspace(*p)) {
        *p = 0;
      } else {
        return s;
      }
    }
    return s;
  }

  size_t sum(const std::vector<size_t> &v)
  {
    size_t res = 0;
    for (const auto &e : v) {
      res += e;
    }
    return res;
  }

  const char* bad = "Bad TV file";
  const char* err = "Error on TV file";

  const unsigned char bmark[] = {
    0x5a, 0x5a, 0xa5, 0xa5, 0x0f, 0x0f, 0xf0, 0xf0
  };

#ifdef USE_BINARY_TV_FILE
  class Input {
    FILE *fp;
    long pos;

    void read(unsigned char *buf, size_t size)
    {
      if (fread(buf, size, 1, fp) != 1) {
        throw SimException(bad, __LINE__);
      }
      if (LE) {
        rev_endian(buf, size);
      }
    }

  public:
    void advance(size_t nbytes)
    {
      if (fseek(fp, nbytes, SEEK_CUR) == -1) {
        throw SimException(bad, __LINE__);
      }
    }

    Input(const char *path) : fp(nullptr)
    {
      fp = fopen(path, "rb");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void begin()
    {
      advance(8);
      pos = ftell(fp);
    }

    void reset()
    {
      fseek(fp, pos, SEEK_SET);
    }

    void into(unsigned char *param, size_t wbytes, size_t asize, size_t nbytes)
    {
      size_t n = nbytes / asize;
      size_t r = nbytes % asize;
      for (size_t i = 0; i < n; ++i) {
        read(param, wbytes);
        param += asize;
      }
      if (r > 0) {
        advance(asize-r);
        read(param, r);
      }
    }

    ~Input()
    {
      unsigned char buf[8];
      size_t res = fread(buf, 8, 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, bad);
      }
      if (std::memcmp(buf, bmark, 8) != 0) {
        errExit(__LINE__, bad);
      }
    }
  };

  class Output {
    FILE *fp;

    void write(unsigned char *buf, size_t size)
    {
      if (LE) {
        rev_endian(buf, size);
      }
      if (fwrite(buf, size, 1, fp) != 1) {
        throw SimException(err, __LINE__);
      }
      if (LE) {
        rev_endian(buf, size);
      }
    }

  public:
    Output(const char *path) : fp(nullptr)
    {
      fp = fopen(path, "wb");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void begin(size_t total)
    {
      unsigned char buf[8] = {0};
      std::memcpy(buf, &total, sizeof(buf));
      write(buf, sizeof(buf));
    }

    void from(unsigned char *param, size_t wbytes, size_t asize, size_t nbytes, size_t skip)
    {
      param -= asize*skip;
      size_t n = divide_ceil(nbytes, asize);
      for (size_t i = 0; i < n; ++i) {
        write(param, wbytes);
        param += asize;
      }
    }

    ~Output()
    {
      size_t res = fwrite(bmark, 8, 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, err);
      }
    }
  };
#endif

  class Reader {
    FILE *fp;
    long pos;
    int size;
    char *s;

    void readline()
    {
      s = fgets(s, size, fp);
      if (s == nullptr) {
        throw SimException(bad, __LINE__);
      }
    }

  public:
    Reader(const char *path) : fp(nullptr), size(1<<12), s(new char[size])
    {
      try {
        fp = fopen(path, "r");
        if (fp == nullptr) {
          throw SimException(err, __LINE__);
        } else {
          readline();
          static const char mark[] = "[[[runtime]]]\n";
          if (strcmp(s, mark) != 0) {
            throw SimException(bad, __LINE__);
          }
        }
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
    }

    ~Reader()
    {
      fclose(fp);
      delete[] s;
    }

    void begin()
    {
      readline();
      static const char mark[] = "[[transaction]]";
      if (strncmp(s, mark, strlen(mark)) != 0) {
        throw SimException(bad, __LINE__);
      }
      pos = ftell(fp);
    }

    void reset()
    {
      fseek(fp, pos, SEEK_SET);
    }

    void skip(size_t n)
    {
      for (size_t i = 0; i < n; ++i) {
        readline();
      }
    }

    char* next()
    {
      long pos = ftell(fp);
      readline();
      if (*s == '[') {
        fseek(fp, pos, SEEK_SET);
        return nullptr;
      }
      return strip(s);
    }

    void end()
    {
      do {
        readline();
      } while (strcmp(s, "[[/transaction]]\n") != 0);
    }
  };

  class Writer {
    FILE *fp;

    void write(const char *s)
    {
      if (fputs(s, fp) == EOF) {
        throw SimException(err, __LINE__);
      }
    }

  public:
    Writer(const char *path) : fp(nullptr)
    {
      try {
        fp = fopen(path, "w");
        if (fp == nullptr) {
          throw SimException(err, __LINE__);
        } else {
          static const char mark[] = "[[[runtime]]]\n";
          write(mark);
        }
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
    }

    virtual ~Writer()
    {
      try {
        static const char mark[] = "[[[/runtime]]]\n";
        write(mark);
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
      fclose(fp);
    }

    void begin(size_t AESL_transaction)
    {
      static const char mark[] = "[[transaction]]           ";
      write(mark);
      auto buf = std::to_string(AESL_transaction);
      buf.push_back('\n');
      buf.push_back('\0');
      write(buf.data());
    }

    void next(const char *s)
    {
      write(s);
      write("\n");
    }

    void end()
    {
      static const char mark[] = "[[/transaction]]\n";
      write(mark);
    }
  };

  bool RTLOutputCheckAndReplacement(char *data)
  {
    bool changed = false;
    for (size_t i = 2; i < strlen(data); ++i) {
      if (data[i] == 'X' || data[i] == 'x') {
        data[i] = '0';
        changed = true;
      }
    }
    return changed;
  }

  void warnOnX()
  {
    static const char msg[] =
      "WARNING: [SIM 212-201] RTL produces unknown value "
      "'x' or 'X' on some port, possible cause: "
      "There are uninitialized variables in the design.\n";
    fprintf(stderr, msg);
  }

#ifndef POST_CHECK
  class RefTCL {
    FILE *fp;
    std::ostringstream ss;

    void formatDepth()
    {
      ss << "set depth_list {\n";
      for (auto &p : depth) {
        ss << "  {" << p.first << " " << p.second << "}\n";
      }
      if (nameHBM != "") {
        ss << "  {" << nameHBM << " " << depthHBM << "}\n";
      }
      ss << "}\n";
    }

    void formatTransNum()
    {
      ss << "set trans_num " << AESL_transaction << "\n";
    }

    void formatHBM()
    {
      ss << "set HBM_ArgDict {\n"
         << "  Name " << nameHBM << "\n"
         << "  Port " << portHBM << "\n"
         << "  BitWidth " << widthHBM << "\n"
         << "}\n";
    }

    void close()
    {
      formatDepth();
      formatTransNum();
      if (nameHBM != "") {
        formatHBM();
      }
      std::string &&s { ss.str() };
      size_t res = fwrite(s.data(), s.size(), 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, err);
      }
    }

  public:
    std::map<const std::string, size_t> depth;
    std::string nameHBM;
    size_t depthHBM;
    std::string portHBM;
    unsigned widthHBM;
    size_t AESL_transaction;
    std::mutex mut;

    RefTCL(const char *path)
    {
      fp = fopen(path, "w");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void set(const char* name, size_t dep)
    {
      std::lock_guard<std::mutex> guard(mut);
      if (depth[name] < dep) {
        depth[name] = dep;
      }
    }

    ~RefTCL()
    {
      close();
    }
  };

#endif

  struct Register {
    const char* name;
    unsigned width;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    void* param;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      if (strcmp(name, "return") == 0) {
        tcl.set("ap_return", 1);
      } else {
        tcl.set(name, 1);
      }
    }
#endif
    ~Register()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  template<typename Reader, typename Writer>
  struct Memory {
    unsigned width;
    unsigned asize;
    bool hbm;
    std::vector<const char*> name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    std::vector<void*> param;
    std::vector<size_t> nbytes;
    std::vector<size_t> offset;
    std::vector<bool> hasWrite;

    size_t depth()
    {
      size_t depth = 0;
      for (size_t n : nbytes) {
        depth += divide_ceil(n, asize);
      }
      return depth;
    }

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      if (hbm) {
        tcl.nameHBM.append(name[0]);
        tcl.portHBM.append("{").append(name[0]);
        for (size_t i = 1; i < name.size(); ++i) {
          tcl.nameHBM.append("_").append(name[i]);
          tcl.portHBM.append(" ").append(name[i]);
        }
        tcl.nameHBM.append("_HBM");
        tcl.portHBM.append("}");
        tcl.widthHBM = width;
        tcl.depthHBM = divide_ceil(nbytes[0], asize);
      } else {
        tcl.set(name[0], depth());
      }
    }
#endif

    ~Memory()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  struct A2Stream {
    unsigned width;
    unsigned asize;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    void* param;
    size_t nbytes;
    bool hasWrite;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, divide_ceil(nbytes, asize));
    }
#endif

    ~A2Stream()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  template<typename E>
  struct Stream {
    unsigned width;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* writer;
    Writer* swriter;
    Writer* gwriter;
#endif
    hls::stream<E>* param;
    std::vector<E> buf;
    size_t initSize;
    size_t depth;
    bool hasWrite;

    void markSize()
    {
      initSize = param->size();
    }

    void buffer()
    {
      buf.clear();
      while (!param->empty()) {
        buf.push_back(param->read());
      }
      for (auto &e : buf) {
        param->write(e);
      }
    }

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, depth);
    }
#endif

    ~Stream()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete writer;
      delete swriter;
      delete gwriter;
#endif
    }
  };

#ifdef POST_CHECK
  void check(Register &port)
  {
    port.reader->begin();
    bool foundX = false;
    if (char *s = port.reader->next()) {
      foundX |= RTLOutputCheckAndReplacement(s);
      unformatData(s, (unsigned char*)port.param);
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

#ifdef USE_BINARY_TV_FILE
  void checkHBM(Memory<Input, Output> &port)
  {
    port.reader->begin();
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.hasWrite[i]) {
        port.reader->reset();
        size_t skip = wbytes * port.offset[i];
        port.reader->advance(skip);
        port.reader->into((unsigned char*)port.param[i], wbytes,
                           port.asize, port.nbytes[i] - skip);
      }
    }
  }

  void check(Memory<Input, Output> &port)
  {
    if (port.hbm) {
      return checkHBM(port);
    } else {
      port.reader->begin();
      size_t wbytes = least_nbyte(port.width);
      for (size_t i = 0; i < port.param.size(); ++i) {
        if (port.hasWrite[i]) {
          port.reader->into((unsigned char*)port.param[i], wbytes,
                             port.asize, port.nbytes[i]);
        } else {
          size_t n = divide_ceil(port.nbytes[i], port.asize);
          port.reader->advance(port.asize*n);
        }
      }
    }
  }
#endif
  void transfer(Reader *reader, size_t nbytes, unsigned char *put, bool &foundX)
  {
    if (char *s = reader->next()) {
      foundX |= RTLOutputCheckAndReplacement(s);
      unformatData(s, put, nbytes);
    } else {
      throw SimException("No more data", __LINE__);
    }
  }

  void checkHBM(Memory<Reader, Writer> &port)
  {
    port.reader->begin();
    bool foundX = false;
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0, last = port.param.size()-1; i <= last; ++i) {
      if (port.hasWrite[i]) {
        port.reader->skip(port.offset[i]);
        size_t n = port.nbytes[i] / port.asize - port.offset[i];
        unsigned char *put = (unsigned char*)port.param[i];
        for (size_t j = 0; j < n; ++j) {
          transfer(port.reader, wbytes, put, foundX);
          put += port.asize;
        }
        if (i < last) {
          port.reader->reset();
        }
      }
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  void check(Memory<Reader, Writer> &port)
  {
    if (port.hbm) {
      return checkHBM(port);
    } else {
      port.reader->begin();
      bool foundX = false;
      size_t wbytes = least_nbyte(port.width);
      for (size_t i = 0; i < port.param.size(); ++i) {
        if (port.hasWrite[i]) {
          size_t n = port.nbytes[i] / port.asize;
          size_t r = port.nbytes[i] % port.asize;
          unsigned char *put = (unsigned char*)port.param[i];
          for (size_t j = 0; j < n; ++j) {
            transfer(port.reader, wbytes, put, foundX);
            put += port.asize;
          }
          if (r > 0) {
            transfer(port.reader, r, put, foundX);
          }
        } else {
          size_t n = divide_ceil(port.nbytes[i], port.asize);
          port.reader->skip(n);
        }
      }
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    }
  }

  void check(A2Stream &port)
  {
    port.reader->begin();
    bool foundX = false;
    if (port.hasWrite) {
      size_t wbytes = least_nbyte(port.width);
      size_t n = port.nbytes / port.asize;
      size_t r = port.nbytes % port.asize;
      unsigned char *put = (unsigned char*)port.param;
      for (size_t j = 0; j < n; ++j) {
        if (char *s = port.reader->next()) {
          foundX |= RTLOutputCheckAndReplacement(s);
          unformatData(s, put, wbytes);
        }
        put += port.asize;
      }
      if (r > 0) {
        if (char *s = port.reader->next()) {
          foundX |= RTLOutputCheckAndReplacement(s);
          unformatData(s, put, r);
        }
      }
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  template<typename E>
  void check(Stream<E> &port)
  {
    if (port.hasWrite) {
      port.reader->begin();
      bool foundX = false;
      E *p = new E;
      while (char *s = port.reader->next()) {
        foundX |= RTLOutputCheckAndReplacement(s);
        unformatData(s, (unsigned char*)p);
        port.param->write(*p);
      }
      delete p;
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    } else {
      port.reader->begin();
      size_t n = 0;
      if (char *s = port.reader->next()) {
        std::istringstream ss(s);
        ss >> n;
      } else {
        throw SimException(bad, __LINE__);
      }
      port.reader->end();
      for (size_t j = 0; j < n; ++j) {
        port.param->read();
      }
    }
  }
#else
  void dump(Register &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    std::string &&s { formatData((unsigned char*)port.param, port.width) };
    writer->next(s.data());
    writer->end();
  }

  void error_on_depth_unspecified(const char *portName)
  {
    std::string msg {"A depth specification is required for MAXI interface port "};
    msg.append("'");
    msg.append(portName);
    msg.append("'");
    msg.append(" for cosimulation.");
    throw SimException(msg, __LINE__);
  }

#ifdef USE_BINARY_TV_FILE
  void dump(Memory<Input, Output> &port, Output *writer, size_t AESL_transaction)
  {
    writer->begin(port.depth());
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.nbytes[i] == 0) {
        error_on_depth_unspecified(port.hbm ? port.name[i] : port.name[0]);
      }
      writer->from((unsigned char*)port.param[i], wbytes, port.asize,
                   port.nbytes[i], 0);
    }
  }

#endif
  void dump(Memory<Reader, Writer> &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.nbytes[i] == 0) {
        error_on_depth_unspecified(port.hbm ? port.name[i] : port.name[0]);
      }
      size_t n = divide_ceil(port.nbytes[i], port.asize);
      unsigned char *put = (unsigned char*)port.param[i];
      for (size_t j = 0; j < n; ++j) {
        std::string &&s {
          formatData(put, port.width)
        };
        writer->next(s.data());
        put += port.asize;
      }
      if (port.hbm) {
        break;
      }
    }
    writer->end();
  }

  void dump(A2Stream &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    size_t n = divide_ceil(port.nbytes, port.asize);
    unsigned char *put = (unsigned char*)port.param;
    for (size_t j = 0; j < n; ++j) {
      std::string &&s { formatData(put, port.width) };
      writer->next(s.data());
      put += port.asize;
    }
    writer->end();
  }

  template<typename E>
  void dump(Stream<E> &port, size_t AESL_transaction)
  {
    if (port.hasWrite) {
      port.writer->begin(AESL_transaction);
      port.depth = port.param->size()-port.initSize;
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[port.initSize+j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();
    } else {
      port.writer->begin(AESL_transaction);
      port.depth = port.initSize-port.param->size();
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();

      port.gwriter->begin(AESL_transaction);
      size_t n = (port.depth ? port.initSize : port.depth);
      size_t d = port.depth;
      do {
        port.gwriter->next(std::to_string(n--).c_str());
      } while (d--);
      port.gwriter->end();
    }
  }
#endif
}



extern "C"
void TopPL_hw_stub_wrapper(void*, void*, void*, void*, hls::sim::Byte<4>, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*);

extern "C"
void apatb_TopPL_hw(void* __xlx_apatb_param_dataIn, void* __xlx_apatb_param_U, void* __xlx_apatb_param_S, void* __xlx_apatb_param_ConvArray, hls::sim::Byte<4> __xlx_apatb_param_ITER, void* __xlx_apatb_param_sweep_tx1_0_V_data_V, void* __xlx_apatb_param_sweep_tx1_0_V_keep_V, void* __xlx_apatb_param_sweep_tx1_0_V_strb_V, void* __xlx_apatb_param_sweep_tx1_0_V_last_V, void* __xlx_apatb_param_sweep_rx1_0_V_data_V, void* __xlx_apatb_param_sweep_rx1_0_V_keep_V, void* __xlx_apatb_param_sweep_rx1_0_V_strb_V, void* __xlx_apatb_param_sweep_rx1_0_V_last_V, void* __xlx_apatb_param_sweep_tx1_1_V_data_V, void* __xlx_apatb_param_sweep_tx1_1_V_keep_V, void* __xlx_apatb_param_sweep_tx1_1_V_strb_V, void* __xlx_apatb_param_sweep_tx1_1_V_last_V, void* __xlx_apatb_param_sweep_rx1_1_V_data_V, void* __xlx_apatb_param_sweep_rx1_1_V_keep_V, void* __xlx_apatb_param_sweep_rx1_1_V_strb_V, void* __xlx_apatb_param_sweep_rx1_1_V_last_V, void* __xlx_apatb_param_sweep_tx2_0_V_data_V, void* __xlx_apatb_param_sweep_tx2_0_V_keep_V, void* __xlx_apatb_param_sweep_tx2_0_V_strb_V, void* __xlx_apatb_param_sweep_tx2_0_V_last_V, void* __xlx_apatb_param_sweep_rx2_0_V_data_V, void* __xlx_apatb_param_sweep_rx2_0_V_keep_V, void* __xlx_apatb_param_sweep_rx2_0_V_strb_V, void* __xlx_apatb_param_sweep_rx2_0_V_last_V, void* __xlx_apatb_param_sweep_tx2_1_V_data_V, void* __xlx_apatb_param_sweep_tx2_1_V_keep_V, void* __xlx_apatb_param_sweep_tx2_1_V_strb_V, void* __xlx_apatb_param_sweep_tx2_1_V_last_V, void* __xlx_apatb_param_sweep_rx2_1_V_data_V, void* __xlx_apatb_param_sweep_rx2_1_V_keep_V, void* __xlx_apatb_param_sweep_rx2_1_V_strb_V, void* __xlx_apatb_param_sweep_rx2_1_V_last_V, void* __xlx_apatb_param_sweep_tx3_0_V_data_V, void* __xlx_apatb_param_sweep_tx3_0_V_keep_V, void* __xlx_apatb_param_sweep_tx3_0_V_strb_V, void* __xlx_apatb_param_sweep_tx3_0_V_last_V, void* __xlx_apatb_param_sweep_rx3_0_V_data_V, void* __xlx_apatb_param_sweep_rx3_0_V_keep_V, void* __xlx_apatb_param_sweep_rx3_0_V_strb_V, void* __xlx_apatb_param_sweep_rx3_0_V_last_V, void* __xlx_apatb_param_sweep_tx3_1_V_data_V, void* __xlx_apatb_param_sweep_tx3_1_V_keep_V, void* __xlx_apatb_param_sweep_tx3_1_V_strb_V, void* __xlx_apatb_param_sweep_tx3_1_V_last_V, void* __xlx_apatb_param_sweep_rx3_1_V_data_V, void* __xlx_apatb_param_sweep_rx3_1_V_keep_V, void* __xlx_apatb_param_sweep_rx3_1_V_strb_V, void* __xlx_apatb_param_sweep_rx3_1_V_last_V, void* __xlx_apatb_param_sweep_tx4_0_V_data_V, void* __xlx_apatb_param_sweep_tx4_0_V_keep_V, void* __xlx_apatb_param_sweep_tx4_0_V_strb_V, void* __xlx_apatb_param_sweep_tx4_0_V_last_V, void* __xlx_apatb_param_sweep_rx4_0_V_data_V, void* __xlx_apatb_param_sweep_rx4_0_V_keep_V, void* __xlx_apatb_param_sweep_rx4_0_V_strb_V, void* __xlx_apatb_param_sweep_rx4_0_V_last_V, void* __xlx_apatb_param_sweep_tx4_1_V_data_V, void* __xlx_apatb_param_sweep_tx4_1_V_keep_V, void* __xlx_apatb_param_sweep_tx4_1_V_strb_V, void* __xlx_apatb_param_sweep_tx4_1_V_last_V, void* __xlx_apatb_param_sweep_rx4_1_V_data_V, void* __xlx_apatb_param_sweep_rx4_1_V_keep_V, void* __xlx_apatb_param_sweep_rx4_1_V_strb_V, void* __xlx_apatb_param_sweep_rx4_1_V_last_V, void* __xlx_apatb_param_norm_tx0_V_data_V, void* __xlx_apatb_param_norm_tx0_V_keep_V, void* __xlx_apatb_param_norm_tx0_V_strb_V, void* __xlx_apatb_param_norm_tx0_V_last_V, void* __xlx_apatb_param_norm_rx0_V_data_V, void* __xlx_apatb_param_norm_rx0_V_keep_V, void* __xlx_apatb_param_norm_rx0_V_strb_V, void* __xlx_apatb_param_norm_rx0_V_last_V)
{
  hls::sim::Byte<4> __xlx_offset_byte_param_dataIn;
  static hls::sim::Register port0 {
    .name = "dataIn",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_dataIn),
#endif
  };
  port0.param = &__xlx_offset_byte_param_dataIn;

  hls::sim::Byte<4> __xlx_offset_byte_param_U;
  static hls::sim::Register port1 {
    .name = "U",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_U),
#endif
  };
  port1.param = &__xlx_offset_byte_param_U;

  hls::sim::Byte<4> __xlx_offset_byte_param_S;
  static hls::sim::Register port2 {
    .name = "S",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_S),
#endif
  };
  port2.param = &__xlx_offset_byte_param_S;

  hls::sim::Byte<4> __xlx_offset_byte_param_ConvArray;
  static hls::sim::Register port3 {
    .name = "ConvArray",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_ConvArray),
#endif
  };
  port3.param = &__xlx_offset_byte_param_ConvArray;

  static hls::sim::Register port4 {
    .name = "ITER",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_ITER),
#endif
  };
  port4.param = &__xlx_apatb_param_ITER;

  static hls::sim::Stream<hls::sim::Byte<16>> port5 {
    .width = 128,
    .name = "sweep_tx1_0_V_data_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_sweep_tx1_0_V_data_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_sweep_tx1_0_V_data_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_sweep_tx1_0_V_data_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_sweep_tx1_0_V_data_V),
#endif
  };
  port5.param = (hls::stream<hls::sim::Byte<16>>*)__xlx_apatb_param_sweep_tx1_0_V_data_V;
  port5.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<2>> port6 {
    .width = 16,
    .name = "sweep_tx1_0_V_keep_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_sweep_tx1_0_V_keep_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_sweep_tx1_0_V_keep_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_sweep_tx1_0_V_keep_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_sweep_tx1_0_V_keep_V),
#endif
  };
  port6.param = (hls::stream<hls::sim::Byte<2>>*)__xlx_apatb_param_sweep_tx1_0_V_keep_V;
  port6.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<2>> port7 {
    .width = 16,
    .name = "sweep_tx1_0_V_strb_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_sweep_tx1_0_V_strb_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_sweep_tx1_0_V_strb_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_sweep_tx1_0_V_strb_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_sweep_tx1_0_V_strb_V),
#endif
  };
  port7.param = (hls::stream<hls::sim::Byte<2>>*)__xlx_apatb_param_sweep_tx1_0_V_strb_V;
  port7.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<1>> port8 {
    .width = 1,
    .name = "sweep_tx1_0_V_last_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_sweep_tx1_0_V_last_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_sweep_tx1_0_V_last_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_sweep_tx1_0_V_last_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_sweep_tx1_0_V_last_V),
#endif
  };
  port8.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_sweep_tx1_0_V_last_V;
  port8.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<16>> port9 {
    .width = 128,
    .name = "sweep_rx1_0_V_data_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_sweep_rx1_0_V_data_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_sweep_rx1_0_V_data_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_sweep_rx1_0_V_data_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_sweep_rx1_0_V_data_V),
#endif
  };
  port9.param = (hls::stream<hls::sim::Byte<16>>*)__xlx_apatb_param_sweep_rx1_0_V_data_V;
  port9.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<2>> port10 {
    .width = 16,
    .name = "sweep_rx1_0_V_keep_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_sweep_rx1_0_V_keep_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_sweep_rx1_0_V_keep_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_sweep_rx1_0_V_keep_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_sweep_rx1_0_V_keep_V),
#endif
  };
  port10.param = (hls::stream<hls::sim::Byte<2>>*)__xlx_apatb_param_sweep_rx1_0_V_keep_V;
  port10.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<2>> port11 {
    .width = 16,
    .name = "sweep_rx1_0_V_strb_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_sweep_rx1_0_V_strb_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_sweep_rx1_0_V_strb_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_sweep_rx1_0_V_strb_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_sweep_rx1_0_V_strb_V),
#endif
  };
  port11.param = (hls::stream<hls::sim::Byte<2>>*)__xlx_apatb_param_sweep_rx1_0_V_strb_V;
  port11.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<1>> port12 {
    .width = 1,
    .name = "sweep_rx1_0_V_last_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_sweep_rx1_0_V_last_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_sweep_rx1_0_V_last_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_sweep_rx1_0_V_last_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_sweep_rx1_0_V_last_V),
#endif
  };
  port12.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_sweep_rx1_0_V_last_V;
  port12.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<16>> port13 {
    .width = 128,
    .name = "sweep_tx1_1_V_data_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_sweep_tx1_1_V_data_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_sweep_tx1_1_V_data_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_sweep_tx1_1_V_data_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_sweep_tx1_1_V_data_V),
#endif
  };
  port13.param = (hls::stream<hls::sim::Byte<16>>*)__xlx_apatb_param_sweep_tx1_1_V_data_V;
  port13.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<2>> port14 {
    .width = 16,
    .name = "sweep_tx1_1_V_keep_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_sweep_tx1_1_V_keep_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_sweep_tx1_1_V_keep_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_sweep_tx1_1_V_keep_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_sweep_tx1_1_V_keep_V),
#endif
  };
  port14.param = (hls::stream<hls::sim::Byte<2>>*)__xlx_apatb_param_sweep_tx1_1_V_keep_V;
  port14.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<2>> port15 {
    .width = 16,
    .name = "sweep_tx1_1_V_strb_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_sweep_tx1_1_V_strb_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_sweep_tx1_1_V_strb_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_sweep_tx1_1_V_strb_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_sweep_tx1_1_V_strb_V),
#endif
  };
  port15.param = (hls::stream<hls::sim::Byte<2>>*)__xlx_apatb_param_sweep_tx1_1_V_strb_V;
  port15.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<1>> port16 {
    .width = 1,
    .name = "sweep_tx1_1_V_last_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_sweep_tx1_1_V_last_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_sweep_tx1_1_V_last_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_sweep_tx1_1_V_last_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_sweep_tx1_1_V_last_V),
#endif
  };
  port16.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_sweep_tx1_1_V_last_V;
  port16.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<16>> port17 {
    .width = 128,
    .name = "sweep_rx1_1_V_data_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_sweep_rx1_1_V_data_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_sweep_rx1_1_V_data_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_sweep_rx1_1_V_data_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_sweep_rx1_1_V_data_V),
#endif
  };
  port17.param = (hls::stream<hls::sim::Byte<16>>*)__xlx_apatb_param_sweep_rx1_1_V_data_V;
  port17.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<2>> port18 {
    .width = 16,
    .name = "sweep_rx1_1_V_keep_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_sweep_rx1_1_V_keep_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_sweep_rx1_1_V_keep_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_sweep_rx1_1_V_keep_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_sweep_rx1_1_V_keep_V),
#endif
  };
  port18.param = (hls::stream<hls::sim::Byte<2>>*)__xlx_apatb_param_sweep_rx1_1_V_keep_V;
  port18.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<2>> port19 {
    .width = 16,
    .name = "sweep_rx1_1_V_strb_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_sweep_rx1_1_V_strb_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_sweep_rx1_1_V_strb_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_sweep_rx1_1_V_strb_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_sweep_rx1_1_V_strb_V),
#endif
  };
  port19.param = (hls::stream<hls::sim::Byte<2>>*)__xlx_apatb_param_sweep_rx1_1_V_strb_V;
  port19.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<1>> port20 {
    .width = 1,
    .name = "sweep_rx1_1_V_last_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_sweep_rx1_1_V_last_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_sweep_rx1_1_V_last_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_sweep_rx1_1_V_last_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_sweep_rx1_1_V_last_V),
#endif
  };
  port20.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_sweep_rx1_1_V_last_V;
  port20.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<16>> port21 {
    .width = 128,
    .name = "sweep_tx2_0_V_data_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_sweep_tx2_0_V_data_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_sweep_tx2_0_V_data_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_sweep_tx2_0_V_data_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_sweep_tx2_0_V_data_V),
#endif
  };
  port21.param = (hls::stream<hls::sim::Byte<16>>*)__xlx_apatb_param_sweep_tx2_0_V_data_V;
  port21.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<2>> port22 {
    .width = 16,
    .name = "sweep_tx2_0_V_keep_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_sweep_tx2_0_V_keep_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_sweep_tx2_0_V_keep_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_sweep_tx2_0_V_keep_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_sweep_tx2_0_V_keep_V),
#endif
  };
  port22.param = (hls::stream<hls::sim::Byte<2>>*)__xlx_apatb_param_sweep_tx2_0_V_keep_V;
  port22.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<2>> port23 {
    .width = 16,
    .name = "sweep_tx2_0_V_strb_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_sweep_tx2_0_V_strb_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_sweep_tx2_0_V_strb_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_sweep_tx2_0_V_strb_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_sweep_tx2_0_V_strb_V),
#endif
  };
  port23.param = (hls::stream<hls::sim::Byte<2>>*)__xlx_apatb_param_sweep_tx2_0_V_strb_V;
  port23.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<1>> port24 {
    .width = 1,
    .name = "sweep_tx2_0_V_last_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_sweep_tx2_0_V_last_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_sweep_tx2_0_V_last_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_sweep_tx2_0_V_last_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_sweep_tx2_0_V_last_V),
#endif
  };
  port24.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_sweep_tx2_0_V_last_V;
  port24.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<16>> port25 {
    .width = 128,
    .name = "sweep_rx2_0_V_data_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_sweep_rx2_0_V_data_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_sweep_rx2_0_V_data_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_sweep_rx2_0_V_data_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_sweep_rx2_0_V_data_V),
#endif
  };
  port25.param = (hls::stream<hls::sim::Byte<16>>*)__xlx_apatb_param_sweep_rx2_0_V_data_V;
  port25.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<2>> port26 {
    .width = 16,
    .name = "sweep_rx2_0_V_keep_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_sweep_rx2_0_V_keep_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_sweep_rx2_0_V_keep_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_sweep_rx2_0_V_keep_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_sweep_rx2_0_V_keep_V),
#endif
  };
  port26.param = (hls::stream<hls::sim::Byte<2>>*)__xlx_apatb_param_sweep_rx2_0_V_keep_V;
  port26.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<2>> port27 {
    .width = 16,
    .name = "sweep_rx2_0_V_strb_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_sweep_rx2_0_V_strb_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_sweep_rx2_0_V_strb_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_sweep_rx2_0_V_strb_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_sweep_rx2_0_V_strb_V),
#endif
  };
  port27.param = (hls::stream<hls::sim::Byte<2>>*)__xlx_apatb_param_sweep_rx2_0_V_strb_V;
  port27.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<1>> port28 {
    .width = 1,
    .name = "sweep_rx2_0_V_last_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_sweep_rx2_0_V_last_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_sweep_rx2_0_V_last_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_sweep_rx2_0_V_last_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_sweep_rx2_0_V_last_V),
#endif
  };
  port28.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_sweep_rx2_0_V_last_V;
  port28.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<16>> port29 {
    .width = 128,
    .name = "sweep_tx2_1_V_data_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_sweep_tx2_1_V_data_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_sweep_tx2_1_V_data_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_sweep_tx2_1_V_data_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_sweep_tx2_1_V_data_V),
#endif
  };
  port29.param = (hls::stream<hls::sim::Byte<16>>*)__xlx_apatb_param_sweep_tx2_1_V_data_V;
  port29.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<2>> port30 {
    .width = 16,
    .name = "sweep_tx2_1_V_keep_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_sweep_tx2_1_V_keep_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_sweep_tx2_1_V_keep_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_sweep_tx2_1_V_keep_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_sweep_tx2_1_V_keep_V),
#endif
  };
  port30.param = (hls::stream<hls::sim::Byte<2>>*)__xlx_apatb_param_sweep_tx2_1_V_keep_V;
  port30.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<2>> port31 {
    .width = 16,
    .name = "sweep_tx2_1_V_strb_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_sweep_tx2_1_V_strb_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_sweep_tx2_1_V_strb_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_sweep_tx2_1_V_strb_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_sweep_tx2_1_V_strb_V),
#endif
  };
  port31.param = (hls::stream<hls::sim::Byte<2>>*)__xlx_apatb_param_sweep_tx2_1_V_strb_V;
  port31.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<1>> port32 {
    .width = 1,
    .name = "sweep_tx2_1_V_last_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_sweep_tx2_1_V_last_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_sweep_tx2_1_V_last_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_sweep_tx2_1_V_last_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_sweep_tx2_1_V_last_V),
#endif
  };
  port32.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_sweep_tx2_1_V_last_V;
  port32.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<16>> port33 {
    .width = 128,
    .name = "sweep_rx2_1_V_data_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_sweep_rx2_1_V_data_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_sweep_rx2_1_V_data_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_sweep_rx2_1_V_data_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_sweep_rx2_1_V_data_V),
#endif
  };
  port33.param = (hls::stream<hls::sim::Byte<16>>*)__xlx_apatb_param_sweep_rx2_1_V_data_V;
  port33.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<2>> port34 {
    .width = 16,
    .name = "sweep_rx2_1_V_keep_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_sweep_rx2_1_V_keep_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_sweep_rx2_1_V_keep_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_sweep_rx2_1_V_keep_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_sweep_rx2_1_V_keep_V),
#endif
  };
  port34.param = (hls::stream<hls::sim::Byte<2>>*)__xlx_apatb_param_sweep_rx2_1_V_keep_V;
  port34.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<2>> port35 {
    .width = 16,
    .name = "sweep_rx2_1_V_strb_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_sweep_rx2_1_V_strb_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_sweep_rx2_1_V_strb_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_sweep_rx2_1_V_strb_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_sweep_rx2_1_V_strb_V),
#endif
  };
  port35.param = (hls::stream<hls::sim::Byte<2>>*)__xlx_apatb_param_sweep_rx2_1_V_strb_V;
  port35.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<1>> port36 {
    .width = 1,
    .name = "sweep_rx2_1_V_last_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_sweep_rx2_1_V_last_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_sweep_rx2_1_V_last_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_sweep_rx2_1_V_last_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_sweep_rx2_1_V_last_V),
#endif
  };
  port36.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_sweep_rx2_1_V_last_V;
  port36.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<16>> port37 {
    .width = 128,
    .name = "sweep_tx3_0_V_data_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_sweep_tx3_0_V_data_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_sweep_tx3_0_V_data_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_sweep_tx3_0_V_data_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_sweep_tx3_0_V_data_V),
#endif
  };
  port37.param = (hls::stream<hls::sim::Byte<16>>*)__xlx_apatb_param_sweep_tx3_0_V_data_V;
  port37.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<2>> port38 {
    .width = 16,
    .name = "sweep_tx3_0_V_keep_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_sweep_tx3_0_V_keep_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_sweep_tx3_0_V_keep_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_sweep_tx3_0_V_keep_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_sweep_tx3_0_V_keep_V),
#endif
  };
  port38.param = (hls::stream<hls::sim::Byte<2>>*)__xlx_apatb_param_sweep_tx3_0_V_keep_V;
  port38.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<2>> port39 {
    .width = 16,
    .name = "sweep_tx3_0_V_strb_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_sweep_tx3_0_V_strb_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_sweep_tx3_0_V_strb_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_sweep_tx3_0_V_strb_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_sweep_tx3_0_V_strb_V),
#endif
  };
  port39.param = (hls::stream<hls::sim::Byte<2>>*)__xlx_apatb_param_sweep_tx3_0_V_strb_V;
  port39.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<1>> port40 {
    .width = 1,
    .name = "sweep_tx3_0_V_last_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_sweep_tx3_0_V_last_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_sweep_tx3_0_V_last_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_sweep_tx3_0_V_last_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_sweep_tx3_0_V_last_V),
#endif
  };
  port40.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_sweep_tx3_0_V_last_V;
  port40.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<16>> port41 {
    .width = 128,
    .name = "sweep_rx3_0_V_data_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_sweep_rx3_0_V_data_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_sweep_rx3_0_V_data_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_sweep_rx3_0_V_data_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_sweep_rx3_0_V_data_V),
#endif
  };
  port41.param = (hls::stream<hls::sim::Byte<16>>*)__xlx_apatb_param_sweep_rx3_0_V_data_V;
  port41.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<2>> port42 {
    .width = 16,
    .name = "sweep_rx3_0_V_keep_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_sweep_rx3_0_V_keep_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_sweep_rx3_0_V_keep_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_sweep_rx3_0_V_keep_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_sweep_rx3_0_V_keep_V),
#endif
  };
  port42.param = (hls::stream<hls::sim::Byte<2>>*)__xlx_apatb_param_sweep_rx3_0_V_keep_V;
  port42.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<2>> port43 {
    .width = 16,
    .name = "sweep_rx3_0_V_strb_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_sweep_rx3_0_V_strb_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_sweep_rx3_0_V_strb_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_sweep_rx3_0_V_strb_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_sweep_rx3_0_V_strb_V),
#endif
  };
  port43.param = (hls::stream<hls::sim::Byte<2>>*)__xlx_apatb_param_sweep_rx3_0_V_strb_V;
  port43.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<1>> port44 {
    .width = 1,
    .name = "sweep_rx3_0_V_last_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_sweep_rx3_0_V_last_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_sweep_rx3_0_V_last_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_sweep_rx3_0_V_last_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_sweep_rx3_0_V_last_V),
#endif
  };
  port44.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_sweep_rx3_0_V_last_V;
  port44.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<16>> port45 {
    .width = 128,
    .name = "sweep_tx3_1_V_data_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_sweep_tx3_1_V_data_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_sweep_tx3_1_V_data_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_sweep_tx3_1_V_data_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_sweep_tx3_1_V_data_V),
#endif
  };
  port45.param = (hls::stream<hls::sim::Byte<16>>*)__xlx_apatb_param_sweep_tx3_1_V_data_V;
  port45.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<2>> port46 {
    .width = 16,
    .name = "sweep_tx3_1_V_keep_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_sweep_tx3_1_V_keep_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_sweep_tx3_1_V_keep_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_sweep_tx3_1_V_keep_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_sweep_tx3_1_V_keep_V),
#endif
  };
  port46.param = (hls::stream<hls::sim::Byte<2>>*)__xlx_apatb_param_sweep_tx3_1_V_keep_V;
  port46.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<2>> port47 {
    .width = 16,
    .name = "sweep_tx3_1_V_strb_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_sweep_tx3_1_V_strb_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_sweep_tx3_1_V_strb_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_sweep_tx3_1_V_strb_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_sweep_tx3_1_V_strb_V),
#endif
  };
  port47.param = (hls::stream<hls::sim::Byte<2>>*)__xlx_apatb_param_sweep_tx3_1_V_strb_V;
  port47.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<1>> port48 {
    .width = 1,
    .name = "sweep_tx3_1_V_last_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_sweep_tx3_1_V_last_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_sweep_tx3_1_V_last_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_sweep_tx3_1_V_last_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_sweep_tx3_1_V_last_V),
#endif
  };
  port48.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_sweep_tx3_1_V_last_V;
  port48.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<16>> port49 {
    .width = 128,
    .name = "sweep_rx3_1_V_data_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_sweep_rx3_1_V_data_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_sweep_rx3_1_V_data_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_sweep_rx3_1_V_data_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_sweep_rx3_1_V_data_V),
#endif
  };
  port49.param = (hls::stream<hls::sim::Byte<16>>*)__xlx_apatb_param_sweep_rx3_1_V_data_V;
  port49.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<2>> port50 {
    .width = 16,
    .name = "sweep_rx3_1_V_keep_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_sweep_rx3_1_V_keep_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_sweep_rx3_1_V_keep_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_sweep_rx3_1_V_keep_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_sweep_rx3_1_V_keep_V),
#endif
  };
  port50.param = (hls::stream<hls::sim::Byte<2>>*)__xlx_apatb_param_sweep_rx3_1_V_keep_V;
  port50.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<2>> port51 {
    .width = 16,
    .name = "sweep_rx3_1_V_strb_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_sweep_rx3_1_V_strb_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_sweep_rx3_1_V_strb_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_sweep_rx3_1_V_strb_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_sweep_rx3_1_V_strb_V),
#endif
  };
  port51.param = (hls::stream<hls::sim::Byte<2>>*)__xlx_apatb_param_sweep_rx3_1_V_strb_V;
  port51.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<1>> port52 {
    .width = 1,
    .name = "sweep_rx3_1_V_last_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_sweep_rx3_1_V_last_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_sweep_rx3_1_V_last_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_sweep_rx3_1_V_last_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_sweep_rx3_1_V_last_V),
#endif
  };
  port52.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_sweep_rx3_1_V_last_V;
  port52.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<16>> port53 {
    .width = 128,
    .name = "sweep_tx4_0_V_data_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_sweep_tx4_0_V_data_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_sweep_tx4_0_V_data_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_sweep_tx4_0_V_data_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_sweep_tx4_0_V_data_V),
#endif
  };
  port53.param = (hls::stream<hls::sim::Byte<16>>*)__xlx_apatb_param_sweep_tx4_0_V_data_V;
  port53.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<2>> port54 {
    .width = 16,
    .name = "sweep_tx4_0_V_keep_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_sweep_tx4_0_V_keep_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_sweep_tx4_0_V_keep_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_sweep_tx4_0_V_keep_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_sweep_tx4_0_V_keep_V),
#endif
  };
  port54.param = (hls::stream<hls::sim::Byte<2>>*)__xlx_apatb_param_sweep_tx4_0_V_keep_V;
  port54.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<2>> port55 {
    .width = 16,
    .name = "sweep_tx4_0_V_strb_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_sweep_tx4_0_V_strb_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_sweep_tx4_0_V_strb_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_sweep_tx4_0_V_strb_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_sweep_tx4_0_V_strb_V),
#endif
  };
  port55.param = (hls::stream<hls::sim::Byte<2>>*)__xlx_apatb_param_sweep_tx4_0_V_strb_V;
  port55.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<1>> port56 {
    .width = 1,
    .name = "sweep_tx4_0_V_last_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_sweep_tx4_0_V_last_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_sweep_tx4_0_V_last_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_sweep_tx4_0_V_last_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_sweep_tx4_0_V_last_V),
#endif
  };
  port56.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_sweep_tx4_0_V_last_V;
  port56.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<16>> port57 {
    .width = 128,
    .name = "sweep_rx4_0_V_data_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_sweep_rx4_0_V_data_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_sweep_rx4_0_V_data_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_sweep_rx4_0_V_data_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_sweep_rx4_0_V_data_V),
#endif
  };
  port57.param = (hls::stream<hls::sim::Byte<16>>*)__xlx_apatb_param_sweep_rx4_0_V_data_V;
  port57.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<2>> port58 {
    .width = 16,
    .name = "sweep_rx4_0_V_keep_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_sweep_rx4_0_V_keep_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_sweep_rx4_0_V_keep_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_sweep_rx4_0_V_keep_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_sweep_rx4_0_V_keep_V),
#endif
  };
  port58.param = (hls::stream<hls::sim::Byte<2>>*)__xlx_apatb_param_sweep_rx4_0_V_keep_V;
  port58.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<2>> port59 {
    .width = 16,
    .name = "sweep_rx4_0_V_strb_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_sweep_rx4_0_V_strb_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_sweep_rx4_0_V_strb_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_sweep_rx4_0_V_strb_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_sweep_rx4_0_V_strb_V),
#endif
  };
  port59.param = (hls::stream<hls::sim::Byte<2>>*)__xlx_apatb_param_sweep_rx4_0_V_strb_V;
  port59.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<1>> port60 {
    .width = 1,
    .name = "sweep_rx4_0_V_last_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_sweep_rx4_0_V_last_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_sweep_rx4_0_V_last_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_sweep_rx4_0_V_last_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_sweep_rx4_0_V_last_V),
#endif
  };
  port60.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_sweep_rx4_0_V_last_V;
  port60.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<16>> port61 {
    .width = 128,
    .name = "sweep_tx4_1_V_data_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_sweep_tx4_1_V_data_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_sweep_tx4_1_V_data_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_sweep_tx4_1_V_data_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_sweep_tx4_1_V_data_V),
#endif
  };
  port61.param = (hls::stream<hls::sim::Byte<16>>*)__xlx_apatb_param_sweep_tx4_1_V_data_V;
  port61.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<2>> port62 {
    .width = 16,
    .name = "sweep_tx4_1_V_keep_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_sweep_tx4_1_V_keep_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_sweep_tx4_1_V_keep_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_sweep_tx4_1_V_keep_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_sweep_tx4_1_V_keep_V),
#endif
  };
  port62.param = (hls::stream<hls::sim::Byte<2>>*)__xlx_apatb_param_sweep_tx4_1_V_keep_V;
  port62.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<2>> port63 {
    .width = 16,
    .name = "sweep_tx4_1_V_strb_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_sweep_tx4_1_V_strb_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_sweep_tx4_1_V_strb_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_sweep_tx4_1_V_strb_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_sweep_tx4_1_V_strb_V),
#endif
  };
  port63.param = (hls::stream<hls::sim::Byte<2>>*)__xlx_apatb_param_sweep_tx4_1_V_strb_V;
  port63.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<1>> port64 {
    .width = 1,
    .name = "sweep_tx4_1_V_last_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_sweep_tx4_1_V_last_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_sweep_tx4_1_V_last_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_sweep_tx4_1_V_last_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_sweep_tx4_1_V_last_V),
#endif
  };
  port64.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_sweep_tx4_1_V_last_V;
  port64.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<16>> port65 {
    .width = 128,
    .name = "sweep_rx4_1_V_data_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_sweep_rx4_1_V_data_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_sweep_rx4_1_V_data_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_sweep_rx4_1_V_data_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_sweep_rx4_1_V_data_V),
#endif
  };
  port65.param = (hls::stream<hls::sim::Byte<16>>*)__xlx_apatb_param_sweep_rx4_1_V_data_V;
  port65.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<2>> port66 {
    .width = 16,
    .name = "sweep_rx4_1_V_keep_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_sweep_rx4_1_V_keep_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_sweep_rx4_1_V_keep_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_sweep_rx4_1_V_keep_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_sweep_rx4_1_V_keep_V),
#endif
  };
  port66.param = (hls::stream<hls::sim::Byte<2>>*)__xlx_apatb_param_sweep_rx4_1_V_keep_V;
  port66.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<2>> port67 {
    .width = 16,
    .name = "sweep_rx4_1_V_strb_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_sweep_rx4_1_V_strb_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_sweep_rx4_1_V_strb_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_sweep_rx4_1_V_strb_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_sweep_rx4_1_V_strb_V),
#endif
  };
  port67.param = (hls::stream<hls::sim::Byte<2>>*)__xlx_apatb_param_sweep_rx4_1_V_strb_V;
  port67.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<1>> port68 {
    .width = 1,
    .name = "sweep_rx4_1_V_last_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_sweep_rx4_1_V_last_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_sweep_rx4_1_V_last_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_sweep_rx4_1_V_last_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_sweep_rx4_1_V_last_V),
#endif
  };
  port68.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_sweep_rx4_1_V_last_V;
  port68.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<16>> port69 {
    .width = 128,
    .name = "norm_tx0_V_data_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_norm_tx0_V_data_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_norm_tx0_V_data_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_norm_tx0_V_data_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_norm_tx0_V_data_V),
#endif
  };
  port69.param = (hls::stream<hls::sim::Byte<16>>*)__xlx_apatb_param_norm_tx0_V_data_V;
  port69.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<2>> port70 {
    .width = 16,
    .name = "norm_tx0_V_keep_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_norm_tx0_V_keep_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_norm_tx0_V_keep_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_norm_tx0_V_keep_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_norm_tx0_V_keep_V),
#endif
  };
  port70.param = (hls::stream<hls::sim::Byte<2>>*)__xlx_apatb_param_norm_tx0_V_keep_V;
  port70.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<2>> port71 {
    .width = 16,
    .name = "norm_tx0_V_strb_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_norm_tx0_V_strb_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_norm_tx0_V_strb_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_norm_tx0_V_strb_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_norm_tx0_V_strb_V),
#endif
  };
  port71.param = (hls::stream<hls::sim::Byte<2>>*)__xlx_apatb_param_norm_tx0_V_strb_V;
  port71.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<1>> port72 {
    .width = 1,
    .name = "norm_tx0_V_last_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_norm_tx0_V_last_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_norm_tx0_V_last_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_norm_tx0_V_last_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_norm_tx0_V_last_V),
#endif
  };
  port72.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_norm_tx0_V_last_V;
  port72.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<16>> port73 {
    .width = 128,
    .name = "norm_rx0_V_data_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_norm_rx0_V_data_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_norm_rx0_V_data_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_norm_rx0_V_data_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_norm_rx0_V_data_V),
#endif
  };
  port73.param = (hls::stream<hls::sim::Byte<16>>*)__xlx_apatb_param_norm_rx0_V_data_V;
  port73.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<2>> port74 {
    .width = 16,
    .name = "norm_rx0_V_keep_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_norm_rx0_V_keep_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_norm_rx0_V_keep_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_norm_rx0_V_keep_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_norm_rx0_V_keep_V),
#endif
  };
  port74.param = (hls::stream<hls::sim::Byte<2>>*)__xlx_apatb_param_norm_rx0_V_keep_V;
  port74.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<2>> port75 {
    .width = 16,
    .name = "norm_rx0_V_strb_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_norm_rx0_V_strb_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_norm_rx0_V_strb_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_norm_rx0_V_strb_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_norm_rx0_V_strb_V),
#endif
  };
  port75.param = (hls::stream<hls::sim::Byte<2>>*)__xlx_apatb_param_norm_rx0_V_strb_V;
  port75.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<1>> port76 {
    .width = 1,
    .name = "norm_rx0_V_last_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_norm_rx0_V_last_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_norm_rx0_V_last_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_norm_rx0_V_last_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_norm_rx0_V_last_V),
#endif
  };
  port76.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_norm_rx0_V_last_V;
  port76.hasWrite = false;

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port77 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port77 {
#endif
    .width = 512,
    .asize = 64,
    .hbm = false,
    .name = { "gmem0" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_gmem0),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gmem0),
#endif
#endif
  };
  port77.param = { __xlx_apatb_param_dataIn };
  port77.nbytes = { 131072 };
  port77.offset = {  };
  port77.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port78 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port78 {
#endif
    .width = 512,
    .asize = 64,
    .hbm = false,
    .name = { "gmem1" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_gmem1),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_gmem1),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_gmem1),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_gmem1),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_gmem1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gmem1),
#endif
#endif
  };
  port78.param = { __xlx_apatb_param_U };
  port78.nbytes = { 131072 };
  port78.offset = {  };
  port78.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port79 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port79 {
#endif
    .width = 512,
    .asize = 64,
    .hbm = false,
    .name = { "gmem2" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_gmem2),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_gmem2),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_gmem2),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_gmem2),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_gmem2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gmem2),
#endif
#endif
  };
  port79.param = { __xlx_apatb_param_S };
  port79.nbytes = { 32768 };
  port79.offset = {  };
  port79.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port80 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port80 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "gmem3" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_gmem3),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_gmem3),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_gmem3),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_gmem3),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_gmem3),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gmem3),
#endif
#endif
  };
  port80.param = { __xlx_apatb_param_ConvArray };
  port80.nbytes = { 32768 };
  port80.offset = {  };
  port80.hasWrite = { true };

  try {
#ifdef POST_CHECK
    CodeState = ENTER_WRAPC_PC;
    check(port78);
    check(port79);
    check(port80);
    check(port5);
    check(port6);
    check(port7);
    check(port8);
    check(port9);
    check(port10);
    check(port11);
    check(port12);
    check(port13);
    check(port14);
    check(port15);
    check(port16);
    check(port17);
    check(port18);
    check(port19);
    check(port20);
    check(port21);
    check(port22);
    check(port23);
    check(port24);
    check(port25);
    check(port26);
    check(port27);
    check(port28);
    check(port29);
    check(port30);
    check(port31);
    check(port32);
    check(port33);
    check(port34);
    check(port35);
    check(port36);
    check(port37);
    check(port38);
    check(port39);
    check(port40);
    check(port41);
    check(port42);
    check(port43);
    check(port44);
    check(port45);
    check(port46);
    check(port47);
    check(port48);
    check(port49);
    check(port50);
    check(port51);
    check(port52);
    check(port53);
    check(port54);
    check(port55);
    check(port56);
    check(port57);
    check(port58);
    check(port59);
    check(port60);
    check(port61);
    check(port62);
    check(port63);
    check(port64);
    check(port65);
    check(port66);
    check(port67);
    check(port68);
    check(port69);
    check(port70);
    check(port71);
    check(port72);
    check(port73);
    check(port74);
    check(port75);
    check(port76);
#else
    static hls::sim::RefTCL tcl("../tv/cdatafile/ref.tcl");
    CodeState = DUMP_INPUTS;
    dump(port0, port0.iwriter, tcl.AESL_transaction);
    dump(port1, port1.iwriter, tcl.AESL_transaction);
    dump(port2, port2.iwriter, tcl.AESL_transaction);
    dump(port3, port3.iwriter, tcl.AESL_transaction);
    dump(port4, port4.iwriter, tcl.AESL_transaction);
    dump(port77, port77.iwriter, tcl.AESL_transaction);
    dump(port78, port78.iwriter, tcl.AESL_transaction);
    dump(port79, port79.iwriter, tcl.AESL_transaction);
    dump(port80, port80.iwriter, tcl.AESL_transaction);
    port0.doTCL(tcl);
    port1.doTCL(tcl);
    port2.doTCL(tcl);
    port3.doTCL(tcl);
    port4.doTCL(tcl);
    port77.doTCL(tcl);
    port78.doTCL(tcl);
    port79.doTCL(tcl);
    port80.doTCL(tcl);
    port9.markSize();
    port10.markSize();
    port11.markSize();
    port12.markSize();
    port17.markSize();
    port18.markSize();
    port19.markSize();
    port20.markSize();
    port25.markSize();
    port26.markSize();
    port27.markSize();
    port28.markSize();
    port33.markSize();
    port34.markSize();
    port35.markSize();
    port36.markSize();
    port41.markSize();
    port42.markSize();
    port43.markSize();
    port44.markSize();
    port49.markSize();
    port50.markSize();
    port51.markSize();
    port52.markSize();
    port57.markSize();
    port58.markSize();
    port59.markSize();
    port60.markSize();
    port65.markSize();
    port66.markSize();
    port67.markSize();
    port68.markSize();
    port73.markSize();
    port74.markSize();
    port75.markSize();
    port76.markSize();
    port9.buffer();
    port10.buffer();
    port11.buffer();
    port12.buffer();
    port17.buffer();
    port18.buffer();
    port19.buffer();
    port20.buffer();
    port25.buffer();
    port26.buffer();
    port27.buffer();
    port28.buffer();
    port33.buffer();
    port34.buffer();
    port35.buffer();
    port36.buffer();
    port41.buffer();
    port42.buffer();
    port43.buffer();
    port44.buffer();
    port49.buffer();
    port50.buffer();
    port51.buffer();
    port52.buffer();
    port57.buffer();
    port58.buffer();
    port59.buffer();
    port60.buffer();
    port65.buffer();
    port66.buffer();
    port67.buffer();
    port68.buffer();
    port73.buffer();
    port74.buffer();
    port75.buffer();
    port76.buffer();
    port5.markSize();
    port6.markSize();
    port7.markSize();
    port8.markSize();
    port13.markSize();
    port14.markSize();
    port15.markSize();
    port16.markSize();
    port21.markSize();
    port22.markSize();
    port23.markSize();
    port24.markSize();
    port29.markSize();
    port30.markSize();
    port31.markSize();
    port32.markSize();
    port37.markSize();
    port38.markSize();
    port39.markSize();
    port40.markSize();
    port45.markSize();
    port46.markSize();
    port47.markSize();
    port48.markSize();
    port53.markSize();
    port54.markSize();
    port55.markSize();
    port56.markSize();
    port61.markSize();
    port62.markSize();
    port63.markSize();
    port64.markSize();
    port69.markSize();
    port70.markSize();
    port71.markSize();
    port72.markSize();
    CodeState = CALL_C_DUT;
    TopPL_hw_stub_wrapper(__xlx_apatb_param_dataIn, __xlx_apatb_param_U, __xlx_apatb_param_S, __xlx_apatb_param_ConvArray, __xlx_apatb_param_ITER, __xlx_apatb_param_sweep_tx1_0_V_data_V, __xlx_apatb_param_sweep_tx1_0_V_keep_V, __xlx_apatb_param_sweep_tx1_0_V_strb_V, __xlx_apatb_param_sweep_tx1_0_V_last_V, __xlx_apatb_param_sweep_rx1_0_V_data_V, __xlx_apatb_param_sweep_rx1_0_V_keep_V, __xlx_apatb_param_sweep_rx1_0_V_strb_V, __xlx_apatb_param_sweep_rx1_0_V_last_V, __xlx_apatb_param_sweep_tx1_1_V_data_V, __xlx_apatb_param_sweep_tx1_1_V_keep_V, __xlx_apatb_param_sweep_tx1_1_V_strb_V, __xlx_apatb_param_sweep_tx1_1_V_last_V, __xlx_apatb_param_sweep_rx1_1_V_data_V, __xlx_apatb_param_sweep_rx1_1_V_keep_V, __xlx_apatb_param_sweep_rx1_1_V_strb_V, __xlx_apatb_param_sweep_rx1_1_V_last_V, __xlx_apatb_param_sweep_tx2_0_V_data_V, __xlx_apatb_param_sweep_tx2_0_V_keep_V, __xlx_apatb_param_sweep_tx2_0_V_strb_V, __xlx_apatb_param_sweep_tx2_0_V_last_V, __xlx_apatb_param_sweep_rx2_0_V_data_V, __xlx_apatb_param_sweep_rx2_0_V_keep_V, __xlx_apatb_param_sweep_rx2_0_V_strb_V, __xlx_apatb_param_sweep_rx2_0_V_last_V, __xlx_apatb_param_sweep_tx2_1_V_data_V, __xlx_apatb_param_sweep_tx2_1_V_keep_V, __xlx_apatb_param_sweep_tx2_1_V_strb_V, __xlx_apatb_param_sweep_tx2_1_V_last_V, __xlx_apatb_param_sweep_rx2_1_V_data_V, __xlx_apatb_param_sweep_rx2_1_V_keep_V, __xlx_apatb_param_sweep_rx2_1_V_strb_V, __xlx_apatb_param_sweep_rx2_1_V_last_V, __xlx_apatb_param_sweep_tx3_0_V_data_V, __xlx_apatb_param_sweep_tx3_0_V_keep_V, __xlx_apatb_param_sweep_tx3_0_V_strb_V, __xlx_apatb_param_sweep_tx3_0_V_last_V, __xlx_apatb_param_sweep_rx3_0_V_data_V, __xlx_apatb_param_sweep_rx3_0_V_keep_V, __xlx_apatb_param_sweep_rx3_0_V_strb_V, __xlx_apatb_param_sweep_rx3_0_V_last_V, __xlx_apatb_param_sweep_tx3_1_V_data_V, __xlx_apatb_param_sweep_tx3_1_V_keep_V, __xlx_apatb_param_sweep_tx3_1_V_strb_V, __xlx_apatb_param_sweep_tx3_1_V_last_V, __xlx_apatb_param_sweep_rx3_1_V_data_V, __xlx_apatb_param_sweep_rx3_1_V_keep_V, __xlx_apatb_param_sweep_rx3_1_V_strb_V, __xlx_apatb_param_sweep_rx3_1_V_last_V, __xlx_apatb_param_sweep_tx4_0_V_data_V, __xlx_apatb_param_sweep_tx4_0_V_keep_V, __xlx_apatb_param_sweep_tx4_0_V_strb_V, __xlx_apatb_param_sweep_tx4_0_V_last_V, __xlx_apatb_param_sweep_rx4_0_V_data_V, __xlx_apatb_param_sweep_rx4_0_V_keep_V, __xlx_apatb_param_sweep_rx4_0_V_strb_V, __xlx_apatb_param_sweep_rx4_0_V_last_V, __xlx_apatb_param_sweep_tx4_1_V_data_V, __xlx_apatb_param_sweep_tx4_1_V_keep_V, __xlx_apatb_param_sweep_tx4_1_V_strb_V, __xlx_apatb_param_sweep_tx4_1_V_last_V, __xlx_apatb_param_sweep_rx4_1_V_data_V, __xlx_apatb_param_sweep_rx4_1_V_keep_V, __xlx_apatb_param_sweep_rx4_1_V_strb_V, __xlx_apatb_param_sweep_rx4_1_V_last_V, __xlx_apatb_param_norm_tx0_V_data_V, __xlx_apatb_param_norm_tx0_V_keep_V, __xlx_apatb_param_norm_tx0_V_strb_V, __xlx_apatb_param_norm_tx0_V_last_V, __xlx_apatb_param_norm_rx0_V_data_V, __xlx_apatb_param_norm_rx0_V_keep_V, __xlx_apatb_param_norm_rx0_V_strb_V, __xlx_apatb_param_norm_rx0_V_last_V);
    port5.buffer();
    port6.buffer();
    port7.buffer();
    port8.buffer();
    port13.buffer();
    port14.buffer();
    port15.buffer();
    port16.buffer();
    port21.buffer();
    port22.buffer();
    port23.buffer();
    port24.buffer();
    port29.buffer();
    port30.buffer();
    port31.buffer();
    port32.buffer();
    port37.buffer();
    port38.buffer();
    port39.buffer();
    port40.buffer();
    port45.buffer();
    port46.buffer();
    port47.buffer();
    port48.buffer();
    port53.buffer();
    port54.buffer();
    port55.buffer();
    port56.buffer();
    port61.buffer();
    port62.buffer();
    port63.buffer();
    port64.buffer();
    port69.buffer();
    port70.buffer();
    port71.buffer();
    port72.buffer();
    dump(port9, tcl.AESL_transaction);
    dump(port10, tcl.AESL_transaction);
    dump(port11, tcl.AESL_transaction);
    dump(port12, tcl.AESL_transaction);
    dump(port17, tcl.AESL_transaction);
    dump(port18, tcl.AESL_transaction);
    dump(port19, tcl.AESL_transaction);
    dump(port20, tcl.AESL_transaction);
    dump(port25, tcl.AESL_transaction);
    dump(port26, tcl.AESL_transaction);
    dump(port27, tcl.AESL_transaction);
    dump(port28, tcl.AESL_transaction);
    dump(port33, tcl.AESL_transaction);
    dump(port34, tcl.AESL_transaction);
    dump(port35, tcl.AESL_transaction);
    dump(port36, tcl.AESL_transaction);
    dump(port41, tcl.AESL_transaction);
    dump(port42, tcl.AESL_transaction);
    dump(port43, tcl.AESL_transaction);
    dump(port44, tcl.AESL_transaction);
    dump(port49, tcl.AESL_transaction);
    dump(port50, tcl.AESL_transaction);
    dump(port51, tcl.AESL_transaction);
    dump(port52, tcl.AESL_transaction);
    dump(port57, tcl.AESL_transaction);
    dump(port58, tcl.AESL_transaction);
    dump(port59, tcl.AESL_transaction);
    dump(port60, tcl.AESL_transaction);
    dump(port65, tcl.AESL_transaction);
    dump(port66, tcl.AESL_transaction);
    dump(port67, tcl.AESL_transaction);
    dump(port68, tcl.AESL_transaction);
    dump(port73, tcl.AESL_transaction);
    dump(port74, tcl.AESL_transaction);
    dump(port75, tcl.AESL_transaction);
    dump(port76, tcl.AESL_transaction);
    port9.doTCL(tcl);
    port10.doTCL(tcl);
    port11.doTCL(tcl);
    port12.doTCL(tcl);
    port17.doTCL(tcl);
    port18.doTCL(tcl);
    port19.doTCL(tcl);
    port20.doTCL(tcl);
    port25.doTCL(tcl);
    port26.doTCL(tcl);
    port27.doTCL(tcl);
    port28.doTCL(tcl);
    port33.doTCL(tcl);
    port34.doTCL(tcl);
    port35.doTCL(tcl);
    port36.doTCL(tcl);
    port41.doTCL(tcl);
    port42.doTCL(tcl);
    port43.doTCL(tcl);
    port44.doTCL(tcl);
    port49.doTCL(tcl);
    port50.doTCL(tcl);
    port51.doTCL(tcl);
    port52.doTCL(tcl);
    port57.doTCL(tcl);
    port58.doTCL(tcl);
    port59.doTCL(tcl);
    port60.doTCL(tcl);
    port65.doTCL(tcl);
    port66.doTCL(tcl);
    port67.doTCL(tcl);
    port68.doTCL(tcl);
    port73.doTCL(tcl);
    port74.doTCL(tcl);
    port75.doTCL(tcl);
    port76.doTCL(tcl);
    CodeState = DUMP_OUTPUTS;
    dump(port78, port78.owriter, tcl.AESL_transaction);
    dump(port79, port79.owriter, tcl.AESL_transaction);
    dump(port80, port80.owriter, tcl.AESL_transaction);
    dump(port5, tcl.AESL_transaction);
    dump(port6, tcl.AESL_transaction);
    dump(port7, tcl.AESL_transaction);
    dump(port8, tcl.AESL_transaction);
    dump(port13, tcl.AESL_transaction);
    dump(port14, tcl.AESL_transaction);
    dump(port15, tcl.AESL_transaction);
    dump(port16, tcl.AESL_transaction);
    dump(port21, tcl.AESL_transaction);
    dump(port22, tcl.AESL_transaction);
    dump(port23, tcl.AESL_transaction);
    dump(port24, tcl.AESL_transaction);
    dump(port29, tcl.AESL_transaction);
    dump(port30, tcl.AESL_transaction);
    dump(port31, tcl.AESL_transaction);
    dump(port32, tcl.AESL_transaction);
    dump(port37, tcl.AESL_transaction);
    dump(port38, tcl.AESL_transaction);
    dump(port39, tcl.AESL_transaction);
    dump(port40, tcl.AESL_transaction);
    dump(port45, tcl.AESL_transaction);
    dump(port46, tcl.AESL_transaction);
    dump(port47, tcl.AESL_transaction);
    dump(port48, tcl.AESL_transaction);
    dump(port53, tcl.AESL_transaction);
    dump(port54, tcl.AESL_transaction);
    dump(port55, tcl.AESL_transaction);
    dump(port56, tcl.AESL_transaction);
    dump(port61, tcl.AESL_transaction);
    dump(port62, tcl.AESL_transaction);
    dump(port63, tcl.AESL_transaction);
    dump(port64, tcl.AESL_transaction);
    dump(port69, tcl.AESL_transaction);
    dump(port70, tcl.AESL_transaction);
    dump(port71, tcl.AESL_transaction);
    dump(port72, tcl.AESL_transaction);
    port5.doTCL(tcl);
    port6.doTCL(tcl);
    port7.doTCL(tcl);
    port8.doTCL(tcl);
    port13.doTCL(tcl);
    port14.doTCL(tcl);
    port15.doTCL(tcl);
    port16.doTCL(tcl);
    port21.doTCL(tcl);
    port22.doTCL(tcl);
    port23.doTCL(tcl);
    port24.doTCL(tcl);
    port29.doTCL(tcl);
    port30.doTCL(tcl);
    port31.doTCL(tcl);
    port32.doTCL(tcl);
    port37.doTCL(tcl);
    port38.doTCL(tcl);
    port39.doTCL(tcl);
    port40.doTCL(tcl);
    port45.doTCL(tcl);
    port46.doTCL(tcl);
    port47.doTCL(tcl);
    port48.doTCL(tcl);
    port53.doTCL(tcl);
    port54.doTCL(tcl);
    port55.doTCL(tcl);
    port56.doTCL(tcl);
    port61.doTCL(tcl);
    port62.doTCL(tcl);
    port63.doTCL(tcl);
    port64.doTCL(tcl);
    port69.doTCL(tcl);
    port70.doTCL(tcl);
    port71.doTCL(tcl);
    port72.doTCL(tcl);
    tcl.AESL_transaction++;
#endif
  } catch (const hls::sim::SimException &e) {
    hls::sim::errExit(e.line, e.msg);
  }
}