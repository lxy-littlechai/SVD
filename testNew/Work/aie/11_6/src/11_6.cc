// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/11_6/src/11_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_10_6_0_0 16
#define LOCK_10_6_1_0 17
#define LOCK_11_6_2_0 50
#define LOCK_11_6_3_0 51
#define LOCK_11_7_0_0 32
#define LOCK_11_7_1_0 33
#define LOCK_11_7_2_0 34
#define LOCK_11_7_3_0 35

// Declare shared memory buffers
v4float buf181dr[65];
v4float buf181r[65];
v4float buf182[65];
v4float buf182d[65];
v4float buf189[65];
v4float buf189d[65];
v4float buf190[65];
v4float buf190d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf181r_buf181dr_i[1] = {{(float*)buf181r, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf182_buf182d_i[1] = {{(float*)buf182, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf189_buf189d_o[1] = {{(float*)buf189, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf190_buf190d_o[1] = {{(float*)buf190, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_11_6_bounds = sync_buffer[1];

  while (proc_11_6_bounds)
  {

    // Kernel call : i96:orthogonalize<256>
    window_buf181r_buf181dr_i->setData(*window_buf181r_buf181dr_i, (float*)buf181r, (float*)buf181dr, 1-index, 0);
    window_buf181r_buf181dr_i->acquire(*window_buf181r_buf181dr_i, LOCK_10_6_0_0, LOCK_10_6_1_0, 1-index);
    window_buf182_buf182d_i->setData(*window_buf182_buf182d_i, (float*)buf182, (float*)buf182d, 1-index, 0);
    window_buf182_buf182d_i->acquire(*window_buf182_buf182d_i, LOCK_11_6_2_0, LOCK_11_6_3_0, 1-index);
    window_buf189_buf189d_o->setData(*window_buf189_buf189d_o, (float*)buf189, (float*)buf189d, 1-index, 0);
    window_buf189_buf189d_o->acquire(*window_buf189_buf189d_o, LOCK_11_7_0_0, LOCK_11_7_1_0, 1-index);
    window_buf190_buf190d_o->setData(*window_buf190_buf190d_o, (float*)buf190, (float*)buf190d, 1-index, 0);
    window_buf190_buf190d_o->acquire(*window_buf190_buf190d_o, LOCK_11_7_2_0, LOCK_11_7_3_0, 1-index);
    orthogonalize<256>(window_buf181r_buf181dr_i[0],window_buf182_buf182d_i[0],window_buf189_buf189d_o[0],window_buf190_buf190d_o[0]);
    window_buf181r_buf181dr_i->release(*window_buf181r_buf181dr_i, LOCK_10_6_0_0, LOCK_10_6_1_0, 1-index);
    window_buf182_buf182d_i->release(*window_buf182_buf182d_i, LOCK_11_6_2_0, LOCK_11_6_3_0, 1-index);
    window_buf189_buf189d_o->release(*window_buf189_buf189d_o, LOCK_11_7_0_0, LOCK_11_7_1_0, 1-index);
    window_buf190_buf190d_o->release(*window_buf190_buf190d_o, LOCK_11_7_2_0, LOCK_11_7_3_0, 1-index);
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