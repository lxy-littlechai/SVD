// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/23_2/src/23_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_22_2_0_0 16
#define LOCK_22_2_1_0 17
#define LOCK_23_2_0_7136 48
#define LOCK_23_2_1_0 49
#define LOCK_23_3_0_7136 32
#define LOCK_23_3_1_0 33
#define LOCK_23_3_2_0 34
#define LOCK_23_3_3_0 35

// Declare shared memory buffers
v4float buf212[65];
v4float buf212d[65];
v4float buf215[65];
v4float buf215d[65];
v4float buf220[65];
v4float buf220d[65];
v4float buf223[65];
v4float buf223d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf212_buf212d_i[1] = {{(float*)buf212, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf215_buf215d_i[1] = {{(float*)buf215, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf220_buf220d_o[1] = {{(float*)buf220, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf223_buf223d_o[1] = {{(float*)buf223, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_23_2_bounds = sync_buffer[1];

  while (proc_23_2_bounds)
  {

    // Kernel call : i119:orthogonalize<256>
    window_buf212_buf212d_i->setData(*window_buf212_buf212d_i, (float*)buf212, (float*)buf212d, 1-index, 0);
    window_buf212_buf212d_i->acquire(*window_buf212_buf212d_i, LOCK_22_2_0_0, LOCK_22_2_1_0, 1-index);
    window_buf215_buf215d_i->setData(*window_buf215_buf215d_i, (float*)buf215, (float*)buf215d, 1-index, 0);
    window_buf215_buf215d_i->acquire(*window_buf215_buf215d_i, LOCK_23_2_0_7136, LOCK_23_2_1_0, 1-index);
    window_buf220_buf220d_o->setData(*window_buf220_buf220d_o, (float*)buf220, (float*)buf220d, 1-index, 0);
    window_buf220_buf220d_o->acquire(*window_buf220_buf220d_o, LOCK_23_3_0_7136, LOCK_23_3_1_0, 1-index);
    window_buf223_buf223d_o->setData(*window_buf223_buf223d_o, (float*)buf223, (float*)buf223d, 1-index, 0);
    window_buf223_buf223d_o->acquire(*window_buf223_buf223d_o, LOCK_23_3_2_0, LOCK_23_3_3_0, 1-index);
    orthogonalize<256>(window_buf212_buf212d_i[0],window_buf215_buf215d_i[0],window_buf220_buf220d_o[0],window_buf223_buf223d_o[0]);
    window_buf212_buf212d_i->release(*window_buf212_buf212d_i, LOCK_22_2_0_0, LOCK_22_2_1_0, 1-index);
    window_buf215_buf215d_i->release(*window_buf215_buf215d_i, LOCK_23_2_0_7136, LOCK_23_2_1_0, 1-index);
    window_buf220_buf220d_o->release(*window_buf220_buf220d_o, LOCK_23_3_0_7136, LOCK_23_3_1_0, 1-index);
    window_buf223_buf223d_o->release(*window_buf223_buf223d_o, LOCK_23_3_2_0, LOCK_23_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_23_2_bounds > 0)
      --proc_23_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}