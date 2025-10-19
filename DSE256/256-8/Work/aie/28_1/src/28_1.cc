// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/28_1/src/28_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_28_1_0_3040 16
#define LOCK_28_1_1_2080 17
#define LOCK_29_1_2_0 50
#define LOCK_29_1_3_0 51
#define LOCK_28_0_0_7136 0
#define LOCK_28_0_1_0 1
#define LOCK_28_0_2_0 2
#define LOCK_28_0_3_0 3

// Declare shared memory buffers
v4float buf457[65];
v4float buf457d[65];
v4float buf461[65];
v4float buf461d[65];
v4float buf473[65];
v4float buf473d[65];
v4float buf477[65];
v4float buf477d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf457_buf457d_i[1] = {{(float*)buf457, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf461_buf461d_i[1] = {{(float*)buf461, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf473_buf473d_o[1] = {{(float*)buf473, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf477_buf477d_o[1] = {{(float*)buf477, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_28_1_bounds = sync_buffer[1];

  while (proc_28_1_bounds)
  {

    // Kernel call : i228:orthogonalize<256>
    window_buf457_buf457d_i->setData(*window_buf457_buf457d_i, (float*)buf457, (float*)buf457d, 1-index, 0);
    window_buf457_buf457d_i->acquire(*window_buf457_buf457d_i, LOCK_28_1_0_3040, LOCK_28_1_1_2080, 1-index);
    window_buf461_buf461d_i->setData(*window_buf461_buf461d_i, (float*)buf461, (float*)buf461d, 1-index, 0);
    window_buf461_buf461d_i->acquire(*window_buf461_buf461d_i, LOCK_29_1_2_0, LOCK_29_1_3_0, 1-index);
    window_buf473_buf473d_o->setData(*window_buf473_buf473d_o, (float*)buf473, (float*)buf473d, 1-index, 0);
    window_buf473_buf473d_o->acquire(*window_buf473_buf473d_o, LOCK_28_0_0_7136, LOCK_28_0_1_0, 1-index);
    window_buf477_buf477d_o->setData(*window_buf477_buf477d_o, (float*)buf477, (float*)buf477d, 1-index, 0);
    window_buf477_buf477d_o->acquire(*window_buf477_buf477d_o, LOCK_28_0_2_0, LOCK_28_0_3_0, 1-index);
    orthogonalize<256>(window_buf457_buf457d_i[0],window_buf461_buf461d_i[0],window_buf473_buf473d_o[0],window_buf477_buf477d_o[0]);
    window_buf457_buf457d_i->release(*window_buf457_buf457d_i, LOCK_28_1_0_3040, LOCK_28_1_1_2080, 1-index);
    window_buf461_buf461d_i->release(*window_buf461_buf461d_i, LOCK_29_1_2_0, LOCK_29_1_3_0, 1-index);
    window_buf473_buf473d_o->release(*window_buf473_buf473d_o, LOCK_28_0_0_7136, LOCK_28_0_1_0, 1-index);
    window_buf477_buf477d_o->release(*window_buf477_buf477d_o, LOCK_28_0_2_0, LOCK_28_0_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_28_1_bounds > 0)
      --proc_28_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}