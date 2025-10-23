// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/15_1/src/15_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_15_1_0_0 16
#define LOCK_15_1_1_0 17
#define LOCK_16_1_2_0 50
#define LOCK_16_1_3_0 51
#define LOCK_15_0_0_8032 0
#define LOCK_15_0_1_0 1
#define LOCK_15_0_2_0 2
#define LOCK_15_0_3_0 3

// Declare shared memory buffers
v4float buf293[9];
v4float buf293d[9];
v4float buf305[9];
v4float buf305d[9];
v4float buf315[9];
v4float buf315d[9];
v4float buf327[9];
v4float buf327d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf293_buf293d_i[1] = {{(float*)buf293, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf305_buf305d_i[1] = {{(float*)buf305, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf315_buf315d_o[1] = {{(float*)buf315, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf327_buf327d_o[1] = {{(float*)buf327, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_15_1_bounds = sync_buffer[1];

  while (proc_15_1_bounds)
  {

    // Kernel call : i145:orthogonalize<32>
    window_buf293_buf293d_i->setData(*window_buf293_buf293d_i, (float*)buf293, (float*)buf293d, 1-index, 0);
    window_buf293_buf293d_i->acquire(*window_buf293_buf293d_i, LOCK_15_1_0_0, LOCK_15_1_1_0, 1-index);
    window_buf305_buf305d_i->setData(*window_buf305_buf305d_i, (float*)buf305, (float*)buf305d, 1-index, 0);
    window_buf305_buf305d_i->acquire(*window_buf305_buf305d_i, LOCK_16_1_2_0, LOCK_16_1_3_0, 1-index);
    window_buf315_buf315d_o->setData(*window_buf315_buf315d_o, (float*)buf315, (float*)buf315d, 1-index, 0);
    window_buf315_buf315d_o->acquire(*window_buf315_buf315d_o, LOCK_15_0_0_8032, LOCK_15_0_1_0, 1-index);
    window_buf327_buf327d_o->setData(*window_buf327_buf327d_o, (float*)buf327, (float*)buf327d, 1-index, 0);
    window_buf327_buf327d_o->acquire(*window_buf327_buf327d_o, LOCK_15_0_2_0, LOCK_15_0_3_0, 1-index);
    orthogonalize<32>(window_buf293_buf293d_i[0],window_buf305_buf305d_i[0],window_buf315_buf315d_o[0],window_buf327_buf327d_o[0]);
    window_buf293_buf293d_i->release(*window_buf293_buf293d_i, LOCK_15_1_0_0, LOCK_15_1_1_0, 1-index);
    window_buf305_buf305d_i->release(*window_buf305_buf305d_i, LOCK_16_1_2_0, LOCK_16_1_3_0, 1-index);
    window_buf315_buf315d_o->release(*window_buf315_buf315d_o, LOCK_15_0_0_8032, LOCK_15_0_1_0, 1-index);
    window_buf327_buf327d_o->release(*window_buf327_buf327d_o, LOCK_15_0_2_0, LOCK_15_0_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_15_1_bounds > 0)
      --proc_15_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}