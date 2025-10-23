// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/7_6/src/7_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_6_6_0_0 16
#define LOCK_6_6_1_0 17
#define LOCK_7_6_2_0 50
#define LOCK_7_6_3_0 51
#define LOCK_7_7_0_0 32
#define LOCK_7_7_1_0 33
#define LOCK_7_7_2_0 34
#define LOCK_7_7_3_0 35

// Declare shared memory buffers
v4float buf138[9];
v4float buf138d[9];
v4float buf151[9];
v4float buf151d[9];
v4float buf160[9];
v4float buf160d[9];
v4float buf173[9];
v4float buf173d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf138_buf138d_i[1] = {{(float*)buf138, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf151_buf151d_i[1] = {{(float*)buf151, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf160_buf160d_o[1] = {{(float*)buf160, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf173_buf173d_o[1] = {{(float*)buf173, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_7_6_bounds = sync_buffer[1];

  while (proc_7_6_bounds)
  {

    // Kernel call : i72:orthogonalize<32>
    window_buf138_buf138d_i->setData(*window_buf138_buf138d_i, (float*)buf138, (float*)buf138d, 1-index, 0);
    window_buf138_buf138d_i->acquire(*window_buf138_buf138d_i, LOCK_6_6_0_0, LOCK_6_6_1_0, 1-index);
    window_buf151_buf151d_i->setData(*window_buf151_buf151d_i, (float*)buf151, (float*)buf151d, 1-index, 0);
    window_buf151_buf151d_i->acquire(*window_buf151_buf151d_i, LOCK_7_6_2_0, LOCK_7_6_3_0, 1-index);
    window_buf160_buf160d_o->setData(*window_buf160_buf160d_o, (float*)buf160, (float*)buf160d, 1-index, 0);
    window_buf160_buf160d_o->acquire(*window_buf160_buf160d_o, LOCK_7_7_0_0, LOCK_7_7_1_0, 1-index);
    window_buf173_buf173d_o->setData(*window_buf173_buf173d_o, (float*)buf173, (float*)buf173d, 1-index, 0);
    window_buf173_buf173d_o->acquire(*window_buf173_buf173d_o, LOCK_7_7_2_0, LOCK_7_7_3_0, 1-index);
    orthogonalize<32>(window_buf138_buf138d_i[0],window_buf151_buf151d_i[0],window_buf160_buf160d_o[0],window_buf173_buf173d_o[0]);
    window_buf138_buf138d_i->release(*window_buf138_buf138d_i, LOCK_6_6_0_0, LOCK_6_6_1_0, 1-index);
    window_buf151_buf151d_i->release(*window_buf151_buf151d_i, LOCK_7_6_2_0, LOCK_7_6_3_0, 1-index);
    window_buf160_buf160d_o->release(*window_buf160_buf160d_o, LOCK_7_7_0_0, LOCK_7_7_1_0, 1-index);
    window_buf173_buf173d_o->release(*window_buf173_buf173d_o, LOCK_7_7_2_0, LOCK_7_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_7_6_bounds > 0)
      --proc_7_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}