// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/31_5/src/31_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_31_5_0_0 16
#define LOCK_31_5_1_0 17
#define LOCK_32_5_2_0 50
#define LOCK_32_5_3_0 51
#define LOCK_31_4_0_0 0
#define LOCK_31_4_1_0 1
#define LOCK_31_4_2_0 2
#define LOCK_31_4_3_0 3

// Declare shared memory buffers
v4float buf384[65];
v4float buf384d[65];
v4float buf398[65];
v4float buf398d[65];
v4float buf400[65];
v4float buf400d[65];
v4float buf414[65];
v4float buf414d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf384_buf384d_i[1] = {{(float*)buf384, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf398_buf398d_i[1] = {{(float*)buf398, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf400_buf400d_o[1] = {{(float*)buf400, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf414_buf414d_o[1] = {{(float*)buf414, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_31_5_bounds = sync_buffer[1];

  while (proc_31_5_bounds)
  {

    // Kernel call : i199:orthogonalize<256>
    window_buf384_buf384d_i->setData(*window_buf384_buf384d_i, (float*)buf384, (float*)buf384d, 1-index, 0);
    window_buf384_buf384d_i->acquire(*window_buf384_buf384d_i, LOCK_31_5_0_0, LOCK_31_5_1_0, 1-index);
    window_buf398_buf398d_i->setData(*window_buf398_buf398d_i, (float*)buf398, (float*)buf398d, 1-index, 0);
    window_buf398_buf398d_i->acquire(*window_buf398_buf398d_i, LOCK_32_5_2_0, LOCK_32_5_3_0, 1-index);
    window_buf400_buf400d_o->setData(*window_buf400_buf400d_o, (float*)buf400, (float*)buf400d, 1-index, 0);
    window_buf400_buf400d_o->acquire(*window_buf400_buf400d_o, LOCK_31_4_0_0, LOCK_31_4_1_0, 1-index);
    window_buf414_buf414d_o->setData(*window_buf414_buf414d_o, (float*)buf414, (float*)buf414d, 1-index, 0);
    window_buf414_buf414d_o->acquire(*window_buf414_buf414d_o, LOCK_31_4_2_0, LOCK_31_4_3_0, 1-index);
    orthogonalize<256>(window_buf384_buf384d_i[0],window_buf398_buf398d_i[0],window_buf400_buf400d_o[0],window_buf414_buf414d_o[0]);
    window_buf384_buf384d_i->release(*window_buf384_buf384d_i, LOCK_31_5_0_0, LOCK_31_5_1_0, 1-index);
    window_buf398_buf398d_i->release(*window_buf398_buf398d_i, LOCK_32_5_2_0, LOCK_32_5_3_0, 1-index);
    window_buf400_buf400d_o->release(*window_buf400_buf400d_o, LOCK_31_4_0_0, LOCK_31_4_1_0, 1-index);
    window_buf414_buf414d_o->release(*window_buf414_buf414d_o, LOCK_31_4_2_0, LOCK_31_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_31_5_bounds > 0)
      --proc_31_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}