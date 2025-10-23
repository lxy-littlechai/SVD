// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/6_0/src/6_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_5_0_0_0 16
#define LOCK_5_0_1_0 17
#define LOCK_5_0_2_0 18
#define LOCK_5_0_3_0 19
#define LOCK_6_1_0_7136 32
#define LOCK_6_1_1_0 33
#define LOCK_6_1_2_0 34
#define LOCK_6_1_3_0 35

// Declare shared memory buffers
v4float buf64[65];
v4float buf64d[65];
v4float buf65[65];
v4float buf65d[65];
v4float buf72[65];
v4float buf72d[65];
v4float buf73[65];
v4float buf73d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf64_buf64d_i[1] = {{(float*)buf64, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf65_buf65d_i[1] = {{(float*)buf65, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf72_buf72d_o[1] = {{(float*)buf72, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf73_buf73d_o[1] = {{(float*)buf73, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_6_0_bounds = sync_buffer[1];

  while (proc_6_0_bounds)
  {

    // Kernel call : i36:orthogonalize<256>
    window_buf64_buf64d_i->setData(*window_buf64_buf64d_i, (float*)buf64, (float*)buf64d, 1-index, 0);
    window_buf64_buf64d_i->acquire(*window_buf64_buf64d_i, LOCK_5_0_0_0, LOCK_5_0_1_0, 1-index);
    window_buf65_buf65d_i->setData(*window_buf65_buf65d_i, (float*)buf65, (float*)buf65d, 1-index, 0);
    window_buf65_buf65d_i->acquire(*window_buf65_buf65d_i, LOCK_5_0_2_0, LOCK_5_0_3_0, 1-index);
    window_buf72_buf72d_o->setData(*window_buf72_buf72d_o, (float*)buf72, (float*)buf72d, 1-index, 0);
    window_buf72_buf72d_o->acquire(*window_buf72_buf72d_o, LOCK_6_1_0_7136, LOCK_6_1_1_0, 1-index);
    window_buf73_buf73d_o->setData(*window_buf73_buf73d_o, (float*)buf73, (float*)buf73d, 1-index, 0);
    window_buf73_buf73d_o->acquire(*window_buf73_buf73d_o, LOCK_6_1_2_0, LOCK_6_1_3_0, 1-index);
    orthogonalize<256>(window_buf64_buf64d_i[0],window_buf65_buf65d_i[0],window_buf72_buf72d_o[0],window_buf73_buf73d_o[0]);
    window_buf64_buf64d_i->release(*window_buf64_buf64d_i, LOCK_5_0_0_0, LOCK_5_0_1_0, 1-index);
    window_buf65_buf65d_i->release(*window_buf65_buf65d_i, LOCK_5_0_2_0, LOCK_5_0_3_0, 1-index);
    window_buf72_buf72d_o->release(*window_buf72_buf72d_o, LOCK_6_1_0_7136, LOCK_6_1_1_0, 1-index);
    window_buf73_buf73d_o->release(*window_buf73_buf73d_o, LOCK_6_1_2_0, LOCK_6_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_6_0_bounds > 0)
      --proc_6_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}