// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/8_3/src/8_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_8_3_0_3936 16
#define LOCK_8_3_1_2080 17
#define LOCK_9_3_2_0 50
#define LOCK_9_3_3_0 51
#define LOCK_8_4_0_0 32
#define LOCK_8_4_1_0 33
#define LOCK_8_4_2_0 34
#define LOCK_8_4_3_0 35

// Declare shared memory buffers
v4float buf100[9];
v4float buf100d[9];
v4float buf107[9];
v4float buf107d[9];
v4float buf78[9];
v4float buf78d[9];
v4float buf85[9];
v4float buf85d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf78_buf78d_i[1] = {{(float*)buf78, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf85_buf85d_i[1] = {{(float*)buf85, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf100_buf100d_o[1] = {{(float*)buf100, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf107_buf107d_o[1] = {{(float*)buf107, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_8_3_bounds = sync_buffer[1];

  while (proc_8_3_bounds)
  {

    // Kernel call : i40:orthogonalize<32>
    window_buf78_buf78d_i->setData(*window_buf78_buf78d_i, (float*)buf78, (float*)buf78d, 1-index, 0);
    window_buf78_buf78d_i->acquire(*window_buf78_buf78d_i, LOCK_8_3_0_3936, LOCK_8_3_1_2080, 1-index);
    window_buf85_buf85d_i->setData(*window_buf85_buf85d_i, (float*)buf85, (float*)buf85d, 1-index, 0);
    window_buf85_buf85d_i->acquire(*window_buf85_buf85d_i, LOCK_9_3_2_0, LOCK_9_3_3_0, 1-index);
    window_buf100_buf100d_o->setData(*window_buf100_buf100d_o, (float*)buf100, (float*)buf100d, 1-index, 0);
    window_buf100_buf100d_o->acquire(*window_buf100_buf100d_o, LOCK_8_4_0_0, LOCK_8_4_1_0, 1-index);
    window_buf107_buf107d_o->setData(*window_buf107_buf107d_o, (float*)buf107, (float*)buf107d, 1-index, 0);
    window_buf107_buf107d_o->acquire(*window_buf107_buf107d_o, LOCK_8_4_2_0, LOCK_8_4_3_0, 1-index);
    orthogonalize<32>(window_buf78_buf78d_i[0],window_buf85_buf85d_i[0],window_buf100_buf100d_o[0],window_buf107_buf107d_o[0]);
    window_buf78_buf78d_i->release(*window_buf78_buf78d_i, LOCK_8_3_0_3936, LOCK_8_3_1_2080, 1-index);
    window_buf85_buf85d_i->release(*window_buf85_buf85d_i, LOCK_9_3_2_0, LOCK_9_3_3_0, 1-index);
    window_buf100_buf100d_o->release(*window_buf100_buf100d_o, LOCK_8_4_0_0, LOCK_8_4_1_0, 1-index);
    window_buf107_buf107d_o->release(*window_buf107_buf107d_o, LOCK_8_4_2_0, LOCK_8_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_8_3_bounds > 0)
      --proc_8_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}