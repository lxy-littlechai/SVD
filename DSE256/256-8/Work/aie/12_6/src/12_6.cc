// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/12_6/src/12_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_11_6_0_0 16
#define LOCK_11_6_1_0 17
#define LOCK_12_6_2_0 50
#define LOCK_12_6_3_0 51
#define LOCK_12_5_0_0 0
#define LOCK_12_5_1_0 1
#define LOCK_12_5_2_0 2
#define LOCK_12_5_3_0 3

// Declare shared memory buffers
v4float buf131[65];
v4float buf131d[65];
v4float buf141[65];
v4float buf141d[65];
v4float buf147[65];
v4float buf147d[65];
v4float buf157[65];
v4float buf157d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf131_buf131d_i[1] = {{(float*)buf131, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf141_buf141d_i[1] = {{(float*)buf141, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf147_buf147d_o[1] = {{(float*)buf147, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf157_buf157d_o[1] = {{(float*)buf157, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_12_6_bounds = sync_buffer[1];

  while (proc_12_6_bounds)
  {

    // Kernel call : i66:orthogonalize<256>
    window_buf131_buf131d_i->setData(*window_buf131_buf131d_i, (float*)buf131, (float*)buf131d, 1-index, 0);
    window_buf131_buf131d_i->acquire(*window_buf131_buf131d_i, LOCK_11_6_0_0, LOCK_11_6_1_0, 1-index);
    window_buf141_buf141d_i->setData(*window_buf141_buf141d_i, (float*)buf141, (float*)buf141d, 1-index, 0);
    window_buf141_buf141d_i->acquire(*window_buf141_buf141d_i, LOCK_12_6_2_0, LOCK_12_6_3_0, 1-index);
    window_buf147_buf147d_o->setData(*window_buf147_buf147d_o, (float*)buf147, (float*)buf147d, 1-index, 0);
    window_buf147_buf147d_o->acquire(*window_buf147_buf147d_o, LOCK_12_5_0_0, LOCK_12_5_1_0, 1-index);
    window_buf157_buf157d_o->setData(*window_buf157_buf157d_o, (float*)buf157, (float*)buf157d, 1-index, 0);
    window_buf157_buf157d_o->acquire(*window_buf157_buf157d_o, LOCK_12_5_2_0, LOCK_12_5_3_0, 1-index);
    orthogonalize<256>(window_buf131_buf131d_i[0],window_buf141_buf141d_i[0],window_buf147_buf147d_o[0],window_buf157_buf157d_o[0]);
    window_buf131_buf131d_i->release(*window_buf131_buf131d_i, LOCK_11_6_0_0, LOCK_11_6_1_0, 1-index);
    window_buf141_buf141d_i->release(*window_buf141_buf141d_i, LOCK_12_6_2_0, LOCK_12_6_3_0, 1-index);
    window_buf147_buf147d_o->release(*window_buf147_buf147d_o, LOCK_12_5_0_0, LOCK_12_5_1_0, 1-index);
    window_buf157_buf157d_o->release(*window_buf157_buf157d_o, LOCK_12_5_2_0, LOCK_12_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_12_6_bounds > 0)
      --proc_12_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}