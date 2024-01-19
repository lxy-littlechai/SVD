const int W = 128;

typedef ap_axiu<PLIO_WIDTH, 0, 0, 0> axis_pkt;
typedef hls::stream<axis_pkt> axis_stream;

const int BLOCK_SIZE = 4;
const ROW = 16;
const COL = 16;
const int BLOCK_NUM = COL/BLOCK_SIZE;
const int PU_NUM = BLOCK_NUM/2;

const int ELEM_NUM_PER_PKT = W/32
const int SWEEP_STEP = col-1;