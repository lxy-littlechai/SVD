const int ROW = 128;
const int COL = 128;
const float EPS = 1e-6;

// level-1
const int LEVEL1_BLOCK_SIZE = 64;
const int LEVEL1_BLOCK_NUM = COL/LEVEL1_BLOCK_SIZE;
const int LEVEL1_BLOCK_PAIR_NUM = LEVEL1_BLOCK_NUM/2;

// level-2
const int BLOCK_SIZE = 4;
const int BLOCK_NUM = LEVEL1_BLOCK_SIZE*2/BLOCK_SIZE;
const int BLOCK_PAIR_NUM = BLOCK_NUM/2;
const int parallel_num = 4;


const int IO_NUM = 4;
const int SUB_BLOCK_SIZE = BLOCK_SIZE/IO_NUM;

// AIE
const int CascadeLevel = 1;
const int AIEROW = 128;