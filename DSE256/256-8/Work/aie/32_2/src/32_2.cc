// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/32_2/src/32_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_31_2_0_7136 16
#define LOCK_31_2_1_0 17
#define LOCK_32_2_2_0 50
#define LOCK_32_2_3_0 51
#define LOCK_32_1_0_0 0
#define LOCK_32_1_1_0 1
#define LOCK_32_1_2_0 2
#define LOCK_32_1_3_0 3

// Declare shared memory buffers
v4float buf433[65];
v4float buf433d[65];
v4float buf442[65];
v4float buf442d[65];
v4float buf449[65];
v4float buf449d[65];
v4float buf458[65];
v4float buf458d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf433_buf433d_i[1] = {{(float*)buf433, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf442_buf442d_i[1] = {{(float*)buf442, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf449_buf449d_o[1] = {{(float*)buf449, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf458_buf458d_o[1] = {{(float*)buf458, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_32_2_bounds = sync_buffer[1];

  while (proc_32_2_bounds)
  {

    // Kernel call : i224:orthogonalize<256>
    window_buf433_buf433d_i->setData(*window_buf433_buf433d_i, (float*)buf433, (float*)buf433d, 1-index, 0);
    window_buf433_buf433d_i->acquire(*window_buf433_buf433d_i, LOCK_31_2_0_7136, LOCK_31_2_1_0, 1-index);
    window_buf442_buf442d_i->setData(*window_buf442_buf442d_i, (float*)buf442, (float*)buf442d, 1-index, 0);
    window_buf442_buf442d_i->acquire(*window_buf442_buf442d_i, LOCK_32_2_2_0, LOCK_32_2_3_0, 1-index);
    window_buf449_buf449d_o->setData(*window_buf449_buf449d_o, (float*)buf449, (float*)buf449d, 1-index, 0);
    window_buf449_buf449d_o->acquire(*window_buf449_buf449d_o, LOCK_32_1_0_0, LOCK_32_1_1_0, 1-index);
    window_buf458_buf458d_o->setData(*window_buf458_buf458d_o, (float*)buf458, (float*)buf458d, 1-index, 0);
    window_buf458_buf458d_o->acquire(*window_buf458_buf458d_o, LOCK_32_1_2_0, LOCK_32_1_3_0, 1-index);
    orthogonalize<256>(window_buf433_buf433d_i[0],window_buf442_buf442d_i[0],window_buf449_buf449d_o[0],window_buf458_buf458d_o[0]);
    window_buf433_buf433d_i->release(*window_buf433_buf433d_i, LOCK_31_2_0_7136, LOCK_31_2_1_0, 1-index);
    window_buf442_buf442d_i->release(*window_buf442_buf442d_i, LOCK_32_2_2_0, LOCK_32_2_3_0, 1-index);
    window_buf449_buf449d_o->release(*window_buf449_buf449d_o, LOCK_32_1_0_0, LOCK_32_1_1_0, 1-index);
    window_buf458_buf458d_o->release(*window_buf458_buf458d_o, LOCK_32_1_2_0, LOCK_32_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_32_2_bounds > 0)
      --proc_32_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}