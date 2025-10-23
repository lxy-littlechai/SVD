// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/7_4/src/7_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_6_4_0_7136 16
#define LOCK_6_4_1_0 17
#define LOCK_7_4_2_0 50
#define LOCK_7_4_3_0 51
#define LOCK_7_5_0_7136 32
#define LOCK_7_5_1_0 33
#define LOCK_7_5_2_0 34
#define LOCK_7_5_3_0 35

// Declare shared memory buffers
v4float buf102[65];
v4float buf102d[65];
v4float buf105[65];
v4float buf105d[65];
v4float buf110[65];
v4float buf110d[65];
v4float buf97[65];
v4float buf97d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf97_buf97d_i[1] = {{(float*)buf97, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf102_buf102d_i[1] = {{(float*)buf102, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf105_buf105d_o[1] = {{(float*)buf105, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf110_buf110d_o[1] = {{(float*)buf110, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_7_4_bounds = sync_buffer[1];

  while (proc_7_4_bounds)
  {

    // Kernel call : i53:orthogonalize<256>
    window_buf97_buf97d_i->setData(*window_buf97_buf97d_i, (float*)buf97, (float*)buf97d, 1-index, 0);
    window_buf97_buf97d_i->acquire(*window_buf97_buf97d_i, LOCK_6_4_0_7136, LOCK_6_4_1_0, 1-index);
    window_buf102_buf102d_i->setData(*window_buf102_buf102d_i, (float*)buf102, (float*)buf102d, 1-index, 0);
    window_buf102_buf102d_i->acquire(*window_buf102_buf102d_i, LOCK_7_4_2_0, LOCK_7_4_3_0, 1-index);
    window_buf105_buf105d_o->setData(*window_buf105_buf105d_o, (float*)buf105, (float*)buf105d, 1-index, 0);
    window_buf105_buf105d_o->acquire(*window_buf105_buf105d_o, LOCK_7_5_0_7136, LOCK_7_5_1_0, 1-index);
    window_buf110_buf110d_o->setData(*window_buf110_buf110d_o, (float*)buf110, (float*)buf110d, 1-index, 0);
    window_buf110_buf110d_o->acquire(*window_buf110_buf110d_o, LOCK_7_5_2_0, LOCK_7_5_3_0, 1-index);
    orthogonalize<256>(window_buf97_buf97d_i[0],window_buf102_buf102d_i[0],window_buf105_buf105d_o[0],window_buf110_buf110d_o[0]);
    window_buf97_buf97d_i->release(*window_buf97_buf97d_i, LOCK_6_4_0_7136, LOCK_6_4_1_0, 1-index);
    window_buf102_buf102d_i->release(*window_buf102_buf102d_i, LOCK_7_4_2_0, LOCK_7_4_3_0, 1-index);
    window_buf105_buf105d_o->release(*window_buf105_buf105d_o, LOCK_7_5_0_7136, LOCK_7_5_1_0, 1-index);
    window_buf110_buf110d_o->release(*window_buf110_buf110d_o, LOCK_7_5_2_0, LOCK_7_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_7_4_bounds > 0)
      --proc_7_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}