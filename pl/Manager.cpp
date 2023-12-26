#include "Manager.hpp"
#include <cmath>

template<int COL, int ROW>
void DataManager<COL, ROW>::load(data_t* in, axis_stream& dataIn) {
    for(int j = 0;j < COL;j ++) {
        for(int i = 0;i < ROW;i ++) {
            dataIn.write(in);
        }
    }
}

template<int COL, int ROW>
void DataManager<COL, ROW>::send(axis_stream& dataIn, axis_pkt_stream& sender) {
    axis_pkt tmp;
    data_t data;
    for(int j = 0;j < COL;j ++) {
        ap_uint<32> header = Helper::generateHeader(0, j);
        data(31, 0) = header;
        tmp.data = data;
        tmp.keep = -1;
        tmp.last = 0;
        sender.write(tmp);

        for(int i = 0;i < ROW-1;i ++) {
        #pragma HLS PIPELINE II = 1
            data = dataIn.read(in);
            tmp.data = data;
            tmp.keep = -1;
            tmp.last = 0;
            sender.write(tmp);
        }
        data(31, 0) = dataIn.read(in);
        tmp.data = data;
        tmp.keep = -1;
        tmp.last = 1;
        sender.write(tmp);
    }
}

template<int COL, int ROW>
void DataManager<COL, ROW>::receive(axis_stream& dataOut, axis_pkt_stream& receiver) {
    ap_uint<32> header;
    data_t data;
    header = receiver.read()
    for(int j = 0;j < COL;j ++) {
        data = receiver.read();
        dataOut.write(data);

    }
}

template<int COL, int ROW>
void DataManager<COL, ROW>::store(data_t* out, axis_stream& dataOut) {
    for(int j = 0;j < COL;j ++) {
        out[j] = dataOut.read();
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
