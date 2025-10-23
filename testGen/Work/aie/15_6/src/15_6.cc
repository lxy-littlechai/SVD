// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/15_6/src/15_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_14_6_0_3936 16
#define LOCK_14_6_1_2080 17
#define LOCK_15_6_2_2080 50
#define LOCK_15_6_3_0 51
#define LOCK_15_5_2_8032 2
#define LOCK_15_5_3_0 3
#define LOCK_15_5_0_0 0
#define LOCK_15_5_1_0 1

// Declare shared memory buffers
v4float buf179[9];
v4float buf179d[9];
v4float buf189[9];
v4float buf189d[9];
v4float buf201[9];
v4float buf201d[9];
v4float buf211[9];
v4float buf211d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf179_buf179d_i[1] = {{(float*)buf179, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf189_buf189d_i[1] = {{(float*)buf189, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf201_buf201d_o[1] = {{(float*)buf201, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf211_buf211d_o[1] = {{(float*)buf211, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_15_6_bounds = sync_buffer[1];

  while (proc_15_6_bounds)
  {

    // Kernel call : i90:orthogonalize<32>
    window_buf179_buf179d_i->setData(*window_buf179_buf179d_i, (float*)buf179, (float*)buf179d, 1-index, 0);
    window_buf179_buf179d_i->acquire(*window_buf179_buf179d_i, LOCK_14_6_0_3936, LOCK_14_6_1_2080, 1-index);
    window_buf189_buf189d_i->setData(*window_buf189_buf189d_i, (float*)buf189, (float*)buf189d, 1-index, 0);
    window_buf189_buf189d_i->acquire(*window_buf189_buf189d_i, LOCK_15_6_2_2080, LOCK_15_6_3_0, 1-index);
    window_buf201_buf201d_o->setData(*window_buf201_buf201d_o, (float*)buf201, (float*)buf201d, 1-index, 0);
    window_buf201_buf201d_o->acquire(*window_buf201_buf201d_o, LOCK_15_5_2_8032, LOCK_15_5_3_0, 1-index);
    window_buf211_buf211d_o->setData(*window_buf211_buf211d_o, (float*)buf211, (float*)buf211d, 1-index, 0);
    window_buf211_buf211d_o->acquire(*window_buf211_buf211d_o, LOCK_15_5_0_0, LOCK_15_5_1_0, 1-index);
    orthogonalize<32>(window_buf179_buf179d_i[0],window_buf189_buf189d_i[0],window_buf201_buf201d_o[0],window_buf211_buf211d_o[0]);
    window_buf179_buf179d_i->release(*window_buf179_buf179d_i, LOCK_14_6_0_3936, LOCK_14_6_1_2080, 1-index);
    window_buf189_buf189d_i->release(*window_buf189_buf189d_i, LOCK_15_6_2_2080, LOCK_15_6_3_0, 1-index);
    window_buf201_buf201d_o->release(*window_buf201_buf201d_o, LOCK_15_5_2_8032, LOCK_15_5_3_0, 1-index);
    window_buf211_buf211d_o->release(*window_buf211_buf211d_o, LOCK_15_5_0_0, LOCK_15_5_1_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_15_6_bounds > 0)
      --proc_15_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}