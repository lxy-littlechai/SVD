// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/19_1/src/19_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_19_1_0_3936 16
#define LOCK_19_1_1_5952 17
#define LOCK_20_1_2_0 50
#define LOCK_20_1_3_0 51
#define LOCK_19_0_0_8032 0
#define LOCK_19_0_1_0 1
#define LOCK_19_0_2_0 2
#define LOCK_19_0_3_0 3

// Declare shared memory buffers
v4float buf286[9];
v4float buf286d[9];
v4float buf300[9];
v4float buf300d[9];
v4float buf308[9];
v4float buf308d[9];
v4float buf322[9];
v4float buf322d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf286_buf286d_i[1] = {{(float*)buf286, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf300_buf300d_i[1] = {{(float*)buf300, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf308_buf308d_o[1] = {{(float*)buf308, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf322_buf322d_o[1] = {{(float*)buf322, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_19_1_bounds = sync_buffer[1];

  while (proc_19_1_bounds)
  {

    // Kernel call : i149:orthogonalize<32>
    window_buf286_buf286d_i->setData(*window_buf286_buf286d_i, (float*)buf286, (float*)buf286d, 1-index, 0);
    window_buf286_buf286d_i->acquire(*window_buf286_buf286d_i, LOCK_19_1_0_3936, LOCK_19_1_1_5952, 1-index);
    window_buf300_buf300d_i->setData(*window_buf300_buf300d_i, (float*)buf300, (float*)buf300d, 1-index, 0);
    window_buf300_buf300d_i->acquire(*window_buf300_buf300d_i, LOCK_20_1_2_0, LOCK_20_1_3_0, 1-index);
    window_buf308_buf308d_o->setData(*window_buf308_buf308d_o, (float*)buf308, (float*)buf308d, 1-index, 0);
    window_buf308_buf308d_o->acquire(*window_buf308_buf308d_o, LOCK_19_0_0_8032, LOCK_19_0_1_0, 1-index);
    window_buf322_buf322d_o->setData(*window_buf322_buf322d_o, (float*)buf322, (float*)buf322d, 1-index, 0);
    window_buf322_buf322d_o->acquire(*window_buf322_buf322d_o, LOCK_19_0_2_0, LOCK_19_0_3_0, 1-index);
    orthogonalize<32>(window_buf286_buf286d_i[0],window_buf300_buf300d_i[0],window_buf308_buf308d_o[0],window_buf322_buf322d_o[0]);
    window_buf286_buf286d_i->release(*window_buf286_buf286d_i, LOCK_19_1_0_3936, LOCK_19_1_1_5952, 1-index);
    window_buf300_buf300d_i->release(*window_buf300_buf300d_i, LOCK_20_1_2_0, LOCK_20_1_3_0, 1-index);
    window_buf308_buf308d_o->release(*window_buf308_buf308d_o, LOCK_19_0_0_8032, LOCK_19_0_1_0, 1-index);
    window_buf322_buf322d_o->release(*window_buf322_buf322d_o, LOCK_19_0_2_0, LOCK_19_0_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_19_1_bounds > 0)
      --proc_19_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}