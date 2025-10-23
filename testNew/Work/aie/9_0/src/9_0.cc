// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/9_0/src/9_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_9_0_0_0 48
#define LOCK_9_0_1_0 49
#define LOCK_9_0_2_0 50
#define LOCK_9_0_3_0 51
#define LOCK_9_1_0_7136 32
#define LOCK_9_1_1_0 33
#define LOCK_9_1_2_0 34
#define LOCK_9_1_3_0 35

// Declare shared memory buffers
v4float buf70[65];
v4float buf70d[65];
v4float buf71[65];
v4float buf71d[65];
v4float buf78[65];
v4float buf78d[65];
v4float buf79[65];
v4float buf79d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf70_buf70d_i[1] = {{(float*)buf70, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf71_buf71d_i[1] = {{(float*)buf71, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf78_buf78d_o[1] = {{(float*)buf78, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf79_buf79d_o[1] = {{(float*)buf79, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_9_0_bounds = sync_buffer[1];

  while (proc_9_0_bounds)
  {

    // Kernel call : i39:orthogonalize<256>
    window_buf70_buf70d_i->setData(*window_buf70_buf70d_i, (float*)buf70, (float*)buf70d, 1-index, 0);
    window_buf70_buf70d_i->acquire(*window_buf70_buf70d_i, LOCK_9_0_0_0, LOCK_9_0_1_0, 1-index);
    window_buf71_buf71d_i->setData(*window_buf71_buf71d_i, (float*)buf71, (float*)buf71d, 1-index, 0);
    window_buf71_buf71d_i->acquire(*window_buf71_buf71d_i, LOCK_9_0_2_0, LOCK_9_0_3_0, 1-index);
    window_buf78_buf78d_o->setData(*window_buf78_buf78d_o, (float*)buf78, (float*)buf78d, 1-index, 0);
    window_buf78_buf78d_o->acquire(*window_buf78_buf78d_o, LOCK_9_1_0_7136, LOCK_9_1_1_0, 1-index);
    window_buf79_buf79d_o->setData(*window_buf79_buf79d_o, (float*)buf79, (float*)buf79d, 1-index, 0);
    window_buf79_buf79d_o->acquire(*window_buf79_buf79d_o, LOCK_9_1_2_0, LOCK_9_1_3_0, 1-index);
    orthogonalize<256>(window_buf70_buf70d_i[0],window_buf71_buf71d_i[0],window_buf78_buf78d_o[0],window_buf79_buf79d_o[0]);
    window_buf70_buf70d_i->release(*window_buf70_buf70d_i, LOCK_9_0_0_0, LOCK_9_0_1_0, 1-index);
    window_buf71_buf71d_i->release(*window_buf71_buf71d_i, LOCK_9_0_2_0, LOCK_9_0_3_0, 1-index);
    window_buf78_buf78d_o->release(*window_buf78_buf78d_o, LOCK_9_1_0_7136, LOCK_9_1_1_0, 1-index);
    window_buf79_buf79d_o->release(*window_buf79_buf79d_o, LOCK_9_1_2_0, LOCK_9_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_9_0_bounds > 0)
      --proc_9_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}