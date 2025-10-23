// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/4_2/src/4_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_3_2_0_0 16
#define LOCK_3_2_1_0 17
#define LOCK_4_2_2_0 50
#define LOCK_4_2_3_0 51
#define LOCK_4_3_0_0 32
#define LOCK_4_3_1_0 33
#define LOCK_4_3_2_0 34
#define LOCK_4_3_3_0 35

// Declare shared memory buffers
v4float buf48[9];
v4float buf48d[9];
v4float buf53[9];
v4float buf53d[9];
v4float buf70[9];
v4float buf70d[9];
v4float buf75[9];
v4float buf75d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf48_buf48d_i[1] = {{(float*)buf48, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf53_buf53d_i[1] = {{(float*)buf53, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf70_buf70d_o[1] = {{(float*)buf70, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf75_buf75d_o[1] = {{(float*)buf75, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_4_2_bounds = sync_buffer[1];

  while (proc_4_2_bounds)
  {

    // Kernel call : i25:orthogonalize<32>
    window_buf48_buf48d_i->setData(*window_buf48_buf48d_i, (float*)buf48, (float*)buf48d, 1-index, 0);
    window_buf48_buf48d_i->acquire(*window_buf48_buf48d_i, LOCK_3_2_0_0, LOCK_3_2_1_0, 1-index);
    window_buf53_buf53d_i->setData(*window_buf53_buf53d_i, (float*)buf53, (float*)buf53d, 1-index, 0);
    window_buf53_buf53d_i->acquire(*window_buf53_buf53d_i, LOCK_4_2_2_0, LOCK_4_2_3_0, 1-index);
    window_buf70_buf70d_o->setData(*window_buf70_buf70d_o, (float*)buf70, (float*)buf70d, 1-index, 0);
    window_buf70_buf70d_o->acquire(*window_buf70_buf70d_o, LOCK_4_3_0_0, LOCK_4_3_1_0, 1-index);
    window_buf75_buf75d_o->setData(*window_buf75_buf75d_o, (float*)buf75, (float*)buf75d, 1-index, 0);
    window_buf75_buf75d_o->acquire(*window_buf75_buf75d_o, LOCK_4_3_2_0, LOCK_4_3_3_0, 1-index);
    orthogonalize<32>(window_buf48_buf48d_i[0],window_buf53_buf53d_i[0],window_buf70_buf70d_o[0],window_buf75_buf75d_o[0]);
    window_buf48_buf48d_i->release(*window_buf48_buf48d_i, LOCK_3_2_0_0, LOCK_3_2_1_0, 1-index);
    window_buf53_buf53d_i->release(*window_buf53_buf53d_i, LOCK_4_2_2_0, LOCK_4_2_3_0, 1-index);
    window_buf70_buf70d_o->release(*window_buf70_buf70d_o, LOCK_4_3_0_0, LOCK_4_3_1_0, 1-index);
    window_buf75_buf75d_o->release(*window_buf75_buf75d_o, LOCK_4_3_2_0, LOCK_4_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_4_2_bounds > 0)
      --proc_4_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}