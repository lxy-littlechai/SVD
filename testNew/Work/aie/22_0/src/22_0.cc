// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/22_0/src/22_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_22_0_0_0 48
#define LOCK_22_0_1_0 49
#define LOCK_22_0_2_0 50
#define LOCK_22_0_3_0 51
#define LOCK_22_1_0_3040 32
#define LOCK_22_1_1_2080 33
#define LOCK_22_1_2_0 34
#define LOCK_22_1_3_0 35

// Declare shared memory buffers
v4float buf196[65];
v4float buf196d[65];
v4float buf197[65];
v4float buf197d[65];
v4float buf204[65];
v4float buf204d[65];
v4float buf205[65];
v4float buf205d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf196_buf196d_i[1] = {{(float*)buf196, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf197_buf197d_i[1] = {{(float*)buf197, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf204_buf204d_o[1] = {{(float*)buf204, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf205_buf205d_o[1] = {{(float*)buf205, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_22_0_bounds = sync_buffer[1];

  while (proc_22_0_bounds)
  {

    // Kernel call : i110:orthogonalize<256>
    window_buf196_buf196d_i->setData(*window_buf196_buf196d_i, (float*)buf196, (float*)buf196d, 1-index, 0);
    window_buf196_buf196d_i->acquire(*window_buf196_buf196d_i, LOCK_22_0_0_0, LOCK_22_0_1_0, 1-index);
    window_buf197_buf197d_i->setData(*window_buf197_buf197d_i, (float*)buf197, (float*)buf197d, 1-index, 0);
    window_buf197_buf197d_i->acquire(*window_buf197_buf197d_i, LOCK_22_0_2_0, LOCK_22_0_3_0, 1-index);
    window_buf204_buf204d_o->setData(*window_buf204_buf204d_o, (float*)buf204, (float*)buf204d, 1-index, 0);
    window_buf204_buf204d_o->acquire(*window_buf204_buf204d_o, LOCK_22_1_0_3040, LOCK_22_1_1_2080, 1-index);
    window_buf205_buf205d_o->setData(*window_buf205_buf205d_o, (float*)buf205, (float*)buf205d, 1-index, 0);
    window_buf205_buf205d_o->acquire(*window_buf205_buf205d_o, LOCK_22_1_2_0, LOCK_22_1_3_0, 1-index);
    orthogonalize<256>(window_buf196_buf196d_i[0],window_buf197_buf197d_i[0],window_buf204_buf204d_o[0],window_buf205_buf205d_o[0]);
    window_buf196_buf196d_i->release(*window_buf196_buf196d_i, LOCK_22_0_0_0, LOCK_22_0_1_0, 1-index);
    window_buf197_buf197d_i->release(*window_buf197_buf197d_i, LOCK_22_0_2_0, LOCK_22_0_3_0, 1-index);
    window_buf204_buf204d_o->release(*window_buf204_buf204d_o, LOCK_22_1_0_3040, LOCK_22_1_1_2080, 1-index);
    window_buf205_buf205d_o->release(*window_buf205_buf205d_o, LOCK_22_1_2_0, LOCK_22_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_22_0_bounds > 0)
      --proc_22_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}