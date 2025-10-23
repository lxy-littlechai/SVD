// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/3_6/src/3_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_2_6_0_0 16
#define LOCK_2_6_1_0 17
#define LOCK_3_6_2_0 50
#define LOCK_3_6_3_0 51
#define LOCK_3_7_0_0 32
#define LOCK_3_7_1_0 33
#define LOCK_3_7_2_0 34
#define LOCK_3_7_3_0 35

// Declare shared memory buffers
v4float buf49[65];
v4float buf49d[65];
v4float buf50[65];
v4float buf50d[65];
v4float buf57[65];
v4float buf57d[65];
v4float buf58[65];
v4float buf58d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf49_buf49d_i[1] = {{(float*)buf49, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf50_buf50d_i[1] = {{(float*)buf50, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf57_buf57d_o[1] = {{(float*)buf57, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf58_buf58d_o[1] = {{(float*)buf58, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_3_6_bounds = sync_buffer[1];

  while (proc_3_6_bounds)
  {

    // Kernel call : i26:orthogonalize<256>
    window_buf49_buf49d_i->setData(*window_buf49_buf49d_i, (float*)buf49, (float*)buf49d, 1-index, 0);
    window_buf49_buf49d_i->acquire(*window_buf49_buf49d_i, LOCK_2_6_0_0, LOCK_2_6_1_0, 1-index);
    window_buf50_buf50d_i->setData(*window_buf50_buf50d_i, (float*)buf50, (float*)buf50d, 1-index, 0);
    window_buf50_buf50d_i->acquire(*window_buf50_buf50d_i, LOCK_3_6_2_0, LOCK_3_6_3_0, 1-index);
    window_buf57_buf57d_o->setData(*window_buf57_buf57d_o, (float*)buf57, (float*)buf57d, 1-index, 0);
    window_buf57_buf57d_o->acquire(*window_buf57_buf57d_o, LOCK_3_7_0_0, LOCK_3_7_1_0, 1-index);
    window_buf58_buf58d_o->setData(*window_buf58_buf58d_o, (float*)buf58, (float*)buf58d, 1-index, 0);
    window_buf58_buf58d_o->acquire(*window_buf58_buf58d_o, LOCK_3_7_2_0, LOCK_3_7_3_0, 1-index);
    orthogonalize<256>(window_buf49_buf49d_i[0],window_buf50_buf50d_i[0],window_buf57_buf57d_o[0],window_buf58_buf58d_o[0]);
    window_buf49_buf49d_i->release(*window_buf49_buf49d_i, LOCK_2_6_0_0, LOCK_2_6_1_0, 1-index);
    window_buf50_buf50d_i->release(*window_buf50_buf50d_i, LOCK_3_6_2_0, LOCK_3_6_3_0, 1-index);
    window_buf57_buf57d_o->release(*window_buf57_buf57d_o, LOCK_3_7_0_0, LOCK_3_7_1_0, 1-index);
    window_buf58_buf58d_o->release(*window_buf58_buf58d_o, LOCK_3_7_2_0, LOCK_3_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_3_6_bounds > 0)
      --proc_3_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}