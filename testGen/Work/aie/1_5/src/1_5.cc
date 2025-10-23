// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/1_5/src/1_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_1_5_0_0 16
#define LOCK_1_5_1_0 17
#define LOCK_2_5_2_0 50
#define LOCK_2_5_3_0 51
#define LOCK_1_6_0_0 32
#define LOCK_1_6_1_0 33
#define LOCK_1_6_2_0 34
#define LOCK_1_6_3_0 35

// Declare shared memory buffers
v4float buf113[9];
v4float buf113d[9];
v4float buf117[9];
v4float buf117d[9];
v4float buf135[9];
v4float buf135d[9];
v4float buf139[9];
v4float buf139d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf113_buf113d_i[1] = {{(float*)buf113, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf117_buf117d_i[1] = {{(float*)buf117, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf135_buf135d_o[1] = {{(float*)buf135, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf139_buf139d_o[1] = {{(float*)buf139, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_1_5_bounds = sync_buffer[1];

  while (proc_1_5_bounds)
  {

    // Kernel call : i55:orthogonalize<32>
    window_buf113_buf113d_i->setData(*window_buf113_buf113d_i, (float*)buf113, (float*)buf113d, 1-index, 0);
    window_buf113_buf113d_i->acquire(*window_buf113_buf113d_i, LOCK_1_5_0_0, LOCK_1_5_1_0, 1-index);
    window_buf117_buf117d_i->setData(*window_buf117_buf117d_i, (float*)buf117, (float*)buf117d, 1-index, 0);
    window_buf117_buf117d_i->acquire(*window_buf117_buf117d_i, LOCK_2_5_2_0, LOCK_2_5_3_0, 1-index);
    window_buf135_buf135d_o->setData(*window_buf135_buf135d_o, (float*)buf135, (float*)buf135d, 1-index, 0);
    window_buf135_buf135d_o->acquire(*window_buf135_buf135d_o, LOCK_1_6_0_0, LOCK_1_6_1_0, 1-index);
    window_buf139_buf139d_o->setData(*window_buf139_buf139d_o, (float*)buf139, (float*)buf139d, 1-index, 0);
    window_buf139_buf139d_o->acquire(*window_buf139_buf139d_o, LOCK_1_6_2_0, LOCK_1_6_3_0, 1-index);
    orthogonalize<32>(window_buf113_buf113d_i[0],window_buf117_buf117d_i[0],window_buf135_buf135d_o[0],window_buf139_buf139d_o[0]);
    window_buf113_buf113d_i->release(*window_buf113_buf113d_i, LOCK_1_5_0_0, LOCK_1_5_1_0, 1-index);
    window_buf117_buf117d_i->release(*window_buf117_buf117d_i, LOCK_2_5_2_0, LOCK_2_5_3_0, 1-index);
    window_buf135_buf135d_o->release(*window_buf135_buf135d_o, LOCK_1_6_0_0, LOCK_1_6_1_0, 1-index);
    window_buf139_buf139d_o->release(*window_buf139_buf139d_o, LOCK_1_6_2_0, LOCK_1_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_1_5_bounds > 0)
      --proc_1_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}