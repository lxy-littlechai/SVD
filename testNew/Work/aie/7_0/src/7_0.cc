// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/7_0/src/7_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_6_0_0_0 16
#define LOCK_6_0_1_0 17
#define LOCK_6_0_2_0 18
#define LOCK_6_0_3_7136 19
#define LOCK_7_1_0_3040 32
#define LOCK_7_1_1_2080 33
#define LOCK_7_1_2_0 34
#define LOCK_7_1_3_0 35

// Declare shared memory buffers
v4float buf66[65];
v4float buf66d[65];
v4float buf67[65];
v4float buf67d[65];
v4float buf74[65];
v4float buf74d[65];
v4float buf75[65];
v4float buf75d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf66_buf66d_i[1] = {{(float*)buf66, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf67_buf67d_i[1] = {{(float*)buf67, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf74_buf74d_o[1] = {{(float*)buf74, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf75_buf75d_o[1] = {{(float*)buf75, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_7_0_bounds = sync_buffer[1];

  while (proc_7_0_bounds)
  {

    // Kernel call : i37:orthogonalize<256>
    window_buf66_buf66d_i->setData(*window_buf66_buf66d_i, (float*)buf66, (float*)buf66d, 1-index, 0);
    window_buf66_buf66d_i->acquire(*window_buf66_buf66d_i, LOCK_6_0_0_0, LOCK_6_0_1_0, 1-index);
    window_buf67_buf67d_i->setData(*window_buf67_buf67d_i, (float*)buf67, (float*)buf67d, 1-index, 0);
    window_buf67_buf67d_i->acquire(*window_buf67_buf67d_i, LOCK_6_0_2_0, LOCK_6_0_3_7136, 1-index);
    window_buf74_buf74d_o->setData(*window_buf74_buf74d_o, (float*)buf74, (float*)buf74d, 1-index, 0);
    window_buf74_buf74d_o->acquire(*window_buf74_buf74d_o, LOCK_7_1_0_3040, LOCK_7_1_1_2080, 1-index);
    window_buf75_buf75d_o->setData(*window_buf75_buf75d_o, (float*)buf75, (float*)buf75d, 1-index, 0);
    window_buf75_buf75d_o->acquire(*window_buf75_buf75d_o, LOCK_7_1_2_0, LOCK_7_1_3_0, 1-index);
    orthogonalize<256>(window_buf66_buf66d_i[0],window_buf67_buf67d_i[0],window_buf74_buf74d_o[0],window_buf75_buf75d_o[0]);
    window_buf66_buf66d_i->release(*window_buf66_buf66d_i, LOCK_6_0_0_0, LOCK_6_0_1_0, 1-index);
    window_buf67_buf67d_i->release(*window_buf67_buf67d_i, LOCK_6_0_2_0, LOCK_6_0_3_7136, 1-index);
    window_buf74_buf74d_o->release(*window_buf74_buf74d_o, LOCK_7_1_0_3040, LOCK_7_1_1_2080, 1-index);
    window_buf75_buf75d_o->release(*window_buf75_buf75d_o, LOCK_7_1_2_0, LOCK_7_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_7_0_bounds > 0)
      --proc_7_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}