// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/3_6/src/3_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_2_6_0_0 16
#define LOCK_2_6_1_0 17
#define LOCK_3_6_2_0 50
#define LOCK_3_6_3_0 51
#define LOCK_3_7_0_0 32
#define LOCK_3_7_1_0 33
#define LOCK_3_7_2_0 34
#define LOCK_3_7_3_0 35

// Declare shared memory buffers
v4float buf107[65];
v4float buf107d[65];
v4float buf113[65];
v4float buf113d[65];
v4float buf123[65];
v4float buf123d[65];
v4float buf97[65];
v4float buf97d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf97_buf97d_i[1] = {{(float*)buf97, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf107_buf107d_i[1] = {{(float*)buf107, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf113_buf113d_o[1] = {{(float*)buf113, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf123_buf123d_o[1] = {{(float*)buf123, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_3_6_bounds = sync_buffer[1];

  while (proc_3_6_bounds)
  {

    // Kernel call : i50:orthogonalize<256>
    window_buf97_buf97d_i->setData(*window_buf97_buf97d_i, (float*)buf97, (float*)buf97d, 1-index, 0);
    window_buf97_buf97d_i->acquire(*window_buf97_buf97d_i, LOCK_2_6_0_0, LOCK_2_6_1_0, 1-index);
    window_buf107_buf107d_i->setData(*window_buf107_buf107d_i, (float*)buf107, (float*)buf107d, 1-index, 0);
    window_buf107_buf107d_i->acquire(*window_buf107_buf107d_i, LOCK_3_6_2_0, LOCK_3_6_3_0, 1-index);
    window_buf113_buf113d_o->setData(*window_buf113_buf113d_o, (float*)buf113, (float*)buf113d, 1-index, 0);
    window_buf113_buf113d_o->acquire(*window_buf113_buf113d_o, LOCK_3_7_0_0, LOCK_3_7_1_0, 1-index);
    window_buf123_buf123d_o->setData(*window_buf123_buf123d_o, (float*)buf123, (float*)buf123d, 1-index, 0);
    window_buf123_buf123d_o->acquire(*window_buf123_buf123d_o, LOCK_3_7_2_0, LOCK_3_7_3_0, 1-index);
    orthogonalize<256>(window_buf97_buf97d_i[0],window_buf107_buf107d_i[0],window_buf113_buf113d_o[0],window_buf123_buf123d_o[0]);
    window_buf97_buf97d_i->release(*window_buf97_buf97d_i, LOCK_2_6_0_0, LOCK_2_6_1_0, 1-index);
    window_buf107_buf107d_i->release(*window_buf107_buf107d_i, LOCK_3_6_2_0, LOCK_3_6_3_0, 1-index);
    window_buf113_buf113d_o->release(*window_buf113_buf113d_o, LOCK_3_7_0_0, LOCK_3_7_1_0, 1-index);
    window_buf123_buf123d_o->release(*window_buf123_buf123d_o, LOCK_3_7_2_0, LOCK_3_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_3_6_bounds > 0)
      --proc_3_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}