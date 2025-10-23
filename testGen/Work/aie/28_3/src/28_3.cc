// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/28_3/src/28_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_28_3_0_3936 16
#define LOCK_28_3_1_2080 17
#define LOCK_29_3_2_0 50
#define LOCK_29_3_3_0 51
#define LOCK_28_4_0_3936 32
#define LOCK_28_4_1_2080 33
#define LOCK_28_4_2_0 34
#define LOCK_28_4_3_0 35

// Declare shared memory buffers
v4float buf383[9];
v4float buf383d[9];
v4float buf390[9];
v4float buf390d[9];
v4float buf405[9];
v4float buf405d[9];
v4float buf412[9];
v4float buf412d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf383_buf383d_i[1] = {{(float*)buf383, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf390_buf390d_i[1] = {{(float*)buf390, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf405_buf405d_o[1] = {{(float*)buf405, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf412_buf412d_o[1] = {{(float*)buf412, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_28_3_bounds = sync_buffer[1];

  while (proc_28_3_bounds)
  {

    // Kernel call : i190:orthogonalize<32>
    window_buf383_buf383d_i->setData(*window_buf383_buf383d_i, (float*)buf383, (float*)buf383d, 1-index, 0);
    window_buf383_buf383d_i->acquire(*window_buf383_buf383d_i, LOCK_28_3_0_3936, LOCK_28_3_1_2080, 1-index);
    window_buf390_buf390d_i->setData(*window_buf390_buf390d_i, (float*)buf390, (float*)buf390d, 1-index, 0);
    window_buf390_buf390d_i->acquire(*window_buf390_buf390d_i, LOCK_29_3_2_0, LOCK_29_3_3_0, 1-index);
    window_buf405_buf405d_o->setData(*window_buf405_buf405d_o, (float*)buf405, (float*)buf405d, 1-index, 0);
    window_buf405_buf405d_o->acquire(*window_buf405_buf405d_o, LOCK_28_4_0_3936, LOCK_28_4_1_2080, 1-index);
    window_buf412_buf412d_o->setData(*window_buf412_buf412d_o, (float*)buf412, (float*)buf412d, 1-index, 0);
    window_buf412_buf412d_o->acquire(*window_buf412_buf412d_o, LOCK_28_4_2_0, LOCK_28_4_3_0, 1-index);
    orthogonalize<32>(window_buf383_buf383d_i[0],window_buf390_buf390d_i[0],window_buf405_buf405d_o[0],window_buf412_buf412d_o[0]);
    window_buf383_buf383d_i->release(*window_buf383_buf383d_i, LOCK_28_3_0_3936, LOCK_28_3_1_2080, 1-index);
    window_buf390_buf390d_i->release(*window_buf390_buf390d_i, LOCK_29_3_2_0, LOCK_29_3_3_0, 1-index);
    window_buf405_buf405d_o->release(*window_buf405_buf405d_o, LOCK_28_4_0_3936, LOCK_28_4_1_2080, 1-index);
    window_buf412_buf412d_o->release(*window_buf412_buf412d_o, LOCK_28_4_2_0, LOCK_28_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_28_3_bounds > 0)
      --proc_28_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}