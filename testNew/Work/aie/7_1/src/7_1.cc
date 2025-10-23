// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/7_1/src/7_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_7_1_0_3040 16
#define LOCK_7_1_1_2080 17
#define LOCK_8_1_2_0 50
#define LOCK_8_1_3_0 51
#define LOCK_7_2_0_7136 32
#define LOCK_7_2_1_0 33
#define LOCK_7_2_2_0 34
#define LOCK_7_2_3_0 35

// Declare shared memory buffers
v4float buf74[65];
v4float buf74d[65];
v4float buf77[65];
v4float buf77d[65];
v4float buf82[65];
v4float buf82d[65];
v4float buf85[65];
v4float buf85d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf74_buf74d_i[1] = {{(float*)buf74, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf77_buf77d_i[1] = {{(float*)buf77, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf82_buf82d_o[1] = {{(float*)buf82, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf85_buf85d_o[1] = {{(float*)buf85, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_7_1_bounds = sync_buffer[1];

  while (proc_7_1_bounds)
  {

    // Kernel call : i41:orthogonalize<256>
    window_buf74_buf74d_i->setData(*window_buf74_buf74d_i, (float*)buf74, (float*)buf74d, 1-index, 0);
    window_buf74_buf74d_i->acquire(*window_buf74_buf74d_i, LOCK_7_1_0_3040, LOCK_7_1_1_2080, 1-index);
    window_buf77_buf77d_i->setData(*window_buf77_buf77d_i, (float*)buf77, (float*)buf77d, 1-index, 0);
    window_buf77_buf77d_i->acquire(*window_buf77_buf77d_i, LOCK_8_1_2_0, LOCK_8_1_3_0, 1-index);
    window_buf82_buf82d_o->setData(*window_buf82_buf82d_o, (float*)buf82, (float*)buf82d, 1-index, 0);
    window_buf82_buf82d_o->acquire(*window_buf82_buf82d_o, LOCK_7_2_0_7136, LOCK_7_2_1_0, 1-index);
    window_buf85_buf85d_o->setData(*window_buf85_buf85d_o, (float*)buf85, (float*)buf85d, 1-index, 0);
    window_buf85_buf85d_o->acquire(*window_buf85_buf85d_o, LOCK_7_2_2_0, LOCK_7_2_3_0, 1-index);
    orthogonalize<256>(window_buf74_buf74d_i[0],window_buf77_buf77d_i[0],window_buf82_buf82d_o[0],window_buf85_buf85d_o[0]);
    window_buf74_buf74d_i->release(*window_buf74_buf74d_i, LOCK_7_1_0_3040, LOCK_7_1_1_2080, 1-index);
    window_buf77_buf77d_i->release(*window_buf77_buf77d_i, LOCK_8_1_2_0, LOCK_8_1_3_0, 1-index);
    window_buf82_buf82d_o->release(*window_buf82_buf82d_o, LOCK_7_2_0_7136, LOCK_7_2_1_0, 1-index);
    window_buf85_buf85d_o->release(*window_buf85_buf85d_o, LOCK_7_2_2_0, LOCK_7_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_7_1_bounds > 0)
      --proc_7_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}