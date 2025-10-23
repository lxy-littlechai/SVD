// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/9_2/src/9_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_8_2_0_8032 16
#define LOCK_8_2_1_0 17
#define LOCK_9_2_2_0 50
#define LOCK_9_2_3_0 51
#define LOCK_9_3_0_8032 32
#define LOCK_9_3_1_0 33
#define LOCK_9_3_2_0 34
#define LOCK_9_3_3_0 35

// Declare shared memory buffers
v4float buf58[9];
v4float buf58d[9];
v4float buf63[9];
v4float buf63d[9];
v4float buf80[9];
v4float buf80d[9];
v4float buf85[9];
v4float buf85d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf58_buf58d_i[1] = {{(float*)buf58, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf63_buf63d_i[1] = {{(float*)buf63, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf80_buf80d_o[1] = {{(float*)buf80, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf85_buf85d_o[1] = {{(float*)buf85, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_9_2_bounds = sync_buffer[1];

  while (proc_9_2_bounds)
  {

    // Kernel call : i30:orthogonalize<32>
    window_buf58_buf58d_i->setData(*window_buf58_buf58d_i, (float*)buf58, (float*)buf58d, 1-index, 0);
    window_buf58_buf58d_i->acquire(*window_buf58_buf58d_i, LOCK_8_2_0_8032, LOCK_8_2_1_0, 1-index);
    window_buf63_buf63d_i->setData(*window_buf63_buf63d_i, (float*)buf63, (float*)buf63d, 1-index, 0);
    window_buf63_buf63d_i->acquire(*window_buf63_buf63d_i, LOCK_9_2_2_0, LOCK_9_2_3_0, 1-index);
    window_buf80_buf80d_o->setData(*window_buf80_buf80d_o, (float*)buf80, (float*)buf80d, 1-index, 0);
    window_buf80_buf80d_o->acquire(*window_buf80_buf80d_o, LOCK_9_3_0_8032, LOCK_9_3_1_0, 1-index);
    window_buf85_buf85d_o->setData(*window_buf85_buf85d_o, (float*)buf85, (float*)buf85d, 1-index, 0);
    window_buf85_buf85d_o->acquire(*window_buf85_buf85d_o, LOCK_9_3_2_0, LOCK_9_3_3_0, 1-index);
    orthogonalize<32>(window_buf58_buf58d_i[0],window_buf63_buf63d_i[0],window_buf80_buf80d_o[0],window_buf85_buf85d_o[0]);
    window_buf58_buf58d_i->release(*window_buf58_buf58d_i, LOCK_8_2_0_8032, LOCK_8_2_1_0, 1-index);
    window_buf63_buf63d_i->release(*window_buf63_buf63d_i, LOCK_9_2_2_0, LOCK_9_2_3_0, 1-index);
    window_buf80_buf80d_o->release(*window_buf80_buf80d_o, LOCK_9_3_0_8032, LOCK_9_3_1_0, 1-index);
    window_buf85_buf85d_o->release(*window_buf85_buf85d_o, LOCK_9_3_2_0, LOCK_9_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_9_2_bounds > 0)
      --proc_9_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}