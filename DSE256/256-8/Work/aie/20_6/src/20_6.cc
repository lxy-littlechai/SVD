// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/20_6/src/20_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_19_6_0_0 16
#define LOCK_19_6_1_0 17
#define LOCK_20_6_2_0 50
#define LOCK_20_6_3_0 51
#define LOCK_20_7_0_0 32
#define LOCK_20_7_1_0 33
#define LOCK_20_7_2_0 34
#define LOCK_20_7_3_0 35

// Declare shared memory buffers
v4float buf337[65];
v4float buf337d[65];
v4float buf343[65];
v4float buf343d[65];
v4float buf353[65];
v4float buf353d[65];
v4float buf359[65];
v4float buf359d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf337_buf337d_i[1] = {{(float*)buf337, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf343_buf343d_i[1] = {{(float*)buf343, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf353_buf353d_o[1] = {{(float*)buf353, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf359_buf359d_o[1] = {{(float*)buf359, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_20_6_bounds = sync_buffer[1];

  while (proc_20_6_bounds)
  {

    // Kernel call : i173:orthogonalize<256>
    window_buf337_buf337d_i->setData(*window_buf337_buf337d_i, (float*)buf337, (float*)buf337d, 1-index, 0);
    window_buf337_buf337d_i->acquire(*window_buf337_buf337d_i, LOCK_19_6_0_0, LOCK_19_6_1_0, 1-index);
    window_buf343_buf343d_i->setData(*window_buf343_buf343d_i, (float*)buf343, (float*)buf343d, 1-index, 0);
    window_buf343_buf343d_i->acquire(*window_buf343_buf343d_i, LOCK_20_6_2_0, LOCK_20_6_3_0, 1-index);
    window_buf353_buf353d_o->setData(*window_buf353_buf353d_o, (float*)buf353, (float*)buf353d, 1-index, 0);
    window_buf353_buf353d_o->acquire(*window_buf353_buf353d_o, LOCK_20_7_0_0, LOCK_20_7_1_0, 1-index);
    window_buf359_buf359d_o->setData(*window_buf359_buf359d_o, (float*)buf359, (float*)buf359d, 1-index, 0);
    window_buf359_buf359d_o->acquire(*window_buf359_buf359d_o, LOCK_20_7_2_0, LOCK_20_7_3_0, 1-index);
    orthogonalize<256>(window_buf337_buf337d_i[0],window_buf343_buf343d_i[0],window_buf353_buf353d_o[0],window_buf359_buf359d_o[0]);
    window_buf337_buf337d_i->release(*window_buf337_buf337d_i, LOCK_19_6_0_0, LOCK_19_6_1_0, 1-index);
    window_buf343_buf343d_i->release(*window_buf343_buf343d_i, LOCK_20_6_2_0, LOCK_20_6_3_0, 1-index);
    window_buf353_buf353d_o->release(*window_buf353_buf353d_o, LOCK_20_7_0_0, LOCK_20_7_1_0, 1-index);
    window_buf359_buf359d_o->release(*window_buf359_buf359d_o, LOCK_20_7_2_0, LOCK_20_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_20_6_bounds > 0)
      --proc_20_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}