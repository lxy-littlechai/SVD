// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/32_6/src/32_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_31_6_0_0 16
#define LOCK_31_6_1_0 17
#define LOCK_32_6_2_0 50
#define LOCK_32_6_3_0 51
#define LOCK_32_7_0_0 32
#define LOCK_32_7_1_0 33
#define LOCK_32_7_2_0 34
#define LOCK_32_7_3_0 35

// Declare shared memory buffers
v4float buf445[9];
v4float buf445d[9];
v4float buf446[9];
v4float buf446d[9];
v4float buf467[9];
v4float buf467d[9];
v4float buf468[9];
v4float buf468d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf445_buf445d_i[1] = {{(float*)buf445, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf446_buf446d_i[1] = {{(float*)buf446, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf467_buf467d_o[1] = {{(float*)buf467, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf468_buf468d_o[1] = {{(float*)buf468, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_32_6_bounds = sync_buffer[1];

  while (proc_32_6_bounds)
  {

    // Kernel call : i227:orthogonalize<32>
    window_buf445_buf445d_i->setData(*window_buf445_buf445d_i, (float*)buf445, (float*)buf445d, 1-index, 0);
    window_buf445_buf445d_i->acquire(*window_buf445_buf445d_i, LOCK_31_6_0_0, LOCK_31_6_1_0, 1-index);
    window_buf446_buf446d_i->setData(*window_buf446_buf446d_i, (float*)buf446, (float*)buf446d, 1-index, 0);
    window_buf446_buf446d_i->acquire(*window_buf446_buf446d_i, LOCK_32_6_2_0, LOCK_32_6_3_0, 1-index);
    window_buf467_buf467d_o->setData(*window_buf467_buf467d_o, (float*)buf467, (float*)buf467d, 1-index, 0);
    window_buf467_buf467d_o->acquire(*window_buf467_buf467d_o, LOCK_32_7_0_0, LOCK_32_7_1_0, 1-index);
    window_buf468_buf468d_o->setData(*window_buf468_buf468d_o, (float*)buf468, (float*)buf468d, 1-index, 0);
    window_buf468_buf468d_o->acquire(*window_buf468_buf468d_o, LOCK_32_7_2_0, LOCK_32_7_3_0, 1-index);
    orthogonalize<32>(window_buf445_buf445d_i[0],window_buf446_buf446d_i[0],window_buf467_buf467d_o[0],window_buf468_buf468d_o[0]);
    window_buf445_buf445d_i->release(*window_buf445_buf445d_i, LOCK_31_6_0_0, LOCK_31_6_1_0, 1-index);
    window_buf446_buf446d_i->release(*window_buf446_buf446d_i, LOCK_32_6_2_0, LOCK_32_6_3_0, 1-index);
    window_buf467_buf467d_o->release(*window_buf467_buf467d_o, LOCK_32_7_0_0, LOCK_32_7_1_0, 1-index);
    window_buf468_buf468d_o->release(*window_buf468_buf468d_o, LOCK_32_7_2_0, LOCK_32_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_32_6_bounds > 0)
      --proc_32_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}