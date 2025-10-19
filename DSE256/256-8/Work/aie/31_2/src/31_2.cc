// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/31_2/src/31_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_30_2_0_7136 16
#define LOCK_30_2_1_0 17
#define LOCK_31_2_2_0 50
#define LOCK_31_2_3_0 51
#define LOCK_31_1_0_0 0
#define LOCK_31_1_1_0 1
#define LOCK_31_1_2_0 2
#define LOCK_31_1_3_0 3

// Declare shared memory buffers
v4float buf435[65];
v4float buf435d[65];
v4float buf444[65];
v4float buf444d[65];
v4float buf451[65];
v4float buf451d[65];
v4float buf460[65];
v4float buf460d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf435_buf435d_i[1] = {{(float*)buf435, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf444_buf444d_i[1] = {{(float*)buf444, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf451_buf451d_o[1] = {{(float*)buf451, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf460_buf460d_o[1] = {{(float*)buf460, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_31_2_bounds = sync_buffer[1];

  while (proc_31_2_bounds)
  {

    // Kernel call : i223:orthogonalize<256>
    window_buf435_buf435d_i->setData(*window_buf435_buf435d_i, (float*)buf435, (float*)buf435d, 1-index, 0);
    window_buf435_buf435d_i->acquire(*window_buf435_buf435d_i, LOCK_30_2_0_7136, LOCK_30_2_1_0, 1-index);
    window_buf444_buf444d_i->setData(*window_buf444_buf444d_i, (float*)buf444, (float*)buf444d, 1-index, 0);
    window_buf444_buf444d_i->acquire(*window_buf444_buf444d_i, LOCK_31_2_2_0, LOCK_31_2_3_0, 1-index);
    window_buf451_buf451d_o->setData(*window_buf451_buf451d_o, (float*)buf451, (float*)buf451d, 1-index, 0);
    window_buf451_buf451d_o->acquire(*window_buf451_buf451d_o, LOCK_31_1_0_0, LOCK_31_1_1_0, 1-index);
    window_buf460_buf460d_o->setData(*window_buf460_buf460d_o, (float*)buf460, (float*)buf460d, 1-index, 0);
    window_buf460_buf460d_o->acquire(*window_buf460_buf460d_o, LOCK_31_1_2_0, LOCK_31_1_3_0, 1-index);
    orthogonalize<256>(window_buf435_buf435d_i[0],window_buf444_buf444d_i[0],window_buf451_buf451d_o[0],window_buf460_buf460d_o[0]);
    window_buf435_buf435d_i->release(*window_buf435_buf435d_i, LOCK_30_2_0_7136, LOCK_30_2_1_0, 1-index);
    window_buf444_buf444d_i->release(*window_buf444_buf444d_i, LOCK_31_2_2_0, LOCK_31_2_3_0, 1-index);
    window_buf451_buf451d_o->release(*window_buf451_buf451d_o, LOCK_31_1_0_0, LOCK_31_1_1_0, 1-index);
    window_buf460_buf460d_o->release(*window_buf460_buf460d_o, LOCK_31_1_2_0, LOCK_31_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_31_2_bounds > 0)
      --proc_31_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}