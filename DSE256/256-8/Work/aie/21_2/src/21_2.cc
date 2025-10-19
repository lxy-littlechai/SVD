// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/21_2/src/21_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_20_2_0_0 16
#define LOCK_20_2_1_0 17
#define LOCK_20_2_2_0 18
#define LOCK_20_2_3_0 19
#define LOCK_21_3_0_7136 32
#define LOCK_21_3_1_0 33
#define LOCK_21_3_2_0 34
#define LOCK_21_3_3_0 35

// Declare shared memory buffers
v4float buf276[65];
v4float buf276d[65];
v4float buf277[65];
v4float buf277d[65];
v4float buf292[65];
v4float buf292d[65];
v4float buf293[65];
v4float buf293d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf276_buf276d_i[1] = {{(float*)buf276, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf277_buf277d_i[1] = {{(float*)buf277, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf292_buf292d_o[1] = {{(float*)buf292, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf293_buf293d_o[1] = {{(float*)buf293, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_21_2_bounds = sync_buffer[1];

  while (proc_21_2_bounds)
  {

    // Kernel call : i142:orthogonalize<256>
    window_buf276_buf276d_i->setData(*window_buf276_buf276d_i, (float*)buf276, (float*)buf276d, 1-index, 0);
    window_buf276_buf276d_i->acquire(*window_buf276_buf276d_i, LOCK_20_2_0_0, LOCK_20_2_1_0, 1-index);
    window_buf277_buf277d_i->setData(*window_buf277_buf277d_i, (float*)buf277, (float*)buf277d, 1-index, 0);
    window_buf277_buf277d_i->acquire(*window_buf277_buf277d_i, LOCK_20_2_2_0, LOCK_20_2_3_0, 1-index);
    window_buf292_buf292d_o->setData(*window_buf292_buf292d_o, (float*)buf292, (float*)buf292d, 1-index, 0);
    window_buf292_buf292d_o->acquire(*window_buf292_buf292d_o, LOCK_21_3_0_7136, LOCK_21_3_1_0, 1-index);
    window_buf293_buf293d_o->setData(*window_buf293_buf293d_o, (float*)buf293, (float*)buf293d, 1-index, 0);
    window_buf293_buf293d_o->acquire(*window_buf293_buf293d_o, LOCK_21_3_2_0, LOCK_21_3_3_0, 1-index);
    orthogonalize<256>(window_buf276_buf276d_i[0],window_buf277_buf277d_i[0],window_buf292_buf292d_o[0],window_buf293_buf293d_o[0]);
    window_buf276_buf276d_i->release(*window_buf276_buf276d_i, LOCK_20_2_0_0, LOCK_20_2_1_0, 1-index);
    window_buf277_buf277d_i->release(*window_buf277_buf277d_i, LOCK_20_2_2_0, LOCK_20_2_3_0, 1-index);
    window_buf292_buf292d_o->release(*window_buf292_buf292d_o, LOCK_21_3_0_7136, LOCK_21_3_1_0, 1-index);
    window_buf293_buf293d_o->release(*window_buf293_buf293d_o, LOCK_21_3_2_0, LOCK_21_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_21_2_bounds > 0)
      --proc_21_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}