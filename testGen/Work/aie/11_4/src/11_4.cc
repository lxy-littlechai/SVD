// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/11_4/src/11_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_10_4_0_3936 16
#define LOCK_10_4_1_2080 17
#define LOCK_11_4_0_3936 48
#define LOCK_11_4_1_2080 49
#define LOCK_11_5_0_160 32
#define LOCK_11_5_1_160 33
#define LOCK_11_5_2_0 34
#define LOCK_11_5_3_0 35

// Declare shared memory buffers
v4float buf104[9];
v4float buf104d[9];
v4float buf109[9];
v4float buf109d[9];
v4float buf126[9];
v4float buf126d[9];
v4float buf131[9];
v4float buf131d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf104_buf104d_i[1] = {{(float*)buf104, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf109_buf109d_i[1] = {{(float*)buf109, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf126_buf126d_o[1] = {{(float*)buf126, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf131_buf131d_o[1] = {{(float*)buf131, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_11_4_bounds = sync_buffer[1];

  while (proc_11_4_bounds)
  {

    // Kernel call : i54:orthogonalize<32>
    window_buf104_buf104d_i->setData(*window_buf104_buf104d_i, (float*)buf104, (float*)buf104d, 1-index, 0);
    window_buf104_buf104d_i->acquire(*window_buf104_buf104d_i, LOCK_10_4_0_3936, LOCK_10_4_1_2080, 1-index);
    window_buf109_buf109d_i->setData(*window_buf109_buf109d_i, (float*)buf109, (float*)buf109d, 1-index, 0);
    window_buf109_buf109d_i->acquire(*window_buf109_buf109d_i, LOCK_11_4_0_3936, LOCK_11_4_1_2080, 1-index);
    window_buf126_buf126d_o->setData(*window_buf126_buf126d_o, (float*)buf126, (float*)buf126d, 1-index, 0);
    window_buf126_buf126d_o->acquire(*window_buf126_buf126d_o, LOCK_11_5_0_160, LOCK_11_5_1_160, 1-index);
    window_buf131_buf131d_o->setData(*window_buf131_buf131d_o, (float*)buf131, (float*)buf131d, 1-index, 0);
    window_buf131_buf131d_o->acquire(*window_buf131_buf131d_o, LOCK_11_5_2_0, LOCK_11_5_3_0, 1-index);
    orthogonalize<32>(window_buf104_buf104d_i[0],window_buf109_buf109d_i[0],window_buf126_buf126d_o[0],window_buf131_buf131d_o[0]);
    window_buf104_buf104d_i->release(*window_buf104_buf104d_i, LOCK_10_4_0_3936, LOCK_10_4_1_2080, 1-index);
    window_buf109_buf109d_i->release(*window_buf109_buf109d_i, LOCK_11_4_0_3936, LOCK_11_4_1_2080, 1-index);
    window_buf126_buf126d_o->release(*window_buf126_buf126d_o, LOCK_11_5_0_160, LOCK_11_5_1_160, 1-index);
    window_buf131_buf131d_o->release(*window_buf131_buf131d_o, LOCK_11_5_2_0, LOCK_11_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_11_4_bounds > 0)
      --proc_11_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}