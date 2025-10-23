// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/5_2/src/5_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_4_2_0_0 16
#define LOCK_4_2_1_0 17
#define LOCK_5_2_2_0 50
#define LOCK_5_2_3_0 51
#define LOCK_5_3_0_0 32
#define LOCK_5_3_1_0 33
#define LOCK_5_3_2_0 34
#define LOCK_5_3_3_0 35

// Declare shared memory buffers
v4float buf50[9];
v4float buf50d[9];
v4float buf55[9];
v4float buf55d[9];
v4float buf72[9];
v4float buf72d[9];
v4float buf77[9];
v4float buf77d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf50_buf50d_i[1] = {{(float*)buf50, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf55_buf55d_i[1] = {{(float*)buf55, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf72_buf72d_o[1] = {{(float*)buf72, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf77_buf77d_o[1] = {{(float*)buf77, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_5_2_bounds = sync_buffer[1];

  while (proc_5_2_bounds)
  {

    // Kernel call : i26:orthogonalize<32>
    window_buf50_buf50d_i->setData(*window_buf50_buf50d_i, (float*)buf50, (float*)buf50d, 1-index, 0);
    window_buf50_buf50d_i->acquire(*window_buf50_buf50d_i, LOCK_4_2_0_0, LOCK_4_2_1_0, 1-index);
    window_buf55_buf55d_i->setData(*window_buf55_buf55d_i, (float*)buf55, (float*)buf55d, 1-index, 0);
    window_buf55_buf55d_i->acquire(*window_buf55_buf55d_i, LOCK_5_2_2_0, LOCK_5_2_3_0, 1-index);
    window_buf72_buf72d_o->setData(*window_buf72_buf72d_o, (float*)buf72, (float*)buf72d, 1-index, 0);
    window_buf72_buf72d_o->acquire(*window_buf72_buf72d_o, LOCK_5_3_0_0, LOCK_5_3_1_0, 1-index);
    window_buf77_buf77d_o->setData(*window_buf77_buf77d_o, (float*)buf77, (float*)buf77d, 1-index, 0);
    window_buf77_buf77d_o->acquire(*window_buf77_buf77d_o, LOCK_5_3_2_0, LOCK_5_3_3_0, 1-index);
    orthogonalize<32>(window_buf50_buf50d_i[0],window_buf55_buf55d_i[0],window_buf72_buf72d_o[0],window_buf77_buf77d_o[0]);
    window_buf50_buf50d_i->release(*window_buf50_buf50d_i, LOCK_4_2_0_0, LOCK_4_2_1_0, 1-index);
    window_buf55_buf55d_i->release(*window_buf55_buf55d_i, LOCK_5_2_2_0, LOCK_5_2_3_0, 1-index);
    window_buf72_buf72d_o->release(*window_buf72_buf72d_o, LOCK_5_3_0_0, LOCK_5_3_1_0, 1-index);
    window_buf77_buf77d_o->release(*window_buf77_buf77d_o, LOCK_5_3_2_0, LOCK_5_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_5_2_bounds > 0)
      --proc_5_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}