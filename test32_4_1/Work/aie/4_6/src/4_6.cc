// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/test32_4_1/./Work/aie/4_6/src/4_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_3_6_0_0 16
#define LOCK_3_6_1_0 17
#define LOCK_4_6_0_0 48
#define LOCK_4_6_1_0 49
#define LOCK_4_7_0_0 32
#define LOCK_4_7_1_0 33
#define LOCK_4_7_2_0 34
#define LOCK_4_7_3_0 35

// Declare shared memory buffers
v4float buf48[9];
v4float buf48d[9];
v4float buf55[9];
v4float buf55d[9];
v4float buf56[9];
v4float buf56d[9];
v4float buf63[9];
v4float buf63d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf48_buf48d_i[1] = {{(float*)buf48, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf55_buf55d_i[1] = {{(float*)buf55, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf56_buf56d_o[1] = {{(float*)buf56, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf63_buf63d_o[1] = {{(float*)buf63, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_4_6_bounds = sync_buffer[1];

  while (proc_4_6_bounds)
  {

    // Kernel call : i27:orthogonalize<32>
    window_buf48_buf48d_i->setData(*window_buf48_buf48d_i, (float*)buf48, (float*)buf48d, 1-index, 0);
    window_buf48_buf48d_i->acquire(*window_buf48_buf48d_i, LOCK_3_6_0_0, LOCK_3_6_1_0, 1-index);
    window_buf55_buf55d_i->setData(*window_buf55_buf55d_i, (float*)buf55, (float*)buf55d, 1-index, 0);
    window_buf55_buf55d_i->acquire(*window_buf55_buf55d_i, LOCK_4_6_0_0, LOCK_4_6_1_0, 1-index);
    window_buf56_buf56d_o->setData(*window_buf56_buf56d_o, (float*)buf56, (float*)buf56d, 1-index, 0);
    window_buf56_buf56d_o->acquire(*window_buf56_buf56d_o, LOCK_4_7_0_0, LOCK_4_7_1_0, 1-index);
    window_buf63_buf63d_o->setData(*window_buf63_buf63d_o, (float*)buf63, (float*)buf63d, 1-index, 0);
    window_buf63_buf63d_o->acquire(*window_buf63_buf63d_o, LOCK_4_7_2_0, LOCK_4_7_3_0, 1-index);
    orthogonalize<32>(window_buf48_buf48d_i[0],window_buf55_buf55d_i[0],window_buf56_buf56d_o[0],window_buf63_buf63d_o[0]);
    window_buf48_buf48d_i->release(*window_buf48_buf48d_i, LOCK_3_6_0_0, LOCK_3_6_1_0, 1-index);
    window_buf55_buf55d_i->release(*window_buf55_buf55d_i, LOCK_4_6_0_0, LOCK_4_6_1_0, 1-index);
    window_buf56_buf56d_o->release(*window_buf56_buf56d_o, LOCK_4_7_0_0, LOCK_4_7_1_0, 1-index);
    window_buf63_buf63d_o->release(*window_buf63_buf63d_o, LOCK_4_7_2_0, LOCK_4_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_4_6_bounds > 0)
      --proc_4_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}