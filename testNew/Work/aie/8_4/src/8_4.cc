// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/8_4/src/8_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_7_4_0_0 16
#define LOCK_7_4_1_0 17
#define LOCK_8_4_2_0 50
#define LOCK_8_4_3_0 51
#define LOCK_8_5_0_7136 32
#define LOCK_8_5_1_0 33
#define LOCK_8_5_2_0 34
#define LOCK_8_5_3_0 35

// Declare shared memory buffers
v4float buf100[65];
v4float buf100d[65];
v4float buf104[65];
v4float buf104d[65];
v4float buf108[65];
v4float buf108d[65];
v4float buf96[65];
v4float buf96d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf96_buf96d_i[1] = {{(float*)buf96, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf100_buf100d_i[1] = {{(float*)buf100, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf104_buf104d_o[1] = {{(float*)buf104, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf108_buf108d_o[1] = {{(float*)buf108, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_8_4_bounds = sync_buffer[1];

  while (proc_8_4_bounds)
  {

    // Kernel call : i54:orthogonalize<256>
    window_buf96_buf96d_i->setData(*window_buf96_buf96d_i, (float*)buf96, (float*)buf96d, 1-index, 0);
    window_buf96_buf96d_i->acquire(*window_buf96_buf96d_i, LOCK_7_4_0_0, LOCK_7_4_1_0, 1-index);
    window_buf100_buf100d_i->setData(*window_buf100_buf100d_i, (float*)buf100, (float*)buf100d, 1-index, 0);
    window_buf100_buf100d_i->acquire(*window_buf100_buf100d_i, LOCK_8_4_2_0, LOCK_8_4_3_0, 1-index);
    window_buf104_buf104d_o->setData(*window_buf104_buf104d_o, (float*)buf104, (float*)buf104d, 1-index, 0);
    window_buf104_buf104d_o->acquire(*window_buf104_buf104d_o, LOCK_8_5_0_7136, LOCK_8_5_1_0, 1-index);
    window_buf108_buf108d_o->setData(*window_buf108_buf108d_o, (float*)buf108, (float*)buf108d, 1-index, 0);
    window_buf108_buf108d_o->acquire(*window_buf108_buf108d_o, LOCK_8_5_2_0, LOCK_8_5_3_0, 1-index);
    orthogonalize<256>(window_buf96_buf96d_i[0],window_buf100_buf100d_i[0],window_buf104_buf104d_o[0],window_buf108_buf108d_o[0]);
    window_buf96_buf96d_i->release(*window_buf96_buf96d_i, LOCK_7_4_0_0, LOCK_7_4_1_0, 1-index);
    window_buf100_buf100d_i->release(*window_buf100_buf100d_i, LOCK_8_4_2_0, LOCK_8_4_3_0, 1-index);
    window_buf104_buf104d_o->release(*window_buf104_buf104d_o, LOCK_8_5_0_7136, LOCK_8_5_1_0, 1-index);
    window_buf108_buf108d_o->release(*window_buf108_buf108d_o, LOCK_8_5_2_0, LOCK_8_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_8_4_bounds > 0)
      --proc_8_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}