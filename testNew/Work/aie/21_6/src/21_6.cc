// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/21_6/src/21_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_20_6_0_0 16
#define LOCK_20_6_1_0 17
#define LOCK_21_6_2_0 50
#define LOCK_21_6_3_0 51
#define LOCK_21_7_0_0 32
#define LOCK_21_7_1_0 33
#define LOCK_21_7_2_0 34
#define LOCK_21_7_3_0 35

// Declare shared memory buffers
v4float buf243[65];
v4float buf243d[65];
v4float buf244[65];
v4float buf244d[65];
v4float buf251[65];
v4float buf251d[65];
v4float buf252[65];
v4float buf252d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf243_buf243d_i[1] = {{(float*)buf243, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf244_buf244d_i[1] = {{(float*)buf244, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf251_buf251d_o[1] = {{(float*)buf251, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf252_buf252d_o[1] = {{(float*)buf252, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_21_6_bounds = sync_buffer[1];

  while (proc_21_6_bounds)
  {

    // Kernel call : i133:orthogonalize<256>
    window_buf243_buf243d_i->setData(*window_buf243_buf243d_i, (float*)buf243, (float*)buf243d, 1-index, 0);
    window_buf243_buf243d_i->acquire(*window_buf243_buf243d_i, LOCK_20_6_0_0, LOCK_20_6_1_0, 1-index);
    window_buf244_buf244d_i->setData(*window_buf244_buf244d_i, (float*)buf244, (float*)buf244d, 1-index, 0);
    window_buf244_buf244d_i->acquire(*window_buf244_buf244d_i, LOCK_21_6_2_0, LOCK_21_6_3_0, 1-index);
    window_buf251_buf251d_o->setData(*window_buf251_buf251d_o, (float*)buf251, (float*)buf251d, 1-index, 0);
    window_buf251_buf251d_o->acquire(*window_buf251_buf251d_o, LOCK_21_7_0_0, LOCK_21_7_1_0, 1-index);
    window_buf252_buf252d_o->setData(*window_buf252_buf252d_o, (float*)buf252, (float*)buf252d, 1-index, 0);
    window_buf252_buf252d_o->acquire(*window_buf252_buf252d_o, LOCK_21_7_2_0, LOCK_21_7_3_0, 1-index);
    orthogonalize<256>(window_buf243_buf243d_i[0],window_buf244_buf244d_i[0],window_buf251_buf251d_o[0],window_buf252_buf252d_o[0]);
    window_buf243_buf243d_i->release(*window_buf243_buf243d_i, LOCK_20_6_0_0, LOCK_20_6_1_0, 1-index);
    window_buf244_buf244d_i->release(*window_buf244_buf244d_i, LOCK_21_6_2_0, LOCK_21_6_3_0, 1-index);
    window_buf251_buf251d_o->release(*window_buf251_buf251d_o, LOCK_21_7_0_0, LOCK_21_7_1_0, 1-index);
    window_buf252_buf252d_o->release(*window_buf252_buf252d_o, LOCK_21_7_2_0, LOCK_21_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_21_6_bounds > 0)
      --proc_21_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}