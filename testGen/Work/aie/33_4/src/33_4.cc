// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/33_4/src/33_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_32_4_0_8032 16
#define LOCK_32_4_1_0 17
#define LOCK_33_4_2_0 50
#define LOCK_33_4_3_0 51
#define LOCK_33_5_0_8032 32
#define LOCK_33_5_1_0 33
#define LOCK_33_5_2_0 34
#define LOCK_33_5_3_0 35

// Declare shared memory buffers
v4float buf397[9];
v4float buf397d[9];
v4float buf402[9];
v4float buf402d[9];
v4float buf419[9];
v4float buf419d[9];
v4float buf424[9];
v4float buf424d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf397_buf397d_i[1] = {{(float*)buf397, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf402_buf402d_i[1] = {{(float*)buf402, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf419_buf419d_o[1] = {{(float*)buf419, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf424_buf424d_o[1] = {{(float*)buf424, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_33_4_bounds = sync_buffer[1];

  while (proc_33_4_bounds)
  {

    // Kernel call : i206:orthogonalize<32>
    window_buf397_buf397d_i->setData(*window_buf397_buf397d_i, (float*)buf397, (float*)buf397d, 1-index, 0);
    window_buf397_buf397d_i->acquire(*window_buf397_buf397d_i, LOCK_32_4_0_8032, LOCK_32_4_1_0, 1-index);
    window_buf402_buf402d_i->setData(*window_buf402_buf402d_i, (float*)buf402, (float*)buf402d, 1-index, 0);
    window_buf402_buf402d_i->acquire(*window_buf402_buf402d_i, LOCK_33_4_2_0, LOCK_33_4_3_0, 1-index);
    window_buf419_buf419d_o->setData(*window_buf419_buf419d_o, (float*)buf419, (float*)buf419d, 1-index, 0);
    window_buf419_buf419d_o->acquire(*window_buf419_buf419d_o, LOCK_33_5_0_8032, LOCK_33_5_1_0, 1-index);
    window_buf424_buf424d_o->setData(*window_buf424_buf424d_o, (float*)buf424, (float*)buf424d, 1-index, 0);
    window_buf424_buf424d_o->acquire(*window_buf424_buf424d_o, LOCK_33_5_2_0, LOCK_33_5_3_0, 1-index);
    orthogonalize<32>(window_buf397_buf397d_i[0],window_buf402_buf402d_i[0],window_buf419_buf419d_o[0],window_buf424_buf424d_o[0]);
    window_buf397_buf397d_i->release(*window_buf397_buf397d_i, LOCK_32_4_0_8032, LOCK_32_4_1_0, 1-index);
    window_buf402_buf402d_i->release(*window_buf402_buf402d_i, LOCK_33_4_2_0, LOCK_33_4_3_0, 1-index);
    window_buf419_buf419d_o->release(*window_buf419_buf419d_o, LOCK_33_5_0_8032, LOCK_33_5_1_0, 1-index);
    window_buf424_buf424d_o->release(*window_buf424_buf424d_o, LOCK_33_5_2_0, LOCK_33_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_33_4_bounds > 0)
      --proc_33_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}