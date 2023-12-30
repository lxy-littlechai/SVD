#include "../src/Manager.hpp"
#include <iostream>
using namespace std;

int main() {
    const int ROW = 16;
    const int COL = 4;
    data_t in[COL*ROW], out[COL*ROW];
    for(int j = 0;j < COL;j ++) {
        for(int i = 0;i < ROW;i ++) {
            float floatValue = j + 0.1;
            in[j*ROW + i] = *reinterpret_cast<ap_uint<32>*>(&floatValue);
            out[j*ROW + i] = 0;
        }
    }
    axis_stream tx_0, tx_1, tx_2, tx_3;
    axis_stream rx_0, rx_1, rx_2, rx_3;

    DataManager<COL, ROW> dataManager;
    dataManager.load(in);
    dataManager.send(tx_0, tx_1, tx_2, tx_3);
    dataManager.aieSimulator(tx_0, tx_1, tx_2, tx_3, rx_0, rx_1, rx_2, rx_3);
    dataManager.receive(rx_0, rx_1, rx_2, rx_3);
    dataManager.store(out);

    for(int j = 0;j < ROW*COL;j ++) {
        cout << in[j] << " " << out[j] << endl;
    }
}