// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/32_5/src/32_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_32_5_0_0 16
#define LOCK_32_5_1_0 17
#define LOCK_33_5_2_0 50
#define LOCK_33_5_3_0 51
#define LOCK_32_6_0_3936 32
#define LOCK_32_6_1_2080 33
#define LOCK_32_6_2_0 34
#define LOCK_32_6_3_0 35

// Declare shared memory buffers
v4float buf421[9];
v4float buf421d[9];
v4float buf424[9];
v4float buf424d[9];
v4float buf443[9];
v4float buf443d[9];
v4float buf446[9];
v4float buf446d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf421_buf421d_i[1] = {{(float*)buf421, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf424_buf424d_i[1] = {{(float*)buf424, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf443_buf443d_o[1] = {{(float*)buf443, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf446_buf446d_o[1] = {{(float*)buf446, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_32_5_bounds = sync_buffer[1];

  while (proc_32_5_bounds)
  {

    // Kernel call : i216:orthogonalize<32>
    window_buf421_buf421d_i->setData(*window_buf421_buf421d_i, (float*)buf421, (float*)buf421d, 1-index, 0);
    window_buf421_buf421d_i->acquire(*window_buf421_buf421d_i, LOCK_32_5_0_0, LOCK_32_5_1_0, 1-index);
    window_buf424_buf424d_i->setData(*window_buf424_buf424d_i, (float*)buf424, (float*)buf424d, 1-index, 0);
    window_buf424_buf424d_i->acquire(*window_buf424_buf424d_i, LOCK_33_5_2_0, LOCK_33_5_3_0, 1-index);
    window_buf443_buf443d_o->setData(*window_buf443_buf443d_o, (float*)buf443, (float*)buf443d, 1-index, 0);
    window_buf443_buf443d_o->acquire(*window_buf443_buf443d_o, LOCK_32_6_0_3936, LOCK_32_6_1_2080, 1-index);
    window_buf446_buf446d_o->setData(*window_buf446_buf446d_o, (float*)buf446, (float*)buf446d, 1-index, 0);
    window_buf446_buf446d_o->acquire(*window_buf446_buf446d_o, LOCK_32_6_2_0, LOCK_32_6_3_0, 1-index);
    orthogonalize<32>(window_buf421_buf421d_i[0],window_buf424_buf424d_i[0],window_buf443_buf443d_o[0],window_buf446_buf446d_o[0]);
    window_buf421_buf421d_i->release(*window_buf421_buf421d_i, LOCK_32_5_0_0, LOCK_32_5_1_0, 1-index);
    window_buf424_buf424d_i->release(*window_buf424_buf424d_i, LOCK_33_5_2_0, LOCK_33_5_3_0, 1-index);
    window_buf443_buf443d_o->release(*window_buf443_buf443d_o, LOCK_32_6_0_3936, LOCK_32_6_1_2080, 1-index);
    window_buf446_buf446d_o->release(*window_buf446_buf446d_o, LOCK_32_6_2_0, LOCK_32_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_32_5_bounds > 0)
      --proc_32_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}