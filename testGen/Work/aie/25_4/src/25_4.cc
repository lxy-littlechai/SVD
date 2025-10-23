// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/25_4/src/25_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_24_4_0_0 16
#define LOCK_24_4_1_0 17
#define LOCK_25_4_2_0 50
#define LOCK_25_4_3_0 51
#define LOCK_25_5_0_8032 32
#define LOCK_25_5_1_0 33
#define LOCK_25_5_2_0 34
#define LOCK_25_5_3_0 35

// Declare shared memory buffers
v4float buf413dr[9];
v4float buf413r[9];
v4float buf415[9];
v4float buf415d[9];
v4float buf435[9];
v4float buf435d[9];
v4float buf437[9];
v4float buf437d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf413r_buf413dr_i[1] = {{(float*)buf413r, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf415_buf415d_i[1] = {{(float*)buf415, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf435_buf435d_o[1] = {{(float*)buf435, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf437_buf437d_o[1] = {{(float*)buf437, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_25_4_bounds = sync_buffer[1];

  while (proc_25_4_bounds)
  {

    // Kernel call : i198:orthogonalize<32>
    window_buf413r_buf413dr_i->setData(*window_buf413r_buf413dr_i, (float*)buf413r, (float*)buf413dr, 1-index, 0);
    window_buf413r_buf413dr_i->acquire(*window_buf413r_buf413dr_i, LOCK_24_4_0_0, LOCK_24_4_1_0, 1-index);
    window_buf415_buf415d_i->setData(*window_buf415_buf415d_i, (float*)buf415, (float*)buf415d, 1-index, 0);
    window_buf415_buf415d_i->acquire(*window_buf415_buf415d_i, LOCK_25_4_2_0, LOCK_25_4_3_0, 1-index);
    window_buf435_buf435d_o->setData(*window_buf435_buf435d_o, (float*)buf435, (float*)buf435d, 1-index, 0);
    window_buf435_buf435d_o->acquire(*window_buf435_buf435d_o, LOCK_25_5_0_8032, LOCK_25_5_1_0, 1-index);
    window_buf437_buf437d_o->setData(*window_buf437_buf437d_o, (float*)buf437, (float*)buf437d, 1-index, 0);
    window_buf437_buf437d_o->acquire(*window_buf437_buf437d_o, LOCK_25_5_2_0, LOCK_25_5_3_0, 1-index);
    orthogonalize<32>(window_buf413r_buf413dr_i[0],window_buf415_buf415d_i[0],window_buf435_buf435d_o[0],window_buf437_buf437d_o[0]);
    window_buf413r_buf413dr_i->release(*window_buf413r_buf413dr_i, LOCK_24_4_0_0, LOCK_24_4_1_0, 1-index);
    window_buf415_buf415d_i->release(*window_buf415_buf415d_i, LOCK_25_4_2_0, LOCK_25_4_3_0, 1-index);
    window_buf435_buf435d_o->release(*window_buf435_buf435d_o, LOCK_25_5_0_8032, LOCK_25_5_1_0, 1-index);
    window_buf437_buf437d_o->release(*window_buf437_buf437d_o, LOCK_25_5_2_0, LOCK_25_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_25_4_bounds > 0)
      --proc_25_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}