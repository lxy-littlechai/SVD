#include "Manager.hpp"

extern "C" {
    void kernel(ap_uint<DDR_WIDTH>* in, ap_uint<DDR_WIDTH>*out,
    axis_stream& tx_0, axis_stream& tx_1, axis_stream& tx_2, axis_stream& tx_3,
    axis_stream& rx_0, axis_stream& rx_1, axis_stream& rx_2, axis_stream& rx_3) {
        #pragma HLS dataflow
        DataManager<4, 16> dataManager;
        dataManager.load(in);
        dataManager.send(tx_0, tx_1, tx_2, tx_3);
        dataManager.receive(rx_0, rx_1, rx_2, rx_3);
        dataManager.store(out);

    };
}