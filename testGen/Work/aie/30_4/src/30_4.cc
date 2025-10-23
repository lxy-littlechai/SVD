// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/30_4/src/30_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_29_4_0_0 16
#define LOCK_29_4_1_0 17
#define LOCK_30_4_2_0 50
#define LOCK_30_4_3_0 51
#define LOCK_30_5_0_8032 32
#define LOCK_30_5_1_0 33
#define LOCK_30_5_2_0 34
#define LOCK_30_5_3_0 35

// Declare shared memory buffers
v4float buf403[9];
v4float buf403d[9];
v4float buf408[9];
v4float buf408d[9];
v4float buf425[9];
v4float buf425d[9];
v4float buf430[9];
v4float buf430d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf403_buf403d_i[1] = {{(float*)buf403, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf408_buf408d_i[1] = {{(float*)buf408, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf425_buf425d_o[1] = {{(float*)buf425, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf430_buf430d_o[1] = {{(float*)buf430, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_30_4_bounds = sync_buffer[1];

  while (proc_30_4_bounds)
  {

    // Kernel call : i203:orthogonalize<32>
    window_buf403_buf403d_i->setData(*window_buf403_buf403d_i, (float*)buf403, (float*)buf403d, 1-index, 0);
    window_buf403_buf403d_i->acquire(*window_buf403_buf403d_i, LOCK_29_4_0_0, LOCK_29_4_1_0, 1-index);
    window_buf408_buf408d_i->setData(*window_buf408_buf408d_i, (float*)buf408, (float*)buf408d, 1-index, 0);
    window_buf408_buf408d_i->acquire(*window_buf408_buf408d_i, LOCK_30_4_2_0, LOCK_30_4_3_0, 1-index);
    window_buf425_buf425d_o->setData(*window_buf425_buf425d_o, (float*)buf425, (float*)buf425d, 1-index, 0);
    window_buf425_buf425d_o->acquire(*window_buf425_buf425d_o, LOCK_30_5_0_8032, LOCK_30_5_1_0, 1-index);
    window_buf430_buf430d_o->setData(*window_buf430_buf430d_o, (float*)buf430, (float*)buf430d, 1-index, 0);
    window_buf430_buf430d_o->acquire(*window_buf430_buf430d_o, LOCK_30_5_2_0, LOCK_30_5_3_0, 1-index);
    orthogonalize<32>(window_buf403_buf403d_i[0],window_buf408_buf408d_i[0],window_buf425_buf425d_o[0],window_buf430_buf430d_o[0]);
    window_buf403_buf403d_i->release(*window_buf403_buf403d_i, LOCK_29_4_0_0, LOCK_29_4_1_0, 1-index);
    window_buf408_buf408d_i->release(*window_buf408_buf408d_i, LOCK_30_4_2_0, LOCK_30_4_3_0, 1-index);
    window_buf425_buf425d_o->release(*window_buf425_buf425d_o, LOCK_30_5_0_8032, LOCK_30_5_1_0, 1-index);
    window_buf430_buf430d_o->release(*window_buf430_buf430d_o, LOCK_30_5_2_0, LOCK_30_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_30_4_bounds > 0)
      --proc_30_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}