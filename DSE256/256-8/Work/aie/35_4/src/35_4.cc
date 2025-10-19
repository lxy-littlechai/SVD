// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/35_4/src/35_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_34_4_0_0 16
#define LOCK_34_4_1_0 17
#define LOCK_35_4_0_7136 48
#define LOCK_35_4_1_0 49
#define LOCK_35_3_0_7136 0
#define LOCK_35_3_1_0 1
#define LOCK_35_3_2_0 2
#define LOCK_35_3_3_0 3

// Declare shared memory buffers
v4float buf406[65];
v4float buf406d[65];
v4float buf415[65];
v4float buf415d[65];
v4float buf422[65];
v4float buf422d[65];
v4float buf431[65];
v4float buf431d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf406_buf406d_i[1] = {{(float*)buf406, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf415_buf415d_i[1] = {{(float*)buf415, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf422_buf422d_o[1] = {{(float*)buf422, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf431_buf431d_o[1] = {{(float*)buf431, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_35_4_bounds = sync_buffer[1];

  while (proc_35_4_bounds)
  {

    // Kernel call : i211:orthogonalize<256>
    window_buf406_buf406d_i->setData(*window_buf406_buf406d_i, (float*)buf406, (float*)buf406d, 1-index, 0);
    window_buf406_buf406d_i->acquire(*window_buf406_buf406d_i, LOCK_34_4_0_0, LOCK_34_4_1_0, 1-index);
    window_buf415_buf415d_i->setData(*window_buf415_buf415d_i, (float*)buf415, (float*)buf415d, 1-index, 0);
    window_buf415_buf415d_i->acquire(*window_buf415_buf415d_i, LOCK_35_4_0_7136, LOCK_35_4_1_0, 1-index);
    window_buf422_buf422d_o->setData(*window_buf422_buf422d_o, (float*)buf422, (float*)buf422d, 1-index, 0);
    window_buf422_buf422d_o->acquire(*window_buf422_buf422d_o, LOCK_35_3_0_7136, LOCK_35_3_1_0, 1-index);
    window_buf431_buf431d_o->setData(*window_buf431_buf431d_o, (float*)buf431, (float*)buf431d, 1-index, 0);
    window_buf431_buf431d_o->acquire(*window_buf431_buf431d_o, LOCK_35_3_2_0, LOCK_35_3_3_0, 1-index);
    orthogonalize<256>(window_buf406_buf406d_i[0],window_buf415_buf415d_i[0],window_buf422_buf422d_o[0],window_buf431_buf431d_o[0]);
    window_buf406_buf406d_i->release(*window_buf406_buf406d_i, LOCK_34_4_0_0, LOCK_34_4_1_0, 1-index);
    window_buf415_buf415d_i->release(*window_buf415_buf415d_i, LOCK_35_4_0_7136, LOCK_35_4_1_0, 1-index);
    window_buf422_buf422d_o->release(*window_buf422_buf422d_o, LOCK_35_3_0_7136, LOCK_35_3_1_0, 1-index);
    window_buf431_buf431d_o->release(*window_buf431_buf431d_o, LOCK_35_3_2_0, LOCK_35_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_35_4_bounds > 0)
      --proc_35_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}