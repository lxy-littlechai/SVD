// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/3_5/src/3_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_3_5_0_0 16
#define LOCK_3_5_1_0 17
#define LOCK_4_5_0_0 48
#define LOCK_4_5_1_0 49
#define LOCK_3_6_0_0 32
#define LOCK_3_6_1_0 33
#define LOCK_3_6_2_0 34
#define LOCK_3_6_3_0 35

// Declare shared memory buffers
v4float buf40[65];
v4float buf40d[65];
v4float buf42[65];
v4float buf42d[65];
v4float buf48[65];
v4float buf48d[65];
v4float buf50[65];
v4float buf50d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf40_buf40d_i[1] = {{(float*)buf40, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf42_buf42d_i[1] = {{(float*)buf42, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf48_buf48d_o[1] = {{(float*)buf48, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf50_buf50d_o[1] = {{(float*)buf50, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_3_5_bounds = sync_buffer[1];

  while (proc_3_5_bounds)
  {

    // Kernel call : i22:orthogonalize<256>
    window_buf40_buf40d_i->setData(*window_buf40_buf40d_i, (float*)buf40, (float*)buf40d, 1-index, 0);
    window_buf40_buf40d_i->acquire(*window_buf40_buf40d_i, LOCK_3_5_0_0, LOCK_3_5_1_0, 1-index);
    window_buf42_buf42d_i->setData(*window_buf42_buf42d_i, (float*)buf42, (float*)buf42d, 1-index, 0);
    window_buf42_buf42d_i->acquire(*window_buf42_buf42d_i, LOCK_4_5_0_0, LOCK_4_5_1_0, 1-index);
    window_buf48_buf48d_o->setData(*window_buf48_buf48d_o, (float*)buf48, (float*)buf48d, 1-index, 0);
    window_buf48_buf48d_o->acquire(*window_buf48_buf48d_o, LOCK_3_6_0_0, LOCK_3_6_1_0, 1-index);
    window_buf50_buf50d_o->setData(*window_buf50_buf50d_o, (float*)buf50, (float*)buf50d, 1-index, 0);
    window_buf50_buf50d_o->acquire(*window_buf50_buf50d_o, LOCK_3_6_2_0, LOCK_3_6_3_0, 1-index);
    orthogonalize<256>(window_buf40_buf40d_i[0],window_buf42_buf42d_i[0],window_buf48_buf48d_o[0],window_buf50_buf50d_o[0]);
    window_buf40_buf40d_i->release(*window_buf40_buf40d_i, LOCK_3_5_0_0, LOCK_3_5_1_0, 1-index);
    window_buf42_buf42d_i->release(*window_buf42_buf42d_i, LOCK_4_5_0_0, LOCK_4_5_1_0, 1-index);
    window_buf48_buf48d_o->release(*window_buf48_buf48d_o, LOCK_3_6_0_0, LOCK_3_6_1_0, 1-index);
    window_buf50_buf50d_o->release(*window_buf50_buf50d_o, LOCK_3_6_2_0, LOCK_3_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_3_5_bounds > 0)
      --proc_3_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}