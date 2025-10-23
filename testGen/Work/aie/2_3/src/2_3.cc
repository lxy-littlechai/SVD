// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/2_3/src/2_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_2_3_0_0 16
#define LOCK_2_3_1_0 17
#define LOCK_3_3_2_0 50
#define LOCK_3_3_3_0 51
#define LOCK_2_4_0_3936 32
#define LOCK_2_4_1_2080 33
#define LOCK_2_4_2_0 34
#define LOCK_2_4_3_0 35

// Declare shared memory buffers
v4float buf66[9];
v4float buf66d[9];
v4float buf73[9];
v4float buf73d[9];
v4float buf88[9];
v4float buf88d[9];
v4float buf95[9];
v4float buf95d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf66_buf66d_i[1] = {{(float*)buf66, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf73_buf73d_i[1] = {{(float*)buf73, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf88_buf88d_o[1] = {{(float*)buf88, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf95_buf95d_o[1] = {{(float*)buf95, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_2_3_bounds = sync_buffer[1];

  while (proc_2_3_bounds)
  {

    // Kernel call : i34:orthogonalize<32>
    window_buf66_buf66d_i->setData(*window_buf66_buf66d_i, (float*)buf66, (float*)buf66d, 1-index, 0);
    window_buf66_buf66d_i->acquire(*window_buf66_buf66d_i, LOCK_2_3_0_0, LOCK_2_3_1_0, 1-index);
    window_buf73_buf73d_i->setData(*window_buf73_buf73d_i, (float*)buf73, (float*)buf73d, 1-index, 0);
    window_buf73_buf73d_i->acquire(*window_buf73_buf73d_i, LOCK_3_3_2_0, LOCK_3_3_3_0, 1-index);
    window_buf88_buf88d_o->setData(*window_buf88_buf88d_o, (float*)buf88, (float*)buf88d, 1-index, 0);
    window_buf88_buf88d_o->acquire(*window_buf88_buf88d_o, LOCK_2_4_0_3936, LOCK_2_4_1_2080, 1-index);
    window_buf95_buf95d_o->setData(*window_buf95_buf95d_o, (float*)buf95, (float*)buf95d, 1-index, 0);
    window_buf95_buf95d_o->acquire(*window_buf95_buf95d_o, LOCK_2_4_2_0, LOCK_2_4_3_0, 1-index);
    orthogonalize<32>(window_buf66_buf66d_i[0],window_buf73_buf73d_i[0],window_buf88_buf88d_o[0],window_buf95_buf95d_o[0]);
    window_buf66_buf66d_i->release(*window_buf66_buf66d_i, LOCK_2_3_0_0, LOCK_2_3_1_0, 1-index);
    window_buf73_buf73d_i->release(*window_buf73_buf73d_i, LOCK_3_3_2_0, LOCK_3_3_3_0, 1-index);
    window_buf88_buf88d_o->release(*window_buf88_buf88d_o, LOCK_2_4_0_3936, LOCK_2_4_1_2080, 1-index);
    window_buf95_buf95d_o->release(*window_buf95_buf95d_o, LOCK_2_4_2_0, LOCK_2_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_2_3_bounds > 0)
      --proc_2_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}