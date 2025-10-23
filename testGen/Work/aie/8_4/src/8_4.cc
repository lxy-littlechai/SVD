// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/8_4/src/8_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_7_4_0_8032 16
#define LOCK_7_4_1_0 17
#define LOCK_8_4_2_0 50
#define LOCK_8_4_3_0 51
#define LOCK_8_5_0_8032 32
#define LOCK_8_5_1_0 33
#define LOCK_8_5_2_0 34
#define LOCK_8_5_3_0 35

// Declare shared memory buffers
v4float buf107[9];
v4float buf107d[9];
v4float buf120[9];
v4float buf120d[9];
v4float buf129[9];
v4float buf129d[9];
v4float buf98[9];
v4float buf98d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf98_buf98d_i[1] = {{(float*)buf98, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf107_buf107d_i[1] = {{(float*)buf107, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf120_buf120d_o[1] = {{(float*)buf120, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf129_buf129d_o[1] = {{(float*)buf129, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_8_4_bounds = sync_buffer[1];

  while (proc_8_4_bounds)
  {

    // Kernel call : i51:orthogonalize<32>
    window_buf98_buf98d_i->setData(*window_buf98_buf98d_i, (float*)buf98, (float*)buf98d, 1-index, 0);
    window_buf98_buf98d_i->acquire(*window_buf98_buf98d_i, LOCK_7_4_0_8032, LOCK_7_4_1_0, 1-index);
    window_buf107_buf107d_i->setData(*window_buf107_buf107d_i, (float*)buf107, (float*)buf107d, 1-index, 0);
    window_buf107_buf107d_i->acquire(*window_buf107_buf107d_i, LOCK_8_4_2_0, LOCK_8_4_3_0, 1-index);
    window_buf120_buf120d_o->setData(*window_buf120_buf120d_o, (float*)buf120, (float*)buf120d, 1-index, 0);
    window_buf120_buf120d_o->acquire(*window_buf120_buf120d_o, LOCK_8_5_0_8032, LOCK_8_5_1_0, 1-index);
    window_buf129_buf129d_o->setData(*window_buf129_buf129d_o, (float*)buf129, (float*)buf129d, 1-index, 0);
    window_buf129_buf129d_o->acquire(*window_buf129_buf129d_o, LOCK_8_5_2_0, LOCK_8_5_3_0, 1-index);
    orthogonalize<32>(window_buf98_buf98d_i[0],window_buf107_buf107d_i[0],window_buf120_buf120d_o[0],window_buf129_buf129d_o[0]);
    window_buf98_buf98d_i->release(*window_buf98_buf98d_i, LOCK_7_4_0_8032, LOCK_7_4_1_0, 1-index);
    window_buf107_buf107d_i->release(*window_buf107_buf107d_i, LOCK_8_4_2_0, LOCK_8_4_3_0, 1-index);
    window_buf120_buf120d_o->release(*window_buf120_buf120d_o, LOCK_8_5_0_8032, LOCK_8_5_1_0, 1-index);
    window_buf129_buf129d_o->release(*window_buf129_buf129d_o, LOCK_8_5_2_0, LOCK_8_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_8_4_bounds > 0)
      --proc_8_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}