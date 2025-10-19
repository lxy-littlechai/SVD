// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/30_3/src/30_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_30_3_0_7136 16
#define LOCK_30_3_1_0 17
#define LOCK_31_3_2_0 50
#define LOCK_31_3_3_0 51
#define LOCK_30_2_0_7136 0
#define LOCK_30_2_1_0 1
#define LOCK_30_2_2_0 2
#define LOCK_30_2_3_0 3

// Declare shared memory buffers
v4float buf419[65];
v4float buf419d[65];
v4float buf430[65];
v4float buf430d[65];
v4float buf435[65];
v4float buf435d[65];
v4float buf446[65];
v4float buf446d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf419_buf419d_i[1] = {{(float*)buf419, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf430_buf430d_i[1] = {{(float*)buf430, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf435_buf435d_o[1] = {{(float*)buf435, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf446_buf446d_o[1] = {{(float*)buf446, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_30_3_bounds = sync_buffer[1];

  while (proc_30_3_bounds)
  {

    // Kernel call : i214:orthogonalize<256>
    window_buf419_buf419d_i->setData(*window_buf419_buf419d_i, (float*)buf419, (float*)buf419d, 1-index, 0);
    window_buf419_buf419d_i->acquire(*window_buf419_buf419d_i, LOCK_30_3_0_7136, LOCK_30_3_1_0, 1-index);
    window_buf430_buf430d_i->setData(*window_buf430_buf430d_i, (float*)buf430, (float*)buf430d, 1-index, 0);
    window_buf430_buf430d_i->acquire(*window_buf430_buf430d_i, LOCK_31_3_2_0, LOCK_31_3_3_0, 1-index);
    window_buf435_buf435d_o->setData(*window_buf435_buf435d_o, (float*)buf435, (float*)buf435d, 1-index, 0);
    window_buf435_buf435d_o->acquire(*window_buf435_buf435d_o, LOCK_30_2_0_7136, LOCK_30_2_1_0, 1-index);
    window_buf446_buf446d_o->setData(*window_buf446_buf446d_o, (float*)buf446, (float*)buf446d, 1-index, 0);
    window_buf446_buf446d_o->acquire(*window_buf446_buf446d_o, LOCK_30_2_2_0, LOCK_30_2_3_0, 1-index);
    orthogonalize<256>(window_buf419_buf419d_i[0],window_buf430_buf430d_i[0],window_buf435_buf435d_o[0],window_buf446_buf446d_o[0]);
    window_buf419_buf419d_i->release(*window_buf419_buf419d_i, LOCK_30_3_0_7136, LOCK_30_3_1_0, 1-index);
    window_buf430_buf430d_i->release(*window_buf430_buf430d_i, LOCK_31_3_2_0, LOCK_31_3_3_0, 1-index);
    window_buf435_buf435d_o->release(*window_buf435_buf435d_o, LOCK_30_2_0_7136, LOCK_30_2_1_0, 1-index);
    window_buf446_buf446d_o->release(*window_buf446_buf446d_o, LOCK_30_2_2_0, LOCK_30_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_30_3_bounds > 0)
      --proc_30_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}