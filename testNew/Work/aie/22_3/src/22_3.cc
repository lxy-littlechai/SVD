// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/22_3/src/22_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_22_3_0_3040 16
#define LOCK_22_3_1_2080 17
#define LOCK_23_3_0_7136 48
#define LOCK_23_3_1_0 49
#define LOCK_22_4_0_7136 32
#define LOCK_22_4_1_0 33
#define LOCK_22_4_2_0 34
#define LOCK_22_4_3_0 35

// Declare shared memory buffers
v4float buf218[65];
v4float buf218d[65];
v4float buf220[65];
v4float buf220d[65];
v4float buf226[65];
v4float buf226d[65];
v4float buf228[65];
v4float buf228d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf218_buf218d_i[1] = {{(float*)buf218, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf220_buf220d_i[1] = {{(float*)buf220, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf226_buf226d_o[1] = {{(float*)buf226, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf228_buf228d_o[1] = {{(float*)buf228, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_22_3_bounds = sync_buffer[1];

  while (proc_22_3_bounds)
  {

    // Kernel call : i122:orthogonalize<256>
    window_buf218_buf218d_i->setData(*window_buf218_buf218d_i, (float*)buf218, (float*)buf218d, 1-index, 0);
    window_buf218_buf218d_i->acquire(*window_buf218_buf218d_i, LOCK_22_3_0_3040, LOCK_22_3_1_2080, 1-index);
    window_buf220_buf220d_i->setData(*window_buf220_buf220d_i, (float*)buf220, (float*)buf220d, 1-index, 0);
    window_buf220_buf220d_i->acquire(*window_buf220_buf220d_i, LOCK_23_3_0_7136, LOCK_23_3_1_0, 1-index);
    window_buf226_buf226d_o->setData(*window_buf226_buf226d_o, (float*)buf226, (float*)buf226d, 1-index, 0);
    window_buf226_buf226d_o->acquire(*window_buf226_buf226d_o, LOCK_22_4_0_7136, LOCK_22_4_1_0, 1-index);
    window_buf228_buf228d_o->setData(*window_buf228_buf228d_o, (float*)buf228, (float*)buf228d, 1-index, 0);
    window_buf228_buf228d_o->acquire(*window_buf228_buf228d_o, LOCK_22_4_2_0, LOCK_22_4_3_0, 1-index);
    orthogonalize<256>(window_buf218_buf218d_i[0],window_buf220_buf220d_i[0],window_buf226_buf226d_o[0],window_buf228_buf228d_o[0]);
    window_buf218_buf218d_i->release(*window_buf218_buf218d_i, LOCK_22_3_0_3040, LOCK_22_3_1_2080, 1-index);
    window_buf220_buf220d_i->release(*window_buf220_buf220d_i, LOCK_23_3_0_7136, LOCK_23_3_1_0, 1-index);
    window_buf226_buf226d_o->release(*window_buf226_buf226d_o, LOCK_22_4_0_7136, LOCK_22_4_1_0, 1-index);
    window_buf228_buf228d_o->release(*window_buf228_buf228d_o, LOCK_22_4_2_0, LOCK_22_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_22_3_bounds > 0)
      --proc_22_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}