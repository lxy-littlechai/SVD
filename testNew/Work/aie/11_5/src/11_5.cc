// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/11_5/src/11_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_11_5_0_7136 16
#define LOCK_11_5_1_0 17
#define LOCK_12_5_2_0 50
#define LOCK_12_5_3_0 51
#define LOCK_11_6_0_0 32
#define LOCK_11_6_1_0 33
#define LOCK_11_6_2_0 34
#define LOCK_11_6_3_0 35

// Declare shared memory buffers
v4float buf171[65];
v4float buf171d[65];
v4float buf174[65];
v4float buf174d[65];
v4float buf179[65];
v4float buf179d[65];
v4float buf182[65];
v4float buf182d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf171_buf171d_i[1] = {{(float*)buf171, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf174_buf174d_i[1] = {{(float*)buf174, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf179_buf179d_o[1] = {{(float*)buf179, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf182_buf182d_o[1] = {{(float*)buf182, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_11_5_bounds = sync_buffer[1];

  while (proc_11_5_bounds)
  {

    // Kernel call : i92:orthogonalize<256>
    window_buf171_buf171d_i->setData(*window_buf171_buf171d_i, (float*)buf171, (float*)buf171d, 1-index, 0);
    window_buf171_buf171d_i->acquire(*window_buf171_buf171d_i, LOCK_11_5_0_7136, LOCK_11_5_1_0, 1-index);
    window_buf174_buf174d_i->setData(*window_buf174_buf174d_i, (float*)buf174, (float*)buf174d, 1-index, 0);
    window_buf174_buf174d_i->acquire(*window_buf174_buf174d_i, LOCK_12_5_2_0, LOCK_12_5_3_0, 1-index);
    window_buf179_buf179d_o->setData(*window_buf179_buf179d_o, (float*)buf179, (float*)buf179d, 1-index, 0);
    window_buf179_buf179d_o->acquire(*window_buf179_buf179d_o, LOCK_11_6_0_0, LOCK_11_6_1_0, 1-index);
    window_buf182_buf182d_o->setData(*window_buf182_buf182d_o, (float*)buf182, (float*)buf182d, 1-index, 0);
    window_buf182_buf182d_o->acquire(*window_buf182_buf182d_o, LOCK_11_6_2_0, LOCK_11_6_3_0, 1-index);
    orthogonalize<256>(window_buf171_buf171d_i[0],window_buf174_buf174d_i[0],window_buf179_buf179d_o[0],window_buf182_buf182d_o[0]);
    window_buf171_buf171d_i->release(*window_buf171_buf171d_i, LOCK_11_5_0_7136, LOCK_11_5_1_0, 1-index);
    window_buf174_buf174d_i->release(*window_buf174_buf174d_i, LOCK_12_5_2_0, LOCK_12_5_3_0, 1-index);
    window_buf179_buf179d_o->release(*window_buf179_buf179d_o, LOCK_11_6_0_0, LOCK_11_6_1_0, 1-index);
    window_buf182_buf182d_o->release(*window_buf182_buf182d_o, LOCK_11_6_2_0, LOCK_11_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_11_5_bounds > 0)
      --proc_11_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}