// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/33_5/src/33_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_33_5_0_8032 16
#define LOCK_33_5_1_0 17
#define LOCK_34_5_2_0 50
#define LOCK_34_5_3_0 51
#define LOCK_33_6_0_0 32
#define LOCK_33_6_1_0 33
#define LOCK_33_6_2_0 34
#define LOCK_33_6_3_0 35

// Declare shared memory buffers
v4float buf419[9];
v4float buf419d[9];
v4float buf422[9];
v4float buf422d[9];
v4float buf441[9];
v4float buf441d[9];
v4float buf444[9];
v4float buf444d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf419_buf419d_i[1] = {{(float*)buf419, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf422_buf422d_i[1] = {{(float*)buf422, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf441_buf441d_o[1] = {{(float*)buf441, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf444_buf444d_o[1] = {{(float*)buf444, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_33_5_bounds = sync_buffer[1];

  while (proc_33_5_bounds)
  {

    // Kernel call : i217:orthogonalize<32>
    window_buf419_buf419d_i->setData(*window_buf419_buf419d_i, (float*)buf419, (float*)buf419d, 1-index, 0);
    window_buf419_buf419d_i->acquire(*window_buf419_buf419d_i, LOCK_33_5_0_8032, LOCK_33_5_1_0, 1-index);
    window_buf422_buf422d_i->setData(*window_buf422_buf422d_i, (float*)buf422, (float*)buf422d, 1-index, 0);
    window_buf422_buf422d_i->acquire(*window_buf422_buf422d_i, LOCK_34_5_2_0, LOCK_34_5_3_0, 1-index);
    window_buf441_buf441d_o->setData(*window_buf441_buf441d_o, (float*)buf441, (float*)buf441d, 1-index, 0);
    window_buf441_buf441d_o->acquire(*window_buf441_buf441d_o, LOCK_33_6_0_0, LOCK_33_6_1_0, 1-index);
    window_buf444_buf444d_o->setData(*window_buf444_buf444d_o, (float*)buf444, (float*)buf444d, 1-index, 0);
    window_buf444_buf444d_o->acquire(*window_buf444_buf444d_o, LOCK_33_6_2_0, LOCK_33_6_3_0, 1-index);
    orthogonalize<32>(window_buf419_buf419d_i[0],window_buf422_buf422d_i[0],window_buf441_buf441d_o[0],window_buf444_buf444d_o[0]);
    window_buf419_buf419d_i->release(*window_buf419_buf419d_i, LOCK_33_5_0_8032, LOCK_33_5_1_0, 1-index);
    window_buf422_buf422d_i->release(*window_buf422_buf422d_i, LOCK_34_5_2_0, LOCK_34_5_3_0, 1-index);
    window_buf441_buf441d_o->release(*window_buf441_buf441d_o, LOCK_33_6_0_0, LOCK_33_6_1_0, 1-index);
    window_buf444_buf444d_o->release(*window_buf444_buf444d_o, LOCK_33_6_2_0, LOCK_33_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_33_5_bounds > 0)
      --proc_33_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}