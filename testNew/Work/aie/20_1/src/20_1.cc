// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/20_1/src/20_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_20_1_0_7136 16
#define LOCK_20_1_1_0 17
#define LOCK_21_1_2_0 50
#define LOCK_21_1_3_0 51
#define LOCK_20_2_0_0 32
#define LOCK_20_2_1_0 33
#define LOCK_20_2_2_0 34
#define LOCK_20_2_3_0 35

// Declare shared memory buffers
v4float buf200[65];
v4float buf200d[65];
v4float buf203[65];
v4float buf203d[65];
v4float buf208[65];
v4float buf208d[65];
v4float buf211[65];
v4float buf211d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf200_buf200d_i[1] = {{(float*)buf200, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf203_buf203d_i[1] = {{(float*)buf203, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf208_buf208d_o[1] = {{(float*)buf208, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf211_buf211d_o[1] = {{(float*)buf211, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_20_1_bounds = sync_buffer[1];

  while (proc_20_1_bounds)
  {

    // Kernel call : i112:orthogonalize<256>
    window_buf200_buf200d_i->setData(*window_buf200_buf200d_i, (float*)buf200, (float*)buf200d, 1-index, 0);
    window_buf200_buf200d_i->acquire(*window_buf200_buf200d_i, LOCK_20_1_0_7136, LOCK_20_1_1_0, 1-index);
    window_buf203_buf203d_i->setData(*window_buf203_buf203d_i, (float*)buf203, (float*)buf203d, 1-index, 0);
    window_buf203_buf203d_i->acquire(*window_buf203_buf203d_i, LOCK_21_1_2_0, LOCK_21_1_3_0, 1-index);
    window_buf208_buf208d_o->setData(*window_buf208_buf208d_o, (float*)buf208, (float*)buf208d, 1-index, 0);
    window_buf208_buf208d_o->acquire(*window_buf208_buf208d_o, LOCK_20_2_0_0, LOCK_20_2_1_0, 1-index);
    window_buf211_buf211d_o->setData(*window_buf211_buf211d_o, (float*)buf211, (float*)buf211d, 1-index, 0);
    window_buf211_buf211d_o->acquire(*window_buf211_buf211d_o, LOCK_20_2_2_0, LOCK_20_2_3_0, 1-index);
    orthogonalize<256>(window_buf200_buf200d_i[0],window_buf203_buf203d_i[0],window_buf208_buf208d_o[0],window_buf211_buf211d_o[0]);
    window_buf200_buf200d_i->release(*window_buf200_buf200d_i, LOCK_20_1_0_7136, LOCK_20_1_1_0, 1-index);
    window_buf203_buf203d_i->release(*window_buf203_buf203d_i, LOCK_21_1_2_0, LOCK_21_1_3_0, 1-index);
    window_buf208_buf208d_o->release(*window_buf208_buf208d_o, LOCK_20_2_0_0, LOCK_20_2_1_0, 1-index);
    window_buf211_buf211d_o->release(*window_buf211_buf211d_o, LOCK_20_2_2_0, LOCK_20_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_20_1_bounds > 0)
      --proc_20_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}