// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/11_5/src/11_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_11_5_2_0 18
#define LOCK_11_5_3_0 19
#define LOCK_12_5_0_0 48
#define LOCK_12_5_1_0 49
#define LOCK_11_6_0_3936 32
#define LOCK_11_6_1_2080 33
#define LOCK_11_6_2_0 34
#define LOCK_11_6_3_0 35

// Declare shared memory buffers
v4float buf115dr[9];
v4float buf115r[9];
v4float buf131[9];
v4float buf131d[9];
v4float buf137[9];
v4float buf137d[9];
v4float buf153[9];
v4float buf153d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf131_buf131d_i[1] = {{(float*)buf131, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf115r_buf115dr_i[1] = {{(float*)buf115r, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf153_buf153d_o[1] = {{(float*)buf153, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf137_buf137d_o[1] = {{(float*)buf137, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_11_5_bounds = sync_buffer[1];

  while (proc_11_5_bounds)
  {

    // Kernel call : i65:orthogonalize<32>
    window_buf131_buf131d_i->setData(*window_buf131_buf131d_i, (float*)buf131, (float*)buf131d, 1-index, 0);
    window_buf131_buf131d_i->acquire(*window_buf131_buf131d_i, LOCK_11_5_2_0, LOCK_11_5_3_0, 1-index);
    window_buf115r_buf115dr_i->setData(*window_buf115r_buf115dr_i, (float*)buf115r, (float*)buf115dr, 1-index, 0);
    window_buf115r_buf115dr_i->acquire(*window_buf115r_buf115dr_i, LOCK_12_5_0_0, LOCK_12_5_1_0, 1-index);
    window_buf153_buf153d_o->setData(*window_buf153_buf153d_o, (float*)buf153, (float*)buf153d, 1-index, 0);
    window_buf153_buf153d_o->acquire(*window_buf153_buf153d_o, LOCK_11_6_0_3936, LOCK_11_6_1_2080, 1-index);
    window_buf137_buf137d_o->setData(*window_buf137_buf137d_o, (float*)buf137, (float*)buf137d, 1-index, 0);
    window_buf137_buf137d_o->acquire(*window_buf137_buf137d_o, LOCK_11_6_2_0, LOCK_11_6_3_0, 1-index);
    orthogonalize<32>(window_buf131_buf131d_i[0],window_buf115r_buf115dr_i[0],window_buf153_buf153d_o[0],window_buf137_buf137d_o[0]);
    window_buf131_buf131d_i->release(*window_buf131_buf131d_i, LOCK_11_5_2_0, LOCK_11_5_3_0, 1-index);
    window_buf115r_buf115dr_i->release(*window_buf115r_buf115dr_i, LOCK_12_5_0_0, LOCK_12_5_1_0, 1-index);
    window_buf153_buf153d_o->release(*window_buf153_buf153d_o, LOCK_11_6_0_3936, LOCK_11_6_1_2080, 1-index);
    window_buf137_buf137d_o->release(*window_buf137_buf137d_o, LOCK_11_6_2_0, LOCK_11_6_3_0, 1-index);
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