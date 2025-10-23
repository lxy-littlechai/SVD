// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/2_6/src/2_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_1_6_0_0 16
#define LOCK_1_6_1_0 17
#define LOCK_2_6_2_0 50
#define LOCK_2_6_3_0 51
#define LOCK_2_7_0_0 32
#define LOCK_2_7_1_0 33
#define LOCK_2_7_2_0 34
#define LOCK_2_7_3_0 35

// Declare shared memory buffers
v4float buf135[9];
v4float buf135d[9];
v4float buf141[9];
v4float buf141d[9];
v4float buf157[9];
v4float buf157d[9];
v4float buf163[9];
v4float buf163d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf135_buf135d_i[1] = {{(float*)buf135, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf141_buf141d_i[1] = {{(float*)buf141, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf157_buf157d_o[1] = {{(float*)buf157, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf163_buf163d_o[1] = {{(float*)buf163, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_2_6_bounds = sync_buffer[1];

  while (proc_2_6_bounds)
  {

    // Kernel call : i67:orthogonalize<32>
    window_buf135_buf135d_i->setData(*window_buf135_buf135d_i, (float*)buf135, (float*)buf135d, 1-index, 0);
    window_buf135_buf135d_i->acquire(*window_buf135_buf135d_i, LOCK_1_6_0_0, LOCK_1_6_1_0, 1-index);
    window_buf141_buf141d_i->setData(*window_buf141_buf141d_i, (float*)buf141, (float*)buf141d, 1-index, 0);
    window_buf141_buf141d_i->acquire(*window_buf141_buf141d_i, LOCK_2_6_2_0, LOCK_2_6_3_0, 1-index);
    window_buf157_buf157d_o->setData(*window_buf157_buf157d_o, (float*)buf157, (float*)buf157d, 1-index, 0);
    window_buf157_buf157d_o->acquire(*window_buf157_buf157d_o, LOCK_2_7_0_0, LOCK_2_7_1_0, 1-index);
    window_buf163_buf163d_o->setData(*window_buf163_buf163d_o, (float*)buf163, (float*)buf163d, 1-index, 0);
    window_buf163_buf163d_o->acquire(*window_buf163_buf163d_o, LOCK_2_7_2_0, LOCK_2_7_3_0, 1-index);
    orthogonalize<32>(window_buf135_buf135d_i[0],window_buf141_buf141d_i[0],window_buf157_buf157d_o[0],window_buf163_buf163d_o[0]);
    window_buf135_buf135d_i->release(*window_buf135_buf135d_i, LOCK_1_6_0_0, LOCK_1_6_1_0, 1-index);
    window_buf141_buf141d_i->release(*window_buf141_buf141d_i, LOCK_2_6_2_0, LOCK_2_6_3_0, 1-index);
    window_buf157_buf157d_o->release(*window_buf157_buf157d_o, LOCK_2_7_0_0, LOCK_2_7_1_0, 1-index);
    window_buf163_buf163d_o->release(*window_buf163_buf163d_o, LOCK_2_7_2_0, LOCK_2_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_2_6_bounds > 0)
      --proc_2_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}