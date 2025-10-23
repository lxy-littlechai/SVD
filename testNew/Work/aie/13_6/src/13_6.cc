// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/13_6/src/13_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_12_6_0_0 16
#define LOCK_12_6_1_0 17
#define LOCK_13_6_2_0 50
#define LOCK_13_6_3_0 51
#define LOCK_13_7_0_0 32
#define LOCK_13_7_1_0 33
#define LOCK_13_7_2_0 34
#define LOCK_13_7_3_0 35

// Declare shared memory buffers
v4float buf177[65];
v4float buf177d[65];
v4float buf178[65];
v4float buf178d[65];
v4float buf185[65];
v4float buf185d[65];
v4float buf186[65];
v4float buf186d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf177_buf177d_i[1] = {{(float*)buf177, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf178_buf178d_i[1] = {{(float*)buf178, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf185_buf185d_o[1] = {{(float*)buf185, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf186_buf186d_o[1] = {{(float*)buf186, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_13_6_bounds = sync_buffer[1];

  while (proc_13_6_bounds)
  {

    // Kernel call : i98:orthogonalize<256>
    window_buf177_buf177d_i->setData(*window_buf177_buf177d_i, (float*)buf177, (float*)buf177d, 1-index, 0);
    window_buf177_buf177d_i->acquire(*window_buf177_buf177d_i, LOCK_12_6_0_0, LOCK_12_6_1_0, 1-index);
    window_buf178_buf178d_i->setData(*window_buf178_buf178d_i, (float*)buf178, (float*)buf178d, 1-index, 0);
    window_buf178_buf178d_i->acquire(*window_buf178_buf178d_i, LOCK_13_6_2_0, LOCK_13_6_3_0, 1-index);
    window_buf185_buf185d_o->setData(*window_buf185_buf185d_o, (float*)buf185, (float*)buf185d, 1-index, 0);
    window_buf185_buf185d_o->acquire(*window_buf185_buf185d_o, LOCK_13_7_0_0, LOCK_13_7_1_0, 1-index);
    window_buf186_buf186d_o->setData(*window_buf186_buf186d_o, (float*)buf186, (float*)buf186d, 1-index, 0);
    window_buf186_buf186d_o->acquire(*window_buf186_buf186d_o, LOCK_13_7_2_0, LOCK_13_7_3_0, 1-index);
    orthogonalize<256>(window_buf177_buf177d_i[0],window_buf178_buf178d_i[0],window_buf185_buf185d_o[0],window_buf186_buf186d_o[0]);
    window_buf177_buf177d_i->release(*window_buf177_buf177d_i, LOCK_12_6_0_0, LOCK_12_6_1_0, 1-index);
    window_buf178_buf178d_i->release(*window_buf178_buf178d_i, LOCK_13_6_2_0, LOCK_13_6_3_0, 1-index);
    window_buf185_buf185d_o->release(*window_buf185_buf185d_o, LOCK_13_7_0_0, LOCK_13_7_1_0, 1-index);
    window_buf186_buf186d_o->release(*window_buf186_buf186d_o, LOCK_13_7_2_0, LOCK_13_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_13_6_bounds > 0)
      --proc_13_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}