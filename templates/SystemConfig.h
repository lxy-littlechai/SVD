const int ROW = {{ROW}};
const int COL = {{COL}};
const float EPS = 1e-6;

// level-1
const int LEVEL1_BLOCK_SIZE = {{LEVEL1_BLOCK_SIZE}};
const int LEVEL1_BLOCK_NUM = COL/LEVEL1_BLOCK_SIZE;
const int LEVEL1_BLOCK_PAIR_NUM = LEVEL1_BLOCK_NUM/2;

// level-2
const int BLOCK_SIZE = {{BLOCK_SIZE}};
const int BLOCK_NUM = LEVEL1_BLOCK_SIZE*2/BLOCK_SIZE;
const int BLOCK_PAIR_NUM = BLOCK_NUM/2;
const int parallel_num = {{parallel_num}};


const int IO_NUM = {{IO_NUM}};
const int SUB_BLOCK_SIZE = BLOCK_SIZE/IO_NUM;

// AIE
const int CascadeLevel = {{CascadeLevel}};