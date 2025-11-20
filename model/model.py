import math
import copy
import numpy as np
from model.AIE import SVD_AIE
from model.AIE import GraphInfo
from model.PL import SVD_PL
from model.AIE_sim import single_aie, total_aie

VCK190_COL = 50
VCK190_ROW = 8

class SysConfig:
    def __init__(self, COL, ROW, ITER, BATCH):
        self.valid = False
        # input task params
        self.COL = COL
        self.ROW = ROW
        self.BATCH = BATCH
        self.ITER = ITER
        
        # arch variable params
        self.CascadeLevel = math.ceil(ROW/1024)
        self.padding = 0
        self.LEVEL1_BLOCK_SIZE = 0
        self.BLOCK_SIZE = 0
        self.task_num = 0 # task_num means the task-level parallel num
        self.parallel_num = 0 # parallel_num means the parallel num in single graph
        self.IO_NUM = 0 # IO_NUM means the IO_NUM in single graph

        self.Frequency = 0
        self.aie_num = 0
        
        # arch result
        self.orth_graph_list = [] #orthogonal graph list
        self.norm_graph_list = [] #norm graph list
        self.plio_num = 0

        self.usedAIE = np.zeros((VCK190_COL, VCK190_ROW), dtype=int)  # 0 - not used 1 - orth 2 - norm

        self.uram = 0
        self.estimated_time = 0.0
        
    def __lt__(self, other): 
        if self.estimated_time < other.estimated_time:
            """ print(self.Frequency, other.Frequency)
            print(self.estimated_time, other.estimated_time) """
            return 1
        elif self.estimated_time == other.estimated_time:
            if self.Frequency > other.Frequency:
                return 1
            else:
                return -1
        else:
            return -1

        
    def keys(self):
        return ('COL', 'ROW', 'padding', 'BATCH', 'LEVEL1_BLOCK_SIZE', 'BLOCK_SIZE', 'parallel_num', 'IO_NUM', 'task_num', 'orth_graph_list', 'norm_graph_list', 'CascadeLevel')

    def __getitem__(self, item):
        return getattr(self, item)

class SVD_Model:
    def __init__(self, COL, ROW, BATCH, ITER):
        self.COL = COL
        self.ROW = ROW
        self.ITER = ITER
        self.BATCH = BATCH
        self.CascadeLevel = math.ceil(self.ROW/1024)

        self.config_blocksize = []
        self.config_list = []
        self.best_config = SysConfig(COL, ROW, ITER, BATCH)
    
    def checkDivisible(self, num, divisor):
        return num % divisor == 0

    def enumerateConfig(self):
        
        # # step 1. enumerrate level-1 block_size
        # for level1_block_size in range(1, self.COL//2+1):

         # step 1. enumerate different block_size
        for block_size in range(1, 14): # 14 is the maximum block_size
            col = self.COL
            # padding the matrix to the multiple of block_size
            if self.COL % block_size != 0:
                col = self.COL + block_size - self.COL % block_size
                while (col//block_size) % 2 != 0:
                    col += block_size

            # enumerate different parallel_num and IO_NUM
            block_num = col//block_size
            block_pair_num = block_num//2
            for parallel_num in range(1, block_pair_num//2+1):
                for IO_NUM in range(1, block_size):
                    base_config = SysConfig(col, self.ROW, self.ITER, self.BATCH)
                    base_config.BLOCK_SIZE = block_size
                    base_config.parallel_num = parallel_num
                    base_config.padding = col - self.COL
                    base_config.IO_NUM = IO_NUM

                    config = self.resourceCheck(base_config)
                    if not config.valid:
                        continue
                    self.config_list.append(config)
                    print(dict(config))

    def config4Freq(self):
        #step 1. for freq & block_size, predict the config time then select the best config in the freq
        config_dict = dict()
        for i in range(1, 14):
            config_dict[str(i)] = []

        best_config_list = []
        MIN_FREQ = 308
        MAX_FREQ = 318
        FREQ_INTER = 10
        for freq in range(MIN_FREQ, MAX_FREQ, FREQ_INTER):
            #bestConfig4freq = SysConfig(self.COL, self.ROW, self.ITER, self.BATCH)
            #bestConfig4freq.estimated_time = math.inf
            for config in self.config_list:
                config.Frequency = freq
                config.estimated_time = round(self.predict(config), 7)
                config_dict[str(config.BLOCK_SIZE)].append(copy.deepcopy(config))
            
        
        #step 2. sort according time
        for i in range(1, 14):
            config_dict[str(i)] = sorted(config_dict[str(i)]) 

        #step 3. merge similar time, remain the lower freq
        EPS = 1e-6
        for j in config_dict:
            #print(i)
            tmp_config = SysConfig(self.COL, self.ROW, self.ITER, self.BATCH)
            if len(config_dict[j]) > 0:
                tmp_config = copy.deepcopy(config_dict[j][0])
            for i in range(0, len(config_dict[j])):
                #self.print(config)
                config = config_dict[j][i]
                if abs(tmp_config.estimated_time - config.estimated_time) < EPS and tmp_config.Frequency >= config.Frequency:
                    tmp_config = copy.deepcopy(config)
                    #self.print(tmp_config)
                    if i == len(config_dict[j])-1:
                        self.config_list.append(config)
                else:
                    self.config_list.append(copy.deepcopy(config))
                    tmp_config = copy.deepcopy(config)
        
        self.config_list = sorted(self.config_list)
        
         
               

    def optimize(self):
        #step 1. enuerate different block_size & parallel_num
        #step 2. for freq to find the best_config in different freq
        #step 3. get the best config rank
        self.enumerateConfig()
        self.config4Freq()
        for config in self.config_list:
            self.print(config)
        self.best_config = self.config_list[0]
        


    def generateConfig(self, freq, config):
        svd_pl = SVD_PL(self.COL, self.ROW, config.parallel_num)
        config.uram = svd_pl.getRAM(config.task_num)
        config.Frequency = freq
        config.estimated_time = self.predict(config)
        print("Current Config!")
        self.print(config)
        return dict(config)

    def getBestConfig(self):
        print("Best Config!")
        self.print(self.best_config)
        return dict(self.best_config)

    def print(self, config):
        print("----------------------------------")
        print(f"COL: {self.COL} ROW: {self.ROW} BATCH: {self.BATCH}")
        print(f"Freq: {config.Frequency}")
        print(f"parallel_num: {config.parallel_num}")
        print(f"BLOCK_SIZE: {config.BLOCK_SIZE} aie_num: {config.aie_num} task_num: {config.task_num}")
        print(f"URAM: {config.uram}")
        print(f"estimated_time: {config.estimated_time}")
        print("----------------------------------")

    # this api find the configuration with maximum task-level parallelism
    def resourceCheck(self, config):
        # print(config)
        ## AIE Check
        svd_aie = SVD_AIE(1, 0, 1, config.BLOCK_SIZE, config.IO_NUM, config.CascadeLevel)
        # aiePosition = svd_aie.getAIEPosition()
        ## PL Uram Check
        print("------", config.parallel_num)
        svd_pl = SVD_PL(config.COL, config.ROW, config.parallel_num)

        while svd_aie.getTaskNum() < self.BATCH:
            config.valid = True

            # PL resource check
            pl_valid = svd_pl.checkRAM(svd_aie.getTaskNum()+1)
            # AIE resource check
            # this api should return the success or failure and the graph list [{row, col, direction}, ...]
            aie_valid, orth_graph_list, norm_graph_list = svd_aie.tryAIEPlacement(config.parallel_num)
            
            if aie_valid and pl_valid:
                config.orth_graph_list.append(orth_graph_list)
                config.norm_graph_list.append(norm_graph_list)
            else:
                config.valid = False
                break
        
        config.aie_num = svd_aie.getAIENum()
        config.task_num = svd_aie.getTaskNum()
        config.uram = svd_pl.getRAM(config.task_num)
        config.Frequency = 320
        return config

    def predict(self, config):
        COL = self.COL
        ROW = self.ROW
        BATCH = self.BATCH
        Frequency = config.Frequency
        ITER = self.ITER
        BLOCK_SIZE = config.BLOCK_SIZE
        TASK_NUM = config.task_num

        BLOCK_NUM = COL/BLOCK_SIZE

        Tx_row = 1.0/Frequency*(ROW*32/128 + 4)
        if Frequency >= 350:
            Tx_row = 1.0/Frequency*(ROW*32/128 + 4 + 8)

        id = str(ROW) + "_" + str(BLOCK_SIZE)
        if id not in single_aie:
            orth_single_aie = 1 # for test
            orth_total_aie = 2
        else:
            orth_single_aie = single_aie[str(ROW)]
            orth_total_aie = total_aie[id]

        CTC_wait = max(orth_single_aie - BLOCK_SIZE*Tx_row - ROW*32/128/1250, 0.0)
        
        Tx = Tx_row*BLOCK_SIZE + CTC_wait
        Rx = Tx_row*BLOCK_SIZE

        round_wait = max(orth_total_aie - BLOCK_NUM/2*Tx, 0.0)
        round_robin_wait = Tx+Tx#second Tx -> algorithm latency

        one_round = BLOCK_NUM/2*Tx + round_wait + round_robin_wait
        one_sweep = (BLOCK_NUM-1)*one_round + orth_total_aie + Tx
        
        norm_aie = 0.0003 * ROW + 0.1126
        norm_stage = BLOCK_NUM*Tx

        DDR_Latency = Tx*BLOCK_NUM #+ 200
        
        sys_predict_time = DDR_Latency + ITER*one_sweep + norm_stage

        batch_predict_time = (BATCH//TASK_NUM*sys_predict_time + (BATCH > TASK_NUM)*sys_predict_time + (TASK_NUM-1)*50)/1000000
    

        #Tx = Tx_row*BLOCK_SIZE + CTC_wait
        #   = Tx_row*BLOCK_SIZE + max(orth_single_aie - BLOCK_SIZE*Tx_row, 0.0)
        #   when orth_single_aie > BLOCK_SIZE*Tx_row
        #        orth_single_aie*Frequency > BLOCK_SIZE*(ROW/4 + 4) 
        #        假设 orth_single_aie = a*ROW + b            
        #   = Tx_row*BLOCK_SIZE + orth_single_aie - BLOCK_SIZE*Tx_row
        #   = orth_single_aie
        print(f'round_wait: {round_wait}, one-round: {one_round}, one_sweep: {one_sweep}')
        #print(f'orth_single_aie: {orth_single_aie}, Tx-block:  {BLOCK_SIZE*Tx_row}')
        #print(f'Tx-row: {Tx_row}, Tx:  {Tx} CTC_wait: {CTC_wait}')
        print(f'DDR_Latency: {DDR_Latency/1000000}, sys_predict_time: {sys_predict_time/1000000}, batch_predict_time: {batch_predict_time}')
        return batch_predict_time
    
    


