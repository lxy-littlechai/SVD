// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/27_1/src/27_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_27_1_0_0 16
#define LOCK_27_1_1_0 17
#define LOCK_28_1_2_0 50
#define LOCK_28_1_3_0 51
#define LOCK_27_2_0_8032 32
#define LOCK_27_2_1_0 33
#define LOCK_27_2_2_0 34
#define LOCK_27_2_3_0 35

// Declare shared memory buffers
v4float buf339[9];
v4float buf339d[9];
v4float buf350[9];
v4float buf350d[9];
v4float buf361[9];
v4float buf361d[9];
v4float buf372[9];
v4float buf372d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf339_buf339d_i[1] = {{(float*)buf339, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf350_buf350d_i[1] = {{(float*)buf350, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf361_buf361d_o[1] = {{(float*)buf361, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf372_buf372d_o[1] = {{(float*)buf372, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_27_1_bounds = sync_buffer[1];

  while (proc_27_1_bounds)
  {

    // Kernel call : i167:orthogonalize<32>
    window_buf339_buf339d_i->setData(*window_buf339_buf339d_i, (float*)buf339, (float*)buf339d, 1-index, 0);
    window_buf339_buf339d_i->acquire(*window_buf339_buf339d_i, LOCK_27_1_0_0, LOCK_27_1_1_0, 1-index);
    window_buf350_buf350d_i->setData(*window_buf350_buf350d_i, (float*)buf350, (float*)buf350d, 1-index, 0);
    window_buf350_buf350d_i->acquire(*window_buf350_buf350d_i, LOCK_28_1_2_0, LOCK_28_1_3_0, 1-index);
    window_buf361_buf361d_o->setData(*window_buf361_buf361d_o, (float*)buf361, (float*)buf361d, 1-index, 0);
    window_buf361_buf361d_o->acquire(*window_buf361_buf361d_o, LOCK_27_2_0_8032, LOCK_27_2_1_0, 1-index);
    window_buf372_buf372d_o->setData(*window_buf372_buf372d_o, (float*)buf372, (float*)buf372d, 1-index, 0);
    window_buf372_buf372d_o->acquire(*window_buf372_buf372d_o, LOCK_27_2_2_0, LOCK_27_2_3_0, 1-index);
    orthogonalize<32>(window_buf339_buf339d_i[0],window_buf350_buf350d_i[0],window_buf361_buf361d_o[0],window_buf372_buf372d_o[0]);
    window_buf339_buf339d_i->release(*window_buf339_buf339d_i, LOCK_27_1_0_0, LOCK_27_1_1_0, 1-index);
    window_buf350_buf350d_i->release(*window_buf350_buf350d_i, LOCK_28_1_2_0, LOCK_28_1_3_0, 1-index);
    window_buf361_buf361d_o->release(*window_buf361_buf361d_o, LOCK_27_2_0_8032, LOCK_27_2_1_0, 1-index);
    window_buf372_buf372d_o->release(*window_buf372_buf372d_o, LOCK_27_2_2_0, LOCK_27_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_27_1_bounds > 0)
      --proc_27_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}