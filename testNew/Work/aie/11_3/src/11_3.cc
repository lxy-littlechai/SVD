// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/11_3/src/11_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_11_3_0_7136 16
#define LOCK_11_3_1_0 17
#define LOCK_12_3_2_0 50
#define LOCK_12_3_3_0 51
#define LOCK_11_4_0_7136 32
#define LOCK_11_4_1_0 33
#define LOCK_11_4_2_0 34
#define LOCK_11_4_3_0 35

// Declare shared memory buffers
v4float buf153[65];
v4float buf153d[65];
v4float buf157[65];
v4float buf157d[65];
v4float buf161[65];
v4float buf161d[65];
v4float buf165[65];
v4float buf165d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf153_buf153d_i[1] = {{(float*)buf153, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf157_buf157d_i[1] = {{(float*)buf157, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf161_buf161d_o[1] = {{(float*)buf161, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf165_buf165d_o[1] = {{(float*)buf165, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_11_3_bounds = sync_buffer[1];

  while (proc_11_3_bounds)
  {

    // Kernel call : i84:orthogonalize<256>
    window_buf153_buf153d_i->setData(*window_buf153_buf153d_i, (float*)buf153, (float*)buf153d, 1-index, 0);
    window_buf153_buf153d_i->acquire(*window_buf153_buf153d_i, LOCK_11_3_0_7136, LOCK_11_3_1_0, 1-index);
    window_buf157_buf157d_i->setData(*window_buf157_buf157d_i, (float*)buf157, (float*)buf157d, 1-index, 0);
    window_buf157_buf157d_i->acquire(*window_buf157_buf157d_i, LOCK_12_3_2_0, LOCK_12_3_3_0, 1-index);
    window_buf161_buf161d_o->setData(*window_buf161_buf161d_o, (float*)buf161, (float*)buf161d, 1-index, 0);
    window_buf161_buf161d_o->acquire(*window_buf161_buf161d_o, LOCK_11_4_0_7136, LOCK_11_4_1_0, 1-index);
    window_buf165_buf165d_o->setData(*window_buf165_buf165d_o, (float*)buf165, (float*)buf165d, 1-index, 0);
    window_buf165_buf165d_o->acquire(*window_buf165_buf165d_o, LOCK_11_4_2_0, LOCK_11_4_3_0, 1-index);
    orthogonalize<256>(window_buf153_buf153d_i[0],window_buf157_buf157d_i[0],window_buf161_buf161d_o[0],window_buf165_buf165d_o[0]);
    window_buf153_buf153d_i->release(*window_buf153_buf153d_i, LOCK_11_3_0_7136, LOCK_11_3_1_0, 1-index);
    window_buf157_buf157d_i->release(*window_buf157_buf157d_i, LOCK_12_3_2_0, LOCK_12_3_3_0, 1-index);
    window_buf161_buf161d_o->release(*window_buf161_buf161d_o, LOCK_11_4_0_7136, LOCK_11_4_1_0, 1-index);
    window_buf165_buf165d_o->release(*window_buf165_buf165d_o, LOCK_11_4_2_0, LOCK_11_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_11_3_bounds > 0)
      --proc_11_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}