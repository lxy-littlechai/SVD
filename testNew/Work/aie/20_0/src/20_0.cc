// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/20_0/src/20_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_19_0_0_0 16
#define LOCK_19_0_1_0 17
#define LOCK_19_0_2_0 18
#define LOCK_19_0_3_0 19
#define LOCK_20_1_0_7136 32
#define LOCK_20_1_1_0 33
#define LOCK_20_1_2_0 34
#define LOCK_20_1_3_0 35

// Declare shared memory buffers
v4float buf192[65];
v4float buf192d[65];
v4float buf193[65];
v4float buf193d[65];
v4float buf200[65];
v4float buf200d[65];
v4float buf201[65];
v4float buf201d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf192_buf192d_i[1] = {{(float*)buf192, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf193_buf193d_i[1] = {{(float*)buf193, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf200_buf200d_o[1] = {{(float*)buf200, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf201_buf201d_o[1] = {{(float*)buf201, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_20_0_bounds = sync_buffer[1];

  while (proc_20_0_bounds)
  {

    // Kernel call : i108:orthogonalize<256>
    window_buf192_buf192d_i->setData(*window_buf192_buf192d_i, (float*)buf192, (float*)buf192d, 1-index, 0);
    window_buf192_buf192d_i->acquire(*window_buf192_buf192d_i, LOCK_19_0_0_0, LOCK_19_0_1_0, 1-index);
    window_buf193_buf193d_i->setData(*window_buf193_buf193d_i, (float*)buf193, (float*)buf193d, 1-index, 0);
    window_buf193_buf193d_i->acquire(*window_buf193_buf193d_i, LOCK_19_0_2_0, LOCK_19_0_3_0, 1-index);
    window_buf200_buf200d_o->setData(*window_buf200_buf200d_o, (float*)buf200, (float*)buf200d, 1-index, 0);
    window_buf200_buf200d_o->acquire(*window_buf200_buf200d_o, LOCK_20_1_0_7136, LOCK_20_1_1_0, 1-index);
    window_buf201_buf201d_o->setData(*window_buf201_buf201d_o, (float*)buf201, (float*)buf201d, 1-index, 0);
    window_buf201_buf201d_o->acquire(*window_buf201_buf201d_o, LOCK_20_1_2_0, LOCK_20_1_3_0, 1-index);
    orthogonalize<256>(window_buf192_buf192d_i[0],window_buf193_buf193d_i[0],window_buf200_buf200d_o[0],window_buf201_buf201d_o[0]);
    window_buf192_buf192d_i->release(*window_buf192_buf192d_i, LOCK_19_0_0_0, LOCK_19_0_1_0, 1-index);
    window_buf193_buf193d_i->release(*window_buf193_buf193d_i, LOCK_19_0_2_0, LOCK_19_0_3_0, 1-index);
    window_buf200_buf200d_o->release(*window_buf200_buf200d_o, LOCK_20_1_0_7136, LOCK_20_1_1_0, 1-index);
    window_buf201_buf201d_o->release(*window_buf201_buf201d_o, LOCK_20_1_2_0, LOCK_20_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_20_0_bounds > 0)
      --proc_20_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}