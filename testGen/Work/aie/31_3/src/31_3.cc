// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/31_3/src/31_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_31_3_0_0 16
#define LOCK_31_3_1_0 17
#define LOCK_32_3_2_0 50
#define LOCK_32_3_3_0 51
#define LOCK_31_4_0_8032 32
#define LOCK_31_4_1_0 33
#define LOCK_31_4_2_0 34
#define LOCK_31_4_3_0 35

// Declare shared memory buffers
v4float buf377[9];
v4float buf377d[9];
v4float buf384[9];
v4float buf384d[9];
v4float buf399[9];
v4float buf399d[9];
v4float buf406[9];
v4float buf406d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf377_buf377d_i[1] = {{(float*)buf377, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf384_buf384d_i[1] = {{(float*)buf384, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf399_buf399d_o[1] = {{(float*)buf399, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf406_buf406d_o[1] = {{(float*)buf406, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_31_3_bounds = sync_buffer[1];

  while (proc_31_3_bounds)
  {

    // Kernel call : i193:orthogonalize<32>
    window_buf377_buf377d_i->setData(*window_buf377_buf377d_i, (float*)buf377, (float*)buf377d, 1-index, 0);
    window_buf377_buf377d_i->acquire(*window_buf377_buf377d_i, LOCK_31_3_0_0, LOCK_31_3_1_0, 1-index);
    window_buf384_buf384d_i->setData(*window_buf384_buf384d_i, (float*)buf384, (float*)buf384d, 1-index, 0);
    window_buf384_buf384d_i->acquire(*window_buf384_buf384d_i, LOCK_32_3_2_0, LOCK_32_3_3_0, 1-index);
    window_buf399_buf399d_o->setData(*window_buf399_buf399d_o, (float*)buf399, (float*)buf399d, 1-index, 0);
    window_buf399_buf399d_o->acquire(*window_buf399_buf399d_o, LOCK_31_4_0_8032, LOCK_31_4_1_0, 1-index);
    window_buf406_buf406d_o->setData(*window_buf406_buf406d_o, (float*)buf406, (float*)buf406d, 1-index, 0);
    window_buf406_buf406d_o->acquire(*window_buf406_buf406d_o, LOCK_31_4_2_0, LOCK_31_4_3_0, 1-index);
    orthogonalize<32>(window_buf377_buf377d_i[0],window_buf384_buf384d_i[0],window_buf399_buf399d_o[0],window_buf406_buf406d_o[0]);
    window_buf377_buf377d_i->release(*window_buf377_buf377d_i, LOCK_31_3_0_0, LOCK_31_3_1_0, 1-index);
    window_buf384_buf384d_i->release(*window_buf384_buf384d_i, LOCK_32_3_2_0, LOCK_32_3_3_0, 1-index);
    window_buf399_buf399d_o->release(*window_buf399_buf399d_o, LOCK_31_4_0_8032, LOCK_31_4_1_0, 1-index);
    window_buf406_buf406d_o->release(*window_buf406_buf406d_o, LOCK_31_4_2_0, LOCK_31_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_31_3_bounds > 0)
      --proc_31_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}