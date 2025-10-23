// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/19_2/src/19_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_18_2_0_8032 16
#define LOCK_18_2_1_0 17
#define LOCK_19_2_2_0 50
#define LOCK_19_2_3_0 51
#define LOCK_19_1_0_3936 0
#define LOCK_19_1_1_5952 1
#define LOCK_19_1_2_2080 2
#define LOCK_19_1_3_0 3

// Declare shared memory buffers
v4float buf264[9];
v4float buf264d[9];
v4float buf280[9];
v4float buf280d[9];
v4float buf286[9];
v4float buf286d[9];
v4float buf302[9];
v4float buf302d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf264_buf264d_i[1] = {{(float*)buf264, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf280_buf280d_i[1] = {{(float*)buf280, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf286_buf286d_o[1] = {{(float*)buf286, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf302_buf302d_o[1] = {{(float*)buf302, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_19_2_bounds = sync_buffer[1];

  while (proc_19_2_bounds)
  {

    // Kernel call : i138:orthogonalize<32>
    window_buf264_buf264d_i->setData(*window_buf264_buf264d_i, (float*)buf264, (float*)buf264d, 1-index, 0);
    window_buf264_buf264d_i->acquire(*window_buf264_buf264d_i, LOCK_18_2_0_8032, LOCK_18_2_1_0, 1-index);
    window_buf280_buf280d_i->setData(*window_buf280_buf280d_i, (float*)buf280, (float*)buf280d, 1-index, 0);
    window_buf280_buf280d_i->acquire(*window_buf280_buf280d_i, LOCK_19_2_2_0, LOCK_19_2_3_0, 1-index);
    window_buf286_buf286d_o->setData(*window_buf286_buf286d_o, (float*)buf286, (float*)buf286d, 1-index, 0);
    window_buf286_buf286d_o->acquire(*window_buf286_buf286d_o, LOCK_19_1_0_3936, LOCK_19_1_1_5952, 1-index);
    window_buf302_buf302d_o->setData(*window_buf302_buf302d_o, (float*)buf302, (float*)buf302d, 1-index, 0);
    window_buf302_buf302d_o->acquire(*window_buf302_buf302d_o, LOCK_19_1_2_2080, LOCK_19_1_3_0, 1-index);
    orthogonalize<32>(window_buf264_buf264d_i[0],window_buf280_buf280d_i[0],window_buf286_buf286d_o[0],window_buf302_buf302d_o[0]);
    window_buf264_buf264d_i->release(*window_buf264_buf264d_i, LOCK_18_2_0_8032, LOCK_18_2_1_0, 1-index);
    window_buf280_buf280d_i->release(*window_buf280_buf280d_i, LOCK_19_2_2_0, LOCK_19_2_3_0, 1-index);
    window_buf286_buf286d_o->release(*window_buf286_buf286d_o, LOCK_19_1_0_3936, LOCK_19_1_1_5952, 1-index);
    window_buf302_buf302d_o->release(*window_buf302_buf302d_o, LOCK_19_1_2_2080, LOCK_19_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_19_2_bounds > 0)
      --proc_19_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}