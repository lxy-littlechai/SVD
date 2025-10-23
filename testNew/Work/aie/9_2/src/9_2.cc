// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/9_2/src/9_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_8_2_0_0 16
#define LOCK_8_2_1_0 17
#define LOCK_9_2_0_7136 48
#define LOCK_9_2_1_0 49
#define LOCK_9_3_0_7136 32
#define LOCK_9_3_1_0 33
#define LOCK_9_3_2_0 34
#define LOCK_9_3_3_0 35

// Declare shared memory buffers
v4float buf84[65];
v4float buf84d[65];
v4float buf87[65];
v4float buf87d[65];
v4float buf92[65];
v4float buf92d[65];
v4float buf95[65];
v4float buf95d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf84_buf84d_i[1] = {{(float*)buf84, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf87_buf87d_i[1] = {{(float*)buf87, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf92_buf92d_o[1] = {{(float*)buf92, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf95_buf95d_o[1] = {{(float*)buf95, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_9_2_bounds = sync_buffer[1];

  while (proc_9_2_bounds)
  {

    // Kernel call : i47:orthogonalize<256>
    window_buf84_buf84d_i->setData(*window_buf84_buf84d_i, (float*)buf84, (float*)buf84d, 1-index, 0);
    window_buf84_buf84d_i->acquire(*window_buf84_buf84d_i, LOCK_8_2_0_0, LOCK_8_2_1_0, 1-index);
    window_buf87_buf87d_i->setData(*window_buf87_buf87d_i, (float*)buf87, (float*)buf87d, 1-index, 0);
    window_buf87_buf87d_i->acquire(*window_buf87_buf87d_i, LOCK_9_2_0_7136, LOCK_9_2_1_0, 1-index);
    window_buf92_buf92d_o->setData(*window_buf92_buf92d_o, (float*)buf92, (float*)buf92d, 1-index, 0);
    window_buf92_buf92d_o->acquire(*window_buf92_buf92d_o, LOCK_9_3_0_7136, LOCK_9_3_1_0, 1-index);
    window_buf95_buf95d_o->setData(*window_buf95_buf95d_o, (float*)buf95, (float*)buf95d, 1-index, 0);
    window_buf95_buf95d_o->acquire(*window_buf95_buf95d_o, LOCK_9_3_2_0, LOCK_9_3_3_0, 1-index);
    orthogonalize<256>(window_buf84_buf84d_i[0],window_buf87_buf87d_i[0],window_buf92_buf92d_o[0],window_buf95_buf95d_o[0]);
    window_buf84_buf84d_i->release(*window_buf84_buf84d_i, LOCK_8_2_0_0, LOCK_8_2_1_0, 1-index);
    window_buf87_buf87d_i->release(*window_buf87_buf87d_i, LOCK_9_2_0_7136, LOCK_9_2_1_0, 1-index);
    window_buf92_buf92d_o->release(*window_buf92_buf92d_o, LOCK_9_3_0_7136, LOCK_9_3_1_0, 1-index);
    window_buf95_buf95d_o->release(*window_buf95_buf95d_o, LOCK_9_3_2_0, LOCK_9_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_9_2_bounds > 0)
      --proc_9_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}