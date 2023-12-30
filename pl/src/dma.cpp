#include "Manager.hpp"
#include <ap_int.h>
#include <ap_axi_sdata.h>
#include <hls_stream.h>
#include <hls_burst_maxi.h>

extern "C" void dma(ap_uint<DDR_WIDTH>* in, ap_uint<DDR_WIDTH>*out,
    axis_stream& tx_0, axis_stream& tx_1, axis_stream& tx_2, axis_stream& tx_3,
    axis_stream& rx_0, axis_stream& rx_1, axis_stream& rx_2, axis_stream& rx_3) {
    #pragma HLS interface m_axi offset=slave bundle=gmem0 port=in max_read_burst_length=16 num_read_outstanding=64
    #pragma HLS interface s_axilite bundle=control port=in
    #pragma HLS interface m_axi offset=slave bundle=gmem2 port=out max_write_burst_length=1 num_write_outstanding=64
    #pragma HLS interface s_axilite bundle=control port=out
    #pragma HLS interface axis port=tx_0
    #pragma HLS interface axis port=tx_1
    #pragma HLS interface axis port=tx_2
    #pragma HLS interface axis port=tx_3
    #pragma HLS interface axis port=rx_0
    #pragma HLS interface axis port=rx_1
    #pragma HLS interface axis port=rx_2
    #pragma HLS interface axis port=rx_3
    #pragma HLS interface s_axilite bundle=control port=return

        
        DataManager<4, 16> dataManager;
        dataManager.load(in);
        dataManager.send(tx_0, tx_1, tx_2, tx_3);
        dataManager.receive(rx_0, rx_1, rx_2, rx_3);
        dataManager.store(out);

    };