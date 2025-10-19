// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/35_1/src/35_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_35_1_2_0 18
#define LOCK_35_1_3_0 19
#define LOCK_36_1_0_0 48
#define LOCK_36_1_1_0 49
#define LOCK_35_0_0_1056 0
#define LOCK_35_0_1_1056 1
#define LOCK_35_0_2_0 2
#define LOCK_35_0_3_0 3

// Declare shared memory buffers
v4float buf459dr[65];
v4float buf459r[65];
v4float buf463[65];
v4float buf463d[65];
v4float buf475[65];
v4float buf475d[65];
v4float buf479[65];
v4float buf479d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf463_buf463d_i[1] = {{(float*)buf463, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf459r_buf459dr_i[1] = {{(float*)buf459r, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf479_buf479d_o[1] = {{(float*)buf479, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf475_buf475d_o[1] = {{(float*)buf475, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_35_1_bounds = sync_buffer[1];

  while (proc_35_1_bounds)
  {

    // Kernel call : i235:orthogonalize<256>
    window_buf463_buf463d_i->setData(*window_buf463_buf463d_i, (float*)buf463, (float*)buf463d, 1-index, 0);
    window_buf463_buf463d_i->acquire(*window_buf463_buf463d_i, LOCK_35_1_2_0, LOCK_35_1_3_0, 1-index);
    window_buf459r_buf459dr_i->setData(*window_buf459r_buf459dr_i, (float*)buf459r, (float*)buf459dr, 1-index, 0);
    window_buf459r_buf459dr_i->acquire(*window_buf459r_buf459dr_i, LOCK_36_1_0_0, LOCK_36_1_1_0, 1-index);
    window_buf479_buf479d_o->setData(*window_buf479_buf479d_o, (float*)buf479, (float*)buf479d, 1-index, 0);
    window_buf479_buf479d_o->acquire(*window_buf479_buf479d_o, LOCK_35_0_0_1056, LOCK_35_0_1_1056, 1-index);
    window_buf475_buf475d_o->setData(*window_buf475_buf475d_o, (float*)buf475, (float*)buf475d, 1-index, 0);
    window_buf475_buf475d_o->acquire(*window_buf475_buf475d_o, LOCK_35_0_2_0, LOCK_35_0_3_0, 1-index);
    orthogonalize<256>(window_buf463_buf463d_i[0],window_buf459r_buf459dr_i[0],window_buf479_buf479d_o[0],window_buf475_buf475d_o[0]);
    window_buf463_buf463d_i->release(*window_buf463_buf463d_i, LOCK_35_1_2_0, LOCK_35_1_3_0, 1-index);
    window_buf459r_buf459dr_i->release(*window_buf459r_buf459dr_i, LOCK_36_1_0_0, LOCK_36_1_1_0, 1-index);
    window_buf479_buf479d_o->release(*window_buf479_buf479d_o, LOCK_35_0_0_1056, LOCK_35_0_1_1056, 1-index);
    window_buf475_buf475d_o->release(*window_buf475_buf475d_o, LOCK_35_0_2_0, LOCK_35_0_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_35_1_bounds > 0)
      --proc_35_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}