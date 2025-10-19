// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/31_3/src/31_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_31_3_0_7136 16
#define LOCK_31_3_1_0 17
#define LOCK_32_3_2_0 50
#define LOCK_32_3_3_0 51
#define LOCK_31_2_0_7136 0
#define LOCK_31_2_1_0 1
#define LOCK_31_2_2_0 2
#define LOCK_31_2_3_0 3

// Declare shared memory buffers
v4float buf417[65];
v4float buf417d[65];
v4float buf428[65];
v4float buf428d[65];
v4float buf433[65];
v4float buf433d[65];
v4float buf444[65];
v4float buf444d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf417_buf417d_i[1] = {{(float*)buf417, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf428_buf428d_i[1] = {{(float*)buf428, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf433_buf433d_o[1] = {{(float*)buf433, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf444_buf444d_o[1] = {{(float*)buf444, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_31_3_bounds = sync_buffer[1];

  while (proc_31_3_bounds)
  {

    // Kernel call : i215:orthogonalize<256>
    window_buf417_buf417d_i->setData(*window_buf417_buf417d_i, (float*)buf417, (float*)buf417d, 1-index, 0);
    window_buf417_buf417d_i->acquire(*window_buf417_buf417d_i, LOCK_31_3_0_7136, LOCK_31_3_1_0, 1-index);
    window_buf428_buf428d_i->setData(*window_buf428_buf428d_i, (float*)buf428, (float*)buf428d, 1-index, 0);
    window_buf428_buf428d_i->acquire(*window_buf428_buf428d_i, LOCK_32_3_2_0, LOCK_32_3_3_0, 1-index);
    window_buf433_buf433d_o->setData(*window_buf433_buf433d_o, (float*)buf433, (float*)buf433d, 1-index, 0);
    window_buf433_buf433d_o->acquire(*window_buf433_buf433d_o, LOCK_31_2_0_7136, LOCK_31_2_1_0, 1-index);
    window_buf444_buf444d_o->setData(*window_buf444_buf444d_o, (float*)buf444, (float*)buf444d, 1-index, 0);
    window_buf444_buf444d_o->acquire(*window_buf444_buf444d_o, LOCK_31_2_2_0, LOCK_31_2_3_0, 1-index);
    orthogonalize<256>(window_buf417_buf417d_i[0],window_buf428_buf428d_i[0],window_buf433_buf433d_o[0],window_buf444_buf444d_o[0]);
    window_buf417_buf417d_i->release(*window_buf417_buf417d_i, LOCK_31_3_0_7136, LOCK_31_3_1_0, 1-index);
    window_buf428_buf428d_i->release(*window_buf428_buf428d_i, LOCK_32_3_2_0, LOCK_32_3_3_0, 1-index);
    window_buf433_buf433d_o->release(*window_buf433_buf433d_o, LOCK_31_2_0_7136, LOCK_31_2_1_0, 1-index);
    window_buf444_buf444d_o->release(*window_buf444_buf444d_o, LOCK_31_2_2_0, LOCK_31_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_31_3_bounds > 0)
      --proc_31_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}