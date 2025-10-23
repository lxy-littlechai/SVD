// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/22_1/src/22_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_22_1_0_0 16
#define LOCK_22_1_1_0 17
#define LOCK_23_1_0_0 48
#define LOCK_23_1_1_0 49
#define LOCK_22_0_0_0 0
#define LOCK_22_0_1_0 1
#define LOCK_22_0_2_0 2
#define LOCK_22_0_3_0 3

// Declare shared memory buffers
v4float buf292[9];
v4float buf292d[9];
v4float buf294[9];
v4float buf294d[9];
v4float buf314[9];
v4float buf314d[9];
v4float buf316[9];
v4float buf316d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf292_buf292d_i[1] = {{(float*)buf292, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf294_buf294d_i[1] = {{(float*)buf294, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf314_buf314d_o[1] = {{(float*)buf314, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf316_buf316d_o[1] = {{(float*)buf316, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_22_1_bounds = sync_buffer[1];

  while (proc_22_1_bounds)
  {

    // Kernel call : i152:orthogonalize<32>
    window_buf292_buf292d_i->setData(*window_buf292_buf292d_i, (float*)buf292, (float*)buf292d, 1-index, 0);
    window_buf292_buf292d_i->acquire(*window_buf292_buf292d_i, LOCK_22_1_0_0, LOCK_22_1_1_0, 1-index);
    window_buf294_buf294d_i->setData(*window_buf294_buf294d_i, (float*)buf294, (float*)buf294d, 1-index, 0);
    window_buf294_buf294d_i->acquire(*window_buf294_buf294d_i, LOCK_23_1_0_0, LOCK_23_1_1_0, 1-index);
    window_buf314_buf314d_o->setData(*window_buf314_buf314d_o, (float*)buf314, (float*)buf314d, 1-index, 0);
    window_buf314_buf314d_o->acquire(*window_buf314_buf314d_o, LOCK_22_0_0_0, LOCK_22_0_1_0, 1-index);
    window_buf316_buf316d_o->setData(*window_buf316_buf316d_o, (float*)buf316, (float*)buf316d, 1-index, 0);
    window_buf316_buf316d_o->acquire(*window_buf316_buf316d_o, LOCK_22_0_2_0, LOCK_22_0_3_0, 1-index);
    orthogonalize<32>(window_buf292_buf292d_i[0],window_buf294_buf294d_i[0],window_buf314_buf314d_o[0],window_buf316_buf316d_o[0]);
    window_buf292_buf292d_i->release(*window_buf292_buf292d_i, LOCK_22_1_0_0, LOCK_22_1_1_0, 1-index);
    window_buf294_buf294d_i->release(*window_buf294_buf294d_i, LOCK_23_1_0_0, LOCK_23_1_1_0, 1-index);
    window_buf314_buf314d_o->release(*window_buf314_buf314d_o, LOCK_22_0_0_0, LOCK_22_0_1_0, 1-index);
    window_buf316_buf316d_o->release(*window_buf316_buf316d_o, LOCK_22_0_2_0, LOCK_22_0_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_22_1_bounds > 0)
      --proc_22_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}