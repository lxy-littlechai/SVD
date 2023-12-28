; ModuleID = '/home/lxy/Projects/SVD/_x/dma/dma/dma/solution/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<128>" = type { %"struct.ap_int_base<128, false>" }
%"struct.ap_int_base<128, false>" = type { %"struct.ssdm_int<128, false>" }
%"struct.ssdm_int<128, false>" = type { i128 }
%"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>" = type { %"struct.hls::axis<ap_uint<128>, 0, 0, 0, '8', false>" }
%"struct.hls::axis<ap_uint<128>, 0, 0, 0, '8', false>" = type { %"struct.ap_uint<128>", %"struct.ap_uint<16>", %"struct.ap_uint<16>", %"struct.hls::axis_disabled_signal", %"struct.ap_uint<1>", %"struct.hls::axis_disabled_signal", %"struct.hls::axis_disabled_signal" }
%"struct.ap_uint<16>" = type { %"struct.ap_int_base<16, false>" }
%"struct.ap_int_base<16, false>" = type { %"struct.ssdm_int<16, false>" }
%"struct.ssdm_int<16, false>" = type { i16 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }
%"struct.hls::axis_disabled_signal" = type { i8 }

; Function Attrs: noinline willreturn
define void @apatb_dma_ir(%"struct.ap_uint<128>"* noalias nocapture nonnull readonly "maxi" %in, %"struct.ap_uint<128>"* noalias nocapture nonnull "maxi" %out, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias nonnull dereferenceable(32) %tx_0, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias nonnull dereferenceable(32) %tx_1, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias nonnull dereferenceable(32) %tx_2, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias nonnull dereferenceable(32) %tx_3, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias nonnull dereferenceable(32) %rx_0, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias nonnull dereferenceable(32) %rx_1, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias nonnull dereferenceable(32) %rx_2, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias nonnull dereferenceable(32) %rx_3) local_unnamed_addr #0 {
entry:
  %in_copy = alloca i128, align 512
  %out_copy = alloca i128, align 512
  %tx_0_copy.data = alloca i128, align 512
  %tx_0_copy.keep = alloca i16, align 512
  %tx_0_copy.strb = alloca i16, align 512
  %tx_0_copy.last = alloca i1, align 512
  %tx_1_copy.data = alloca i128, align 512
  %tx_1_copy.keep = alloca i16, align 512
  %tx_1_copy.strb = alloca i16, align 512
  %tx_1_copy.last = alloca i1, align 512
  %tx_2_copy.data = alloca i128, align 512
  %tx_2_copy.keep = alloca i16, align 512
  %tx_2_copy.strb = alloca i16, align 512
  %tx_2_copy.last = alloca i1, align 512
  %tx_3_copy.data = alloca i128, align 512
  %tx_3_copy.keep = alloca i16, align 512
  %tx_3_copy.strb = alloca i16, align 512
  %tx_3_copy.last = alloca i1, align 512
  %rx_0_copy.data = alloca i128, align 512
  %rx_0_copy.keep = alloca i16, align 512
  %rx_0_copy.strb = alloca i16, align 512
  %rx_0_copy.last = alloca i1, align 512
  %rx_1_copy.data = alloca i128, align 512
  %rx_1_copy.keep = alloca i16, align 512
  %rx_1_copy.strb = alloca i16, align 512
  %rx_1_copy.last = alloca i1, align 512
  %rx_2_copy.data = alloca i128, align 512
  %rx_2_copy.keep = alloca i16, align 512
  %rx_2_copy.strb = alloca i16, align 512
  %rx_2_copy.last = alloca i1, align 512
  %rx_3_copy.data = alloca i128, align 512
  %rx_3_copy.keep = alloca i16, align 512
  %rx_3_copy.strb = alloca i16, align 512
  %rx_3_copy.last = alloca i1, align 512
  call fastcc void @copy_in(%"struct.ap_uint<128>"* nonnull %in, i128* nonnull align 512 %in_copy, %"struct.ap_uint<128>"* nonnull %out, i128* nonnull align 512 %out_copy, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* nonnull %tx_0, i128* nonnull align 512 %tx_0_copy.data, i16* nonnull align 512 %tx_0_copy.keep, i16* nonnull align 512 %tx_0_copy.strb, i1* nonnull align 512 %tx_0_copy.last, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* nonnull %tx_1, i128* nonnull align 512 %tx_1_copy.data, i16* nonnull align 512 %tx_1_copy.keep, i16* nonnull align 512 %tx_1_copy.strb, i1* nonnull align 512 %tx_1_copy.last, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* nonnull %tx_2, i128* nonnull align 512 %tx_2_copy.data, i16* nonnull align 512 %tx_2_copy.keep, i16* nonnull align 512 %tx_2_copy.strb, i1* nonnull align 512 %tx_2_copy.last, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* nonnull %tx_3, i128* nonnull align 512 %tx_3_copy.data, i16* nonnull align 512 %tx_3_copy.keep, i16* nonnull align 512 %tx_3_copy.strb, i1* nonnull align 512 %tx_3_copy.last, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* nonnull %rx_0, i128* nonnull align 512 %rx_0_copy.data, i16* nonnull align 512 %rx_0_copy.keep, i16* nonnull align 512 %rx_0_copy.strb, i1* nonnull align 512 %rx_0_copy.last, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* nonnull %rx_1, i128* nonnull align 512 %rx_1_copy.data, i16* nonnull align 512 %rx_1_copy.keep, i16* nonnull align 512 %rx_1_copy.strb, i1* nonnull align 512 %rx_1_copy.last, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* nonnull %rx_2, i128* nonnull align 512 %rx_2_copy.data, i16* nonnull align 512 %rx_2_copy.keep, i16* nonnull align 512 %rx_2_copy.strb, i1* nonnull align 512 %rx_2_copy.last, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* nonnull %rx_3, i128* nonnull align 512 %rx_3_copy.data, i16* nonnull align 512 %rx_3_copy.keep, i16* nonnull align 512 %rx_3_copy.strb, i1* nonnull align 512 %rx_3_copy.last)
  call void @apatb_dma_hw(i128* %in_copy, i128* %out_copy, i128* %tx_0_copy.data, i16* %tx_0_copy.keep, i16* %tx_0_copy.strb, i1* %tx_0_copy.last, i128* %tx_1_copy.data, i16* %tx_1_copy.keep, i16* %tx_1_copy.strb, i1* %tx_1_copy.last, i128* %tx_2_copy.data, i16* %tx_2_copy.keep, i16* %tx_2_copy.strb, i1* %tx_2_copy.last, i128* %tx_3_copy.data, i16* %tx_3_copy.keep, i16* %tx_3_copy.strb, i1* %tx_3_copy.last, i128* %rx_0_copy.data, i16* %rx_0_copy.keep, i16* %rx_0_copy.strb, i1* %rx_0_copy.last, i128* %rx_1_copy.data, i16* %rx_1_copy.keep, i16* %rx_1_copy.strb, i1* %rx_1_copy.last, i128* %rx_2_copy.data, i16* %rx_2_copy.keep, i16* %rx_2_copy.strb, i1* %rx_2_copy.last, i128* %rx_3_copy.data, i16* %rx_3_copy.keep, i16* %rx_3_copy.strb, i1* %rx_3_copy.last)
  call void @copy_back(%"struct.ap_uint<128>"* %in, i128* %in_copy, %"struct.ap_uint<128>"* %out, i128* %out_copy, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %tx_0, i128* %tx_0_copy.data, i16* %tx_0_copy.keep, i16* %tx_0_copy.strb, i1* %tx_0_copy.last, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %tx_1, i128* %tx_1_copy.data, i16* %tx_1_copy.keep, i16* %tx_1_copy.strb, i1* %tx_1_copy.last, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %tx_2, i128* %tx_2_copy.data, i16* %tx_2_copy.keep, i16* %tx_2_copy.strb, i1* %tx_2_copy.last, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %tx_3, i128* %tx_3_copy.data, i16* %tx_3_copy.keep, i16* %tx_3_copy.strb, i1* %tx_3_copy.last, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %rx_0, i128* %rx_0_copy.data, i16* %rx_0_copy.keep, i16* %rx_0_copy.strb, i1* %rx_0_copy.last, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %rx_1, i128* %rx_1_copy.data, i16* %rx_1_copy.keep, i16* %rx_1_copy.strb, i1* %rx_1_copy.last, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %rx_2, i128* %rx_2_copy.data, i16* %rx_2_copy.keep, i16* %rx_2_copy.strb, i1* %rx_2_copy.last, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %rx_3, i128* %rx_3_copy.data, i16* %rx_3_copy.keep, i16* %rx_3_copy.strb, i1* %rx_3_copy.last)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_in(%"struct.ap_uint<128>"* noalias readonly "unpacked"="0", i128* noalias nocapture align 512 "unpacked"="1.0", %"struct.ap_uint<128>"* noalias readonly "unpacked"="2", i128* noalias nocapture align 512 "unpacked"="3.0", %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="4", i128* noalias align 512 "unpacked"="5.0" %_V_data_V, i16* noalias align 512 "unpacked"="5.1" %_V_keep_V, i16* noalias align 512 "unpacked"="5.2" %_V_strb_V, i1* noalias align 512 "unpacked"="5.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="6", i128* noalias align 512 "unpacked"="7.0" %_V_data_V1, i16* noalias align 512 "unpacked"="7.1" %_V_keep_V2, i16* noalias align 512 "unpacked"="7.2" %_V_strb_V3, i1* noalias align 512 "unpacked"="7.3" %_V_last_V4, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="8", i128* noalias align 512 "unpacked"="9.0" %_V_data_V2, i16* noalias align 512 "unpacked"="9.1" %_V_keep_V3, i16* noalias align 512 "unpacked"="9.2" %_V_strb_V4, i1* noalias align 512 "unpacked"="9.3" %_V_last_V5, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="10", i128* noalias align 512 "unpacked"="11.0" %_V_data_V3, i16* noalias align 512 "unpacked"="11.1" %_V_keep_V4, i16* noalias align 512 "unpacked"="11.2" %_V_strb_V5, i1* noalias align 512 "unpacked"="11.3" %_V_last_V6, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="12", i128* noalias align 512 "unpacked"="13.0" %_V_data_V15, i16* noalias align 512 "unpacked"="13.1" %_V_keep_V26, i16* noalias align 512 "unpacked"="13.2" %_V_strb_V37, i1* noalias align 512 "unpacked"="13.3" %_V_last_V48, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="14", i128* noalias align 512 "unpacked"="15.0" %_V_data_V159, i16* noalias align 512 "unpacked"="15.1" %_V_keep_V2610, i16* noalias align 512 "unpacked"="15.2" %_V_strb_V3711, i1* noalias align 512 "unpacked"="15.3" %_V_last_V4812, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="16", i128* noalias align 512 "unpacked"="17.0" %_V_data_V15913, i16* noalias align 512 "unpacked"="17.1" %_V_keep_V261014, i16* noalias align 512 "unpacked"="17.2" %_V_strb_V371115, i1* noalias align 512 "unpacked"="17.3" %_V_last_V481216, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="18", i128* noalias align 512 "unpacked"="19.0" %_V_data_V26, i16* noalias align 512 "unpacked"="19.1" %_V_keep_V37, i16* noalias align 512 "unpacked"="19.2" %_V_strb_V48, i1* noalias align 512 "unpacked"="19.3" %_V_last_V59) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<128>.18"(i128* align 512 %1, %"struct.ap_uint<128>"* %0)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<128>.18"(i128* align 512 %3, %"struct.ap_uint<128>"* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>.36"(i128* align 512 %_V_data_V, i16* align 512 %_V_keep_V, i16* align 512 %_V_strb_V, i1* align 512 %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>.36"(i128* align 512 %_V_data_V1, i16* align 512 %_V_keep_V2, i16* align 512 %_V_strb_V3, i1* align 512 %_V_last_V4, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>.36"(i128* align 512 %_V_data_V2, i16* align 512 %_V_keep_V3, i16* align 512 %_V_strb_V4, i1* align 512 %_V_last_V5, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %6)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>.36"(i128* align 512 %_V_data_V3, i16* align 512 %_V_keep_V4, i16* align 512 %_V_strb_V5, i1* align 512 %_V_last_V6, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>.36"(i128* align 512 %_V_data_V15, i16* align 512 %_V_keep_V26, i16* align 512 %_V_strb_V37, i1* align 512 %_V_last_V48, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %8)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>.36"(i128* align 512 %_V_data_V159, i16* align 512 %_V_keep_V2610, i16* align 512 %_V_strb_V3711, i1* align 512 %_V_last_V4812, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %9)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>.36"(i128* align 512 %_V_data_V15913, i16* align 512 %_V_keep_V261014, i16* align 512 %_V_strb_V371115, i1* align 512 %_V_last_V481216, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %10)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>.36"(i128* align 512 %_V_data_V26, i16* align 512 %_V_keep_V37, i16* align 512 %_V_strb_V48, i1* align 512 %_V_last_V59, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %11)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_out(%"struct.ap_uint<128>"* noalias "unpacked"="0", i128* noalias nocapture readonly align 512 "unpacked"="1.0", %"struct.ap_uint<128>"* noalias "unpacked"="2", i128* noalias nocapture readonly align 512 "unpacked"="3.0", %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="4", i128* noalias align 512 "unpacked"="5.0" %_V_data_V, i16* noalias align 512 "unpacked"="5.1" %_V_keep_V, i16* noalias align 512 "unpacked"="5.2" %_V_strb_V, i1* noalias align 512 "unpacked"="5.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="6", i128* noalias align 512 "unpacked"="7.0" %_V_data_V1, i16* noalias align 512 "unpacked"="7.1" %_V_keep_V2, i16* noalias align 512 "unpacked"="7.2" %_V_strb_V3, i1* noalias align 512 "unpacked"="7.3" %_V_last_V4, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="8", i128* noalias align 512 "unpacked"="9.0" %_V_data_V2, i16* noalias align 512 "unpacked"="9.1" %_V_keep_V3, i16* noalias align 512 "unpacked"="9.2" %_V_strb_V4, i1* noalias align 512 "unpacked"="9.3" %_V_last_V5, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="10", i128* noalias align 512 "unpacked"="11.0" %_V_data_V3, i16* noalias align 512 "unpacked"="11.1" %_V_keep_V4, i16* noalias align 512 "unpacked"="11.2" %_V_strb_V5, i1* noalias align 512 "unpacked"="11.3" %_V_last_V6, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="12", i128* noalias align 512 "unpacked"="13.0" %_V_data_V15, i16* noalias align 512 "unpacked"="13.1" %_V_keep_V26, i16* noalias align 512 "unpacked"="13.2" %_V_strb_V37, i1* noalias align 512 "unpacked"="13.3" %_V_last_V48, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="14", i128* noalias align 512 "unpacked"="15.0" %_V_data_V159, i16* noalias align 512 "unpacked"="15.1" %_V_keep_V2610, i16* noalias align 512 "unpacked"="15.2" %_V_strb_V3711, i1* noalias align 512 "unpacked"="15.3" %_V_last_V4812, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="16", i128* noalias align 512 "unpacked"="17.0" %_V_data_V15913, i16* noalias align 512 "unpacked"="17.1" %_V_keep_V261014, i16* noalias align 512 "unpacked"="17.2" %_V_strb_V371115, i1* noalias align 512 "unpacked"="17.3" %_V_last_V481216, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="18", i128* noalias align 512 "unpacked"="19.0" %_V_data_V26, i16* noalias align 512 "unpacked"="19.1" %_V_keep_V37, i16* noalias align 512 "unpacked"="19.2" %_V_strb_V48, i1* noalias align 512 "unpacked"="19.3" %_V_last_V59) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<128>"(%"struct.ap_uint<128>"* %0, i128* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<128>"(%"struct.ap_uint<128>"* %2, i128* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %4, i128* align 512 %_V_data_V, i16* align 512 %_V_keep_V, i16* align 512 %_V_strb_V, i1* align 512 %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %5, i128* align 512 %_V_data_V1, i16* align 512 %_V_keep_V2, i16* align 512 %_V_strb_V3, i1* align 512 %_V_last_V4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %6, i128* align 512 %_V_data_V2, i16* align 512 %_V_keep_V3, i16* align 512 %_V_strb_V4, i1* align 512 %_V_last_V5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %7, i128* align 512 %_V_data_V3, i16* align 512 %_V_keep_V4, i16* align 512 %_V_strb_V5, i1* align 512 %_V_last_V6)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %8, i128* align 512 %_V_data_V15, i16* align 512 %_V_keep_V26, i16* align 512 %_V_strb_V37, i1* align 512 %_V_last_V48)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %9, i128* align 512 %_V_data_V159, i16* align 512 %_V_keep_V2610, i16* align 512 %_V_strb_V3711, i1* align 512 %_V_last_V4812)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %10, i128* align 512 %_V_data_V15913, i16* align 512 %_V_keep_V261014, i16* align 512 %_V_strb_V371115, i1* align 512 %_V_last_V481216)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %11, i128* align 512 %_V_data_V26, i16* align 512 %_V_keep_V37, i16* align 512 %_V_strb_V48, i1* align 512 %_V_last_V59)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<128>"(%"struct.ap_uint<128>"* noalias "unpacked"="0" %dst, i128* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"struct.ap_uint<128>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.0.04 = getelementptr %"struct.ap_uint<128>", %"struct.ap_uint<128>"* %dst, i64 0, i32 0, i32 0, i32 0
  %1 = load i128, i128* %src, align 512
  store i128 %1, i128* %dst.0.0.04, align 16
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<128>.18"(i128* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_uint<128>"* noalias readonly "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"struct.ap_uint<128>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.0.03 = getelementptr %"struct.ap_uint<128>", %"struct.ap_uint<128>"* %src, i64 0, i32 0, i32 0, i32 0
  %1 = load i128, i128* %src.0.0.03, align 16
  store i128 %1, i128* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias %dst, i128* noalias align 512 "unpacked"="1.0" %src_V_data_V, i16* noalias align 512 "unpacked"="1.1" %src_V_keep_V, i16* noalias align 512 "unpacked"="1.2" %src_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %src_V_last_V) unnamed_addr #4 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>.30"(%"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* nonnull %dst, i128* align 512 %src_V_data_V, i16* align 512 %src_V_keep_V, i16* align 512 %src_V_strb_V, i1* align 512 %src_V_last_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>.30"(%"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias nocapture, i128* noalias nocapture align 512 "unpacked"="1.0" %_V_data_V, i16* noalias nocapture align 512 "unpacked"="1.1" %_V_keep_V, i16* noalias nocapture align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture align 512 "unpacked"="1.3" %_V_last_V) unnamed_addr #5 {
entry:
  %1 = alloca i128
  %2 = alloca i16
  %3 = alloca i16
  %4 = alloca i1
  %5 = alloca %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %6 = bitcast i128* %_V_data_V to i8*
  %7 = call i1 @fpga_fifo_not_empty_16(i8* %6)
  br i1 %7, label %push, label %ret

push:                                             ; preds = %empty
  %8 = bitcast i128* %1 to i8*
  %9 = bitcast i128* %_V_data_V to i8*
  call void @fpga_fifo_pop_16(i8* %8, i8* %9)
  %10 = load volatile i128, i128* %1
  %11 = bitcast i16* %3 to i8*
  %12 = bitcast i16* %_V_keep_V to i8*
  call void @fpga_fifo_pop_2(i8* %11, i8* %12)
  %13 = load volatile i16, i16* %3
  %14 = bitcast i16* %2 to i8*
  %15 = bitcast i16* %_V_strb_V to i8*
  call void @fpga_fifo_pop_2(i8* %14, i8* %15)
  %16 = load volatile i16, i16* %2
  %17 = bitcast i1* %4 to i8*
  %18 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %17, i8* %18)
  %19 = bitcast i1* %4 to i8*
  %20 = load i8, i8* %19
  %21 = trunc i8 %20 to i1
  %.fca.0.0.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>" undef, i128 %10, 0, 0, 0, 0, 0
  %.fca.0.1.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>" %.fca.0.0.0.0.0.insert, i16 %13, 0, 1, 0, 0, 0
  %.fca.0.2.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>" %.fca.0.1.0.0.0.insert, i16 %16, 0, 2, 0, 0, 0
  %.fca.0.4.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>" %.fca.0.2.0.0.0.insert, i1 %21, 0, 4, 0, 0, 0
  store %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>" %.fca.0.4.0.0.0.insert, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %5
  %22 = bitcast %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %5 to i8*
  %23 = bitcast %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %0 to i8*
  call void @fpga_fifo_push_32(i8* %22, i8* %23)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>.36"(i128* noalias align 512 "unpacked"="0.0" %dst_V_data_V, i16* noalias align 512 "unpacked"="0.1" %dst_V_keep_V, i16* noalias align 512 "unpacked"="0.2" %dst_V_strb_V, i1* noalias align 512 "unpacked"="0.3" %dst_V_last_V, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias %src) unnamed_addr #4 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>.39"(i128* align 512 %dst_V_data_V, i16* align 512 %dst_V_keep_V, i16* align 512 %dst_V_strb_V, i1* align 512 %dst_V_last_V, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>.39"(i128* noalias nocapture align 512 "unpacked"="0.0" %_V_data_V, i16* noalias nocapture align 512 "unpacked"="0.1" %_V_keep_V, i16* noalias nocapture align 512 "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture align 512 "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias nocapture) unnamed_addr #5 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"
  %2 = alloca i128
  %3 = alloca i16
  %4 = alloca i16
  %5 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %6 = bitcast %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %0 to i8*
  %7 = call i1 @fpga_fifo_not_empty_32(i8* %6)
  br i1 %7, label %push, label %ret

push:                                             ; preds = %empty
  %8 = bitcast %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %1 to i8*
  %9 = bitcast %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_32(i8* %8, i8* %9)
  %10 = load volatile %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>", %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %1
  %.fca.0.0.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>" %10, 0, 0, 0, 0, 0
  %.fca.0.1.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>" %10, 0, 1, 0, 0, 0
  %.fca.0.2.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>" %10, 0, 2, 0, 0, 0
  %.fca.0.4.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>" %10, 0, 4, 0, 0, 0
  store i128 %.fca.0.0.0.0.0.extract, i128* %2
  %11 = bitcast i128* %2 to i8*
  %12 = bitcast i128* %_V_data_V to i8*
  call void @fpga_fifo_push_16(i8* %11, i8* %12)
  store i16 %.fca.0.1.0.0.0.extract, i16* %4
  %13 = bitcast i16* %4 to i8*
  %14 = bitcast i16* %_V_keep_V to i8*
  call void @fpga_fifo_push_2(i8* %13, i8* %14)
  store i16 %.fca.0.2.0.0.0.extract, i16* %3
  %15 = bitcast i16* %3 to i8*
  %16 = bitcast i16* %_V_strb_V to i8*
  call void @fpga_fifo_push_2(i8* %15, i8* %16)
  store i1 %.fca.0.4.0.0.0.extract, i1* %5
  %17 = bitcast i1* %5 to i8*
  %18 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %17, i8* %18)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

declare void @apatb_dma_hw(i128*, i128*, i128*, i16*, i16*, i1*, i128*, i16*, i16*, i1*, i128*, i16*, i16*, i1*, i128*, i16*, i16*, i1*, i128*, i16*, i16*, i1*, i128*, i16*, i16*, i1*, i128*, i16*, i16*, i1*, i128*, i16*, i16*, i1*)

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_back(%"struct.ap_uint<128>"* noalias "unpacked"="0", i128* noalias nocapture readonly align 512 "unpacked"="1.0", %"struct.ap_uint<128>"* noalias "unpacked"="2", i128* noalias nocapture readonly align 512 "unpacked"="3.0", %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="4", i128* noalias align 512 "unpacked"="5.0" %_V_data_V, i16* noalias align 512 "unpacked"="5.1" %_V_keep_V, i16* noalias align 512 "unpacked"="5.2" %_V_strb_V, i1* noalias align 512 "unpacked"="5.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="6", i128* noalias align 512 "unpacked"="7.0" %_V_data_V1, i16* noalias align 512 "unpacked"="7.1" %_V_keep_V2, i16* noalias align 512 "unpacked"="7.2" %_V_strb_V3, i1* noalias align 512 "unpacked"="7.3" %_V_last_V4, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="8", i128* noalias align 512 "unpacked"="9.0" %_V_data_V2, i16* noalias align 512 "unpacked"="9.1" %_V_keep_V3, i16* noalias align 512 "unpacked"="9.2" %_V_strb_V4, i1* noalias align 512 "unpacked"="9.3" %_V_last_V5, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="10", i128* noalias align 512 "unpacked"="11.0" %_V_data_V3, i16* noalias align 512 "unpacked"="11.1" %_V_keep_V4, i16* noalias align 512 "unpacked"="11.2" %_V_strb_V5, i1* noalias align 512 "unpacked"="11.3" %_V_last_V6, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="12", i128* noalias align 512 "unpacked"="13.0" %_V_data_V15, i16* noalias align 512 "unpacked"="13.1" %_V_keep_V26, i16* noalias align 512 "unpacked"="13.2" %_V_strb_V37, i1* noalias align 512 "unpacked"="13.3" %_V_last_V48, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="14", i128* noalias align 512 "unpacked"="15.0" %_V_data_V159, i16* noalias align 512 "unpacked"="15.1" %_V_keep_V2610, i16* noalias align 512 "unpacked"="15.2" %_V_strb_V3711, i1* noalias align 512 "unpacked"="15.3" %_V_last_V4812, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="16", i128* noalias align 512 "unpacked"="17.0" %_V_data_V15913, i16* noalias align 512 "unpacked"="17.1" %_V_keep_V261014, i16* noalias align 512 "unpacked"="17.2" %_V_strb_V371115, i1* noalias align 512 "unpacked"="17.3" %_V_last_V481216, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* noalias "unpacked"="18", i128* noalias align 512 "unpacked"="19.0" %_V_data_V26, i16* noalias align 512 "unpacked"="19.1" %_V_keep_V37, i16* noalias align 512 "unpacked"="19.2" %_V_strb_V48, i1* noalias align 512 "unpacked"="19.3" %_V_last_V59) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<128>"(%"struct.ap_uint<128>"* %2, i128* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %4, i128* align 512 %_V_data_V, i16* align 512 %_V_keep_V, i16* align 512 %_V_strb_V, i1* align 512 %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %5, i128* align 512 %_V_data_V1, i16* align 512 %_V_keep_V2, i16* align 512 %_V_strb_V3, i1* align 512 %_V_last_V4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %6, i128* align 512 %_V_data_V2, i16* align 512 %_V_keep_V3, i16* align 512 %_V_strb_V4, i1* align 512 %_V_last_V5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %7, i128* align 512 %_V_data_V3, i16* align 512 %_V_keep_V4, i16* align 512 %_V_strb_V5, i1* align 512 %_V_last_V6)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %8, i128* align 512 %_V_data_V15, i16* align 512 %_V_keep_V26, i16* align 512 %_V_strb_V37, i1* align 512 %_V_last_V48)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %9, i128* align 512 %_V_data_V159, i16* align 512 %_V_keep_V2610, i16* align 512 %_V_strb_V3711, i1* align 512 %_V_last_V4812)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %10, i128* align 512 %_V_data_V15913, i16* align 512 %_V_keep_V261014, i16* align 512 %_V_strb_V371115, i1* align 512 %_V_last_V481216)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %11, i128* align 512 %_V_data_V26, i16* align 512 %_V_keep_V37, i16* align 512 %_V_strb_V48, i1* align 512 %_V_last_V59)
  ret void
}

define void @dma_hw_stub_wrapper(i128*, i128*, i128*, i16*, i16*, i1*, i128*, i16*, i16*, i1*, i128*, i16*, i16*, i1*, i128*, i16*, i16*, i1*, i128*, i16*, i16*, i1*, i128*, i16*, i16*, i1*, i128*, i16*, i16*, i1*, i128*, i16*, i16*, i1*) #6 {
entry:
  %34 = alloca %"struct.ap_uint<128>"
  %35 = alloca %"struct.ap_uint<128>"
  %36 = alloca %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"
  %37 = alloca %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"
  %38 = alloca %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"
  %39 = alloca %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"
  %40 = alloca %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"
  %41 = alloca %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"
  %42 = alloca %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"
  %43 = alloca %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"
  call void @copy_out(%"struct.ap_uint<128>"* %34, i128* %0, %"struct.ap_uint<128>"* %35, i128* %1, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %36, i128* %2, i16* %3, i16* %4, i1* %5, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %37, i128* %6, i16* %7, i16* %8, i1* %9, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %38, i128* %10, i16* %11, i16* %12, i1* %13, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %39, i128* %14, i16* %15, i16* %16, i1* %17, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %40, i128* %18, i16* %19, i16* %20, i1* %21, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %41, i128* %22, i16* %23, i16* %24, i1* %25, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %42, i128* %26, i16* %27, i16* %28, i1* %29, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %43, i128* %30, i16* %31, i16* %32, i1* %33)
  call void @dma_hw_stub(%"struct.ap_uint<128>"* %34, %"struct.ap_uint<128>"* %35, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %36, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %37, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %38, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %39, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %40, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %41, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %42, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %43)
  call void @copy_in(%"struct.ap_uint<128>"* %34, i128* %0, %"struct.ap_uint<128>"* %35, i128* %1, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %36, i128* %2, i16* %3, i16* %4, i1* %5, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %37, i128* %6, i16* %7, i16* %8, i1* %9, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %38, i128* %10, i16* %11, i16* %12, i1* %13, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %39, i128* %14, i16* %15, i16* %16, i1* %17, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %40, i128* %18, i16* %19, i16* %20, i1* %21, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %41, i128* %22, i16* %23, i16* %24, i1* %25, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %42, i128* %26, i16* %27, i16* %28, i1* %29, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"* %43, i128* %30, i16* %31, i16* %32, i1* %33)
  ret void
}

declare void @dma_hw_stub(%"struct.ap_uint<128>"*, %"struct.ap_uint<128>"*, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<128>, 0, 0, 0, '8', false>, 0>"*)

declare i1 @fpga_fifo_not_empty_32(i8*)

declare i1 @fpga_fifo_not_empty_16(i8*)

declare void @fpga_fifo_pop_32(i8*, i8*)

declare void @fpga_fifo_pop_16(i8*, i8*)

declare void @fpga_fifo_pop_2(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_32(i8*, i8*)

declare void @fpga_fifo_push_16(i8*, i8*)

declare void @fpga_fifo_push_2(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #5 = { argmemonly noinline willreturn "fpga.wrapper.func"="streamcpy_hls" }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
