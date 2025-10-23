// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/1_1/src/1_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_1_1_4_7136 20
#define LOCK_1_1_5_6080 21
#define LOCK_2_1_2_1056 50
#define LOCK_2_1_3_1056 51
#define LOCK_1_2_0_3040 32
#define LOCK_1_2_1_2080 33
#define LOCK_1_2_2_0 34
#define LOCK_1_2_3_0 35

// Declare shared memory buffers
v4float buf11[65];
v4float buf11d[65];
v4float buf16[65];
v4float buf16d[65];
v4float buf19[65];
v4float buf19d[65];
v4float buf8[65];
v4float buf8d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf8_buf8d_i[1] = {{(float*)buf8, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf11_buf11d_i[1] = {{(float*)buf11, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf16_buf16d_o[1] = {{(float*)buf16, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf19_buf19d_o[1] = {{(float*)buf19, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_1_1_bounds = sync_buffer[1];

  while (proc_1_1_bounds)
  {

    // Kernel call : i4:orthogonalize<256>
    window_buf8_buf8d_i->setData(*window_buf8_buf8d_i, (float*)buf8, (float*)buf8d, 1-index, 0);
    window_buf8_buf8d_i->acquire(*window_buf8_buf8d_i, LOCK_1_1_4_7136, LOCK_1_1_5_6080, 1-index);
    window_buf11_buf11d_i->setData(*window_buf11_buf11d_i, (float*)buf11, (float*)buf11d, 1-index, 0);
    window_buf11_buf11d_i->acquire(*window_buf11_buf11d_i, LOCK_2_1_2_1056, LOCK_2_1_3_1056, 1-index);
    window_buf16_buf16d_o->setData(*window_buf16_buf16d_o, (float*)buf16, (float*)buf16d, 1-index, 0);
    window_buf16_buf16d_o->acquire(*window_buf16_buf16d_o, LOCK_1_2_0_3040, LOCK_1_2_1_2080, 1-index);
    window_buf19_buf19d_o->setData(*window_buf19_buf19d_o, (float*)buf19, (float*)buf19d, 1-index, 0);
    window_buf19_buf19d_o->acquire(*window_buf19_buf19d_o, LOCK_1_2_2_0, LOCK_1_2_3_0, 1-index);
    orthogonalize<256>(window_buf8_buf8d_i[0],window_buf11_buf11d_i[0],window_buf16_buf16d_o[0],window_buf19_buf19d_o[0]);
    window_buf8_buf8d_i->release(*window_buf8_buf8d_i, LOCK_1_1_4_7136, LOCK_1_1_5_6080, 1-index);
    window_buf11_buf11d_i->release(*window_buf11_buf11d_i, LOCK_2_1_2_1056, LOCK_2_1_3_1056, 1-index);
    window_buf16_buf16d_o->release(*window_buf16_buf16d_o, LOCK_1_2_0_3040, LOCK_1_2_1_2080, 1-index);
    window_buf19_buf19d_o->release(*window_buf19_buf19d_o, LOCK_1_2_2_0, LOCK_1_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_1_1_bounds > 0)
      --proc_1_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}