// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/27_2/src/27_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_26_2_0_8032 16
#define LOCK_26_2_1_0 17
#define LOCK_27_2_2_0 50
#define LOCK_27_2_3_0 51
#define LOCK_27_3_0_8032 32
#define LOCK_27_3_1_0 33
#define LOCK_27_3_2_0 34
#define LOCK_27_3_3_0 35

// Declare shared memory buffers
v4float buf363[9];
v4float buf363d[9];
v4float buf372[9];
v4float buf372d[9];
v4float buf385[9];
v4float buf385d[9];
v4float buf394[9];
v4float buf394d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf363_buf363d_i[1] = {{(float*)buf363, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf372_buf372d_i[1] = {{(float*)buf372, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf385_buf385d_o[1] = {{(float*)buf385, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf394_buf394d_o[1] = {{(float*)buf394, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_27_2_bounds = sync_buffer[1];

  while (proc_27_2_bounds)
  {

    // Kernel call : i178:orthogonalize<32>
    window_buf363_buf363d_i->setData(*window_buf363_buf363d_i, (float*)buf363, (float*)buf363d, 1-index, 0);
    window_buf363_buf363d_i->acquire(*window_buf363_buf363d_i, LOCK_26_2_0_8032, LOCK_26_2_1_0, 1-index);
    window_buf372_buf372d_i->setData(*window_buf372_buf372d_i, (float*)buf372, (float*)buf372d, 1-index, 0);
    window_buf372_buf372d_i->acquire(*window_buf372_buf372d_i, LOCK_27_2_2_0, LOCK_27_2_3_0, 1-index);
    window_buf385_buf385d_o->setData(*window_buf385_buf385d_o, (float*)buf385, (float*)buf385d, 1-index, 0);
    window_buf385_buf385d_o->acquire(*window_buf385_buf385d_o, LOCK_27_3_0_8032, LOCK_27_3_1_0, 1-index);
    window_buf394_buf394d_o->setData(*window_buf394_buf394d_o, (float*)buf394, (float*)buf394d, 1-index, 0);
    window_buf394_buf394d_o->acquire(*window_buf394_buf394d_o, LOCK_27_3_2_0, LOCK_27_3_3_0, 1-index);
    orthogonalize<32>(window_buf363_buf363d_i[0],window_buf372_buf372d_i[0],window_buf385_buf385d_o[0],window_buf394_buf394d_o[0]);
    window_buf363_buf363d_i->release(*window_buf363_buf363d_i, LOCK_26_2_0_8032, LOCK_26_2_1_0, 1-index);
    window_buf372_buf372d_i->release(*window_buf372_buf372d_i, LOCK_27_2_2_0, LOCK_27_2_3_0, 1-index);
    window_buf385_buf385d_o->release(*window_buf385_buf385d_o, LOCK_27_3_0_8032, LOCK_27_3_1_0, 1-index);
    window_buf394_buf394d_o->release(*window_buf394_buf394d_o, LOCK_27_3_2_0, LOCK_27_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_27_2_bounds > 0)
      --proc_27_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}