// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/26_0/src/26_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_26_0_0_160 48
#define LOCK_26_0_1_704 49
#define LOCK_25_0_0_0 16
#define LOCK_25_0_1_0 17
#define LOCK_26_1_0_8032 32
#define LOCK_26_1_1_0 33
#define LOCK_26_1_2_0 34
#define LOCK_26_1_3_0 35

// Declare shared memory buffers
v4float buf319dr[9];
v4float buf319r[9];
v4float buf325dr[9];
v4float buf325r[9];
v4float buf341[9];
v4float buf341d[9];
v4float buf347[9];
v4float buf347d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf319r_buf319dr_i[1] = {{(float*)buf319r, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf325r_buf325dr_i[1] = {{(float*)buf325r, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf341_buf341d_o[1] = {{(float*)buf341, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf347_buf347d_o[1] = {{(float*)buf347, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_26_0_bounds = sync_buffer[1];

  while (proc_26_0_bounds)
  {

    // Kernel call : i155:orthogonalize<32>
    window_buf319r_buf319dr_i->setData(*window_buf319r_buf319dr_i, (float*)buf319r, (float*)buf319dr, 1-index, 0);
    window_buf319r_buf319dr_i->acquire(*window_buf319r_buf319dr_i, LOCK_26_0_0_160, LOCK_26_0_1_704, 1-index);
    window_buf325r_buf325dr_i->setData(*window_buf325r_buf325dr_i, (float*)buf325r, (float*)buf325dr, 1-index, 0);
    window_buf325r_buf325dr_i->acquire(*window_buf325r_buf325dr_i, LOCK_25_0_0_0, LOCK_25_0_1_0, 1-index);
    window_buf341_buf341d_o->setData(*window_buf341_buf341d_o, (float*)buf341, (float*)buf341d, 1-index, 0);
    window_buf341_buf341d_o->acquire(*window_buf341_buf341d_o, LOCK_26_1_0_8032, LOCK_26_1_1_0, 1-index);
    window_buf347_buf347d_o->setData(*window_buf347_buf347d_o, (float*)buf347, (float*)buf347d, 1-index, 0);
    window_buf347_buf347d_o->acquire(*window_buf347_buf347d_o, LOCK_26_1_2_0, LOCK_26_1_3_0, 1-index);
    orthogonalize<32>(window_buf319r_buf319dr_i[0],window_buf325r_buf325dr_i[0],window_buf341_buf341d_o[0],window_buf347_buf347d_o[0]);
    window_buf319r_buf319dr_i->release(*window_buf319r_buf319dr_i, LOCK_26_0_0_160, LOCK_26_0_1_704, 1-index);
    window_buf325r_buf325dr_i->release(*window_buf325r_buf325dr_i, LOCK_25_0_0_0, LOCK_25_0_1_0, 1-index);
    window_buf341_buf341d_o->release(*window_buf341_buf341d_o, LOCK_26_1_0_8032, LOCK_26_1_1_0, 1-index);
    window_buf347_buf347d_o->release(*window_buf347_buf347d_o, LOCK_26_1_2_0, LOCK_26_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_26_0_bounds > 0)
      --proc_26_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}