// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/6_1/src/6_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_6_1_0_7136 16
#define LOCK_6_1_1_0 17
#define LOCK_7_1_2_0 50
#define LOCK_7_1_3_0 51
#define LOCK_6_2_0_0 32
#define LOCK_6_2_1_0 33
#define LOCK_6_2_2_0 34
#define LOCK_6_2_3_0 35

// Declare shared memory buffers
v4float buf72[65];
v4float buf72d[65];
v4float buf75[65];
v4float buf75d[65];
v4float buf80[65];
v4float buf80d[65];
v4float buf83[65];
v4float buf83d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf72_buf72d_i[1] = {{(float*)buf72, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf75_buf75d_i[1] = {{(float*)buf75, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf80_buf80d_o[1] = {{(float*)buf80, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf83_buf83d_o[1] = {{(float*)buf83, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_6_1_bounds = sync_buffer[1];

  while (proc_6_1_bounds)
  {

    // Kernel call : i40:orthogonalize<256>
    window_buf72_buf72d_i->setData(*window_buf72_buf72d_i, (float*)buf72, (float*)buf72d, 1-index, 0);
    window_buf72_buf72d_i->acquire(*window_buf72_buf72d_i, LOCK_6_1_0_7136, LOCK_6_1_1_0, 1-index);
    window_buf75_buf75d_i->setData(*window_buf75_buf75d_i, (float*)buf75, (float*)buf75d, 1-index, 0);
    window_buf75_buf75d_i->acquire(*window_buf75_buf75d_i, LOCK_7_1_2_0, LOCK_7_1_3_0, 1-index);
    window_buf80_buf80d_o->setData(*window_buf80_buf80d_o, (float*)buf80, (float*)buf80d, 1-index, 0);
    window_buf80_buf80d_o->acquire(*window_buf80_buf80d_o, LOCK_6_2_0_0, LOCK_6_2_1_0, 1-index);
    window_buf83_buf83d_o->setData(*window_buf83_buf83d_o, (float*)buf83, (float*)buf83d, 1-index, 0);
    window_buf83_buf83d_o->acquire(*window_buf83_buf83d_o, LOCK_6_2_2_0, LOCK_6_2_3_0, 1-index);
    orthogonalize<256>(window_buf72_buf72d_i[0],window_buf75_buf75d_i[0],window_buf80_buf80d_o[0],window_buf83_buf83d_o[0]);
    window_buf72_buf72d_i->release(*window_buf72_buf72d_i, LOCK_6_1_0_7136, LOCK_6_1_1_0, 1-index);
    window_buf75_buf75d_i->release(*window_buf75_buf75d_i, LOCK_7_1_2_0, LOCK_7_1_3_0, 1-index);
    window_buf80_buf80d_o->release(*window_buf80_buf80d_o, LOCK_6_2_0_0, LOCK_6_2_1_0, 1-index);
    window_buf83_buf83d_o->release(*window_buf83_buf83d_o, LOCK_6_2_2_0, LOCK_6_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_6_1_bounds > 0)
      --proc_6_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}