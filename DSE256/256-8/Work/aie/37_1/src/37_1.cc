// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/37_1/src/37_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_37_1_0_7136 16
#define LOCK_37_1_1_0 17
#define LOCK_38_1_2_0 50
#define LOCK_38_1_3_0 51
#define LOCK_37_2_0_0 32
#define LOCK_37_2_1_0 33
#define LOCK_37_2_2_0 34
#define LOCK_37_2_3_0 35

// Declare shared memory buffers
v4float buf491[65];
v4float buf491d[65];
v4float buf494[65];
v4float buf494d[65];
v4float buf507[65];
v4float buf507d[65];
v4float buf510[65];
v4float buf510d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf491_buf491d_i[1] = {{(float*)buf491, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf494_buf494d_i[1] = {{(float*)buf494, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf507_buf507d_o[1] = {{(float*)buf507, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf510_buf510d_o[1] = {{(float*)buf510, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_37_1_bounds = sync_buffer[1];

  while (proc_37_1_bounds)
  {

    // Kernel call : i244:orthogonalize<256>
    window_buf491_buf491d_i->setData(*window_buf491_buf491d_i, (float*)buf491, (float*)buf491d, 1-index, 0);
    window_buf491_buf491d_i->acquire(*window_buf491_buf491d_i, LOCK_37_1_0_7136, LOCK_37_1_1_0, 1-index);
    window_buf494_buf494d_i->setData(*window_buf494_buf494d_i, (float*)buf494, (float*)buf494d, 1-index, 0);
    window_buf494_buf494d_i->acquire(*window_buf494_buf494d_i, LOCK_38_1_2_0, LOCK_38_1_3_0, 1-index);
    window_buf507_buf507d_o->setData(*window_buf507_buf507d_o, (float*)buf507, (float*)buf507d, 1-index, 0);
    window_buf507_buf507d_o->acquire(*window_buf507_buf507d_o, LOCK_37_2_0_0, LOCK_37_2_1_0, 1-index);
    window_buf510_buf510d_o->setData(*window_buf510_buf510d_o, (float*)buf510, (float*)buf510d, 1-index, 0);
    window_buf510_buf510d_o->acquire(*window_buf510_buf510d_o, LOCK_37_2_2_0, LOCK_37_2_3_0, 1-index);
    orthogonalize<256>(window_buf491_buf491d_i[0],window_buf494_buf494d_i[0],window_buf507_buf507d_o[0],window_buf510_buf510d_o[0]);
    window_buf491_buf491d_i->release(*window_buf491_buf491d_i, LOCK_37_1_0_7136, LOCK_37_1_1_0, 1-index);
    window_buf494_buf494d_i->release(*window_buf494_buf494d_i, LOCK_38_1_2_0, LOCK_38_1_3_0, 1-index);
    window_buf507_buf507d_o->release(*window_buf507_buf507d_o, LOCK_37_2_0_0, LOCK_37_2_1_0, 1-index);
    window_buf510_buf510d_o->release(*window_buf510_buf510d_o, LOCK_37_2_2_0, LOCK_37_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_37_1_bounds > 0)
      --proc_37_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}