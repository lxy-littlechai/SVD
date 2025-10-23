// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/3_1/src/3_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_3_1_0_7136 16
#define LOCK_3_1_1_0 17
#define LOCK_4_1_0_7136 48
#define LOCK_4_1_1_0 49
#define LOCK_3_2_2_3040 34
#define LOCK_3_2_3_2080 35
#define LOCK_3_2_0_0 32
#define LOCK_3_2_1_0 33

// Declare shared memory buffers
v4float buf12[65];
v4float buf12d[65];
v4float buf14[65];
v4float buf14d[65];
v4float buf20[65];
v4float buf20d[65];
v4float buf22[65];
v4float buf22d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf12_buf12d_i[1] = {{(float*)buf12, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf14_buf14d_i[1] = {{(float*)buf14, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf20_buf20d_o[1] = {{(float*)buf20, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf22_buf22d_o[1] = {{(float*)buf22, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_3_1_bounds = sync_buffer[1];

  while (proc_3_1_bounds)
  {

    // Kernel call : i6:orthogonalize<256>
    window_buf12_buf12d_i->setData(*window_buf12_buf12d_i, (float*)buf12, (float*)buf12d, 1-index, 0);
    window_buf12_buf12d_i->acquire(*window_buf12_buf12d_i, LOCK_3_1_0_7136, LOCK_3_1_1_0, 1-index);
    window_buf14_buf14d_i->setData(*window_buf14_buf14d_i, (float*)buf14, (float*)buf14d, 1-index, 0);
    window_buf14_buf14d_i->acquire(*window_buf14_buf14d_i, LOCK_4_1_0_7136, LOCK_4_1_1_0, 1-index);
    window_buf20_buf20d_o->setData(*window_buf20_buf20d_o, (float*)buf20, (float*)buf20d, 1-index, 0);
    window_buf20_buf20d_o->acquire(*window_buf20_buf20d_o, LOCK_3_2_2_3040, LOCK_3_2_3_2080, 1-index);
    window_buf22_buf22d_o->setData(*window_buf22_buf22d_o, (float*)buf22, (float*)buf22d, 1-index, 0);
    window_buf22_buf22d_o->acquire(*window_buf22_buf22d_o, LOCK_3_2_0_0, LOCK_3_2_1_0, 1-index);
    orthogonalize<256>(window_buf12_buf12d_i[0],window_buf14_buf14d_i[0],window_buf20_buf20d_o[0],window_buf22_buf22d_o[0]);
    window_buf12_buf12d_i->release(*window_buf12_buf12d_i, LOCK_3_1_0_7136, LOCK_3_1_1_0, 1-index);
    window_buf14_buf14d_i->release(*window_buf14_buf14d_i, LOCK_4_1_0_7136, LOCK_4_1_1_0, 1-index);
    window_buf20_buf20d_o->release(*window_buf20_buf20d_o, LOCK_3_2_2_3040, LOCK_3_2_3_2080, 1-index);
    window_buf22_buf22d_o->release(*window_buf22_buf22d_o, LOCK_3_2_0_0, LOCK_3_2_1_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_3_1_bounds > 0)
      --proc_3_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}