// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/23_5/src/23_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_23_5_2_0 18
#define LOCK_23_5_3_0 19
#define LOCK_24_5_0_0 48
#define LOCK_24_5_1_0 49
#define LOCK_23_6_0_3040 32
#define LOCK_23_6_1_2080 33
#define LOCK_23_6_2_0 34
#define LOCK_23_6_3_0 35

// Declare shared memory buffers
v4float buf237dr[65];
v4float buf237r[65];
v4float buf239[65];
v4float buf239d[65];
v4float buf245[65];
v4float buf245d[65];
v4float buf247[65];
v4float buf247d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf239_buf239d_i[1] = {{(float*)buf239, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf237r_buf237dr_i[1] = {{(float*)buf237r, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf247_buf247d_o[1] = {{(float*)buf247, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf245_buf245d_o[1] = {{(float*)buf245, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_23_5_bounds = sync_buffer[1];

  while (proc_23_5_bounds)
  {

    // Kernel call : i131:orthogonalize<256>
    window_buf239_buf239d_i->setData(*window_buf239_buf239d_i, (float*)buf239, (float*)buf239d, 1-index, 0);
    window_buf239_buf239d_i->acquire(*window_buf239_buf239d_i, LOCK_23_5_2_0, LOCK_23_5_3_0, 1-index);
    window_buf237r_buf237dr_i->setData(*window_buf237r_buf237dr_i, (float*)buf237r, (float*)buf237dr, 1-index, 0);
    window_buf237r_buf237dr_i->acquire(*window_buf237r_buf237dr_i, LOCK_24_5_0_0, LOCK_24_5_1_0, 1-index);
    window_buf247_buf247d_o->setData(*window_buf247_buf247d_o, (float*)buf247, (float*)buf247d, 1-index, 0);
    window_buf247_buf247d_o->acquire(*window_buf247_buf247d_o, LOCK_23_6_0_3040, LOCK_23_6_1_2080, 1-index);
    window_buf245_buf245d_o->setData(*window_buf245_buf245d_o, (float*)buf245, (float*)buf245d, 1-index, 0);
    window_buf245_buf245d_o->acquire(*window_buf245_buf245d_o, LOCK_23_6_2_0, LOCK_23_6_3_0, 1-index);
    orthogonalize<256>(window_buf239_buf239d_i[0],window_buf237r_buf237dr_i[0],window_buf247_buf247d_o[0],window_buf245_buf245d_o[0]);
    window_buf239_buf239d_i->release(*window_buf239_buf239d_i, LOCK_23_5_2_0, LOCK_23_5_3_0, 1-index);
    window_buf237r_buf237dr_i->release(*window_buf237r_buf237dr_i, LOCK_24_5_0_0, LOCK_24_5_1_0, 1-index);
    window_buf247_buf247d_o->release(*window_buf247_buf247d_o, LOCK_23_6_0_3040, LOCK_23_6_1_2080, 1-index);
    window_buf245_buf245d_o->release(*window_buf245_buf245d_o, LOCK_23_6_2_0, LOCK_23_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_23_5_bounds > 0)
      --proc_23_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}