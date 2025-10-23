// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/6_3/src/6_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_6_3_0_3936 16
#define LOCK_6_3_1_2080 17
#define LOCK_7_3_2_0 50
#define LOCK_7_3_3_0 51
#define LOCK_6_4_0_8032 32
#define LOCK_6_4_1_0 33
#define LOCK_6_4_2_0 34
#define LOCK_6_4_3_0 35

// Declare shared memory buffers
v4float buf103[9];
v4float buf103d[9];
v4float buf74[9];
v4float buf74d[9];
v4float buf81[9];
v4float buf81d[9];
v4float buf96[9];
v4float buf96d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf74_buf74d_i[1] = {{(float*)buf74, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf81_buf81d_i[1] = {{(float*)buf81, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf96_buf96d_o[1] = {{(float*)buf96, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf103_buf103d_o[1] = {{(float*)buf103, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_6_3_bounds = sync_buffer[1];

  while (proc_6_3_bounds)
  {

    // Kernel call : i38:orthogonalize<32>
    window_buf74_buf74d_i->setData(*window_buf74_buf74d_i, (float*)buf74, (float*)buf74d, 1-index, 0);
    window_buf74_buf74d_i->acquire(*window_buf74_buf74d_i, LOCK_6_3_0_3936, LOCK_6_3_1_2080, 1-index);
    window_buf81_buf81d_i->setData(*window_buf81_buf81d_i, (float*)buf81, (float*)buf81d, 1-index, 0);
    window_buf81_buf81d_i->acquire(*window_buf81_buf81d_i, LOCK_7_3_2_0, LOCK_7_3_3_0, 1-index);
    window_buf96_buf96d_o->setData(*window_buf96_buf96d_o, (float*)buf96, (float*)buf96d, 1-index, 0);
    window_buf96_buf96d_o->acquire(*window_buf96_buf96d_o, LOCK_6_4_0_8032, LOCK_6_4_1_0, 1-index);
    window_buf103_buf103d_o->setData(*window_buf103_buf103d_o, (float*)buf103, (float*)buf103d, 1-index, 0);
    window_buf103_buf103d_o->acquire(*window_buf103_buf103d_o, LOCK_6_4_2_0, LOCK_6_4_3_0, 1-index);
    orthogonalize<32>(window_buf74_buf74d_i[0],window_buf81_buf81d_i[0],window_buf96_buf96d_o[0],window_buf103_buf103d_o[0]);
    window_buf74_buf74d_i->release(*window_buf74_buf74d_i, LOCK_6_3_0_3936, LOCK_6_3_1_2080, 1-index);
    window_buf81_buf81d_i->release(*window_buf81_buf81d_i, LOCK_7_3_2_0, LOCK_7_3_3_0, 1-index);
    window_buf96_buf96d_o->release(*window_buf96_buf96d_o, LOCK_6_4_0_8032, LOCK_6_4_1_0, 1-index);
    window_buf103_buf103d_o->release(*window_buf103_buf103d_o, LOCK_6_4_2_0, LOCK_6_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_6_3_bounds > 0)
      --proc_6_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}