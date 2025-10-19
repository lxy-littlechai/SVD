// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/19_5/src/19_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_19_5_2_6080 18
#define LOCK_19_5_3_2112 19
#define LOCK_20_5_2_0 50
#define LOCK_20_5_3_0 51
#define LOCK_19_6_0_0 32
#define LOCK_19_6_1_0 33
#define LOCK_19_6_2_0 34
#define LOCK_19_6_3_0 35

// Declare shared memory buffers
v4float buf321[65];
v4float buf321d[65];
v4float buf325[65];
v4float buf325d[65];
v4float buf337[65];
v4float buf337d[65];
v4float buf341[65];
v4float buf341d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf321_buf321d_i[1] = {{(float*)buf321, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf325_buf325d_i[1] = {{(float*)buf325, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf337_buf337d_o[1] = {{(float*)buf337, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf341_buf341d_o[1] = {{(float*)buf341, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_19_5_bounds = sync_buffer[1];

  while (proc_19_5_bounds)
  {

    // Kernel call : i164:orthogonalize<256>
    window_buf321_buf321d_i->setData(*window_buf321_buf321d_i, (float*)buf321, (float*)buf321d, 1-index, 0);
    window_buf321_buf321d_i->acquire(*window_buf321_buf321d_i, LOCK_19_5_2_6080, LOCK_19_5_3_2112, 1-index);
    window_buf325_buf325d_i->setData(*window_buf325_buf325d_i, (float*)buf325, (float*)buf325d, 1-index, 0);
    window_buf325_buf325d_i->acquire(*window_buf325_buf325d_i, LOCK_20_5_2_0, LOCK_20_5_3_0, 1-index);
    window_buf337_buf337d_o->setData(*window_buf337_buf337d_o, (float*)buf337, (float*)buf337d, 1-index, 0);
    window_buf337_buf337d_o->acquire(*window_buf337_buf337d_o, LOCK_19_6_0_0, LOCK_19_6_1_0, 1-index);
    window_buf341_buf341d_o->setData(*window_buf341_buf341d_o, (float*)buf341, (float*)buf341d, 1-index, 0);
    window_buf341_buf341d_o->acquire(*window_buf341_buf341d_o, LOCK_19_6_2_0, LOCK_19_6_3_0, 1-index);
    orthogonalize<256>(window_buf321_buf321d_i[0],window_buf325_buf325d_i[0],window_buf337_buf337d_o[0],window_buf341_buf341d_o[0]);
    window_buf321_buf321d_i->release(*window_buf321_buf321d_i, LOCK_19_5_2_6080, LOCK_19_5_3_2112, 1-index);
    window_buf325_buf325d_i->release(*window_buf325_buf325d_i, LOCK_20_5_2_0, LOCK_20_5_3_0, 1-index);
    window_buf337_buf337d_o->release(*window_buf337_buf337d_o, LOCK_19_6_0_0, LOCK_19_6_1_0, 1-index);
    window_buf341_buf341d_o->release(*window_buf341_buf341d_o, LOCK_19_6_2_0, LOCK_19_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_19_5_bounds > 0)
      --proc_19_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}