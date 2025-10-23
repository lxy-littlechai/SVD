// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/test32_2_4/./Work/aie/20_2/src/20_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_19_2_0_0 16
#define LOCK_19_2_1_736 17
#define LOCK_20_2_2_0 50
#define LOCK_20_2_3_0 51
#define LOCK_20_3_0_8032 32
#define LOCK_20_3_1_0 33
#define LOCK_20_3_2_0 34
#define LOCK_20_3_3_0 35

// Declare shared memory buffers
v4float buf57dr[9];
v4float buf57r[9];
v4float buf58[9];
v4float buf58d[9];
v4float buf61[9];
v4float buf61d[9];
v4float buf62[9];
v4float buf62d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf57r_buf57dr_i[1] = {{(float*)buf57r, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf58_buf58d_i[1] = {{(float*)buf58, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf61_buf61d_o[1] = {{(float*)buf61, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf62_buf62d_o[1] = {{(float*)buf62, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_20_2_bounds = sync_buffer[1];

  while (proc_20_2_bounds)
  {

    // Kernel call : i46:orthogonalize<32>
    window_buf57r_buf57dr_i->setData(*window_buf57r_buf57dr_i, (float*)buf57r, (float*)buf57dr, 1-index, 0);
    window_buf57r_buf57dr_i->acquire(*window_buf57r_buf57dr_i, LOCK_19_2_0_0, LOCK_19_2_1_736, 1-index);
    window_buf58_buf58d_i->setData(*window_buf58_buf58d_i, (float*)buf58, (float*)buf58d, 1-index, 0);
    window_buf58_buf58d_i->acquire(*window_buf58_buf58d_i, LOCK_20_2_2_0, LOCK_20_2_3_0, 1-index);
    window_buf61_buf61d_o->setData(*window_buf61_buf61d_o, (float*)buf61, (float*)buf61d, 1-index, 0);
    window_buf61_buf61d_o->acquire(*window_buf61_buf61d_o, LOCK_20_3_0_8032, LOCK_20_3_1_0, 1-index);
    window_buf62_buf62d_o->setData(*window_buf62_buf62d_o, (float*)buf62, (float*)buf62d, 1-index, 0);
    window_buf62_buf62d_o->acquire(*window_buf62_buf62d_o, LOCK_20_3_2_0, LOCK_20_3_3_0, 1-index);
    orthogonalize<32>(window_buf57r_buf57dr_i[0],window_buf58_buf58d_i[0],window_buf61_buf61d_o[0],window_buf62_buf62d_o[0]);
    window_buf57r_buf57dr_i->release(*window_buf57r_buf57dr_i, LOCK_19_2_0_0, LOCK_19_2_1_736, 1-index);
    window_buf58_buf58d_i->release(*window_buf58_buf58d_i, LOCK_20_2_2_0, LOCK_20_2_3_0, 1-index);
    window_buf61_buf61d_o->release(*window_buf61_buf61d_o, LOCK_20_3_0_8032, LOCK_20_3_1_0, 1-index);
    window_buf62_buf62d_o->release(*window_buf62_buf62d_o, LOCK_20_3_2_0, LOCK_20_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_20_2_bounds > 0)
      --proc_20_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}