// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/19_6/src/19_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_19_7_0_7136 32
#define LOCK_19_7_1_5152 33
#define LOCK_19_6_2_0 50
#define LOCK_19_6_3_0 51
#define LOCK_19_7_2_1984 34
#define LOCK_19_7_3_5024 35
#define LOCK_19_7_4_1056 36
#define LOCK_19_7_5_0 37

// Declare shared memory buffers
v4float buf339dr[65];
v4float buf339r[65];
v4float buf341[65];
v4float buf341d[65];
v4float buf355[65];
v4float buf355d[65];
v4float buf357[65];
v4float buf357d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf339r_buf339dr_i[1] = {{(float*)buf339r, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf341_buf341d_i[1] = {{(float*)buf341, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf355_buf355d_o[1] = {{(float*)buf355, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf357_buf357d_o[1] = {{(float*)buf357, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_19_6_bounds = sync_buffer[1];

  while (proc_19_6_bounds)
  {

    // Kernel call : i172:orthogonalize<256>
    window_buf339r_buf339dr_i->setData(*window_buf339r_buf339dr_i, (float*)buf339r, (float*)buf339dr, 1-index, 0);
    window_buf339r_buf339dr_i->acquire(*window_buf339r_buf339dr_i, LOCK_19_7_0_7136, LOCK_19_7_1_5152, 1-index);
    window_buf341_buf341d_i->setData(*window_buf341_buf341d_i, (float*)buf341, (float*)buf341d, 1-index, 0);
    window_buf341_buf341d_i->acquire(*window_buf341_buf341d_i, LOCK_19_6_2_0, LOCK_19_6_3_0, 1-index);
    window_buf355_buf355d_o->setData(*window_buf355_buf355d_o, (float*)buf355, (float*)buf355d, 1-index, 0);
    window_buf355_buf355d_o->acquire(*window_buf355_buf355d_o, LOCK_19_7_2_1984, LOCK_19_7_3_5024, 1-index);
    window_buf357_buf357d_o->setData(*window_buf357_buf357d_o, (float*)buf357, (float*)buf357d, 1-index, 0);
    window_buf357_buf357d_o->acquire(*window_buf357_buf357d_o, LOCK_19_7_4_1056, LOCK_19_7_5_0, 1-index);
    orthogonalize<256>(window_buf339r_buf339dr_i[0],window_buf341_buf341d_i[0],window_buf355_buf355d_o[0],window_buf357_buf357d_o[0]);
    window_buf339r_buf339dr_i->release(*window_buf339r_buf339dr_i, LOCK_19_7_0_7136, LOCK_19_7_1_5152, 1-index);
    window_buf341_buf341d_i->release(*window_buf341_buf341d_i, LOCK_19_6_2_0, LOCK_19_6_3_0, 1-index);
    window_buf355_buf355d_o->release(*window_buf355_buf355d_o, LOCK_19_7_2_1984, LOCK_19_7_3_5024, 1-index);
    window_buf357_buf357d_o->release(*window_buf357_buf357d_o, LOCK_19_7_4_1056, LOCK_19_7_5_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_19_6_bounds > 0)
      --proc_19_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}