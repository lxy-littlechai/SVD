// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/17_2/src/17_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_16_2_0_0 16
#define LOCK_16_2_1_0 17
#define LOCK_17_2_2_0 50
#define LOCK_17_2_3_0 51
#define LOCK_17_1_0_3936 0
#define LOCK_17_1_1_2080 1
#define LOCK_17_1_2_0 2
#define LOCK_17_1_3_0 3

// Declare shared memory buffers
v4float buf267[9];
v4float buf267d[9];
v4float buf284[9];
v4float buf284d[9];
v4float buf289[9];
v4float buf289d[9];
v4float buf306[9];
v4float buf306d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf267_buf267d_i[1] = {{(float*)buf267, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf284_buf284d_i[1] = {{(float*)buf284, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf289_buf289d_o[1] = {{(float*)buf289, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf306_buf306d_o[1] = {{(float*)buf306, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_17_2_bounds = sync_buffer[1];

  while (proc_17_2_bounds)
  {

    // Kernel call : i136:orthogonalize<32>
    window_buf267_buf267d_i->setData(*window_buf267_buf267d_i, (float*)buf267, (float*)buf267d, 1-index, 0);
    window_buf267_buf267d_i->acquire(*window_buf267_buf267d_i, LOCK_16_2_0_0, LOCK_16_2_1_0, 1-index);
    window_buf284_buf284d_i->setData(*window_buf284_buf284d_i, (float*)buf284, (float*)buf284d, 1-index, 0);
    window_buf284_buf284d_i->acquire(*window_buf284_buf284d_i, LOCK_17_2_2_0, LOCK_17_2_3_0, 1-index);
    window_buf289_buf289d_o->setData(*window_buf289_buf289d_o, (float*)buf289, (float*)buf289d, 1-index, 0);
    window_buf289_buf289d_o->acquire(*window_buf289_buf289d_o, LOCK_17_1_0_3936, LOCK_17_1_1_2080, 1-index);
    window_buf306_buf306d_o->setData(*window_buf306_buf306d_o, (float*)buf306, (float*)buf306d, 1-index, 0);
    window_buf306_buf306d_o->acquire(*window_buf306_buf306d_o, LOCK_17_1_2_0, LOCK_17_1_3_0, 1-index);
    orthogonalize<32>(window_buf267_buf267d_i[0],window_buf284_buf284d_i[0],window_buf289_buf289d_o[0],window_buf306_buf306d_o[0]);
    window_buf267_buf267d_i->release(*window_buf267_buf267d_i, LOCK_16_2_0_0, LOCK_16_2_1_0, 1-index);
    window_buf284_buf284d_i->release(*window_buf284_buf284d_i, LOCK_17_2_2_0, LOCK_17_2_3_0, 1-index);
    window_buf289_buf289d_o->release(*window_buf289_buf289d_o, LOCK_17_1_0_3936, LOCK_17_1_1_2080, 1-index);
    window_buf306_buf306d_o->release(*window_buf306_buf306d_o, LOCK_17_1_2_0, LOCK_17_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_17_2_bounds > 0)
      --proc_17_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}