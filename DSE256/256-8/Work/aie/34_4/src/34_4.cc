// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/34_4/src/34_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_33_4_0_7136 16
#define LOCK_33_4_1_0 17
#define LOCK_34_4_2_0 50
#define LOCK_34_4_3_0 51
#define LOCK_34_3_0_0 0
#define LOCK_34_3_1_0 1
#define LOCK_34_3_2_0 2
#define LOCK_34_3_3_0 3

// Declare shared memory buffers
v4float buf404[65];
v4float buf404d[65];
v4float buf408[65];
v4float buf408d[65];
v4float buf420[65];
v4float buf420d[65];
v4float buf424[65];
v4float buf424d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf404_buf404d_i[1] = {{(float*)buf404, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf408_buf408d_i[1] = {{(float*)buf408, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf420_buf420d_o[1] = {{(float*)buf420, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf424_buf424d_o[1] = {{(float*)buf424, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_34_4_bounds = sync_buffer[1];

  while (proc_34_4_bounds)
  {

    // Kernel call : i210:orthogonalize<256>
    window_buf404_buf404d_i->setData(*window_buf404_buf404d_i, (float*)buf404, (float*)buf404d, 1-index, 0);
    window_buf404_buf404d_i->acquire(*window_buf404_buf404d_i, LOCK_33_4_0_7136, LOCK_33_4_1_0, 1-index);
    window_buf408_buf408d_i->setData(*window_buf408_buf408d_i, (float*)buf408, (float*)buf408d, 1-index, 0);
    window_buf408_buf408d_i->acquire(*window_buf408_buf408d_i, LOCK_34_4_2_0, LOCK_34_4_3_0, 1-index);
    window_buf420_buf420d_o->setData(*window_buf420_buf420d_o, (float*)buf420, (float*)buf420d, 1-index, 0);
    window_buf420_buf420d_o->acquire(*window_buf420_buf420d_o, LOCK_34_3_0_0, LOCK_34_3_1_0, 1-index);
    window_buf424_buf424d_o->setData(*window_buf424_buf424d_o, (float*)buf424, (float*)buf424d, 1-index, 0);
    window_buf424_buf424d_o->acquire(*window_buf424_buf424d_o, LOCK_34_3_2_0, LOCK_34_3_3_0, 1-index);
    orthogonalize<256>(window_buf404_buf404d_i[0],window_buf408_buf408d_i[0],window_buf420_buf420d_o[0],window_buf424_buf424d_o[0]);
    window_buf404_buf404d_i->release(*window_buf404_buf404d_i, LOCK_33_4_0_7136, LOCK_33_4_1_0, 1-index);
    window_buf408_buf408d_i->release(*window_buf408_buf408d_i, LOCK_34_4_2_0, LOCK_34_4_3_0, 1-index);
    window_buf420_buf420d_o->release(*window_buf420_buf420d_o, LOCK_34_3_0_0, LOCK_34_3_1_0, 1-index);
    window_buf424_buf424d_o->release(*window_buf424_buf424d_o, LOCK_34_3_2_0, LOCK_34_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_34_4_bounds > 0)
      --proc_34_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}