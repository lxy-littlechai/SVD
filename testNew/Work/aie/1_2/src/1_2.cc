// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/1_2/src/1_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_0_2_0_0 16
#define LOCK_0_2_1_1056 17
#define LOCK_1_2_2_0 50
#define LOCK_1_2_3_0 51
#define LOCK_1_3_0_7136 32
#define LOCK_1_3_1_0 33
#define LOCK_1_3_2_0 34
#define LOCK_1_3_3_0 35

// Declare shared memory buffers
v4float buf17dr[65];
v4float buf17r[65];
v4float buf19[65];
v4float buf19d[65];
v4float buf25[65];
v4float buf25d[65];
v4float buf27[65];
v4float buf27d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf17r_buf17dr_i[1] = {{(float*)buf17r, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf19_buf19d_i[1] = {{(float*)buf19, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf25_buf25d_o[1] = {{(float*)buf25, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf27_buf27d_o[1] = {{(float*)buf27, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_1_2_bounds = sync_buffer[1];

  while (proc_1_2_bounds)
  {

    // Kernel call : i8:orthogonalize<256>
    window_buf17r_buf17dr_i->setData(*window_buf17r_buf17dr_i, (float*)buf17r, (float*)buf17dr, 1-index, 0);
    window_buf17r_buf17dr_i->acquire(*window_buf17r_buf17dr_i, LOCK_0_2_0_0, LOCK_0_2_1_1056, 1-index);
    window_buf19_buf19d_i->setData(*window_buf19_buf19d_i, (float*)buf19, (float*)buf19d, 1-index, 0);
    window_buf19_buf19d_i->acquire(*window_buf19_buf19d_i, LOCK_1_2_2_0, LOCK_1_2_3_0, 1-index);
    window_buf25_buf25d_o->setData(*window_buf25_buf25d_o, (float*)buf25, (float*)buf25d, 1-index, 0);
    window_buf25_buf25d_o->acquire(*window_buf25_buf25d_o, LOCK_1_3_0_7136, LOCK_1_3_1_0, 1-index);
    window_buf27_buf27d_o->setData(*window_buf27_buf27d_o, (float*)buf27, (float*)buf27d, 1-index, 0);
    window_buf27_buf27d_o->acquire(*window_buf27_buf27d_o, LOCK_1_3_2_0, LOCK_1_3_3_0, 1-index);
    orthogonalize<256>(window_buf17r_buf17dr_i[0],window_buf19_buf19d_i[0],window_buf25_buf25d_o[0],window_buf27_buf27d_o[0]);
    window_buf17r_buf17dr_i->release(*window_buf17r_buf17dr_i, LOCK_0_2_0_0, LOCK_0_2_1_1056, 1-index);
    window_buf19_buf19d_i->release(*window_buf19_buf19d_i, LOCK_1_2_2_0, LOCK_1_2_3_0, 1-index);
    window_buf25_buf25d_o->release(*window_buf25_buf25d_o, LOCK_1_3_0_7136, LOCK_1_3_1_0, 1-index);
    window_buf27_buf27d_o->release(*window_buf27_buf27d_o, LOCK_1_3_2_0, LOCK_1_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_1_2_bounds > 0)
      --proc_1_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}