// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/26_1/src/26_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_26_1_0_8032 16
#define LOCK_26_1_1_0 17
#define LOCK_27_1_2_0 50
#define LOCK_27_1_3_0 51
#define LOCK_26_2_0_8032 32
#define LOCK_26_2_1_0 33
#define LOCK_26_2_2_0 34
#define LOCK_26_2_3_0 35

// Declare shared memory buffers
v4float buf341[9];
v4float buf341d[9];
v4float buf349[9];
v4float buf349d[9];
v4float buf363[9];
v4float buf363d[9];
v4float buf371[9];
v4float buf371d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf341_buf341d_i[1] = {{(float*)buf341, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf349_buf349d_i[1] = {{(float*)buf349, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf363_buf363d_o[1] = {{(float*)buf363, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf371_buf371d_o[1] = {{(float*)buf371, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_26_1_bounds = sync_buffer[1];

  while (proc_26_1_bounds)
  {

    // Kernel call : i166:orthogonalize<32>
    window_buf341_buf341d_i->setData(*window_buf341_buf341d_i, (float*)buf341, (float*)buf341d, 1-index, 0);
    window_buf341_buf341d_i->acquire(*window_buf341_buf341d_i, LOCK_26_1_0_8032, LOCK_26_1_1_0, 1-index);
    window_buf349_buf349d_i->setData(*window_buf349_buf349d_i, (float*)buf349, (float*)buf349d, 1-index, 0);
    window_buf349_buf349d_i->acquire(*window_buf349_buf349d_i, LOCK_27_1_2_0, LOCK_27_1_3_0, 1-index);
    window_buf363_buf363d_o->setData(*window_buf363_buf363d_o, (float*)buf363, (float*)buf363d, 1-index, 0);
    window_buf363_buf363d_o->acquire(*window_buf363_buf363d_o, LOCK_26_2_0_8032, LOCK_26_2_1_0, 1-index);
    window_buf371_buf371d_o->setData(*window_buf371_buf371d_o, (float*)buf371, (float*)buf371d, 1-index, 0);
    window_buf371_buf371d_o->acquire(*window_buf371_buf371d_o, LOCK_26_2_2_0, LOCK_26_2_3_0, 1-index);
    orthogonalize<32>(window_buf341_buf341d_i[0],window_buf349_buf349d_i[0],window_buf363_buf363d_o[0],window_buf371_buf371d_o[0]);
    window_buf341_buf341d_i->release(*window_buf341_buf341d_i, LOCK_26_1_0_8032, LOCK_26_1_1_0, 1-index);
    window_buf349_buf349d_i->release(*window_buf349_buf349d_i, LOCK_27_1_2_0, LOCK_27_1_3_0, 1-index);
    window_buf363_buf363d_o->release(*window_buf363_buf363d_o, LOCK_26_2_0_8032, LOCK_26_2_1_0, 1-index);
    window_buf371_buf371d_o->release(*window_buf371_buf371d_o, LOCK_26_2_2_0, LOCK_26_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_26_1_bounds > 0)
      --proc_26_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}