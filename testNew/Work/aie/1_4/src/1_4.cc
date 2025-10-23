// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/1_4/src/1_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_0_4_0_0 16
#define LOCK_0_4_1_1056 17
#define LOCK_1_4_2_0 50
#define LOCK_1_4_3_0 51
#define LOCK_1_5_0_7136 32
#define LOCK_1_5_1_0 33
#define LOCK_1_5_2_0 34
#define LOCK_1_5_3_0 35

// Declare shared memory buffers
v4float buf35dr[65];
v4float buf35r[65];
v4float buf37[65];
v4float buf37d[65];
v4float buf43[65];
v4float buf43d[65];
v4float buf45[65];
v4float buf45d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf35r_buf35dr_i[1] = {{(float*)buf35r, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf37_buf37d_i[1] = {{(float*)buf37, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf43_buf43d_o[1] = {{(float*)buf43, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf45_buf45d_o[1] = {{(float*)buf45, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_1_4_bounds = sync_buffer[1];

  while (proc_1_4_bounds)
  {

    // Kernel call : i16:orthogonalize<256>
    window_buf35r_buf35dr_i->setData(*window_buf35r_buf35dr_i, (float*)buf35r, (float*)buf35dr, 1-index, 0);
    window_buf35r_buf35dr_i->acquire(*window_buf35r_buf35dr_i, LOCK_0_4_0_0, LOCK_0_4_1_1056, 1-index);
    window_buf37_buf37d_i->setData(*window_buf37_buf37d_i, (float*)buf37, (float*)buf37d, 1-index, 0);
    window_buf37_buf37d_i->acquire(*window_buf37_buf37d_i, LOCK_1_4_2_0, LOCK_1_4_3_0, 1-index);
    window_buf43_buf43d_o->setData(*window_buf43_buf43d_o, (float*)buf43, (float*)buf43d, 1-index, 0);
    window_buf43_buf43d_o->acquire(*window_buf43_buf43d_o, LOCK_1_5_0_7136, LOCK_1_5_1_0, 1-index);
    window_buf45_buf45d_o->setData(*window_buf45_buf45d_o, (float*)buf45, (float*)buf45d, 1-index, 0);
    window_buf45_buf45d_o->acquire(*window_buf45_buf45d_o, LOCK_1_5_2_0, LOCK_1_5_3_0, 1-index);
    orthogonalize<256>(window_buf35r_buf35dr_i[0],window_buf37_buf37d_i[0],window_buf43_buf43d_o[0],window_buf45_buf45d_o[0]);
    window_buf35r_buf35dr_i->release(*window_buf35r_buf35dr_i, LOCK_0_4_0_0, LOCK_0_4_1_1056, 1-index);
    window_buf37_buf37d_i->release(*window_buf37_buf37d_i, LOCK_1_4_2_0, LOCK_1_4_3_0, 1-index);
    window_buf43_buf43d_o->release(*window_buf43_buf43d_o, LOCK_1_5_0_7136, LOCK_1_5_1_0, 1-index);
    window_buf45_buf45d_o->release(*window_buf45_buf45d_o, LOCK_1_5_2_0, LOCK_1_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_1_4_bounds > 0)
      --proc_1_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}