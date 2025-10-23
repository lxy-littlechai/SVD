// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/7_5/src/7_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_7_5_0_0 16
#define LOCK_7_5_1_0 17
#define LOCK_8_5_2_0 50
#define LOCK_8_5_3_0 51
#define LOCK_7_6_0_0 32
#define LOCK_7_6_1_0 33
#define LOCK_7_6_2_0 34
#define LOCK_7_6_3_0 35

// Declare shared memory buffers
v4float buf118[9];
v4float buf118d[9];
v4float buf129[9];
v4float buf129d[9];
v4float buf140[9];
v4float buf140d[9];
v4float buf151[9];
v4float buf151d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf118_buf118d_i[1] = {{(float*)buf118, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf129_buf129d_i[1] = {{(float*)buf129, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf140_buf140d_o[1] = {{(float*)buf140, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf151_buf151d_o[1] = {{(float*)buf151, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_7_5_bounds = sync_buffer[1];

  while (proc_7_5_bounds)
  {

    // Kernel call : i61:orthogonalize<32>
    window_buf118_buf118d_i->setData(*window_buf118_buf118d_i, (float*)buf118, (float*)buf118d, 1-index, 0);
    window_buf118_buf118d_i->acquire(*window_buf118_buf118d_i, LOCK_7_5_0_0, LOCK_7_5_1_0, 1-index);
    window_buf129_buf129d_i->setData(*window_buf129_buf129d_i, (float*)buf129, (float*)buf129d, 1-index, 0);
    window_buf129_buf129d_i->acquire(*window_buf129_buf129d_i, LOCK_8_5_2_0, LOCK_8_5_3_0, 1-index);
    window_buf140_buf140d_o->setData(*window_buf140_buf140d_o, (float*)buf140, (float*)buf140d, 1-index, 0);
    window_buf140_buf140d_o->acquire(*window_buf140_buf140d_o, LOCK_7_6_0_0, LOCK_7_6_1_0, 1-index);
    window_buf151_buf151d_o->setData(*window_buf151_buf151d_o, (float*)buf151, (float*)buf151d, 1-index, 0);
    window_buf151_buf151d_o->acquire(*window_buf151_buf151d_o, LOCK_7_6_2_0, LOCK_7_6_3_0, 1-index);
    orthogonalize<32>(window_buf118_buf118d_i[0],window_buf129_buf129d_i[0],window_buf140_buf140d_o[0],window_buf151_buf151d_o[0]);
    window_buf118_buf118d_i->release(*window_buf118_buf118d_i, LOCK_7_5_0_0, LOCK_7_5_1_0, 1-index);
    window_buf129_buf129d_i->release(*window_buf129_buf129d_i, LOCK_8_5_2_0, LOCK_8_5_3_0, 1-index);
    window_buf140_buf140d_o->release(*window_buf140_buf140d_o, LOCK_7_6_0_0, LOCK_7_6_1_0, 1-index);
    window_buf151_buf151d_o->release(*window_buf151_buf151d_o, LOCK_7_6_2_0, LOCK_7_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_7_5_bounds > 0)
      --proc_7_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}