// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/22_5/src/22_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_22_5_2_8032 18
#define LOCK_22_5_3_0 19
#define LOCK_23_5_0_8032 48
#define LOCK_23_5_1_0 49
#define LOCK_22_4_0_8032 0
#define LOCK_22_4_1_0 1
#define LOCK_22_4_2_0 2
#define LOCK_22_4_3_0 3

// Declare shared memory buffers
v4float buf208[9];
v4float buf208d[9];
v4float buf210[9];
v4float buf210d[9];
v4float buf230[9];
v4float buf230d[9];
v4float buf232[9];
v4float buf232d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf208_buf208d_i[1] = {{(float*)buf208, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf210_buf210d_i[1] = {{(float*)buf210, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf230_buf230d_o[1] = {{(float*)buf230, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf232_buf232d_o[1] = {{(float*)buf232, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_22_5_bounds = sync_buffer[1];

  while (proc_22_5_bounds)
  {

    // Kernel call : i108:orthogonalize<32>
    window_buf208_buf208d_i->setData(*window_buf208_buf208d_i, (float*)buf208, (float*)buf208d, 1-index, 0);
    window_buf208_buf208d_i->acquire(*window_buf208_buf208d_i, LOCK_22_5_2_8032, LOCK_22_5_3_0, 1-index);
    window_buf210_buf210d_i->setData(*window_buf210_buf210d_i, (float*)buf210, (float*)buf210d, 1-index, 0);
    window_buf210_buf210d_i->acquire(*window_buf210_buf210d_i, LOCK_23_5_0_8032, LOCK_23_5_1_0, 1-index);
    window_buf230_buf230d_o->setData(*window_buf230_buf230d_o, (float*)buf230, (float*)buf230d, 1-index, 0);
    window_buf230_buf230d_o->acquire(*window_buf230_buf230d_o, LOCK_22_4_0_8032, LOCK_22_4_1_0, 1-index);
    window_buf232_buf232d_o->setData(*window_buf232_buf232d_o, (float*)buf232, (float*)buf232d, 1-index, 0);
    window_buf232_buf232d_o->acquire(*window_buf232_buf232d_o, LOCK_22_4_2_0, LOCK_22_4_3_0, 1-index);
    orthogonalize<32>(window_buf208_buf208d_i[0],window_buf210_buf210d_i[0],window_buf230_buf230d_o[0],window_buf232_buf232d_o[0]);
    window_buf208_buf208d_i->release(*window_buf208_buf208d_i, LOCK_22_5_2_8032, LOCK_22_5_3_0, 1-index);
    window_buf210_buf210d_i->release(*window_buf210_buf210d_i, LOCK_23_5_0_8032, LOCK_23_5_1_0, 1-index);
    window_buf230_buf230d_o->release(*window_buf230_buf230d_o, LOCK_22_4_0_8032, LOCK_22_4_1_0, 1-index);
    window_buf232_buf232d_o->release(*window_buf232_buf232d_o, LOCK_22_4_2_0, LOCK_22_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_22_5_bounds > 0)
      --proc_22_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}