// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/10_5/src/10_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_10_5_0_8032 16
#define LOCK_10_5_1_0 17
#define LOCK_11_5_0_160 48
#define LOCK_11_5_1_160 49
#define LOCK_10_6_0_0 32
#define LOCK_10_6_1_0 33
#define LOCK_10_6_2_0 34
#define LOCK_10_6_3_0 35

// Declare shared memory buffers
v4float buf124[9];
v4float buf124d[9];
v4float buf126[9];
v4float buf126d[9];
v4float buf146[9];
v4float buf146d[9];
v4float buf148[9];
v4float buf148d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf124_buf124d_i[1] = {{(float*)buf124, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf126_buf126d_i[1] = {{(float*)buf126, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf146_buf146d_o[1] = {{(float*)buf146, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf148_buf148d_o[1] = {{(float*)buf148, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_10_5_bounds = sync_buffer[1];

  while (proc_10_5_bounds)
  {

    // Kernel call : i64:orthogonalize<32>
    window_buf124_buf124d_i->setData(*window_buf124_buf124d_i, (float*)buf124, (float*)buf124d, 1-index, 0);
    window_buf124_buf124d_i->acquire(*window_buf124_buf124d_i, LOCK_10_5_0_8032, LOCK_10_5_1_0, 1-index);
    window_buf126_buf126d_i->setData(*window_buf126_buf126d_i, (float*)buf126, (float*)buf126d, 1-index, 0);
    window_buf126_buf126d_i->acquire(*window_buf126_buf126d_i, LOCK_11_5_0_160, LOCK_11_5_1_160, 1-index);
    window_buf146_buf146d_o->setData(*window_buf146_buf146d_o, (float*)buf146, (float*)buf146d, 1-index, 0);
    window_buf146_buf146d_o->acquire(*window_buf146_buf146d_o, LOCK_10_6_0_0, LOCK_10_6_1_0, 1-index);
    window_buf148_buf148d_o->setData(*window_buf148_buf148d_o, (float*)buf148, (float*)buf148d, 1-index, 0);
    window_buf148_buf148d_o->acquire(*window_buf148_buf148d_o, LOCK_10_6_2_0, LOCK_10_6_3_0, 1-index);
    orthogonalize<32>(window_buf124_buf124d_i[0],window_buf126_buf126d_i[0],window_buf146_buf146d_o[0],window_buf148_buf148d_o[0]);
    window_buf124_buf124d_i->release(*window_buf124_buf124d_i, LOCK_10_5_0_8032, LOCK_10_5_1_0, 1-index);
    window_buf126_buf126d_i->release(*window_buf126_buf126d_i, LOCK_11_5_0_160, LOCK_11_5_1_160, 1-index);
    window_buf146_buf146d_o->release(*window_buf146_buf146d_o, LOCK_10_6_0_0, LOCK_10_6_1_0, 1-index);
    window_buf148_buf148d_o->release(*window_buf148_buf148d_o, LOCK_10_6_2_0, LOCK_10_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_10_5_bounds > 0)
      --proc_10_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}