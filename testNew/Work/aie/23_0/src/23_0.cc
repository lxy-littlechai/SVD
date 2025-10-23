// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/23_0/src/23_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_23_0_0_0 48
#define LOCK_23_0_1_0 49
#define LOCK_23_0_2_0 50
#define LOCK_23_0_3_0 51
#define LOCK_23_1_0_7136 32
#define LOCK_23_1_1_0 33
#define LOCK_23_1_2_0 34
#define LOCK_23_1_3_0 35

// Declare shared memory buffers
v4float buf198[65];
v4float buf198d[65];
v4float buf199[65];
v4float buf199d[65];
v4float buf206[65];
v4float buf206d[65];
v4float buf207[65];
v4float buf207d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf198_buf198d_i[1] = {{(float*)buf198, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf199_buf199d_i[1] = {{(float*)buf199, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf206_buf206d_o[1] = {{(float*)buf206, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf207_buf207d_o[1] = {{(float*)buf207, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_23_0_bounds = sync_buffer[1];

  while (proc_23_0_bounds)
  {

    // Kernel call : i111:orthogonalize<256>
    window_buf198_buf198d_i->setData(*window_buf198_buf198d_i, (float*)buf198, (float*)buf198d, 1-index, 0);
    window_buf198_buf198d_i->acquire(*window_buf198_buf198d_i, LOCK_23_0_0_0, LOCK_23_0_1_0, 1-index);
    window_buf199_buf199d_i->setData(*window_buf199_buf199d_i, (float*)buf199, (float*)buf199d, 1-index, 0);
    window_buf199_buf199d_i->acquire(*window_buf199_buf199d_i, LOCK_23_0_2_0, LOCK_23_0_3_0, 1-index);
    window_buf206_buf206d_o->setData(*window_buf206_buf206d_o, (float*)buf206, (float*)buf206d, 1-index, 0);
    window_buf206_buf206d_o->acquire(*window_buf206_buf206d_o, LOCK_23_1_0_7136, LOCK_23_1_1_0, 1-index);
    window_buf207_buf207d_o->setData(*window_buf207_buf207d_o, (float*)buf207, (float*)buf207d, 1-index, 0);
    window_buf207_buf207d_o->acquire(*window_buf207_buf207d_o, LOCK_23_1_2_0, LOCK_23_1_3_0, 1-index);
    orthogonalize<256>(window_buf198_buf198d_i[0],window_buf199_buf199d_i[0],window_buf206_buf206d_o[0],window_buf207_buf207d_o[0]);
    window_buf198_buf198d_i->release(*window_buf198_buf198d_i, LOCK_23_0_0_0, LOCK_23_0_1_0, 1-index);
    window_buf199_buf199d_i->release(*window_buf199_buf199d_i, LOCK_23_0_2_0, LOCK_23_0_3_0, 1-index);
    window_buf206_buf206d_o->release(*window_buf206_buf206d_o, LOCK_23_1_0_7136, LOCK_23_1_1_0, 1-index);
    window_buf207_buf207d_o->release(*window_buf207_buf207d_o, LOCK_23_1_2_0, LOCK_23_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_23_0_bounds > 0)
      --proc_23_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}