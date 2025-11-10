const int ROW = 16;
const int COL = 32;
const int BLOCK_SIZE = 1;
const int BLOCK_NUM = COL/BLOCK_SIZE;
const int BLOCK_PAIR_NUM = BLOCK_NUM/2;
const int parallel_num = 1;
const float EPS = 1e-6;

const int IO_NUM = 1;
const int SUB_BLOCK_SIZE = BLOCK_SIZE/IO_NUM;