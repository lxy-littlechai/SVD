// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/11_1/src/11_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_11_1_0_7136 16
#define LOCK_11_1_1_0 17
#define LOCK_12_1_2_0 50
#define LOCK_12_1_3_0 51
#define LOCK_11_2_0_0 32
#define LOCK_11_2_1_0 33
#define LOCK_11_2_2_0 34
#define LOCK_11_2_3_0 35

// Declare shared memory buffers
v4float buf136[65];
v4float buf136d[65];
v4float buf139[65];
v4float buf139d[65];
v4float buf144[65];
v4float buf144d[65];
v4float buf147[65];
v4float buf147d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf136_buf136d_i[1] = {{(float*)buf136, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf139_buf139d_i[1] = {{(float*)buf139, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf144_buf144d_o[1] = {{(float*)buf144, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf147_buf147d_o[1] = {{(float*)buf147, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_11_1_bounds = sync_buffer[1];

  while (proc_11_1_bounds)
  {

    // Kernel call : i76:orthogonalize<256>
    window_buf136_buf136d_i->setData(*window_buf136_buf136d_i, (float*)buf136, (float*)buf136d, 1-index, 0);
    window_buf136_buf136d_i->acquire(*window_buf136_buf136d_i, LOCK_11_1_0_7136, LOCK_11_1_1_0, 1-index);
    window_buf139_buf139d_i->setData(*window_buf139_buf139d_i, (float*)buf139, (float*)buf139d, 1-index, 0);
    window_buf139_buf139d_i->acquire(*window_buf139_buf139d_i, LOCK_12_1_2_0, LOCK_12_1_3_0, 1-index);
    window_buf144_buf144d_o->setData(*window_buf144_buf144d_o, (float*)buf144, (float*)buf144d, 1-index, 0);
    window_buf144_buf144d_o->acquire(*window_buf144_buf144d_o, LOCK_11_2_0_0, LOCK_11_2_1_0, 1-index);
    window_buf147_buf147d_o->setData(*window_buf147_buf147d_o, (float*)buf147, (float*)buf147d, 1-index, 0);
    window_buf147_buf147d_o->acquire(*window_buf147_buf147d_o, LOCK_11_2_2_0, LOCK_11_2_3_0, 1-index);
    orthogonalize<256>(window_buf136_buf136d_i[0],window_buf139_buf139d_i[0],window_buf144_buf144d_o[0],window_buf147_buf147d_o[0]);
    window_buf136_buf136d_i->release(*window_buf136_buf136d_i, LOCK_11_1_0_7136, LOCK_11_1_1_0, 1-index);
    window_buf139_buf139d_i->release(*window_buf139_buf139d_i, LOCK_12_1_2_0, LOCK_12_1_3_0, 1-index);
    window_buf144_buf144d_o->release(*window_buf144_buf144d_o, LOCK_11_2_0_0, LOCK_11_2_1_0, 1-index);
    window_buf147_buf147d_o->release(*window_buf147_buf147d_o, LOCK_11_2_2_0, LOCK_11_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_11_1_bounds > 0)
      --proc_11_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}