// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/20_3/src/20_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_20_3_0_7136 16
#define LOCK_20_3_1_0 17
#define LOCK_21_3_2_0 50
#define LOCK_21_3_3_0 51
#define LOCK_20_4_0_7136 32
#define LOCK_20_4_1_0 33
#define LOCK_20_4_2_0 34
#define LOCK_20_4_3_0 35

// Declare shared memory buffers
v4float buf217[65];
v4float buf217d[65];
v4float buf221[65];
v4float buf221d[65];
v4float buf225[65];
v4float buf225d[65];
v4float buf229[65];
v4float buf229d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf217_buf217d_i[1] = {{(float*)buf217, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf221_buf221d_i[1] = {{(float*)buf221, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf225_buf225d_o[1] = {{(float*)buf225, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf229_buf229d_o[1] = {{(float*)buf229, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_20_3_bounds = sync_buffer[1];

  while (proc_20_3_bounds)
  {

    // Kernel call : i120:orthogonalize<256>
    window_buf217_buf217d_i->setData(*window_buf217_buf217d_i, (float*)buf217, (float*)buf217d, 1-index, 0);
    window_buf217_buf217d_i->acquire(*window_buf217_buf217d_i, LOCK_20_3_0_7136, LOCK_20_3_1_0, 1-index);
    window_buf221_buf221d_i->setData(*window_buf221_buf221d_i, (float*)buf221, (float*)buf221d, 1-index, 0);
    window_buf221_buf221d_i->acquire(*window_buf221_buf221d_i, LOCK_21_3_2_0, LOCK_21_3_3_0, 1-index);
    window_buf225_buf225d_o->setData(*window_buf225_buf225d_o, (float*)buf225, (float*)buf225d, 1-index, 0);
    window_buf225_buf225d_o->acquire(*window_buf225_buf225d_o, LOCK_20_4_0_7136, LOCK_20_4_1_0, 1-index);
    window_buf229_buf229d_o->setData(*window_buf229_buf229d_o, (float*)buf229, (float*)buf229d, 1-index, 0);
    window_buf229_buf229d_o->acquire(*window_buf229_buf229d_o, LOCK_20_4_2_0, LOCK_20_4_3_0, 1-index);
    orthogonalize<256>(window_buf217_buf217d_i[0],window_buf221_buf221d_i[0],window_buf225_buf225d_o[0],window_buf229_buf229d_o[0]);
    window_buf217_buf217d_i->release(*window_buf217_buf217d_i, LOCK_20_3_0_7136, LOCK_20_3_1_0, 1-index);
    window_buf221_buf221d_i->release(*window_buf221_buf221d_i, LOCK_21_3_2_0, LOCK_21_3_3_0, 1-index);
    window_buf225_buf225d_o->release(*window_buf225_buf225d_o, LOCK_20_4_0_7136, LOCK_20_4_1_0, 1-index);
    window_buf229_buf229d_o->release(*window_buf229_buf229d_o, LOCK_20_4_2_0, LOCK_20_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_20_3_bounds > 0)
      --proc_20_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}