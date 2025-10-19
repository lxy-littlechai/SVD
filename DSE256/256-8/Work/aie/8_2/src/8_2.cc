// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/8_2/src/8_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_7_2_0_7136 16
#define LOCK_7_2_1_0 17
#define LOCK_8_2_0_7136 48
#define LOCK_8_2_1_0 49
#define LOCK_8_3_0_3040 32
#define LOCK_8_3_1_2080 33
#define LOCK_8_3_2_0 34
#define LOCK_8_3_3_0 35

// Declare shared memory buffers
v4float buf44[65];
v4float buf44d[65];
v4float buf47[65];
v4float buf47d[65];
v4float buf60[65];
v4float buf60d[65];
v4float buf63[65];
v4float buf63d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf44_buf44d_i[1] = {{(float*)buf44, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf47_buf47d_i[1] = {{(float*)buf47, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf60_buf60d_o[1] = {{(float*)buf60, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf63_buf63d_o[1] = {{(float*)buf63, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_8_2_bounds = sync_buffer[1];

  while (proc_8_2_bounds)
  {

    // Kernel call : i23:orthogonalize<256>
    window_buf44_buf44d_i->setData(*window_buf44_buf44d_i, (float*)buf44, (float*)buf44d, 1-index, 0);
    window_buf44_buf44d_i->acquire(*window_buf44_buf44d_i, LOCK_7_2_0_7136, LOCK_7_2_1_0, 1-index);
    window_buf47_buf47d_i->setData(*window_buf47_buf47d_i, (float*)buf47, (float*)buf47d, 1-index, 0);
    window_buf47_buf47d_i->acquire(*window_buf47_buf47d_i, LOCK_8_2_0_7136, LOCK_8_2_1_0, 1-index);
    window_buf60_buf60d_o->setData(*window_buf60_buf60d_o, (float*)buf60, (float*)buf60d, 1-index, 0);
    window_buf60_buf60d_o->acquire(*window_buf60_buf60d_o, LOCK_8_3_0_3040, LOCK_8_3_1_2080, 1-index);
    window_buf63_buf63d_o->setData(*window_buf63_buf63d_o, (float*)buf63, (float*)buf63d, 1-index, 0);
    window_buf63_buf63d_o->acquire(*window_buf63_buf63d_o, LOCK_8_3_2_0, LOCK_8_3_3_0, 1-index);
    orthogonalize<256>(window_buf44_buf44d_i[0],window_buf47_buf47d_i[0],window_buf60_buf60d_o[0],window_buf63_buf63d_o[0]);
    window_buf44_buf44d_i->release(*window_buf44_buf44d_i, LOCK_7_2_0_7136, LOCK_7_2_1_0, 1-index);
    window_buf47_buf47d_i->release(*window_buf47_buf47d_i, LOCK_8_2_0_7136, LOCK_8_2_1_0, 1-index);
    window_buf60_buf60d_o->release(*window_buf60_buf60d_o, LOCK_8_3_0_3040, LOCK_8_3_1_2080, 1-index);
    window_buf63_buf63d_o->release(*window_buf63_buf63d_o, LOCK_8_3_2_0, LOCK_8_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_8_2_bounds > 0)
      --proc_8_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}