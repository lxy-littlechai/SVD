// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/test32_2_4/./Work/aie/12_1/src/12_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_12_1_2_0 18
#define LOCK_12_1_3_0 19
#define LOCK_13_1_0_0 48
#define LOCK_13_1_1_736 49
#define LOCK_12_2_0_2080 32
#define LOCK_12_2_1_0 33
#define LOCK_12_2_2_0 34
#define LOCK_12_2_3_0 35

// Declare shared memory buffers
v4float buf37dr[9];
v4float buf37r[9];
v4float buf39[9];
v4float buf39d[9];
v4float buf41[9];
v4float buf41d[9];
v4float buf43[9];
v4float buf43d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf39_buf39d_i[1] = {{(float*)buf39, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf37r_buf37dr_i[1] = {{(float*)buf37r, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf43_buf43d_o[1] = {{(float*)buf43, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf41_buf41d_o[1] = {{(float*)buf41, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_12_1_bounds = sync_buffer[1];

  while (proc_12_1_bounds)
  {

    // Kernel call : i31:orthogonalize<32>
    window_buf39_buf39d_i->setData(*window_buf39_buf39d_i, (float*)buf39, (float*)buf39d, 1-index, 0);
    window_buf39_buf39d_i->acquire(*window_buf39_buf39d_i, LOCK_12_1_2_0, LOCK_12_1_3_0, 1-index);
    window_buf37r_buf37dr_i->setData(*window_buf37r_buf37dr_i, (float*)buf37r, (float*)buf37dr, 1-index, 0);
    window_buf37r_buf37dr_i->acquire(*window_buf37r_buf37dr_i, LOCK_13_1_0_0, LOCK_13_1_1_736, 1-index);
    window_buf43_buf43d_o->setData(*window_buf43_buf43d_o, (float*)buf43, (float*)buf43d, 1-index, 0);
    window_buf43_buf43d_o->acquire(*window_buf43_buf43d_o, LOCK_12_2_0_2080, LOCK_12_2_1_0, 1-index);
    window_buf41_buf41d_o->setData(*window_buf41_buf41d_o, (float*)buf41, (float*)buf41d, 1-index, 0);
    window_buf41_buf41d_o->acquire(*window_buf41_buf41d_o, LOCK_12_2_2_0, LOCK_12_2_3_0, 1-index);
    orthogonalize<32>(window_buf39_buf39d_i[0],window_buf37r_buf37dr_i[0],window_buf43_buf43d_o[0],window_buf41_buf41d_o[0]);
    window_buf39_buf39d_i->release(*window_buf39_buf39d_i, LOCK_12_1_2_0, LOCK_12_1_3_0, 1-index);
    window_buf37r_buf37dr_i->release(*window_buf37r_buf37dr_i, LOCK_13_1_0_0, LOCK_13_1_1_736, 1-index);
    window_buf43_buf43d_o->release(*window_buf43_buf43d_o, LOCK_12_2_0_2080, LOCK_12_2_1_0, 1-index);
    window_buf41_buf41d_o->release(*window_buf41_buf41d_o, LOCK_12_2_2_0, LOCK_12_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_12_1_bounds > 0)
      --proc_12_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}