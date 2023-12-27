#include <ap_int.h>
#include <hls_stream.h>
#include <ap_axi_sdata.h>

#define DDR_WIDTH 32
#define PLIO_WIDTH 32
#define DATA_WIDTH 32

typedef hls::stream<ap_uint<PLIO_WIDTH>> axis_stream;

typedef ap_uint<DATA_WIDTH> data_t;
typedef ap_axiu<PLIO_WIDTH, 0, 0, 0> axis_pkt;
typedef hls::stream<axis_pkt> axis_pkt_stream;

/*
    DataBlock to do:
        1. data_t buf[] -> data_t* buf, according ro params
        2. iter 
        3. ~DataBlock
        4. storage order
*/
template<int COL, int ROW>
class DataBlock {
private:
    data_t buf[COL][ROW];
    int iter;

public:
    
};

template<int COL, int ROW>
class DataManager {
private:
    DataBlock dataBlock<COL, ROW>;

public:
    void load(data_t* in);
    void send(axis_stream& tx_0, axis_stream& tx_1, axis_stream& tx_2, axis_stream& tx_3);
    void receive(axis_stream& rx_0, axis_stream& rx_1, axis_stream& rx_2, axis_stream& rx_3);
    void store(data_t* out);

};

class Helper {
public:
    static ap_uint<32> generateHeader(unsigned int pktType, unsigned int ID);
    static unsigned int getPacketId(ap_uint<32> header);
};