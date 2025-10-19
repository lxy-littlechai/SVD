// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/42_2/src/42_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_41_2_0_0 16
#define LOCK_41_2_1_0 17
#define LOCK_42_2_2_0 50
#define LOCK_42_2_3_0 51
#define LOCK_42_3_0_0 32
#define LOCK_42_3_1_0 33
#define LOCK_42_3_2_0 34
#define LOCK_42_3_3_0 35

// Declare shared memory buffers
v4float buf499[65];
v4float buf499d[65];
v4float buf500[65];
v4float buf500d[65];
v4float buf515[65];
v4float buf515d[65];
v4float buf516[65];
v4float buf516d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf499_buf499d_i[1] = {{(float*)buf499, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf500_buf500d_i[1] = {{(float*)buf500, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf515_buf515d_o[1] = {{(float*)buf515, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf516_buf516d_o[1] = {{(float*)buf516, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_42_2_bounds = sync_buffer[1];

  while (proc_42_2_bounds)
  {

    // Kernel call : i257:orthogonalize<256>
    window_buf499_buf499d_i->setData(*window_buf499_buf499d_i, (float*)buf499, (float*)buf499d, 1-index, 0);
    window_buf499_buf499d_i->acquire(*window_buf499_buf499d_i, LOCK_41_2_0_0, LOCK_41_2_1_0, 1-index);
    window_buf500_buf500d_i->setData(*window_buf500_buf500d_i, (float*)buf500, (float*)buf500d, 1-index, 0);
    window_buf500_buf500d_i->acquire(*window_buf500_buf500d_i, LOCK_42_2_2_0, LOCK_42_2_3_0, 1-index);
    window_buf515_buf515d_o->setData(*window_buf515_buf515d_o, (float*)buf515, (float*)buf515d, 1-index, 0);
    window_buf515_buf515d_o->acquire(*window_buf515_buf515d_o, LOCK_42_3_0_0, LOCK_42_3_1_0, 1-index);
    window_buf516_buf516d_o->setData(*window_buf516_buf516d_o, (float*)buf516, (float*)buf516d, 1-index, 0);
    window_buf516_buf516d_o->acquire(*window_buf516_buf516d_o, LOCK_42_3_2_0, LOCK_42_3_3_0, 1-index);
    orthogonalize<256>(window_buf499_buf499d_i[0],window_buf500_buf500d_i[0],window_buf515_buf515d_o[0],window_buf516_buf516d_o[0]);
    window_buf499_buf499d_i->release(*window_buf499_buf499d_i, LOCK_41_2_0_0, LOCK_41_2_1_0, 1-index);
    window_buf500_buf500d_i->release(*window_buf500_buf500d_i, LOCK_42_2_2_0, LOCK_42_2_3_0, 1-index);
    window_buf515_buf515d_o->release(*window_buf515_buf515d_o, LOCK_42_3_0_0, LOCK_42_3_1_0, 1-index);
    window_buf516_buf516d_o->release(*window_buf516_buf516d_o, LOCK_42_3_2_0, LOCK_42_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_42_2_bounds > 0)
      --proc_42_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}