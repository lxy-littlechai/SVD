// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/11_0/src/11_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_10_0_0_0 16
#define LOCK_10_0_1_0 17
#define LOCK_10_0_2_0 18
#define LOCK_10_0_3_0 19
#define LOCK_11_1_0_7136 32
#define LOCK_11_1_1_0 33
#define LOCK_11_1_2_0 34
#define LOCK_11_1_3_0 35

// Declare shared memory buffers
v4float buf128[65];
v4float buf128d[65];
v4float buf129[65];
v4float buf129d[65];
v4float buf136[65];
v4float buf136d[65];
v4float buf137[65];
v4float buf137d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf128_buf128d_i[1] = {{(float*)buf128, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf129_buf129d_i[1] = {{(float*)buf129, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf136_buf136d_o[1] = {{(float*)buf136, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf137_buf137d_o[1] = {{(float*)buf137, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_11_0_bounds = sync_buffer[1];

  while (proc_11_0_bounds)
  {

    // Kernel call : i72:orthogonalize<256>
    window_buf128_buf128d_i->setData(*window_buf128_buf128d_i, (float*)buf128, (float*)buf128d, 1-index, 0);
    window_buf128_buf128d_i->acquire(*window_buf128_buf128d_i, LOCK_10_0_0_0, LOCK_10_0_1_0, 1-index);
    window_buf129_buf129d_i->setData(*window_buf129_buf129d_i, (float*)buf129, (float*)buf129d, 1-index, 0);
    window_buf129_buf129d_i->acquire(*window_buf129_buf129d_i, LOCK_10_0_2_0, LOCK_10_0_3_0, 1-index);
    window_buf136_buf136d_o->setData(*window_buf136_buf136d_o, (float*)buf136, (float*)buf136d, 1-index, 0);
    window_buf136_buf136d_o->acquire(*window_buf136_buf136d_o, LOCK_11_1_0_7136, LOCK_11_1_1_0, 1-index);
    window_buf137_buf137d_o->setData(*window_buf137_buf137d_o, (float*)buf137, (float*)buf137d, 1-index, 0);
    window_buf137_buf137d_o->acquire(*window_buf137_buf137d_o, LOCK_11_1_2_0, LOCK_11_1_3_0, 1-index);
    orthogonalize<256>(window_buf128_buf128d_i[0],window_buf129_buf129d_i[0],window_buf136_buf136d_o[0],window_buf137_buf137d_o[0]);
    window_buf128_buf128d_i->release(*window_buf128_buf128d_i, LOCK_10_0_0_0, LOCK_10_0_1_0, 1-index);
    window_buf129_buf129d_i->release(*window_buf129_buf129d_i, LOCK_10_0_2_0, LOCK_10_0_3_0, 1-index);
    window_buf136_buf136d_o->release(*window_buf136_buf136d_o, LOCK_11_1_0_7136, LOCK_11_1_1_0, 1-index);
    window_buf137_buf137d_o->release(*window_buf137_buf137d_o, LOCK_11_1_2_0, LOCK_11_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_11_0_bounds > 0)
      --proc_11_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}