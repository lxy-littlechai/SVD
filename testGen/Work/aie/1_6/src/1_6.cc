// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/1_6/src/1_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_1_7_0_0 32
#define LOCK_1_7_1_0 33
#define LOCK_1_6_2_0 50
#define LOCK_1_6_3_0 51
#define LOCK_1_7_2_160 34
#define LOCK_1_7_3_160 35
#define LOCK_1_7_4_0 36
#define LOCK_1_7_5_0 37

// Declare shared memory buffers
v4float buf137dr[9];
v4float buf137r[9];
v4float buf139[9];
v4float buf139d[9];
v4float buf159[9];
v4float buf159d[9];
v4float buf161[9];
v4float buf161d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf137r_buf137dr_i[1] = {{(float*)buf137r, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf139_buf139d_i[1] = {{(float*)buf139, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf159_buf159d_o[1] = {{(float*)buf159, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf161_buf161d_o[1] = {{(float*)buf161, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_1_6_bounds = sync_buffer[1];

  while (proc_1_6_bounds)
  {

    // Kernel call : i66:orthogonalize<32>
    window_buf137r_buf137dr_i->setData(*window_buf137r_buf137dr_i, (float*)buf137r, (float*)buf137dr, 1-index, 0);
    window_buf137r_buf137dr_i->acquire(*window_buf137r_buf137dr_i, LOCK_1_7_0_0, LOCK_1_7_1_0, 1-index);
    window_buf139_buf139d_i->setData(*window_buf139_buf139d_i, (float*)buf139, (float*)buf139d, 1-index, 0);
    window_buf139_buf139d_i->acquire(*window_buf139_buf139d_i, LOCK_1_6_2_0, LOCK_1_6_3_0, 1-index);
    window_buf159_buf159d_o->setData(*window_buf159_buf159d_o, (float*)buf159, (float*)buf159d, 1-index, 0);
    window_buf159_buf159d_o->acquire(*window_buf159_buf159d_o, LOCK_1_7_2_160, LOCK_1_7_3_160, 1-index);
    window_buf161_buf161d_o->setData(*window_buf161_buf161d_o, (float*)buf161, (float*)buf161d, 1-index, 0);
    window_buf161_buf161d_o->acquire(*window_buf161_buf161d_o, LOCK_1_7_4_0, LOCK_1_7_5_0, 1-index);
    orthogonalize<32>(window_buf137r_buf137dr_i[0],window_buf139_buf139d_i[0],window_buf159_buf159d_o[0],window_buf161_buf161d_o[0]);
    window_buf137r_buf137dr_i->release(*window_buf137r_buf137dr_i, LOCK_1_7_0_0, LOCK_1_7_1_0, 1-index);
    window_buf139_buf139d_i->release(*window_buf139_buf139d_i, LOCK_1_6_2_0, LOCK_1_6_3_0, 1-index);
    window_buf159_buf159d_o->release(*window_buf159_buf159d_o, LOCK_1_7_2_160, LOCK_1_7_3_160, 1-index);
    window_buf161_buf161d_o->release(*window_buf161_buf161d_o, LOCK_1_7_4_0, LOCK_1_7_5_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_1_6_bounds > 0)
      --proc_1_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}