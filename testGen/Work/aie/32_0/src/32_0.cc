// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/32_0/src/32_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_32_0_0_0 48
#define LOCK_32_0_1_0 49
#define LOCK_32_0_2_160 50
#define LOCK_32_0_3_704 51
#define LOCK_32_1_0_0 32
#define LOCK_32_1_1_0 33
#define LOCK_32_1_2_0 34
#define LOCK_32_1_3_0 35

// Declare shared memory buffers
v4float buf308dr[9];
v4float buf308r[9];
v4float buf320dr[9];
v4float buf320r[9];
v4float buf330[9];
v4float buf330d[9];
v4float buf342[9];
v4float buf342d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf308r_buf308dr_i[1] = {{(float*)buf308r, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf320r_buf320dr_i[1] = {{(float*)buf320r, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf330_buf330d_o[1] = {{(float*)buf330, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf342_buf342d_o[1] = {{(float*)buf342, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_32_0_bounds = sync_buffer[1];

  while (proc_32_0_bounds)
  {

    // Kernel call : i161:orthogonalize<32>
    window_buf308r_buf308dr_i->setData(*window_buf308r_buf308dr_i, (float*)buf308r, (float*)buf308dr, 1-index, 0);
    window_buf308r_buf308dr_i->acquire(*window_buf308r_buf308dr_i, LOCK_32_0_0_0, LOCK_32_0_1_0, 1-index);
    window_buf320r_buf320dr_i->setData(*window_buf320r_buf320dr_i, (float*)buf320r, (float*)buf320dr, 1-index, 0);
    window_buf320r_buf320dr_i->acquire(*window_buf320r_buf320dr_i, LOCK_32_0_2_160, LOCK_32_0_3_704, 1-index);
    window_buf330_buf330d_o->setData(*window_buf330_buf330d_o, (float*)buf330, (float*)buf330d, 1-index, 0);
    window_buf330_buf330d_o->acquire(*window_buf330_buf330d_o, LOCK_32_1_0_0, LOCK_32_1_1_0, 1-index);
    window_buf342_buf342d_o->setData(*window_buf342_buf342d_o, (float*)buf342, (float*)buf342d, 1-index, 0);
    window_buf342_buf342d_o->acquire(*window_buf342_buf342d_o, LOCK_32_1_2_0, LOCK_32_1_3_0, 1-index);
    orthogonalize<32>(window_buf308r_buf308dr_i[0],window_buf320r_buf320dr_i[0],window_buf330_buf330d_o[0],window_buf342_buf342d_o[0]);
    window_buf308r_buf308dr_i->release(*window_buf308r_buf308dr_i, LOCK_32_0_0_0, LOCK_32_0_1_0, 1-index);
    window_buf320r_buf320dr_i->release(*window_buf320r_buf320dr_i, LOCK_32_0_2_160, LOCK_32_0_3_704, 1-index);
    window_buf330_buf330d_o->release(*window_buf330_buf330d_o, LOCK_32_1_0_0, LOCK_32_1_1_0, 1-index);
    window_buf342_buf342d_o->release(*window_buf342_buf342d_o, LOCK_32_1_2_0, LOCK_32_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_32_0_bounds > 0)
      --proc_32_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}