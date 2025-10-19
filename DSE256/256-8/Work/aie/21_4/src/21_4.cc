// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/21_4/src/21_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_20_4_0_0 16
#define LOCK_20_4_1_0 17
#define LOCK_21_4_2_0 50
#define LOCK_21_4_3_0 51
#define LOCK_21_5_0_0 32
#define LOCK_21_5_1_0 33
#define LOCK_21_5_2_0 34
#define LOCK_21_5_3_0 35

// Declare shared memory buffers
v4float buf306[65];
v4float buf306d[65];
v4float buf311[65];
v4float buf311d[65];
v4float buf322[65];
v4float buf322d[65];
v4float buf327[65];
v4float buf327d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf306_buf306d_i[1] = {{(float*)buf306, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf311_buf311d_i[1] = {{(float*)buf311, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf322_buf322d_o[1] = {{(float*)buf322, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf327_buf327d_o[1] = {{(float*)buf327, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_21_4_bounds = sync_buffer[1];

  while (proc_21_4_bounds)
  {

    // Kernel call : i158:orthogonalize<256>
    window_buf306_buf306d_i->setData(*window_buf306_buf306d_i, (float*)buf306, (float*)buf306d, 1-index, 0);
    window_buf306_buf306d_i->acquire(*window_buf306_buf306d_i, LOCK_20_4_0_0, LOCK_20_4_1_0, 1-index);
    window_buf311_buf311d_i->setData(*window_buf311_buf311d_i, (float*)buf311, (float*)buf311d, 1-index, 0);
    window_buf311_buf311d_i->acquire(*window_buf311_buf311d_i, LOCK_21_4_2_0, LOCK_21_4_3_0, 1-index);
    window_buf322_buf322d_o->setData(*window_buf322_buf322d_o, (float*)buf322, (float*)buf322d, 1-index, 0);
    window_buf322_buf322d_o->acquire(*window_buf322_buf322d_o, LOCK_21_5_0_0, LOCK_21_5_1_0, 1-index);
    window_buf327_buf327d_o->setData(*window_buf327_buf327d_o, (float*)buf327, (float*)buf327d, 1-index, 0);
    window_buf327_buf327d_o->acquire(*window_buf327_buf327d_o, LOCK_21_5_2_0, LOCK_21_5_3_0, 1-index);
    orthogonalize<256>(window_buf306_buf306d_i[0],window_buf311_buf311d_i[0],window_buf322_buf322d_o[0],window_buf327_buf327d_o[0]);
    window_buf306_buf306d_i->release(*window_buf306_buf306d_i, LOCK_20_4_0_0, LOCK_20_4_1_0, 1-index);
    window_buf311_buf311d_i->release(*window_buf311_buf311d_i, LOCK_21_4_2_0, LOCK_21_4_3_0, 1-index);
    window_buf322_buf322d_o->release(*window_buf322_buf322d_o, LOCK_21_5_0_0, LOCK_21_5_1_0, 1-index);
    window_buf327_buf327d_o->release(*window_buf327_buf327d_o, LOCK_21_5_2_0, LOCK_21_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_21_4_bounds > 0)
      --proc_21_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}