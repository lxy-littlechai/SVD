// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/27_7/src/27_7.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_27_7_0_7136 16
#define LOCK_27_7_1_5952 17
#define LOCK_28_7_2_0 50
#define LOCK_28_7_3_0 51

// Declare shared memory buffers
v4float buf540[65];
v4float buf540d[65];
v4float buf541[65];
v4float buf541d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Normalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf540_buf540d_i[1] = {{(float*)buf540, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf541_buf541d_o[1] = {{(float*)buf541, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_27_7_bounds = sync_buffer[1];

  while (proc_27_7_bounds)
  {

    // Kernel call : i274:normalize<256>
    window_buf540_buf540d_i->setData(*window_buf540_buf540d_i, (float*)buf540, (float*)buf540d, 1-index, 0);
    window_buf540_buf540d_i->acquire(*window_buf540_buf540d_i, LOCK_27_7_0_7136, LOCK_27_7_1_5952, 1-index);
    window_buf541_buf541d_o->setData(*window_buf541_buf541d_o, (float*)buf541, (float*)buf541d, 1-index, 0);
    window_buf541_buf541d_o->acquire(*window_buf541_buf541d_o, LOCK_28_7_2_0, LOCK_28_7_3_0, 1-index);
    normalize<256>(window_buf540_buf540d_i[0],window_buf541_buf541d_o[0]);
    window_buf540_buf540d_i->release(*window_buf540_buf540d_i, LOCK_27_7_0_7136, LOCK_27_7_1_5952, 1-index);
    window_buf541_buf541d_o->release(*window_buf541_buf541d_o, LOCK_28_7_2_0, LOCK_28_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_27_7_bounds > 0)
      --proc_27_7_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}