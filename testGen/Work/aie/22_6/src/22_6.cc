// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/22_6/src/22_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_21_6_0_3936 16
#define LOCK_21_6_1_2080 17
#define LOCK_22_6_2_0 50
#define LOCK_22_6_3_0 51
#define LOCK_22_5_2_8032 2
#define LOCK_22_5_3_0 3
#define LOCK_22_5_0_0 0
#define LOCK_22_5_1_0 1

// Declare shared memory buffers
v4float buf186[9];
v4float buf186d[9];
v4float buf190[9];
v4float buf190d[9];
v4float buf208[9];
v4float buf208d[9];
v4float buf212[9];
v4float buf212d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf186_buf186d_i[1] = {{(float*)buf186, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf190_buf190d_i[1] = {{(float*)buf190, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf208_buf208d_o[1] = {{(float*)buf208, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf212_buf212d_o[1] = {{(float*)buf212, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_22_6_bounds = sync_buffer[1];

  while (proc_22_6_bounds)
  {

    // Kernel call : i97:orthogonalize<32>
    window_buf186_buf186d_i->setData(*window_buf186_buf186d_i, (float*)buf186, (float*)buf186d, 1-index, 0);
    window_buf186_buf186d_i->acquire(*window_buf186_buf186d_i, LOCK_21_6_0_3936, LOCK_21_6_1_2080, 1-index);
    window_buf190_buf190d_i->setData(*window_buf190_buf190d_i, (float*)buf190, (float*)buf190d, 1-index, 0);
    window_buf190_buf190d_i->acquire(*window_buf190_buf190d_i, LOCK_22_6_2_0, LOCK_22_6_3_0, 1-index);
    window_buf208_buf208d_o->setData(*window_buf208_buf208d_o, (float*)buf208, (float*)buf208d, 1-index, 0);
    window_buf208_buf208d_o->acquire(*window_buf208_buf208d_o, LOCK_22_5_2_8032, LOCK_22_5_3_0, 1-index);
    window_buf212_buf212d_o->setData(*window_buf212_buf212d_o, (float*)buf212, (float*)buf212d, 1-index, 0);
    window_buf212_buf212d_o->acquire(*window_buf212_buf212d_o, LOCK_22_5_0_0, LOCK_22_5_1_0, 1-index);
    orthogonalize<32>(window_buf186_buf186d_i[0],window_buf190_buf190d_i[0],window_buf208_buf208d_o[0],window_buf212_buf212d_o[0]);
    window_buf186_buf186d_i->release(*window_buf186_buf186d_i, LOCK_21_6_0_3936, LOCK_21_6_1_2080, 1-index);
    window_buf190_buf190d_i->release(*window_buf190_buf190d_i, LOCK_22_6_2_0, LOCK_22_6_3_0, 1-index);
    window_buf208_buf208d_o->release(*window_buf208_buf208d_o, LOCK_22_5_2_8032, LOCK_22_5_3_0, 1-index);
    window_buf212_buf212d_o->release(*window_buf212_buf212d_o, LOCK_22_5_0_0, LOCK_22_5_1_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_22_6_bounds > 0)
      --proc_22_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}