// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/11_2/src/11_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_10_2_0_0 16
#define LOCK_10_2_1_1056 17
#define LOCK_11_2_2_0 50
#define LOCK_11_2_3_0 51
#define LOCK_11_3_0_7136 32
#define LOCK_11_3_1_0 33
#define LOCK_11_3_2_0 34
#define LOCK_11_3_3_0 35

// Declare shared memory buffers
v4float buf145dr[65];
v4float buf145r[65];
v4float buf147[65];
v4float buf147d[65];
v4float buf153[65];
v4float buf153d[65];
v4float buf155[65];
v4float buf155d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf145r_buf145dr_i[1] = {{(float*)buf145r, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf147_buf147d_i[1] = {{(float*)buf147, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf153_buf153d_o[1] = {{(float*)buf153, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf155_buf155d_o[1] = {{(float*)buf155, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_11_2_bounds = sync_buffer[1];

  while (proc_11_2_bounds)
  {

    // Kernel call : i80:orthogonalize<256>
    window_buf145r_buf145dr_i->setData(*window_buf145r_buf145dr_i, (float*)buf145r, (float*)buf145dr, 1-index, 0);
    window_buf145r_buf145dr_i->acquire(*window_buf145r_buf145dr_i, LOCK_10_2_0_0, LOCK_10_2_1_1056, 1-index);
    window_buf147_buf147d_i->setData(*window_buf147_buf147d_i, (float*)buf147, (float*)buf147d, 1-index, 0);
    window_buf147_buf147d_i->acquire(*window_buf147_buf147d_i, LOCK_11_2_2_0, LOCK_11_2_3_0, 1-index);
    window_buf153_buf153d_o->setData(*window_buf153_buf153d_o, (float*)buf153, (float*)buf153d, 1-index, 0);
    window_buf153_buf153d_o->acquire(*window_buf153_buf153d_o, LOCK_11_3_0_7136, LOCK_11_3_1_0, 1-index);
    window_buf155_buf155d_o->setData(*window_buf155_buf155d_o, (float*)buf155, (float*)buf155d, 1-index, 0);
    window_buf155_buf155d_o->acquire(*window_buf155_buf155d_o, LOCK_11_3_2_0, LOCK_11_3_3_0, 1-index);
    orthogonalize<256>(window_buf145r_buf145dr_i[0],window_buf147_buf147d_i[0],window_buf153_buf153d_o[0],window_buf155_buf155d_o[0]);
    window_buf145r_buf145dr_i->release(*window_buf145r_buf145dr_i, LOCK_10_2_0_0, LOCK_10_2_1_1056, 1-index);
    window_buf147_buf147d_i->release(*window_buf147_buf147d_i, LOCK_11_2_2_0, LOCK_11_2_3_0, 1-index);
    window_buf153_buf153d_o->release(*window_buf153_buf153d_o, LOCK_11_3_0_7136, LOCK_11_3_1_0, 1-index);
    window_buf155_buf155d_o->release(*window_buf155_buf155d_o, LOCK_11_3_2_0, LOCK_11_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_11_2_bounds > 0)
      --proc_11_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}