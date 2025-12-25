import math

class SVD_PL:
  URAM = 463 + 50
  BRAM = 967
  URAM_DEPTH_CAPACITY = 4096
  URAM_WIDTH_CAPACITY = 72
  def __init__(self, col, row):
    self.col = col
    self.row = row
    
  def checkRAM(self, config, cu_num):
    parallel_num = config.parallel_num
    io_num = config.IO_NUM
    cascade_level = config.CascadeLevel
    block_num = 2*config.LEVEL1_BLOCK_SIZE//config.BLOCK_SIZE
    sub_block_size = config.BLOCK_SIZE//config.IO_NUM
    aie_row = config.ROW//config.CascadeLevel
    elem_num = 4
    data_width = 128
    fifo_depth = (block_num/2 / parallel_num) * sub_block_size * (aie_row / elem_num)
    width_usage = math.ceil(data_width / self.URAM_WIDTH_CAPACITY)
    depth_usage = math.ceil(fifo_depth / self.URAM_DEPTH_CAPACITY)
    uram_per_fifo = width_usage * depth_usage
    total_fifos = 2 * (parallel_num * io_num * cascade_level)
    total_uram = cu_num * total_fifos * uram_per_fifo

    if total_uram > self.URAM:
      return False
    return True 
  def getRAM(self, config, cu_num): 
    parallel_num = config.parallel_num
    io_num = config.IO_NUM
    cascade_level = config.CascadeLevel
    block_num = 2*config.LEVEL1_BLOCK_SIZE//config.BLOCK_SIZE
    sub_block_size = config.BLOCK_SIZE//config.IO_NUM
    aie_row = config.ROW//config.CascadeLevel
    elem_num = 4
    data_width = 128
    fifo_depth = (block_num/2 / parallel_num) * sub_block_size * (aie_row / elem_num)
    width_usage = math.ceil(data_width / self.URAM_WIDTH_CAPACITY)
    depth_usage = math.ceil(fifo_depth / self.URAM_DEPTH_CAPACITY)
    uram_per_fifo = width_usage * depth_usage
    total_fifos = 2 * (parallel_num * io_num * cascade_level)
    total_uram = cu_num * total_fifos * uram_per_fifo
    return total_uram     
