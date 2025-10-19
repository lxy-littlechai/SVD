// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/32_3/src/32_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_32_3_0_7136 16
#define LOCK_32_3_1_0 17
#define LOCK_33_3_2_0 50
#define LOCK_33_3_3_0 51
#define LOCK_32_2_0_7136 0
#define LOCK_32_2_1_0 1
#define LOCK_32_2_2_0 2
#define LOCK_32_2_3_0 3

// Declare shared memory buffers
v4float buf416[65];
v4float buf416d[65];
v4float buf426[65];
v4float buf426d[65];
v4float buf432[65];
v4float buf432d[65];
v4float buf442[65];
v4float buf442d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf416_buf416d_i[1] = {{(float*)buf416, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf426_buf426d_i[1] = {{(float*)buf426, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf432_buf432d_o[1] = {{(float*)buf432, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf442_buf442d_o[1] = {{(float*)buf442, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_32_3_bounds = sync_buffer[1];

  while (proc_32_3_bounds)
  {

    // Kernel call : i216:orthogonalize<256>
    window_buf416_buf416d_i->setData(*window_buf416_buf416d_i, (float*)buf416, (float*)buf416d, 1-index, 0);
    window_buf416_buf416d_i->acquire(*window_buf416_buf416d_i, LOCK_32_3_0_7136, LOCK_32_3_1_0, 1-index);
    window_buf426_buf426d_i->setData(*window_buf426_buf426d_i, (float*)buf426, (float*)buf426d, 1-index, 0);
    window_buf426_buf426d_i->acquire(*window_buf426_buf426d_i, LOCK_33_3_2_0, LOCK_33_3_3_0, 1-index);
    window_buf432_buf432d_o->setData(*window_buf432_buf432d_o, (float*)buf432, (float*)buf432d, 1-index, 0);
    window_buf432_buf432d_o->acquire(*window_buf432_buf432d_o, LOCK_32_2_0_7136, LOCK_32_2_1_0, 1-index);
    window_buf442_buf442d_o->setData(*window_buf442_buf442d_o, (float*)buf442, (float*)buf442d, 1-index, 0);
    window_buf442_buf442d_o->acquire(*window_buf442_buf442d_o, LOCK_32_2_2_0, LOCK_32_2_3_0, 1-index);
    orthogonalize<256>(window_buf416_buf416d_i[0],window_buf426_buf426d_i[0],window_buf432_buf432d_o[0],window_buf442_buf442d_o[0]);
    window_buf416_buf416d_i->release(*window_buf416_buf416d_i, LOCK_32_3_0_7136, LOCK_32_3_1_0, 1-index);
    window_buf426_buf426d_i->release(*window_buf426_buf426d_i, LOCK_33_3_2_0, LOCK_33_3_3_0, 1-index);
    window_buf432_buf432d_o->release(*window_buf432_buf432d_o, LOCK_32_2_0_7136, LOCK_32_2_1_0, 1-index);
    window_buf442_buf442d_o->release(*window_buf442_buf442d_o, LOCK_32_2_2_0, LOCK_32_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_32_3_bounds > 0)
      --proc_32_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}