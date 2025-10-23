// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/8_6/src/8_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_7_6_0_0 16
#define LOCK_7_6_1_0 17
#define LOCK_8_6_2_0 50
#define LOCK_8_6_3_0 51
#define LOCK_8_7_0_0 32
#define LOCK_8_7_1_0 33
#define LOCK_8_7_2_0 34
#define LOCK_8_7_3_0 35

// Declare shared memory buffers
v4float buf113[65];
v4float buf113d[65];
v4float buf114[65];
v4float buf114d[65];
v4float buf121[65];
v4float buf121d[65];
v4float buf122[65];
v4float buf122d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf113_buf113d_i[1] = {{(float*)buf113, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf114_buf114d_i[1] = {{(float*)buf114, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf121_buf121d_o[1] = {{(float*)buf121, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf122_buf122d_o[1] = {{(float*)buf122, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_8_6_bounds = sync_buffer[1];

  while (proc_8_6_bounds)
  {

    // Kernel call : i62:orthogonalize<256>
    window_buf113_buf113d_i->setData(*window_buf113_buf113d_i, (float*)buf113, (float*)buf113d, 1-index, 0);
    window_buf113_buf113d_i->acquire(*window_buf113_buf113d_i, LOCK_7_6_0_0, LOCK_7_6_1_0, 1-index);
    window_buf114_buf114d_i->setData(*window_buf114_buf114d_i, (float*)buf114, (float*)buf114d, 1-index, 0);
    window_buf114_buf114d_i->acquire(*window_buf114_buf114d_i, LOCK_8_6_2_0, LOCK_8_6_3_0, 1-index);
    window_buf121_buf121d_o->setData(*window_buf121_buf121d_o, (float*)buf121, (float*)buf121d, 1-index, 0);
    window_buf121_buf121d_o->acquire(*window_buf121_buf121d_o, LOCK_8_7_0_0, LOCK_8_7_1_0, 1-index);
    window_buf122_buf122d_o->setData(*window_buf122_buf122d_o, (float*)buf122, (float*)buf122d, 1-index, 0);
    window_buf122_buf122d_o->acquire(*window_buf122_buf122d_o, LOCK_8_7_2_0, LOCK_8_7_3_0, 1-index);
    orthogonalize<256>(window_buf113_buf113d_i[0],window_buf114_buf114d_i[0],window_buf121_buf121d_o[0],window_buf122_buf122d_o[0]);
    window_buf113_buf113d_i->release(*window_buf113_buf113d_i, LOCK_7_6_0_0, LOCK_7_6_1_0, 1-index);
    window_buf114_buf114d_i->release(*window_buf114_buf114d_i, LOCK_8_6_2_0, LOCK_8_6_3_0, 1-index);
    window_buf121_buf121d_o->release(*window_buf121_buf121d_o, LOCK_8_7_0_0, LOCK_8_7_1_0, 1-index);
    window_buf122_buf122d_o->release(*window_buf122_buf122d_o, LOCK_8_7_2_0, LOCK_8_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_8_6_bounds > 0)
      --proc_8_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}