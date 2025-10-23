// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/4_1/src/4_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_4_1_2_4256 18
#define LOCK_4_1_3_8032 19
#define LOCK_5_1_0_0 48
#define LOCK_5_1_1_0 49
#define LOCK_4_2_0_0 32
#define LOCK_4_2_1_0 33
#define LOCK_4_2_2_0 34
#define LOCK_4_2_3_0 35

// Declare shared memory buffers
v4float buf28[9];
v4float buf28d[9];
v4float buf31[9];
v4float buf31d[9];
v4float buf50[9];
v4float buf50d[9];
v4float buf53[9];
v4float buf53d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf28_buf28d_i[1] = {{(float*)buf28, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf31_buf31d_i[1] = {{(float*)buf31, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf50_buf50d_o[1] = {{(float*)buf50, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf53_buf53d_o[1] = {{(float*)buf53, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_4_1_bounds = sync_buffer[1];

  while (proc_4_1_bounds)
  {

    // Kernel call : i14:orthogonalize<32>
    window_buf28_buf28d_i->setData(*window_buf28_buf28d_i, (float*)buf28, (float*)buf28d, 1-index, 0);
    window_buf28_buf28d_i->acquire(*window_buf28_buf28d_i, LOCK_4_1_2_4256, LOCK_4_1_3_8032, 1-index);
    window_buf31_buf31d_i->setData(*window_buf31_buf31d_i, (float*)buf31, (float*)buf31d, 1-index, 0);
    window_buf31_buf31d_i->acquire(*window_buf31_buf31d_i, LOCK_5_1_0_0, LOCK_5_1_1_0, 1-index);
    window_buf50_buf50d_o->setData(*window_buf50_buf50d_o, (float*)buf50, (float*)buf50d, 1-index, 0);
    window_buf50_buf50d_o->acquire(*window_buf50_buf50d_o, LOCK_4_2_0_0, LOCK_4_2_1_0, 1-index);
    window_buf53_buf53d_o->setData(*window_buf53_buf53d_o, (float*)buf53, (float*)buf53d, 1-index, 0);
    window_buf53_buf53d_o->acquire(*window_buf53_buf53d_o, LOCK_4_2_2_0, LOCK_4_2_3_0, 1-index);
    orthogonalize<32>(window_buf28_buf28d_i[0],window_buf31_buf31d_i[0],window_buf50_buf50d_o[0],window_buf53_buf53d_o[0]);
    window_buf28_buf28d_i->release(*window_buf28_buf28d_i, LOCK_4_1_2_4256, LOCK_4_1_3_8032, 1-index);
    window_buf31_buf31d_i->release(*window_buf31_buf31d_i, LOCK_5_1_0_0, LOCK_5_1_1_0, 1-index);
    window_buf50_buf50d_o->release(*window_buf50_buf50d_o, LOCK_4_2_0_0, LOCK_4_2_1_0, 1-index);
    window_buf53_buf53d_o->release(*window_buf53_buf53d_o, LOCK_4_2_2_0, LOCK_4_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_4_1_bounds > 0)
      --proc_4_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}