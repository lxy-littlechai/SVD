// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/2_1/src/2_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_2_1_2_0 18
#define LOCK_2_1_3_0 19
#define LOCK_3_1_0_0 48
#define LOCK_3_1_1_0 49
#define LOCK_2_2_0_8032 32
#define LOCK_2_2_1_0 33
#define LOCK_2_2_2_0 34
#define LOCK_2_2_3_0 35

// Declare shared memory buffers
v4float buf11[9];
v4float buf11d[9];
v4float buf5dr[9];
v4float buf5r[9];
v4float buf7[9];
v4float buf7d[9];
v4float buf9[9];
v4float buf9d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf7_buf7d_i[1] = {{(float*)buf7, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf5r_buf5dr_i[1] = {{(float*)buf5r, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf11_buf11d_o[1] = {{(float*)buf11, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf9_buf9d_o[1] = {{(float*)buf9, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_2_1_bounds = sync_buffer[1];

  while (proc_2_1_bounds)
  {

    // Kernel call : i3:orthogonalize<32>
    window_buf7_buf7d_i->setData(*window_buf7_buf7d_i, (float*)buf7, (float*)buf7d, 1-index, 0);
    window_buf7_buf7d_i->acquire(*window_buf7_buf7d_i, LOCK_2_1_2_0, LOCK_2_1_3_0, 1-index);
    window_buf5r_buf5dr_i->setData(*window_buf5r_buf5dr_i, (float*)buf5r, (float*)buf5dr, 1-index, 0);
    window_buf5r_buf5dr_i->acquire(*window_buf5r_buf5dr_i, LOCK_3_1_0_0, LOCK_3_1_1_0, 1-index);
    window_buf11_buf11d_o->setData(*window_buf11_buf11d_o, (float*)buf11, (float*)buf11d, 1-index, 0);
    window_buf11_buf11d_o->acquire(*window_buf11_buf11d_o, LOCK_2_2_0_8032, LOCK_2_2_1_0, 1-index);
    window_buf9_buf9d_o->setData(*window_buf9_buf9d_o, (float*)buf9, (float*)buf9d, 1-index, 0);
    window_buf9_buf9d_o->acquire(*window_buf9_buf9d_o, LOCK_2_2_2_0, LOCK_2_2_3_0, 1-index);
    orthogonalize<32>(window_buf7_buf7d_i[0],window_buf5r_buf5dr_i[0],window_buf11_buf11d_o[0],window_buf9_buf9d_o[0]);
    window_buf7_buf7d_i->release(*window_buf7_buf7d_i, LOCK_2_1_2_0, LOCK_2_1_3_0, 1-index);
    window_buf5r_buf5dr_i->release(*window_buf5r_buf5dr_i, LOCK_3_1_0_0, LOCK_3_1_1_0, 1-index);
    window_buf11_buf11d_o->release(*window_buf11_buf11d_o, LOCK_2_2_0_8032, LOCK_2_2_1_0, 1-index);
    window_buf9_buf9d_o->release(*window_buf9_buf9d_o, LOCK_2_2_2_0, LOCK_2_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_2_1_bounds > 0)
      --proc_2_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}