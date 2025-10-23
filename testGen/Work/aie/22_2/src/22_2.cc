// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/22_2/src/22_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_21_2_0_8032 16
#define LOCK_21_2_1_0 17
#define LOCK_22_2_2_0 50
#define LOCK_22_2_3_0 51
#define LOCK_22_1_0_0 0
#define LOCK_22_1_1_0 1
#define LOCK_22_1_2_0 2
#define LOCK_22_1_3_0 3

// Declare shared memory buffers
v4float buf270[9];
v4float buf270d[9];
v4float buf274[9];
v4float buf274d[9];
v4float buf292[9];
v4float buf292d[9];
v4float buf296[9];
v4float buf296d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf270_buf270d_i[1] = {{(float*)buf270, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf274_buf274d_i[1] = {{(float*)buf274, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf292_buf292d_o[1] = {{(float*)buf292, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf296_buf296d_o[1] = {{(float*)buf296, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_22_2_bounds = sync_buffer[1];

  while (proc_22_2_bounds)
  {

    // Kernel call : i141:orthogonalize<32>
    window_buf270_buf270d_i->setData(*window_buf270_buf270d_i, (float*)buf270, (float*)buf270d, 1-index, 0);
    window_buf270_buf270d_i->acquire(*window_buf270_buf270d_i, LOCK_21_2_0_8032, LOCK_21_2_1_0, 1-index);
    window_buf274_buf274d_i->setData(*window_buf274_buf274d_i, (float*)buf274, (float*)buf274d, 1-index, 0);
    window_buf274_buf274d_i->acquire(*window_buf274_buf274d_i, LOCK_22_2_2_0, LOCK_22_2_3_0, 1-index);
    window_buf292_buf292d_o->setData(*window_buf292_buf292d_o, (float*)buf292, (float*)buf292d, 1-index, 0);
    window_buf292_buf292d_o->acquire(*window_buf292_buf292d_o, LOCK_22_1_0_0, LOCK_22_1_1_0, 1-index);
    window_buf296_buf296d_o->setData(*window_buf296_buf296d_o, (float*)buf296, (float*)buf296d, 1-index, 0);
    window_buf296_buf296d_o->acquire(*window_buf296_buf296d_o, LOCK_22_1_2_0, LOCK_22_1_3_0, 1-index);
    orthogonalize<32>(window_buf270_buf270d_i[0],window_buf274_buf274d_i[0],window_buf292_buf292d_o[0],window_buf296_buf296d_o[0]);
    window_buf270_buf270d_i->release(*window_buf270_buf270d_i, LOCK_21_2_0_8032, LOCK_21_2_1_0, 1-index);
    window_buf274_buf274d_i->release(*window_buf274_buf274d_i, LOCK_22_2_2_0, LOCK_22_2_3_0, 1-index);
    window_buf292_buf292d_o->release(*window_buf292_buf292d_o, LOCK_22_1_0_0, LOCK_22_1_1_0, 1-index);
    window_buf296_buf296d_o->release(*window_buf296_buf296d_o, LOCK_22_1_2_0, LOCK_22_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_22_2_bounds > 0)
      --proc_22_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}