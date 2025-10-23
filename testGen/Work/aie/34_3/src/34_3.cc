// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/34_3/src/34_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_34_3_0_8032 16
#define LOCK_34_3_1_0 17
#define LOCK_35_3_0_8032 48
#define LOCK_35_3_1_0 49
#define LOCK_34_4_0_8032 32
#define LOCK_34_4_1_0 33
#define LOCK_34_4_2_0 34
#define LOCK_34_4_3_0 35

// Declare shared memory buffers
v4float buf376[9];
v4float buf376d[9];
v4float buf378[9];
v4float buf378d[9];
v4float buf398[9];
v4float buf398d[9];
v4float buf400[9];
v4float buf400d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf376_buf376d_i[1] = {{(float*)buf376, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf378_buf378d_i[1] = {{(float*)buf378, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf398_buf398d_o[1] = {{(float*)buf398, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf400_buf400d_o[1] = {{(float*)buf400, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_34_3_bounds = sync_buffer[1];

  while (proc_34_3_bounds)
  {

    // Kernel call : i196:orthogonalize<32>
    window_buf376_buf376d_i->setData(*window_buf376_buf376d_i, (float*)buf376, (float*)buf376d, 1-index, 0);
    window_buf376_buf376d_i->acquire(*window_buf376_buf376d_i, LOCK_34_3_0_8032, LOCK_34_3_1_0, 1-index);
    window_buf378_buf378d_i->setData(*window_buf378_buf378d_i, (float*)buf378, (float*)buf378d, 1-index, 0);
    window_buf378_buf378d_i->acquire(*window_buf378_buf378d_i, LOCK_35_3_0_8032, LOCK_35_3_1_0, 1-index);
    window_buf398_buf398d_o->setData(*window_buf398_buf398d_o, (float*)buf398, (float*)buf398d, 1-index, 0);
    window_buf398_buf398d_o->acquire(*window_buf398_buf398d_o, LOCK_34_4_0_8032, LOCK_34_4_1_0, 1-index);
    window_buf400_buf400d_o->setData(*window_buf400_buf400d_o, (float*)buf400, (float*)buf400d, 1-index, 0);
    window_buf400_buf400d_o->acquire(*window_buf400_buf400d_o, LOCK_34_4_2_0, LOCK_34_4_3_0, 1-index);
    orthogonalize<32>(window_buf376_buf376d_i[0],window_buf378_buf378d_i[0],window_buf398_buf398d_o[0],window_buf400_buf400d_o[0]);
    window_buf376_buf376d_i->release(*window_buf376_buf376d_i, LOCK_34_3_0_8032, LOCK_34_3_1_0, 1-index);
    window_buf378_buf378d_i->release(*window_buf378_buf378d_i, LOCK_35_3_0_8032, LOCK_35_3_1_0, 1-index);
    window_buf398_buf398d_o->release(*window_buf398_buf398d_o, LOCK_34_4_0_8032, LOCK_34_4_1_0, 1-index);
    window_buf400_buf400d_o->release(*window_buf400_buf400d_o, LOCK_34_4_2_0, LOCK_34_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_34_3_bounds > 0)
      --proc_34_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}