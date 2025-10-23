// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/12_4/src/12_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_11_4_0_7136 16
#define LOCK_11_4_1_0 17
#define LOCK_12_4_2_0 50
#define LOCK_12_4_3_0 51
#define LOCK_12_5_0_7136 32
#define LOCK_12_5_1_0 33
#define LOCK_12_5_2_0 34
#define LOCK_12_5_3_0 35

// Declare shared memory buffers
v4float buf161[65];
v4float buf161d[65];
v4float buf166[65];
v4float buf166d[65];
v4float buf169[65];
v4float buf169d[65];
v4float buf174[65];
v4float buf174d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf161_buf161d_i[1] = {{(float*)buf161, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf166_buf166d_i[1] = {{(float*)buf166, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf169_buf169d_o[1] = {{(float*)buf169, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf174_buf174d_o[1] = {{(float*)buf174, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_12_4_bounds = sync_buffer[1];

  while (proc_12_4_bounds)
  {

    // Kernel call : i89:orthogonalize<256>
    window_buf161_buf161d_i->setData(*window_buf161_buf161d_i, (float*)buf161, (float*)buf161d, 1-index, 0);
    window_buf161_buf161d_i->acquire(*window_buf161_buf161d_i, LOCK_11_4_0_7136, LOCK_11_4_1_0, 1-index);
    window_buf166_buf166d_i->setData(*window_buf166_buf166d_i, (float*)buf166, (float*)buf166d, 1-index, 0);
    window_buf166_buf166d_i->acquire(*window_buf166_buf166d_i, LOCK_12_4_2_0, LOCK_12_4_3_0, 1-index);
    window_buf169_buf169d_o->setData(*window_buf169_buf169d_o, (float*)buf169, (float*)buf169d, 1-index, 0);
    window_buf169_buf169d_o->acquire(*window_buf169_buf169d_o, LOCK_12_5_0_7136, LOCK_12_5_1_0, 1-index);
    window_buf174_buf174d_o->setData(*window_buf174_buf174d_o, (float*)buf174, (float*)buf174d, 1-index, 0);
    window_buf174_buf174d_o->acquire(*window_buf174_buf174d_o, LOCK_12_5_2_0, LOCK_12_5_3_0, 1-index);
    orthogonalize<256>(window_buf161_buf161d_i[0],window_buf166_buf166d_i[0],window_buf169_buf169d_o[0],window_buf174_buf174d_o[0]);
    window_buf161_buf161d_i->release(*window_buf161_buf161d_i, LOCK_11_4_0_7136, LOCK_11_4_1_0, 1-index);
    window_buf166_buf166d_i->release(*window_buf166_buf166d_i, LOCK_12_4_2_0, LOCK_12_4_3_0, 1-index);
    window_buf169_buf169d_o->release(*window_buf169_buf169d_o, LOCK_12_5_0_7136, LOCK_12_5_1_0, 1-index);
    window_buf174_buf174d_o->release(*window_buf174_buf174d_o, LOCK_12_5_2_0, LOCK_12_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_12_4_bounds > 0)
      --proc_12_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}