#include <ap_int.h>
#include <hls_stream.h>
#include <ap_axi_sdata.h>

#define DDR_WIDTH 128
#define PLIO_WIDTH 128
#define DATA_WIDTH 128

// typedef hls::stream<ap_uint<PLIO_WIDTH>> axis_stream;

typedef ap_uint<DATA_WIDTH> data_t;
typedef ap_axiu<PLIO_WIDTH, 0, 0, 0> axis_pkt;
typedef hls::stream<axis_pkt> axis_stream;

/*
    DataBlock to do:
        1. data_t buf[] -> data_t* buf, according ro params
        2. iter
        3. ~DataBlock
        4. storage order
*/
template <int COL, int ROW>
class DataBlock
{
public:
    data_t buf[COL][ROW];
    int iter;
};

template <int COL, int ROW>
class DataManager
{
private:
    data_t buf[COL][ROW];

public:
    void load(data_t *in)
    {
        for (int j = 0; j < COL; j++)
        {
            for (int i = 0; i < ROW; i++)
            {
                buf[j][i] = in[j * ROW + i];
            }
        }
    }
    void send(axis_stream &tx_0, axis_stream &tx_1, axis_stream &tx_2, axis_stream &tx_3)
    {
        data_t data;
        axis_pkt tmp;
        for (int j = 0; j < COL; j++)
        {
            for (int i = 0; i < ROW; i++)
            {
                tmp.data = buf[j][i];
                tmp.keep = -1;
                tmp.last = 0;
                switch (j)
                {
                case 0:
                    tx_0.write(tmp); break;
                case 1:
                    tx_1.write(tmp); break;
                case 2:
                    tx_2.write(tmp); break;
                case 3:
                    tx_3.write(tmp); break;

                default:
                    break;
                }
            }
        }
    }
    void receive(axis_stream &rx_0, axis_stream &rx_1, axis_stream &rx_2, axis_stream &rx_3)
    {
        axis_pkt tmp;
        for (int j = 0; j < COL; j++)
        {
            tmp = rx_0.read();
                      buf[0][j] = tmp.data;
        }
        for (int j = 0; j < COL; j++)
        {
            tmp = rx_1.read();
                      buf[1][j] = tmp.data;
        }
        for (int j = 0; j < COL; j++)
        {
            tmp = rx_2.read();
                      buf[2][j] = tmp.data;
        }
        for (int j = 0; j < COL; j++)
        {
            tmp = rx_3.read();
                      buf[3][j] = tmp.data;
        }
    }
    void store(data_t *out)
    {
        for (int j = 0; j < COL; j++)
        {
            for (int i = 0; i < ROW; i++)
            {
                out[j * ROW + i] = buf[j][i];
            }
        }
    }
    void aieSimulator(axis_stream &tx_0, axis_stream &tx_1, axis_stream &tx_2, axis_stream &tx_3,
                      axis_stream &rx_0, axis_stream &rx_1, axis_stream &rx_2, axis_stream &rx_3) {
                        axis_pkt tx, rx;
                        for(int i = 0;i < COL;i ++) {
                            tx = tx_0.read();
                            rx.data = tx.data;
                            rx.keep = -1;
                            rx.last = 0;
                            rx_0.write(rx);

                            tx = tx_1.read();
                            rx.data = tx.data;
                            rx.keep = -1;
                            rx.last = 0;
                            rx_1.write(rx);

                            tx = tx_2.read();
                            rx.data = tx.data;
                            rx.keep = -1;
                            rx.last = 0;
                            rx_2.write(rx);

                            tx = tx_3.read();
                            rx.data = tx.data;
                            rx.keep = -1;
                            rx.last = 0;
                            rx_3.write(rx);
                        }
                      }
};

class Helper
{
public:
    static ap_uint<32> generateHeader(unsigned int pktType, unsigned int ID)
    {
#pragma HLS inline
        ap_uint<32> header = 0;
        header(4, 0) = ID;
        header(11, 5) = 0;
        header(14, 12) = pktType;
        header[15] = 0;
        header(20, 16) = -1; // source row
        header(27, 21) = -1; // source column
        header(30, 28) = 0;
        header[31] = header(30, 0).xor_reduce() ? (ap_uint<1>)0 : (ap_uint<1>)1;
        return header;
    }
    static unsigned int getPacketId(ap_uint<32> header)
    {
#pragma HLS inline
        ap_uint<32> ID = 0;
        ID(4, 0) = header(4, 0);
        return ID;
    }
};