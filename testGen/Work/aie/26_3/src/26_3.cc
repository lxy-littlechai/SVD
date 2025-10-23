// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/26_3/src/26_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_26_3_0_0 16
#define LOCK_26_3_1_0 17
#define LOCK_27_3_2_0 50
#define LOCK_27_3_3_0 51
#define LOCK_26_4_0_8032 32
#define LOCK_26_4_1_0 33
#define LOCK_26_4_2_0 34
#define LOCK_26_4_3_0 35

// Declare shared memory buffers
v4float buf387[9];
v4float buf387d[9];
v4float buf394[9];
v4float buf394d[9];
v4float buf409[9];
v4float buf409d[9];
v4float buf416[9];
v4float buf416d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf387_buf387d_i[1] = {{(float*)buf387, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf394_buf394d_i[1] = {{(float*)buf394, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf409_buf409d_o[1] = {{(float*)buf409, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf416_buf416d_o[1] = {{(float*)buf416, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_26_3_bounds = sync_buffer[1];

  while (proc_26_3_bounds)
  {

    // Kernel call : i188:orthogonalize<32>
    window_buf387_buf387d_i->setData(*window_buf387_buf387d_i, (float*)buf387, (float*)buf387d, 1-index, 0);
    window_buf387_buf387d_i->acquire(*window_buf387_buf387d_i, LOCK_26_3_0_0, LOCK_26_3_1_0, 1-index);
    window_buf394_buf394d_i->setData(*window_buf394_buf394d_i, (float*)buf394, (float*)buf394d, 1-index, 0);
    window_buf394_buf394d_i->acquire(*window_buf394_buf394d_i, LOCK_27_3_2_0, LOCK_27_3_3_0, 1-index);
    window_buf409_buf409d_o->setData(*window_buf409_buf409d_o, (float*)buf409, (float*)buf409d, 1-index, 0);
    window_buf409_buf409d_o->acquire(*window_buf409_buf409d_o, LOCK_26_4_0_8032, LOCK_26_4_1_0, 1-index);
    window_buf416_buf416d_o->setData(*window_buf416_buf416d_o, (float*)buf416, (float*)buf416d, 1-index, 0);
    window_buf416_buf416d_o->acquire(*window_buf416_buf416d_o, LOCK_26_4_2_0, LOCK_26_4_3_0, 1-index);
    orthogonalize<32>(window_buf387_buf387d_i[0],window_buf394_buf394d_i[0],window_buf409_buf409d_o[0],window_buf416_buf416d_o[0]);
    window_buf387_buf387d_i->release(*window_buf387_buf387d_i, LOCK_26_3_0_0, LOCK_26_3_1_0, 1-index);
    window_buf394_buf394d_i->release(*window_buf394_buf394d_i, LOCK_27_3_2_0, LOCK_27_3_3_0, 1-index);
    window_buf409_buf409d_o->release(*window_buf409_buf409d_o, LOCK_26_4_0_8032, LOCK_26_4_1_0, 1-index);
    window_buf416_buf416d_o->release(*window_buf416_buf416d_o, LOCK_26_4_2_0, LOCK_26_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_26_3_bounds > 0)
      --proc_26_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}