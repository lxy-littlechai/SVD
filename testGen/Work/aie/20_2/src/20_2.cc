// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/20_2/src/20_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_19_2_0_0 16
#define LOCK_19_2_1_0 17
#define LOCK_20_2_2_0 50
#define LOCK_20_2_3_0 51
#define LOCK_20_1_0_0 0
#define LOCK_20_1_1_0 1
#define LOCK_20_1_2_0 2
#define LOCK_20_1_3_0 3

// Declare shared memory buffers
v4float buf266[9];
v4float buf266d[9];
v4float buf278[9];
v4float buf278d[9];
v4float buf288[9];
v4float buf288d[9];
v4float buf300[9];
v4float buf300d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf266_buf266d_i[1] = {{(float*)buf266, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf278_buf278d_i[1] = {{(float*)buf278, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf288_buf288d_o[1] = {{(float*)buf288, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf300_buf300d_o[1] = {{(float*)buf300, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_20_2_bounds = sync_buffer[1];

  while (proc_20_2_bounds)
  {

    // Kernel call : i139:orthogonalize<32>
    window_buf266_buf266d_i->setData(*window_buf266_buf266d_i, (float*)buf266, (float*)buf266d, 1-index, 0);
    window_buf266_buf266d_i->acquire(*window_buf266_buf266d_i, LOCK_19_2_0_0, LOCK_19_2_1_0, 1-index);
    window_buf278_buf278d_i->setData(*window_buf278_buf278d_i, (float*)buf278, (float*)buf278d, 1-index, 0);
    window_buf278_buf278d_i->acquire(*window_buf278_buf278d_i, LOCK_20_2_2_0, LOCK_20_2_3_0, 1-index);
    window_buf288_buf288d_o->setData(*window_buf288_buf288d_o, (float*)buf288, (float*)buf288d, 1-index, 0);
    window_buf288_buf288d_o->acquire(*window_buf288_buf288d_o, LOCK_20_1_0_0, LOCK_20_1_1_0, 1-index);
    window_buf300_buf300d_o->setData(*window_buf300_buf300d_o, (float*)buf300, (float*)buf300d, 1-index, 0);
    window_buf300_buf300d_o->acquire(*window_buf300_buf300d_o, LOCK_20_1_2_0, LOCK_20_1_3_0, 1-index);
    orthogonalize<32>(window_buf266_buf266d_i[0],window_buf278_buf278d_i[0],window_buf288_buf288d_o[0],window_buf300_buf300d_o[0]);
    window_buf266_buf266d_i->release(*window_buf266_buf266d_i, LOCK_19_2_0_0, LOCK_19_2_1_0, 1-index);
    window_buf278_buf278d_i->release(*window_buf278_buf278d_i, LOCK_20_2_2_0, LOCK_20_2_3_0, 1-index);
    window_buf288_buf288d_o->release(*window_buf288_buf288d_o, LOCK_20_1_0_0, LOCK_20_1_1_0, 1-index);
    window_buf300_buf300d_o->release(*window_buf300_buf300d_o, LOCK_20_1_2_0, LOCK_20_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_20_2_bounds > 0)
      --proc_20_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}