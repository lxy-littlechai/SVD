// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/12_2/src/12_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_11_2_0_0 16
#define LOCK_11_2_1_0 17
#define LOCK_12_2_2_0 50
#define LOCK_12_2_3_0 51
#define LOCK_12_3_0_0 32
#define LOCK_12_3_1_0 33
#define LOCK_12_3_2_0 34
#define LOCK_12_3_3_0 35

// Declare shared memory buffers
v4float buf144[65];
v4float buf144d[65];
v4float buf149[65];
v4float buf149d[65];
v4float buf152[65];
v4float buf152d[65];
v4float buf157[65];
v4float buf157d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf144_buf144d_i[1] = {{(float*)buf144, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf149_buf149d_i[1] = {{(float*)buf149, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf152_buf152d_o[1] = {{(float*)buf152, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf157_buf157d_o[1] = {{(float*)buf157, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_12_2_bounds = sync_buffer[1];

  while (proc_12_2_bounds)
  {

    // Kernel call : i81:orthogonalize<256>
    window_buf144_buf144d_i->setData(*window_buf144_buf144d_i, (float*)buf144, (float*)buf144d, 1-index, 0);
    window_buf144_buf144d_i->acquire(*window_buf144_buf144d_i, LOCK_11_2_0_0, LOCK_11_2_1_0, 1-index);
    window_buf149_buf149d_i->setData(*window_buf149_buf149d_i, (float*)buf149, (float*)buf149d, 1-index, 0);
    window_buf149_buf149d_i->acquire(*window_buf149_buf149d_i, LOCK_12_2_2_0, LOCK_12_2_3_0, 1-index);
    window_buf152_buf152d_o->setData(*window_buf152_buf152d_o, (float*)buf152, (float*)buf152d, 1-index, 0);
    window_buf152_buf152d_o->acquire(*window_buf152_buf152d_o, LOCK_12_3_0_0, LOCK_12_3_1_0, 1-index);
    window_buf157_buf157d_o->setData(*window_buf157_buf157d_o, (float*)buf157, (float*)buf157d, 1-index, 0);
    window_buf157_buf157d_o->acquire(*window_buf157_buf157d_o, LOCK_12_3_2_0, LOCK_12_3_3_0, 1-index);
    orthogonalize<256>(window_buf144_buf144d_i[0],window_buf149_buf149d_i[0],window_buf152_buf152d_o[0],window_buf157_buf157d_o[0]);
    window_buf144_buf144d_i->release(*window_buf144_buf144d_i, LOCK_11_2_0_0, LOCK_11_2_1_0, 1-index);
    window_buf149_buf149d_i->release(*window_buf149_buf149d_i, LOCK_12_2_2_0, LOCK_12_2_3_0, 1-index);
    window_buf152_buf152d_o->release(*window_buf152_buf152d_o, LOCK_12_3_0_0, LOCK_12_3_1_0, 1-index);
    window_buf157_buf157d_o->release(*window_buf157_buf157d_o, LOCK_12_3_2_0, LOCK_12_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_12_2_bounds > 0)
      --proc_12_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}