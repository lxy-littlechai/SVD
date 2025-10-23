// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/21_1/src/21_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_21_1_0_0 16
#define LOCK_21_1_1_0 17
#define LOCK_22_1_2_0 50
#define LOCK_22_1_3_0 51
#define LOCK_21_2_0_0 32
#define LOCK_21_2_1_0 33
#define LOCK_21_2_2_0 34
#define LOCK_21_2_3_0 35

// Declare shared memory buffers
v4float buf202[65];
v4float buf202d[65];
v4float buf205[65];
v4float buf205d[65];
v4float buf210[65];
v4float buf210d[65];
v4float buf213[65];
v4float buf213d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf202_buf202d_i[1] = {{(float*)buf202, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf205_buf205d_i[1] = {{(float*)buf205, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf210_buf210d_o[1] = {{(float*)buf210, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf213_buf213d_o[1] = {{(float*)buf213, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_21_1_bounds = sync_buffer[1];

  while (proc_21_1_bounds)
  {

    // Kernel call : i113:orthogonalize<256>
    window_buf202_buf202d_i->setData(*window_buf202_buf202d_i, (float*)buf202, (float*)buf202d, 1-index, 0);
    window_buf202_buf202d_i->acquire(*window_buf202_buf202d_i, LOCK_21_1_0_0, LOCK_21_1_1_0, 1-index);
    window_buf205_buf205d_i->setData(*window_buf205_buf205d_i, (float*)buf205, (float*)buf205d, 1-index, 0);
    window_buf205_buf205d_i->acquire(*window_buf205_buf205d_i, LOCK_22_1_2_0, LOCK_22_1_3_0, 1-index);
    window_buf210_buf210d_o->setData(*window_buf210_buf210d_o, (float*)buf210, (float*)buf210d, 1-index, 0);
    window_buf210_buf210d_o->acquire(*window_buf210_buf210d_o, LOCK_21_2_0_0, LOCK_21_2_1_0, 1-index);
    window_buf213_buf213d_o->setData(*window_buf213_buf213d_o, (float*)buf213, (float*)buf213d, 1-index, 0);
    window_buf213_buf213d_o->acquire(*window_buf213_buf213d_o, LOCK_21_2_2_0, LOCK_21_2_3_0, 1-index);
    orthogonalize<256>(window_buf202_buf202d_i[0],window_buf205_buf205d_i[0],window_buf210_buf210d_o[0],window_buf213_buf213d_o[0]);
    window_buf202_buf202d_i->release(*window_buf202_buf202d_i, LOCK_21_1_0_0, LOCK_21_1_1_0, 1-index);
    window_buf205_buf205d_i->release(*window_buf205_buf205d_i, LOCK_22_1_2_0, LOCK_22_1_3_0, 1-index);
    window_buf210_buf210d_o->release(*window_buf210_buf210d_o, LOCK_21_2_0_0, LOCK_21_2_1_0, 1-index);
    window_buf213_buf213d_o->release(*window_buf213_buf213d_o, LOCK_21_2_2_0, LOCK_21_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_21_1_bounds > 0)
      --proc_21_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}