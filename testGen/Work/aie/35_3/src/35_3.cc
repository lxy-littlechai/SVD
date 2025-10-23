// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/35_3/src/35_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_35_3_2_0 18
#define LOCK_35_3_3_0 19
#define LOCK_36_3_0_0 48
#define LOCK_36_3_1_0 49
#define LOCK_35_4_0_3936 32
#define LOCK_35_4_1_2080 33
#define LOCK_35_4_2_0 34
#define LOCK_35_4_3_0 35

// Declare shared memory buffers
v4float buf391dr[9];
v4float buf391r[9];
v4float buf395[9];
v4float buf395d[9];
v4float buf413[9];
v4float buf413d[9];
v4float buf417[9];
v4float buf417d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf395_buf395d_i[1] = {{(float*)buf395, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf391r_buf391dr_i[1] = {{(float*)buf391r, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf417_buf417d_o[1] = {{(float*)buf417, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf413_buf413d_o[1] = {{(float*)buf413, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_35_3_bounds = sync_buffer[1];

  while (proc_35_3_bounds)
  {

    // Kernel call : i197:orthogonalize<32>
    window_buf395_buf395d_i->setData(*window_buf395_buf395d_i, (float*)buf395, (float*)buf395d, 1-index, 0);
    window_buf395_buf395d_i->acquire(*window_buf395_buf395d_i, LOCK_35_3_2_0, LOCK_35_3_3_0, 1-index);
    window_buf391r_buf391dr_i->setData(*window_buf391r_buf391dr_i, (float*)buf391r, (float*)buf391dr, 1-index, 0);
    window_buf391r_buf391dr_i->acquire(*window_buf391r_buf391dr_i, LOCK_36_3_0_0, LOCK_36_3_1_0, 1-index);
    window_buf417_buf417d_o->setData(*window_buf417_buf417d_o, (float*)buf417, (float*)buf417d, 1-index, 0);
    window_buf417_buf417d_o->acquire(*window_buf417_buf417d_o, LOCK_35_4_0_3936, LOCK_35_4_1_2080, 1-index);
    window_buf413_buf413d_o->setData(*window_buf413_buf413d_o, (float*)buf413, (float*)buf413d, 1-index, 0);
    window_buf413_buf413d_o->acquire(*window_buf413_buf413d_o, LOCK_35_4_2_0, LOCK_35_4_3_0, 1-index);
    orthogonalize<32>(window_buf395_buf395d_i[0],window_buf391r_buf391dr_i[0],window_buf417_buf417d_o[0],window_buf413_buf413d_o[0]);
    window_buf395_buf395d_i->release(*window_buf395_buf395d_i, LOCK_35_3_2_0, LOCK_35_3_3_0, 1-index);
    window_buf391r_buf391dr_i->release(*window_buf391r_buf391dr_i, LOCK_36_3_0_0, LOCK_36_3_1_0, 1-index);
    window_buf417_buf417d_o->release(*window_buf417_buf417d_o, LOCK_35_4_0_3936, LOCK_35_4_1_2080, 1-index);
    window_buf413_buf413d_o->release(*window_buf413_buf413d_o, LOCK_35_4_2_0, LOCK_35_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_35_3_bounds > 0)
      --proc_35_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}