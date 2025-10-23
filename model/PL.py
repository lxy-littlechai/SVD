

class SVD_PL:
  URAM = 463
  URAM_depth = 4096
  BRAM = 967
  def __init__(self, col, row, parallel_num):
    self.col = col
    self.row = row
    self.parallel_num = parallel_num
    
  def checkRAM(self, cu_num):
    fifo_depth = self.col*self.row/4*self.parallel_num
    urams = cu_num*fifo_depth/self.URAM_depth*2*2
    #print("cu:", cu_num)
    #print("uram:", urams)
    if urams > self.URAM:
      return False
    return True 
  def getRAM(self, cu_num): 
    fifo_depth = self.col*self.row/4*self.parallel_num
    urams = cu_num*fifo_depth/self.URAM_depth*2*2
    return urams     
