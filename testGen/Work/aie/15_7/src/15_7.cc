// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/15_7/src/15_7.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_16_7_0_0 48
#define LOCK_16_7_1_0 49
#define LOCK_15_7_2_6144 18
#define LOCK_15_7_3_0 19
#define LOCK_15_6_0_3936 0
#define LOCK_15_6_1_5952 1
#define LOCK_15_6_2_2080 2
#define LOCK_15_6_3_0 3

// Declare shared memory buffers
v4float buf155dr[9];
v4float buf155r[9];
v4float buf167dr[9];
v4float buf167r[9];
v4float buf177[9];
v4float buf177d[9];
v4float buf189[9];
v4float buf189d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf155r_buf155dr_i[1] = {{(float*)buf155r, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf167r_buf167dr_i[1] = {{(float*)buf167r, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf177_buf177d_o[1] = {{(float*)buf177, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf189_buf189d_o[1] = {{(float*)buf189, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_15_7_bounds = sync_buffer[1];

  while (proc_15_7_bounds)
  {

    // Kernel call : i79:orthogonalize<32>
    window_buf155r_buf155dr_i->setData(*window_buf155r_buf155dr_i, (float*)buf155r, (float*)buf155dr, 1-index, 0);
    window_buf155r_buf155dr_i->acquire(*window_buf155r_buf155dr_i, LOCK_16_7_0_0, LOCK_16_7_1_0, 1-index);
    window_buf167r_buf167dr_i->setData(*window_buf167r_buf167dr_i, (float*)buf167r, (float*)buf167dr, 1-index, 0);
    window_buf167r_buf167dr_i->acquire(*window_buf167r_buf167dr_i, LOCK_15_7_2_6144, LOCK_15_7_3_0, 1-index);
    window_buf177_buf177d_o->setData(*window_buf177_buf177d_o, (float*)buf177, (float*)buf177d, 1-index, 0);
    window_buf177_buf177d_o->acquire(*window_buf177_buf177d_o, LOCK_15_6_0_3936, LOCK_15_6_1_5952, 1-index);
    window_buf189_buf189d_o->setData(*window_buf189_buf189d_o, (float*)buf189, (float*)buf189d, 1-index, 0);
    window_buf189_buf189d_o->acquire(*window_buf189_buf189d_o, LOCK_15_6_2_2080, LOCK_15_6_3_0, 1-index);
    orthogonalize<32>(window_buf155r_buf155dr_i[0],window_buf167r_buf167dr_i[0],window_buf177_buf177d_o[0],window_buf189_buf189d_o[0]);
    window_buf155r_buf155dr_i->release(*window_buf155r_buf155dr_i, LOCK_16_7_0_0, LOCK_16_7_1_0, 1-index);
    window_buf167r_buf167dr_i->release(*window_buf167r_buf167dr_i, LOCK_15_7_2_6144, LOCK_15_7_3_0, 1-index);
    window_buf177_buf177d_o->release(*window_buf177_buf177d_o, LOCK_15_6_0_3936, LOCK_15_6_1_5952, 1-index);
    window_buf189_buf189d_o->release(*window_buf189_buf189d_o, LOCK_15_6_2_2080, LOCK_15_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_15_7_bounds > 0)
      --proc_15_7_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}