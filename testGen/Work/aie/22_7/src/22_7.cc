// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/22_7/src/22_7.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_23_7_0_0 48
#define LOCK_23_7_1_0 49
#define LOCK_22_7_2_6144 18
#define LOCK_22_7_3_0 19
#define LOCK_22_6_0_0 0
#define LOCK_22_6_1_0 1
#define LOCK_22_6_2_0 2
#define LOCK_22_6_3_0 3

// Declare shared memory buffers
v4float buf166dr[9];
v4float buf166r[9];
v4float buf168dr[9];
v4float buf168r[9];
v4float buf188[9];
v4float buf188d[9];
v4float buf190[9];
v4float buf190d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf166r_buf166dr_i[1] = {{(float*)buf166r, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf168r_buf168dr_i[1] = {{(float*)buf168r, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf188_buf188d_o[1] = {{(float*)buf188, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf190_buf190d_o[1] = {{(float*)buf190, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_22_7_bounds = sync_buffer[1];

  while (proc_22_7_bounds)
  {

    // Kernel call : i86:orthogonalize<32>
    window_buf166r_buf166dr_i->setData(*window_buf166r_buf166dr_i, (float*)buf166r, (float*)buf166dr, 1-index, 0);
    window_buf166r_buf166dr_i->acquire(*window_buf166r_buf166dr_i, LOCK_23_7_0_0, LOCK_23_7_1_0, 1-index);
    window_buf168r_buf168dr_i->setData(*window_buf168r_buf168dr_i, (float*)buf168r, (float*)buf168dr, 1-index, 0);
    window_buf168r_buf168dr_i->acquire(*window_buf168r_buf168dr_i, LOCK_22_7_2_6144, LOCK_22_7_3_0, 1-index);
    window_buf188_buf188d_o->setData(*window_buf188_buf188d_o, (float*)buf188, (float*)buf188d, 1-index, 0);
    window_buf188_buf188d_o->acquire(*window_buf188_buf188d_o, LOCK_22_6_0_0, LOCK_22_6_1_0, 1-index);
    window_buf190_buf190d_o->setData(*window_buf190_buf190d_o, (float*)buf190, (float*)buf190d, 1-index, 0);
    window_buf190_buf190d_o->acquire(*window_buf190_buf190d_o, LOCK_22_6_2_0, LOCK_22_6_3_0, 1-index);
    orthogonalize<32>(window_buf166r_buf166dr_i[0],window_buf168r_buf168dr_i[0],window_buf188_buf188d_o[0],window_buf190_buf190d_o[0]);
    window_buf166r_buf166dr_i->release(*window_buf166r_buf166dr_i, LOCK_23_7_0_0, LOCK_23_7_1_0, 1-index);
    window_buf168r_buf168dr_i->release(*window_buf168r_buf168dr_i, LOCK_22_7_2_6144, LOCK_22_7_3_0, 1-index);
    window_buf188_buf188d_o->release(*window_buf188_buf188d_o, LOCK_22_6_0_0, LOCK_22_6_1_0, 1-index);
    window_buf190_buf190d_o->release(*window_buf190_buf190d_o, LOCK_22_6_2_0, LOCK_22_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_22_7_bounds > 0)
      --proc_22_7_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}