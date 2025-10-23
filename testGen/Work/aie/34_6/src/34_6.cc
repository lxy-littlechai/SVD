// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/34_6/src/34_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_33_6_0_0 16
#define LOCK_33_6_1_0 17
#define LOCK_34_6_2_0 50
#define LOCK_34_6_3_0 51
#define LOCK_34_7_0_8032 32
#define LOCK_34_7_1_0 33
#define LOCK_34_7_2_0 34
#define LOCK_34_7_3_0 35

// Declare shared memory buffers
v4float buf441[9];
v4float buf441d[9];
v4float buf442[9];
v4float buf442d[9];
v4float buf463[9];
v4float buf463d[9];
v4float buf464[9];
v4float buf464d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf441_buf441d_i[1] = {{(float*)buf441, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf442_buf442d_i[1] = {{(float*)buf442, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf463_buf463d_o[1] = {{(float*)buf463, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf464_buf464d_o[1] = {{(float*)buf464, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_34_6_bounds = sync_buffer[1];

  while (proc_34_6_bounds)
  {

    // Kernel call : i229:orthogonalize<32>
    window_buf441_buf441d_i->setData(*window_buf441_buf441d_i, (float*)buf441, (float*)buf441d, 1-index, 0);
    window_buf441_buf441d_i->acquire(*window_buf441_buf441d_i, LOCK_33_6_0_0, LOCK_33_6_1_0, 1-index);
    window_buf442_buf442d_i->setData(*window_buf442_buf442d_i, (float*)buf442, (float*)buf442d, 1-index, 0);
    window_buf442_buf442d_i->acquire(*window_buf442_buf442d_i, LOCK_34_6_2_0, LOCK_34_6_3_0, 1-index);
    window_buf463_buf463d_o->setData(*window_buf463_buf463d_o, (float*)buf463, (float*)buf463d, 1-index, 0);
    window_buf463_buf463d_o->acquire(*window_buf463_buf463d_o, LOCK_34_7_0_8032, LOCK_34_7_1_0, 1-index);
    window_buf464_buf464d_o->setData(*window_buf464_buf464d_o, (float*)buf464, (float*)buf464d, 1-index, 0);
    window_buf464_buf464d_o->acquire(*window_buf464_buf464d_o, LOCK_34_7_2_0, LOCK_34_7_3_0, 1-index);
    orthogonalize<32>(window_buf441_buf441d_i[0],window_buf442_buf442d_i[0],window_buf463_buf463d_o[0],window_buf464_buf464d_o[0]);
    window_buf441_buf441d_i->release(*window_buf441_buf441d_i, LOCK_33_6_0_0, LOCK_33_6_1_0, 1-index);
    window_buf442_buf442d_i->release(*window_buf442_buf442d_i, LOCK_34_6_2_0, LOCK_34_6_3_0, 1-index);
    window_buf463_buf463d_o->release(*window_buf463_buf463d_o, LOCK_34_7_0_8032, LOCK_34_7_1_0, 1-index);
    window_buf464_buf464d_o->release(*window_buf464_buf464d_o, LOCK_34_7_2_0, LOCK_34_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_34_6_bounds > 0)
      --proc_34_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}