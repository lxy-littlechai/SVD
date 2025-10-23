// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/21_4/src/21_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_20_4_0_7136 16
#define LOCK_20_4_1_0 17
#define LOCK_21_4_2_0 50
#define LOCK_21_4_3_0 51
#define LOCK_21_5_0_7136 32
#define LOCK_21_5_1_0 33
#define LOCK_21_5_2_0 34
#define LOCK_21_5_3_0 35

// Declare shared memory buffers
v4float buf225[65];
v4float buf225d[65];
v4float buf230[65];
v4float buf230d[65];
v4float buf233[65];
v4float buf233d[65];
v4float buf238[65];
v4float buf238d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf225_buf225d_i[1] = {{(float*)buf225, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf230_buf230d_i[1] = {{(float*)buf230, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf233_buf233d_o[1] = {{(float*)buf233, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf238_buf238d_o[1] = {{(float*)buf238, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_21_4_bounds = sync_buffer[1];

  while (proc_21_4_bounds)
  {

    // Kernel call : i125:orthogonalize<256>
    window_buf225_buf225d_i->setData(*window_buf225_buf225d_i, (float*)buf225, (float*)buf225d, 1-index, 0);
    window_buf225_buf225d_i->acquire(*window_buf225_buf225d_i, LOCK_20_4_0_7136, LOCK_20_4_1_0, 1-index);
    window_buf230_buf230d_i->setData(*window_buf230_buf230d_i, (float*)buf230, (float*)buf230d, 1-index, 0);
    window_buf230_buf230d_i->acquire(*window_buf230_buf230d_i, LOCK_21_4_2_0, LOCK_21_4_3_0, 1-index);
    window_buf233_buf233d_o->setData(*window_buf233_buf233d_o, (float*)buf233, (float*)buf233d, 1-index, 0);
    window_buf233_buf233d_o->acquire(*window_buf233_buf233d_o, LOCK_21_5_0_7136, LOCK_21_5_1_0, 1-index);
    window_buf238_buf238d_o->setData(*window_buf238_buf238d_o, (float*)buf238, (float*)buf238d, 1-index, 0);
    window_buf238_buf238d_o->acquire(*window_buf238_buf238d_o, LOCK_21_5_2_0, LOCK_21_5_3_0, 1-index);
    orthogonalize<256>(window_buf225_buf225d_i[0],window_buf230_buf230d_i[0],window_buf233_buf233d_o[0],window_buf238_buf238d_o[0]);
    window_buf225_buf225d_i->release(*window_buf225_buf225d_i, LOCK_20_4_0_7136, LOCK_20_4_1_0, 1-index);
    window_buf230_buf230d_i->release(*window_buf230_buf230d_i, LOCK_21_4_2_0, LOCK_21_4_3_0, 1-index);
    window_buf233_buf233d_o->release(*window_buf233_buf233d_o, LOCK_21_5_0_7136, LOCK_21_5_1_0, 1-index);
    window_buf238_buf238d_o->release(*window_buf238_buf238d_o, LOCK_21_5_2_0, LOCK_21_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_21_4_bounds > 0)
      --proc_21_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}