// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/35_2/src/35_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_34_2_0_0 16
#define LOCK_34_2_1_0 17
#define LOCK_35_2_0_7136 48
#define LOCK_35_2_1_0 49
#define LOCK_35_1_0_0 0
#define LOCK_35_1_1_0 1
#define LOCK_35_1_2_0 2
#define LOCK_35_1_3_0 3

// Declare shared memory buffers
v4float buf436[65];
v4float buf436d[65];
v4float buf447[65];
v4float buf447d[65];
v4float buf452[65];
v4float buf452d[65];
v4float buf463[65];
v4float buf463d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf436_buf436d_i[1] = {{(float*)buf436, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf447_buf447d_i[1] = {{(float*)buf447, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf452_buf452d_o[1] = {{(float*)buf452, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf463_buf463d_o[1] = {{(float*)buf463, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_35_2_bounds = sync_buffer[1];

  while (proc_35_2_bounds)
  {

    // Kernel call : i227:orthogonalize<256>
    window_buf436_buf436d_i->setData(*window_buf436_buf436d_i, (float*)buf436, (float*)buf436d, 1-index, 0);
    window_buf436_buf436d_i->acquire(*window_buf436_buf436d_i, LOCK_34_2_0_0, LOCK_34_2_1_0, 1-index);
    window_buf447_buf447d_i->setData(*window_buf447_buf447d_i, (float*)buf447, (float*)buf447d, 1-index, 0);
    window_buf447_buf447d_i->acquire(*window_buf447_buf447d_i, LOCK_35_2_0_7136, LOCK_35_2_1_0, 1-index);
    window_buf452_buf452d_o->setData(*window_buf452_buf452d_o, (float*)buf452, (float*)buf452d, 1-index, 0);
    window_buf452_buf452d_o->acquire(*window_buf452_buf452d_o, LOCK_35_1_0_0, LOCK_35_1_1_0, 1-index);
    window_buf463_buf463d_o->setData(*window_buf463_buf463d_o, (float*)buf463, (float*)buf463d, 1-index, 0);
    window_buf463_buf463d_o->acquire(*window_buf463_buf463d_o, LOCK_35_1_2_0, LOCK_35_1_3_0, 1-index);
    orthogonalize<256>(window_buf436_buf436d_i[0],window_buf447_buf447d_i[0],window_buf452_buf452d_o[0],window_buf463_buf463d_o[0]);
    window_buf436_buf436d_i->release(*window_buf436_buf436d_i, LOCK_34_2_0_0, LOCK_34_2_1_0, 1-index);
    window_buf447_buf447d_i->release(*window_buf447_buf447d_i, LOCK_35_2_0_7136, LOCK_35_2_1_0, 1-index);
    window_buf452_buf452d_o->release(*window_buf452_buf452d_o, LOCK_35_1_0_0, LOCK_35_1_1_0, 1-index);
    window_buf463_buf463d_o->release(*window_buf463_buf463d_o, LOCK_35_1_2_0, LOCK_35_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_35_2_bounds > 0)
      --proc_35_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}