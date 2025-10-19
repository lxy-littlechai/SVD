// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/38_1/src/38_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_38_1_0_7136 16
#define LOCK_38_1_1_0 17
#define LOCK_39_1_2_0 50
#define LOCK_39_1_3_0 51
#define LOCK_38_2_0_0 32
#define LOCK_38_2_1_0 33
#define LOCK_38_2_2_0 34
#define LOCK_38_2_3_0 35

// Declare shared memory buffers
v4float buf489[65];
v4float buf489d[65];
v4float buf492[65];
v4float buf492d[65];
v4float buf505[65];
v4float buf505d[65];
v4float buf508[65];
v4float buf508d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf489_buf489d_i[1] = {{(float*)buf489, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf492_buf492d_i[1] = {{(float*)buf492, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf505_buf505d_o[1] = {{(float*)buf505, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf508_buf508d_o[1] = {{(float*)buf508, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_38_1_bounds = sync_buffer[1];

  while (proc_38_1_bounds)
  {

    // Kernel call : i245:orthogonalize<256>
    window_buf489_buf489d_i->setData(*window_buf489_buf489d_i, (float*)buf489, (float*)buf489d, 1-index, 0);
    window_buf489_buf489d_i->acquire(*window_buf489_buf489d_i, LOCK_38_1_0_7136, LOCK_38_1_1_0, 1-index);
    window_buf492_buf492d_i->setData(*window_buf492_buf492d_i, (float*)buf492, (float*)buf492d, 1-index, 0);
    window_buf492_buf492d_i->acquire(*window_buf492_buf492d_i, LOCK_39_1_2_0, LOCK_39_1_3_0, 1-index);
    window_buf505_buf505d_o->setData(*window_buf505_buf505d_o, (float*)buf505, (float*)buf505d, 1-index, 0);
    window_buf505_buf505d_o->acquire(*window_buf505_buf505d_o, LOCK_38_2_0_0, LOCK_38_2_1_0, 1-index);
    window_buf508_buf508d_o->setData(*window_buf508_buf508d_o, (float*)buf508, (float*)buf508d, 1-index, 0);
    window_buf508_buf508d_o->acquire(*window_buf508_buf508d_o, LOCK_38_2_2_0, LOCK_38_2_3_0, 1-index);
    orthogonalize<256>(window_buf489_buf489d_i[0],window_buf492_buf492d_i[0],window_buf505_buf505d_o[0],window_buf508_buf508d_o[0]);
    window_buf489_buf489d_i->release(*window_buf489_buf489d_i, LOCK_38_1_0_7136, LOCK_38_1_1_0, 1-index);
    window_buf492_buf492d_i->release(*window_buf492_buf492d_i, LOCK_39_1_2_0, LOCK_39_1_3_0, 1-index);
    window_buf505_buf505d_o->release(*window_buf505_buf505d_o, LOCK_38_2_0_0, LOCK_38_2_1_0, 1-index);
    window_buf508_buf508d_o->release(*window_buf508_buf508d_o, LOCK_38_2_2_0, LOCK_38_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_38_1_bounds > 0)
      --proc_38_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}