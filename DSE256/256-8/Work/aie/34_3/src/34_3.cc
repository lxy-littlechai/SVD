// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/34_3/src/34_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_34_3_0_0 16
#define LOCK_34_3_1_0 17
#define LOCK_35_3_0_7136 48
#define LOCK_35_3_1_0 49
#define LOCK_34_2_0_0 0
#define LOCK_34_2_1_0 1
#define LOCK_34_2_2_0 2
#define LOCK_34_2_3_0 3

// Declare shared memory buffers
v4float buf420[65];
v4float buf420d[65];
v4float buf422[65];
v4float buf422d[65];
v4float buf436[65];
v4float buf436d[65];
v4float buf438[65];
v4float buf438d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf420_buf420d_i[1] = {{(float*)buf420, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf422_buf422d_i[1] = {{(float*)buf422, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf436_buf436d_o[1] = {{(float*)buf436, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf438_buf438d_o[1] = {{(float*)buf438, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_34_3_bounds = sync_buffer[1];

  while (proc_34_3_bounds)
  {

    // Kernel call : i218:orthogonalize<256>
    window_buf420_buf420d_i->setData(*window_buf420_buf420d_i, (float*)buf420, (float*)buf420d, 1-index, 0);
    window_buf420_buf420d_i->acquire(*window_buf420_buf420d_i, LOCK_34_3_0_0, LOCK_34_3_1_0, 1-index);
    window_buf422_buf422d_i->setData(*window_buf422_buf422d_i, (float*)buf422, (float*)buf422d, 1-index, 0);
    window_buf422_buf422d_i->acquire(*window_buf422_buf422d_i, LOCK_35_3_0_7136, LOCK_35_3_1_0, 1-index);
    window_buf436_buf436d_o->setData(*window_buf436_buf436d_o, (float*)buf436, (float*)buf436d, 1-index, 0);
    window_buf436_buf436d_o->acquire(*window_buf436_buf436d_o, LOCK_34_2_0_0, LOCK_34_2_1_0, 1-index);
    window_buf438_buf438d_o->setData(*window_buf438_buf438d_o, (float*)buf438, (float*)buf438d, 1-index, 0);
    window_buf438_buf438d_o->acquire(*window_buf438_buf438d_o, LOCK_34_2_2_0, LOCK_34_2_3_0, 1-index);
    orthogonalize<256>(window_buf420_buf420d_i[0],window_buf422_buf422d_i[0],window_buf436_buf436d_o[0],window_buf438_buf438d_o[0]);
    window_buf420_buf420d_i->release(*window_buf420_buf420d_i, LOCK_34_3_0_0, LOCK_34_3_1_0, 1-index);
    window_buf422_buf422d_i->release(*window_buf422_buf422d_i, LOCK_35_3_0_7136, LOCK_35_3_1_0, 1-index);
    window_buf436_buf436d_o->release(*window_buf436_buf436d_o, LOCK_34_2_0_0, LOCK_34_2_1_0, 1-index);
    window_buf438_buf438d_o->release(*window_buf438_buf438d_o, LOCK_34_2_2_0, LOCK_34_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_34_3_bounds > 0)
      --proc_34_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}