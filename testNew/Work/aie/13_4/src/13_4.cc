// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/13_4/src/13_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_12_4_0_7136 16
#define LOCK_12_4_1_0 17
#define LOCK_13_4_2_0 50
#define LOCK_13_4_3_0 51
#define LOCK_13_5_0_7136 32
#define LOCK_13_5_1_0 33
#define LOCK_13_5_2_0 34
#define LOCK_13_5_3_0 35

// Declare shared memory buffers
v4float buf160[65];
v4float buf160d[65];
v4float buf164[65];
v4float buf164d[65];
v4float buf168[65];
v4float buf168d[65];
v4float buf172[65];
v4float buf172d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf160_buf160d_i[1] = {{(float*)buf160, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf164_buf164d_i[1] = {{(float*)buf164, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf168_buf168d_o[1] = {{(float*)buf168, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf172_buf172d_o[1] = {{(float*)buf172, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_13_4_bounds = sync_buffer[1];

  while (proc_13_4_bounds)
  {

    // Kernel call : i90:orthogonalize<256>
    window_buf160_buf160d_i->setData(*window_buf160_buf160d_i, (float*)buf160, (float*)buf160d, 1-index, 0);
    window_buf160_buf160d_i->acquire(*window_buf160_buf160d_i, LOCK_12_4_0_7136, LOCK_12_4_1_0, 1-index);
    window_buf164_buf164d_i->setData(*window_buf164_buf164d_i, (float*)buf164, (float*)buf164d, 1-index, 0);
    window_buf164_buf164d_i->acquire(*window_buf164_buf164d_i, LOCK_13_4_2_0, LOCK_13_4_3_0, 1-index);
    window_buf168_buf168d_o->setData(*window_buf168_buf168d_o, (float*)buf168, (float*)buf168d, 1-index, 0);
    window_buf168_buf168d_o->acquire(*window_buf168_buf168d_o, LOCK_13_5_0_7136, LOCK_13_5_1_0, 1-index);
    window_buf172_buf172d_o->setData(*window_buf172_buf172d_o, (float*)buf172, (float*)buf172d, 1-index, 0);
    window_buf172_buf172d_o->acquire(*window_buf172_buf172d_o, LOCK_13_5_2_0, LOCK_13_5_3_0, 1-index);
    orthogonalize<256>(window_buf160_buf160d_i[0],window_buf164_buf164d_i[0],window_buf168_buf168d_o[0],window_buf172_buf172d_o[0]);
    window_buf160_buf160d_i->release(*window_buf160_buf160d_i, LOCK_12_4_0_7136, LOCK_12_4_1_0, 1-index);
    window_buf164_buf164d_i->release(*window_buf164_buf164d_i, LOCK_13_4_2_0, LOCK_13_4_3_0, 1-index);
    window_buf168_buf168d_o->release(*window_buf168_buf168d_o, LOCK_13_5_0_7136, LOCK_13_5_1_0, 1-index);
    window_buf172_buf172d_o->release(*window_buf172_buf172d_o, LOCK_13_5_2_0, LOCK_13_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_13_4_bounds > 0)
      --proc_13_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}