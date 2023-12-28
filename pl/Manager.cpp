#include "Manager.hpp"
#include <cmath>

template<int COL, int ROW>
void DataManager<COL, ROW>::load(data_t* in) {
    for(int j = 0;j < COL;j ++) {
        for(int i = 0;i < ROW;i ++) {
            buf[j][i] = in[j*ROW + i]; 
        }
    }
}

template<int COL, int ROW>
void DataManager<COL, ROW>::send(axis_stream& tx_0, axis_stream& tx_1, axis_stream& tx_2, axis_stream& tx_3) {
    
    data_t data;
    axis_pkt tmp;
    for(int j = 0;j < COL;j ++) {
        for(int i = 0;i < ROW;i ++) {
            tmp.data = buf[j][i];
            tmp.keep = -1;
            tmp.last = 0;
            switch (j)  {
            case 0:
                tx_0.write(tmp)
                break;
            case 0:
                tx_1.write(tmp)
                break;
            case 0:
                tx_2.write(tmp)
                break;
            case 0:
                tx_3.write(tmp)
                break;
            
            default:
                break;
            }
        }
    }
}

template<int COL, int ROW>
void DataManager<COL, ROW>::receive(axis_stream& rx_0, axis_stream& rx_1, axis_stream& rx_2, axis_stream& rx_3) {
    axis_pkt tmp;
    for(int j = 0;j < COL;j ++) {
        tmp = rx_0.read()
        buf[0][j] = tmp.data;
    }
    for(int j = 0;j < COL;j ++) {
        tmp = rx_1.read()
        buf[1][j] = tmp.data;
    }
    for(int j = 0;j < COL;j ++) {
        tmp = rx_2.read()
        buf[2][j] = tmp.data;
    }
    for(int j = 0;j < COL;j ++) {
        tmp = rx_3.read()
        buf[3][j] = tmp.data;
    }
}

template<int COL, int ROW>
void DataManager<COL, ROW>::store(data_t* out) {
    for(int j = 0;j < COL;j ++) {
        for(int i = 0;i < ROW;i ++) {
            out[j*ROW + i] = buf[j][i];
        }
        
    }
}

ap_uint<32> Helper::generateHeader(unsigned int pktType, unsigned int ID) {
#pragma HLS inline
    ap_uint<32> header=0;
    header(4,0)=ID;
    header(11,5)=0;
    header(14,12)=pktType;
    header[15]=0;
    header(20,16)=-1;//source row
    header(27,21)=-1;//source column
    header(30,28)=0;
    header[31]=header(30,0).xor_reduce()?(ap_uint<1>)0:(ap_uint<1>)1;
    return header;
}
unsigned int Helper::getPacketId(ap_uint<32> header) {
#pragma HLS inline
    ap_uint<32> ID=0;
    ID(4,0)=header(4,0);
    return ID;
}
