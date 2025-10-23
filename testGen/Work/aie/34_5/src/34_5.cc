// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/34_5/src/34_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_34_5_0_8032 16
#define LOCK_34_5_1_0 17
#define LOCK_35_5_0_8032 48
#define LOCK_35_5_1_0 49
#define LOCK_34_6_0_3936 32
#define LOCK_34_6_1_2080 33
#define LOCK_34_6_2_0 34
#define LOCK_34_6_3_0 35

// Declare shared memory buffers
v4float buf418[9];
v4float buf418d[9];
v4float buf420[9];
v4float buf420d[9];
v4float buf440[9];
v4float buf440d[9];
v4float buf442[9];
v4float buf442d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf418_buf418d_i[1] = {{(float*)buf418, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf420_buf420d_i[1] = {{(float*)buf420, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf440_buf440d_o[1] = {{(float*)buf440, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf442_buf442d_o[1] = {{(float*)buf442, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_34_5_bounds = sync_buffer[1];

  while (proc_34_5_bounds)
  {

    // Kernel call : i218:orthogonalize<32>
    window_buf418_buf418d_i->setData(*window_buf418_buf418d_i, (float*)buf418, (float*)buf418d, 1-index, 0);
    window_buf418_buf418d_i->acquire(*window_buf418_buf418d_i, LOCK_34_5_0_8032, LOCK_34_5_1_0, 1-index);
    window_buf420_buf420d_i->setData(*window_buf420_buf420d_i, (float*)buf420, (float*)buf420d, 1-index, 0);
    window_buf420_buf420d_i->acquire(*window_buf420_buf420d_i, LOCK_35_5_0_8032, LOCK_35_5_1_0, 1-index);
    window_buf440_buf440d_o->setData(*window_buf440_buf440d_o, (float*)buf440, (float*)buf440d, 1-index, 0);
    window_buf440_buf440d_o->acquire(*window_buf440_buf440d_o, LOCK_34_6_0_3936, LOCK_34_6_1_2080, 1-index);
    window_buf442_buf442d_o->setData(*window_buf442_buf442d_o, (float*)buf442, (float*)buf442d, 1-index, 0);
    window_buf442_buf442d_o->acquire(*window_buf442_buf442d_o, LOCK_34_6_2_0, LOCK_34_6_3_0, 1-index);
    orthogonalize<32>(window_buf418_buf418d_i[0],window_buf420_buf420d_i[0],window_buf440_buf440d_o[0],window_buf442_buf442d_o[0]);
    window_buf418_buf418d_i->release(*window_buf418_buf418d_i, LOCK_34_5_0_8032, LOCK_34_5_1_0, 1-index);
    window_buf420_buf420d_i->release(*window_buf420_buf420d_i, LOCK_35_5_0_8032, LOCK_35_5_1_0, 1-index);
    window_buf440_buf440d_o->release(*window_buf440_buf440d_o, LOCK_34_6_0_3936, LOCK_34_6_1_2080, 1-index);
    window_buf442_buf442d_o->release(*window_buf442_buf442d_o, LOCK_34_6_2_0, LOCK_34_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_34_5_bounds > 0)
      --proc_34_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}