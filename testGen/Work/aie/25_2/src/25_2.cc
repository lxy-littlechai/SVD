// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/25_2/src/25_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_24_2_0_0 16
#define LOCK_24_2_1_0 17
#define LOCK_25_2_2_0 50
#define LOCK_25_2_3_0 51
#define LOCK_25_3_0_3936 32
#define LOCK_25_3_1_2080 33
#define LOCK_25_3_2_0 34
#define LOCK_25_3_3_0 35

// Declare shared memory buffers
v4float buf367dr[9];
v4float buf367r[9];
v4float buf369[9];
v4float buf369d[9];
v4float buf389[9];
v4float buf389d[9];
v4float buf391[9];
v4float buf391d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf367r_buf367dr_i[1] = {{(float*)buf367r, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf369_buf369d_i[1] = {{(float*)buf369, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf389_buf389d_o[1] = {{(float*)buf389, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf391_buf391d_o[1] = {{(float*)buf391, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_25_2_bounds = sync_buffer[1];

  while (proc_25_2_bounds)
  {

    // Kernel call : i176:orthogonalize<32>
    window_buf367r_buf367dr_i->setData(*window_buf367r_buf367dr_i, (float*)buf367r, (float*)buf367dr, 1-index, 0);
    window_buf367r_buf367dr_i->acquire(*window_buf367r_buf367dr_i, LOCK_24_2_0_0, LOCK_24_2_1_0, 1-index);
    window_buf369_buf369d_i->setData(*window_buf369_buf369d_i, (float*)buf369, (float*)buf369d, 1-index, 0);
    window_buf369_buf369d_i->acquire(*window_buf369_buf369d_i, LOCK_25_2_2_0, LOCK_25_2_3_0, 1-index);
    window_buf389_buf389d_o->setData(*window_buf389_buf389d_o, (float*)buf389, (float*)buf389d, 1-index, 0);
    window_buf389_buf389d_o->acquire(*window_buf389_buf389d_o, LOCK_25_3_0_3936, LOCK_25_3_1_2080, 1-index);
    window_buf391_buf391d_o->setData(*window_buf391_buf391d_o, (float*)buf391, (float*)buf391d, 1-index, 0);
    window_buf391_buf391d_o->acquire(*window_buf391_buf391d_o, LOCK_25_3_2_0, LOCK_25_3_3_0, 1-index);
    orthogonalize<32>(window_buf367r_buf367dr_i[0],window_buf369_buf369d_i[0],window_buf389_buf389d_o[0],window_buf391_buf391d_o[0]);
    window_buf367r_buf367dr_i->release(*window_buf367r_buf367dr_i, LOCK_24_2_0_0, LOCK_24_2_1_0, 1-index);
    window_buf369_buf369d_i->release(*window_buf369_buf369d_i, LOCK_25_2_2_0, LOCK_25_2_3_0, 1-index);
    window_buf389_buf389d_o->release(*window_buf389_buf389d_o, LOCK_25_3_0_3936, LOCK_25_3_1_2080, 1-index);
    window_buf391_buf391d_o->release(*window_buf391_buf391d_o, LOCK_25_3_2_0, LOCK_25_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_25_2_bounds > 0)
      --proc_25_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}