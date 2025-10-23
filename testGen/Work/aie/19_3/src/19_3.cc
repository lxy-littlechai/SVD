// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/19_3/src/19_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_19_3_0_8032 16
#define LOCK_19_3_1_0 17
#define LOCK_20_3_2_0 50
#define LOCK_20_3_3_0 51
#define LOCK_19_2_0_0 0
#define LOCK_19_2_1_0 1
#define LOCK_19_2_2_0 2
#define LOCK_19_2_3_0 3

// Declare shared memory buffers
v4float buf244[9];
v4float buf244d[9];
v4float buf258[9];
v4float buf258d[9];
v4float buf266[9];
v4float buf266d[9];
v4float buf280[9];
v4float buf280d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf244_buf244d_i[1] = {{(float*)buf244, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf258_buf258d_i[1] = {{(float*)buf258, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf266_buf266d_o[1] = {{(float*)buf266, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf280_buf280d_o[1] = {{(float*)buf280, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_19_3_bounds = sync_buffer[1];

  while (proc_19_3_bounds)
  {

    // Kernel call : i127:orthogonalize<32>
    window_buf244_buf244d_i->setData(*window_buf244_buf244d_i, (float*)buf244, (float*)buf244d, 1-index, 0);
    window_buf244_buf244d_i->acquire(*window_buf244_buf244d_i, LOCK_19_3_0_8032, LOCK_19_3_1_0, 1-index);
    window_buf258_buf258d_i->setData(*window_buf258_buf258d_i, (float*)buf258, (float*)buf258d, 1-index, 0);
    window_buf258_buf258d_i->acquire(*window_buf258_buf258d_i, LOCK_20_3_2_0, LOCK_20_3_3_0, 1-index);
    window_buf266_buf266d_o->setData(*window_buf266_buf266d_o, (float*)buf266, (float*)buf266d, 1-index, 0);
    window_buf266_buf266d_o->acquire(*window_buf266_buf266d_o, LOCK_19_2_0_0, LOCK_19_2_1_0, 1-index);
    window_buf280_buf280d_o->setData(*window_buf280_buf280d_o, (float*)buf280, (float*)buf280d, 1-index, 0);
    window_buf280_buf280d_o->acquire(*window_buf280_buf280d_o, LOCK_19_2_2_0, LOCK_19_2_3_0, 1-index);
    orthogonalize<32>(window_buf244_buf244d_i[0],window_buf258_buf258d_i[0],window_buf266_buf266d_o[0],window_buf280_buf280d_o[0]);
    window_buf244_buf244d_i->release(*window_buf244_buf244d_i, LOCK_19_3_0_8032, LOCK_19_3_1_0, 1-index);
    window_buf258_buf258d_i->release(*window_buf258_buf258d_i, LOCK_20_3_2_0, LOCK_20_3_3_0, 1-index);
    window_buf266_buf266d_o->release(*window_buf266_buf266d_o, LOCK_19_2_0_0, LOCK_19_2_1_0, 1-index);
    window_buf280_buf280d_o->release(*window_buf280_buf280d_o, LOCK_19_2_2_0, LOCK_19_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_19_3_bounds > 0)
      --proc_19_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}