// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/34_0/src/34_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_34_1_0_320 32
#define LOCK_34_1_1_160 33
#define LOCK_34_1_2_160 34
#define LOCK_34_1_3_0 35
#define LOCK_34_1_4_7872 36
#define LOCK_34_1_5_320 37
#define LOCK_34_1_6_0 38
#define LOCK_34_1_7_0 39

// Declare shared memory buffers
v4float buf312dr[9];
v4float buf312r[9];
v4float buf316dr[9];
v4float buf316r[9];
v4float buf334[9];
v4float buf334d[9];
v4float buf338[9];
v4float buf338d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf312r_buf312dr_i[1] = {{(float*)buf312r, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf316r_buf316dr_i[1] = {{(float*)buf316r, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf334_buf334d_o[1] = {{(float*)buf334, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf338_buf338d_o[1] = {{(float*)buf338, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_34_0_bounds = sync_buffer[1];

  while (proc_34_0_bounds)
  {

    // Kernel call : i163:orthogonalize<32>
    window_buf312r_buf312dr_i->setData(*window_buf312r_buf312dr_i, (float*)buf312r, (float*)buf312dr, 1-index, 0);
    window_buf312r_buf312dr_i->acquire(*window_buf312r_buf312dr_i, LOCK_34_1_0_320, LOCK_34_1_1_160, 1-index);
    window_buf316r_buf316dr_i->setData(*window_buf316r_buf316dr_i, (float*)buf316r, (float*)buf316dr, 1-index, 0);
    window_buf316r_buf316dr_i->acquire(*window_buf316r_buf316dr_i, LOCK_34_1_2_160, LOCK_34_1_3_0, 1-index);
    window_buf334_buf334d_o->setData(*window_buf334_buf334d_o, (float*)buf334, (float*)buf334d, 1-index, 0);
    window_buf334_buf334d_o->acquire(*window_buf334_buf334d_o, LOCK_34_1_4_7872, LOCK_34_1_5_320, 1-index);
    window_buf338_buf338d_o->setData(*window_buf338_buf338d_o, (float*)buf338, (float*)buf338d, 1-index, 0);
    window_buf338_buf338d_o->acquire(*window_buf338_buf338d_o, LOCK_34_1_6_0, LOCK_34_1_7_0, 1-index);
    orthogonalize<32>(window_buf312r_buf312dr_i[0],window_buf316r_buf316dr_i[0],window_buf334_buf334d_o[0],window_buf338_buf338d_o[0]);
    window_buf312r_buf312dr_i->release(*window_buf312r_buf312dr_i, LOCK_34_1_0_320, LOCK_34_1_1_160, 1-index);
    window_buf316r_buf316dr_i->release(*window_buf316r_buf316dr_i, LOCK_34_1_2_160, LOCK_34_1_3_0, 1-index);
    window_buf334_buf334d_o->release(*window_buf334_buf334d_o, LOCK_34_1_4_7872, LOCK_34_1_5_320, 1-index);
    window_buf338_buf338d_o->release(*window_buf338_buf338d_o, LOCK_34_1_6_0, LOCK_34_1_7_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_34_0_bounds > 0)
      --proc_34_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}