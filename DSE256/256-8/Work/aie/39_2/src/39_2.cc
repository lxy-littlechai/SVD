// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/39_2/src/39_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_38_2_0_0 16
#define LOCK_38_2_1_0 17
#define LOCK_39_2_2_0 50
#define LOCK_39_2_3_0 51
#define LOCK_39_3_0_0 32
#define LOCK_39_3_1_0 33
#define LOCK_39_3_2_0 34
#define LOCK_39_3_3_0 35

// Declare shared memory buffers
v4float buf505[65];
v4float buf505d[65];
v4float buf506[65];
v4float buf506d[65];
v4float buf521[65];
v4float buf521d[65];
v4float buf522[65];
v4float buf522d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf505_buf505d_i[1] = {{(float*)buf505, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf506_buf506d_i[1] = {{(float*)buf506, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf521_buf521d_o[1] = {{(float*)buf521, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf522_buf522d_o[1] = {{(float*)buf522, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_39_2_bounds = sync_buffer[1];

  while (proc_39_2_bounds)
  {

    // Kernel call : i254:orthogonalize<256>
    window_buf505_buf505d_i->setData(*window_buf505_buf505d_i, (float*)buf505, (float*)buf505d, 1-index, 0);
    window_buf505_buf505d_i->acquire(*window_buf505_buf505d_i, LOCK_38_2_0_0, LOCK_38_2_1_0, 1-index);
    window_buf506_buf506d_i->setData(*window_buf506_buf506d_i, (float*)buf506, (float*)buf506d, 1-index, 0);
    window_buf506_buf506d_i->acquire(*window_buf506_buf506d_i, LOCK_39_2_2_0, LOCK_39_2_3_0, 1-index);
    window_buf521_buf521d_o->setData(*window_buf521_buf521d_o, (float*)buf521, (float*)buf521d, 1-index, 0);
    window_buf521_buf521d_o->acquire(*window_buf521_buf521d_o, LOCK_39_3_0_0, LOCK_39_3_1_0, 1-index);
    window_buf522_buf522d_o->setData(*window_buf522_buf522d_o, (float*)buf522, (float*)buf522d, 1-index, 0);
    window_buf522_buf522d_o->acquire(*window_buf522_buf522d_o, LOCK_39_3_2_0, LOCK_39_3_3_0, 1-index);
    orthogonalize<256>(window_buf505_buf505d_i[0],window_buf506_buf506d_i[0],window_buf521_buf521d_o[0],window_buf522_buf522d_o[0]);
    window_buf505_buf505d_i->release(*window_buf505_buf505d_i, LOCK_38_2_0_0, LOCK_38_2_1_0, 1-index);
    window_buf506_buf506d_i->release(*window_buf506_buf506d_i, LOCK_39_2_2_0, LOCK_39_2_3_0, 1-index);
    window_buf521_buf521d_o->release(*window_buf521_buf521d_o, LOCK_39_3_0_0, LOCK_39_3_1_0, 1-index);
    window_buf522_buf522d_o->release(*window_buf522_buf522d_o, LOCK_39_3_2_0, LOCK_39_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_39_2_bounds > 0)
      --proc_39_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}