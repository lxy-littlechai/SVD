// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/11_6/src/11_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_10_6_0_0 16
#define LOCK_10_6_1_0 17
#define LOCK_11_6_0_3936 48
#define LOCK_11_6_1_2080 49
#define LOCK_11_7_0_8032 32
#define LOCK_11_7_1_0 33
#define LOCK_11_7_2_0 34
#define LOCK_11_7_3_0 35

// Declare shared memory buffers
v4float buf146[9];
v4float buf146d[9];
v4float buf153[9];
v4float buf153d[9];
v4float buf168[9];
v4float buf168d[9];
v4float buf175[9];
v4float buf175d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf146_buf146d_i[1] = {{(float*)buf146, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf153_buf153d_i[1] = {{(float*)buf153, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf168_buf168d_o[1] = {{(float*)buf168, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf175_buf175d_o[1] = {{(float*)buf175, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_11_6_bounds = sync_buffer[1];

  while (proc_11_6_bounds)
  {

    // Kernel call : i76:orthogonalize<32>
    window_buf146_buf146d_i->setData(*window_buf146_buf146d_i, (float*)buf146, (float*)buf146d, 1-index, 0);
    window_buf146_buf146d_i->acquire(*window_buf146_buf146d_i, LOCK_10_6_0_0, LOCK_10_6_1_0, 1-index);
    window_buf153_buf153d_i->setData(*window_buf153_buf153d_i, (float*)buf153, (float*)buf153d, 1-index, 0);
    window_buf153_buf153d_i->acquire(*window_buf153_buf153d_i, LOCK_11_6_0_3936, LOCK_11_6_1_2080, 1-index);
    window_buf168_buf168d_o->setData(*window_buf168_buf168d_o, (float*)buf168, (float*)buf168d, 1-index, 0);
    window_buf168_buf168d_o->acquire(*window_buf168_buf168d_o, LOCK_11_7_0_8032, LOCK_11_7_1_0, 1-index);
    window_buf175_buf175d_o->setData(*window_buf175_buf175d_o, (float*)buf175, (float*)buf175d, 1-index, 0);
    window_buf175_buf175d_o->acquire(*window_buf175_buf175d_o, LOCK_11_7_2_0, LOCK_11_7_3_0, 1-index);
    orthogonalize<32>(window_buf146_buf146d_i[0],window_buf153_buf153d_i[0],window_buf168_buf168d_o[0],window_buf175_buf175d_o[0]);
    window_buf146_buf146d_i->release(*window_buf146_buf146d_i, LOCK_10_6_0_0, LOCK_10_6_1_0, 1-index);
    window_buf153_buf153d_i->release(*window_buf153_buf153d_i, LOCK_11_6_0_3936, LOCK_11_6_1_2080, 1-index);
    window_buf168_buf168d_o->release(*window_buf168_buf168d_o, LOCK_11_7_0_8032, LOCK_11_7_1_0, 1-index);
    window_buf175_buf175d_o->release(*window_buf175_buf175d_o, LOCK_11_7_2_0, LOCK_11_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_11_6_bounds > 0)
      --proc_11_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}