// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/9_4/src/9_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_8_4_0_7136 16
#define LOCK_8_4_1_0 17
#define LOCK_9_4_0_7136 48
#define LOCK_9_4_1_0 49
#define LOCK_9_5_0_0 32
#define LOCK_9_5_1_0 33
#define LOCK_9_5_2_0 34
#define LOCK_9_5_3_0 35

// Declare shared memory buffers
v4float buf103[65];
v4float buf103d[65];
v4float buf106[65];
v4float buf106d[65];
v4float buf111[65];
v4float buf111d[65];
v4float buf98[65];
v4float buf98d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf98_buf98d_i[1] = {{(float*)buf98, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf103_buf103d_i[1] = {{(float*)buf103, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf106_buf106d_o[1] = {{(float*)buf106, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf111_buf111d_o[1] = {{(float*)buf111, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_9_4_bounds = sync_buffer[1];

  while (proc_9_4_bounds)
  {

    // Kernel call : i55:orthogonalize<256>
    window_buf98_buf98d_i->setData(*window_buf98_buf98d_i, (float*)buf98, (float*)buf98d, 1-index, 0);
    window_buf98_buf98d_i->acquire(*window_buf98_buf98d_i, LOCK_8_4_0_7136, LOCK_8_4_1_0, 1-index);
    window_buf103_buf103d_i->setData(*window_buf103_buf103d_i, (float*)buf103, (float*)buf103d, 1-index, 0);
    window_buf103_buf103d_i->acquire(*window_buf103_buf103d_i, LOCK_9_4_0_7136, LOCK_9_4_1_0, 1-index);
    window_buf106_buf106d_o->setData(*window_buf106_buf106d_o, (float*)buf106, (float*)buf106d, 1-index, 0);
    window_buf106_buf106d_o->acquire(*window_buf106_buf106d_o, LOCK_9_5_0_0, LOCK_9_5_1_0, 1-index);
    window_buf111_buf111d_o->setData(*window_buf111_buf111d_o, (float*)buf111, (float*)buf111d, 1-index, 0);
    window_buf111_buf111d_o->acquire(*window_buf111_buf111d_o, LOCK_9_5_2_0, LOCK_9_5_3_0, 1-index);
    orthogonalize<256>(window_buf98_buf98d_i[0],window_buf103_buf103d_i[0],window_buf106_buf106d_o[0],window_buf111_buf111d_o[0]);
    window_buf98_buf98d_i->release(*window_buf98_buf98d_i, LOCK_8_4_0_7136, LOCK_8_4_1_0, 1-index);
    window_buf103_buf103d_i->release(*window_buf103_buf103d_i, LOCK_9_4_0_7136, LOCK_9_4_1_0, 1-index);
    window_buf106_buf106d_o->release(*window_buf106_buf106d_o, LOCK_9_5_0_0, LOCK_9_5_1_0, 1-index);
    window_buf111_buf111d_o->release(*window_buf111_buf111d_o, LOCK_9_5_2_0, LOCK_9_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_9_4_bounds > 0)
      --proc_9_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}