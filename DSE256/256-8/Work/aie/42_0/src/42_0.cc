// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/42_0/src/42_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_42_0_0_0 48
#define LOCK_42_0_1_0 49
#define LOCK_42_0_2_7136 50
#define LOCK_42_0_3_3776 51
#define LOCK_42_1_0_7136 32
#define LOCK_42_1_1_0 33
#define LOCK_42_1_2_0 34
#define LOCK_42_1_3_0 35

// Declare shared memory buffers
v4float buf465dr[65];
v4float buf465r[65];
v4float buf470dr[65];
v4float buf470r[65];
v4float buf481[65];
v4float buf481d[65];
v4float buf486[65];
v4float buf486d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf465r_buf465dr_i[1] = {{(float*)buf465r, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf470r_buf470dr_i[1] = {{(float*)buf470r, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf481_buf481d_o[1] = {{(float*)buf481, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf486_buf486d_o[1] = {{(float*)buf486, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_42_0_bounds = sync_buffer[1];

  while (proc_42_0_bounds)
  {

    // Kernel call : i241:orthogonalize<256>
    window_buf465r_buf465dr_i->setData(*window_buf465r_buf465dr_i, (float*)buf465r, (float*)buf465dr, 1-index, 0);
    window_buf465r_buf465dr_i->acquire(*window_buf465r_buf465dr_i, LOCK_42_0_0_0, LOCK_42_0_1_0, 1-index);
    window_buf470r_buf470dr_i->setData(*window_buf470r_buf470dr_i, (float*)buf470r, (float*)buf470dr, 1-index, 0);
    window_buf470r_buf470dr_i->acquire(*window_buf470r_buf470dr_i, LOCK_42_0_2_7136, LOCK_42_0_3_3776, 1-index);
    window_buf481_buf481d_o->setData(*window_buf481_buf481d_o, (float*)buf481, (float*)buf481d, 1-index, 0);
    window_buf481_buf481d_o->acquire(*window_buf481_buf481d_o, LOCK_42_1_0_7136, LOCK_42_1_1_0, 1-index);
    window_buf486_buf486d_o->setData(*window_buf486_buf486d_o, (float*)buf486, (float*)buf486d, 1-index, 0);
    window_buf486_buf486d_o->acquire(*window_buf486_buf486d_o, LOCK_42_1_2_0, LOCK_42_1_3_0, 1-index);
    orthogonalize<256>(window_buf465r_buf465dr_i[0],window_buf470r_buf470dr_i[0],window_buf481_buf481d_o[0],window_buf486_buf486d_o[0]);
    window_buf465r_buf465dr_i->release(*window_buf465r_buf465dr_i, LOCK_42_0_0_0, LOCK_42_0_1_0, 1-index);
    window_buf470r_buf470dr_i->release(*window_buf470r_buf470dr_i, LOCK_42_0_2_7136, LOCK_42_0_3_3776, 1-index);
    window_buf481_buf481d_o->release(*window_buf481_buf481d_o, LOCK_42_1_0_7136, LOCK_42_1_1_0, 1-index);
    window_buf486_buf486d_o->release(*window_buf486_buf486d_o, LOCK_42_1_2_0, LOCK_42_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_42_0_bounds > 0)
      --proc_42_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}