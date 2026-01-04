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
        self.CascadeLevel = 0
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

    def copy(self):
        return copy.deepcopy(self)
        
    def __lt__(self, other): 
        if self.estimated_time < other.estimated_time:
            """ print(self.Frequency, other.Frequency)
            print(self.estimated_time, other.estimated_time) """
            return 1
        # elif self.estimated_time == other.estimated_time:
        #     if self.Frequency > other.Frequency:
        #         return 1
        #     else:
        #         return -1
        else:
            return -1

        
    def keys(self):
        return ('COL', 'ROW', 'padding', 'BATCH', 'Frequency', 'LEVEL1_BLOCK_SIZE', 'BLOCK_SIZE', 'parallel_num', 'IO_NUM', 'task_num', 'orth_graph_list', 'norm_graph_list', 'CascadeLevel')

    def __getitem__(self, item):
        return getattr(self, item)

class SVD_Model:
    def __init__(self, COL, ROW, BATCH, ITER):
        self.COL = COL
        self.ROW = ROW
        self.ITER = ITER
        self.BATCH = BATCH

        self.config_blocksize = []
        self.config_list = []
        self.best_config = SysConfig(COL, ROW, ITER, BATCH)
    
    def checkDivisible(self, num, divisor):
        return num % divisor == 0

    def enumerateConfig(self):
        
        # # step 1. enumerrate level1 BLK1
        for BLK1 in range(1, self.COL//2+1):
            if self.COL % BLK1 != 0:
                continue
            for BLK2 in range(1, min(12, 2*BLK1//2+1)):
                if (2*BLK1) % BLK2 != 0:
                    continue
                block_num = 2*BLK1//BLK2
                block_pair_num = block_num//2
                for parallel_num in range(1, block_pair_num+1):     
                    if block_pair_num % parallel_num != 0:
                        continue        
                    
                    for IO_NUM in range(1, BLK2+1):
                        if BLK2 % IO_NUM != 0:
                            continue
                        for CascadeLevel in range(1, math.ceil(self.ROW/1024)+1):
                            if CascadeLevel > 1 and BLK2 > 4:
                                continue
                            if self.ROW%CascadeLevel != 0:
                                continue
                            if self.ROW/CascadeLevel > 1400 or (self.ROW/CascadeLevel)%4 != 0:
                                continue
                            base_config = SysConfig(self.COL, self.ROW, self.ITER, self.BATCH)
                            base_config.LEVEL1_BLOCK_SIZE = BLK1
                            base_config.BLOCK_SIZE = BLK2
                            base_config.parallel_num = parallel_num
                            base_config.IO_NUM = IO_NUM
                            base_config.CascadeLevel = CascadeLevel
                            

                            valid_configs = self.resourceCheck(base_config)
                            if len(valid_configs) == 0:
                                continue
                            for config in valid_configs:
                                self.config_list.append(config)
                            

    def config4Freq(self):
        #step 1. for freq & block_size, predict the config time then select the best config in the freq
        config_dict = dict()
        for i in range(1, 14):
            config_dict[str(i)] = []

        best_config_list = []
        FREQ_LISTS = [156.25]

        match self.COL:
            case 128:
                FREQ_LISTS = [312.5]
            case 256:
                FREQ_LISTS = [360]
            case 512:
                FREQ_LISTS = [300]
            case 1024:
                FREQ_LISTS = [200]
            case 2048:
                FREQ_LISTS = [156.25]
            case 4096:
                FREQ_LISTS = [156.25]

        config_list_with_freq = []
        for freq in FREQ_LISTS:
            #bestConfig4freq = SysConfig(self.COL, self.ROW, self.ITER, self.BATCH)
            #bestConfig4freq.estimated_time = math.inf
            for config in self.config_list:
                config.Frequency = freq
                config.estimated_time = round(self.predict(config), 7)
                config_list_with_freq.append(copy.deepcopy(config))
                # config_dict[str(config.BLOCK_SIZE)].append(copy.deepcopy(config))
        
        for i in range(0, len(config_list_with_freq)):
            for j in range(0, len(config_list_with_freq)-i-1):
                if config_list_with_freq[j].estimated_time > config_list_with_freq[j+1].estimated_time:
                    config_list_with_freq[j], config_list_with_freq[j+1] = config_list_with_freq[j+1], config_list_with_freq[j]
        
        # #step 2. sort according time
        # for i in range(1, 14):
        #     config_dict[str(i)] = sorted(config_dict[str(i)]) 

        # #step 3. merge similar time, remain the lower freq
        # EPS = 1e-6
        # for j in config_dict:
        #     #print(i)
        #     tmp_config = SysConfig(self.COL, self.ROW, self.ITER, self.BATCH)
        #     if len(config_dict[j]) > 0:
        #         tmp_config = copy.deepcopy(config_dict[j][0])
        #     for i in range(0, len(config_dict[j])):
        #         #self.print(config)
        #         config = config_dict[j][i]
        #         if abs(tmp_config.estimated_time - config.estimated_time) < EPS and tmp_config.Frequency >= config.Frequency:
        #             tmp_config = copy.deepcopy(config)
        #             #self.print(tmp_config)
        #             if i == len(config_dict[j])-1:
        #                 self.config_list.append(config)
        #         else:
        #             self.config_list.append(copy.deepcopy(config))
        #             tmp_config = copy.deepcopy(config)
        
        self.config_list = config_list_with_freq
        
         
               

    def optimize(self):
        #step 1. enuerate different block_size & parallel_num
        #step 2. for freq to find the best_config in different freq
        #step 3. get the best config rank
        self.enumerateConfig()
        self.config4Freq()
        import sys
        sys.stdout = open("output.txt", "w")
        for i in range(len(self.config_list)):
            config = self.config_list[i]
            print(f"Config {i}:")
            self.print(config)
            print("----------------------------------")
        self.best_config = self.config_list[0]
        


    def generateConfig(self, freq, config):
        svd_pl = SVD_PL(config.LEVEL1_BLOCK_SIZE, self.ROW)
        config.uram = svd_pl.getRAM(config, config.task_num)
        config.Frequency = freq
        config.estimated_time = self.predict(config)
        print("Current Config!")
        self.print(config)
        return dict(config)

    def getBestConfig(self):
        print("Best Config!")
        # match self.best_config.ROW:
        #     case 128:
        #         self.best_config.Frequency = 360
        #     case 256:
        #         self.best_config.Frequency = 360
        #     case 512:
        #         self.best_config.Frequency = 300
        #     case 1024:
        #         self.best_config.Frequency = 200
        #     case 2048:
        #         self.best_config.Frequency = 156.25
        #     case 4096:
        #         self.best_config.Frequency = 156.25
        self.print(self.best_config)
        return dict(self.best_config)

    def print(self, config):
        print("----------------------------------")
        print(f"COL: {self.COL} ROW: {self.ROW} BATCH: {self.BATCH}")
        print(f"Freq: {config.Frequency}")
        print(f"Task_num: {config.task_num}")
        print(f"BLK1: {config.LEVEL1_BLOCK_SIZE}, BLK2: {config.BLOCK_SIZE}")
        print(f"CascadeLevel: {config.CascadeLevel}")
        print(f"parallel_num: {config.parallel_num}, IO_NUM: {config.IO_NUM}")
        print(f"BLOCK_SIZE: {config.BLOCK_SIZE} aie_num: {config.aie_num} task_num: {config.task_num}")
        print(f"URAM: {config.uram}")
        print(f"estimated_time: {config.estimated_time}")
        print(f"throughput: {self.BATCH/config.estimated_time}")
        print("----------------------------------")

    # this api find the configuration with maximum task-level parallelism
    def resourceCheck(self, config):
        ## AIE Check
        svd_aie = SVD_AIE(1, 0, 1, config.BLOCK_SIZE, config.IO_NUM, config.CascadeLevel)
        # aiePosition = svd_aie.getAIEPosition()
        ## PL Uram Check
        svd_pl = SVD_PL(config.LEVEL1_BLOCK_SIZE, config.ROW)

        valid_configs = []

        while svd_aie.getTaskNum() < self.BATCH:
            config.valid = True

            # PL resource check
            pl_valid = svd_pl.checkRAM(config, svd_aie.getTaskNum()+1)
            # AIE resource check
            # this api should return the success or failure and the graph list [{row, col, direction}, ...]
            aie_valid, orth_graph_list, norm_graph_list = svd_aie.tryAIEPlacement(config.parallel_num, config.IO_NUM)
            if aie_valid and pl_valid:
                config.orth_graph_list.append(orth_graph_list)
                config.norm_graph_list.append(norm_graph_list)
                config.aie_num = svd_aie.getAIENum()
                config.task_num = svd_aie.getTaskNum()
                config.uram = svd_pl.getRAM(config, config.task_num)
                valid_configs.append(config.copy())
            else:
                break
        
        return valid_configs

    def predict(self, config, ifprint=False):
        
        Frequency = config.Frequency
        if config.ITER:
            ITER = config.ITER
            COL = config.COL
            ROW = config.ROW
            BATCH = config.BATCH
        else:
            ITER = self.ITER
            COL = self.COL
            ROW = self.ROW
            BATCH = self.BATCH
        TASK_NUM = config.task_num
        BLK1 = config.LEVEL1_BLOCK_SIZE
        BLK2 = config.BLOCK_SIZE
        CascadeLevel = config.CascadeLevel
        AIEROW = ROW//CascadeLevel

        IO_NUM = config.IO_NUM
        PARALLEL_NUM = config.parallel_num

        BLOCK_NUM = 2*BLK1/BLK2

        Tx_row = 1.0/Frequency*(ROW*32/128 + 4) # us include hls_send
        Rx_row = 1.0/Frequency*(ROW*32/128 + 4) # us
        Tx_AIE_row = 1.0/Frequency*(AIEROW*32/128 + 4) # us
        Rx_AIE_row = 1.0/Frequency*(AIEROW*32/128 + 4) # us
        
        id = str(AIEROW) + "_" + str(BLK2)
        if id not in total_aie:
            orth_single_aie = 1
            orth_total_aie = 2
            return np.nan
        else:
            orth_single_aie = single_aie[str(AIEROW)]
            orth_total_aie = total_aie[id]
        
        if ifprint:
            print(f'orth_single_aie: {orth_single_aie}, orth_total_aie: {orth_total_aie}')
        # ------------------------ BLK2 Level -----------------------------------------
        num_blk2 = BLOCK_NUM
        num_blk2_pair = BLOCK_NUM/2/PARALLEL_NUM
        Tx = Tx_AIE_row*BLK2/IO_NUM
        Rx = Rx_AIE_row*BLK2/IO_NUM
        AIE_wait = max(orth_single_aie - Tx, 0.0) # AIE trans
        if ifprint:
            print(f'AIE_wait: {AIE_wait}, Tx: {Tx}')
        if PARALLEL_NUM == 1:
            algo = Tx + AIE_wait + 2*Tx # arise from HLS code pattern
        else:
            algo = 2*Tx + AIE_wait + 3*Tx # arise from HLS code pattern
        
        data_wait = max(-(num_blk2_pair-1)*(AIE_wait + Tx) + orth_total_aie + Rx - AIE_wait, 0.0)

        all_blocks = (num_blk2_pair*(Tx + AIE_wait) + algo + data_wait)
        level1_sweep = (num_blk2-1 - 1)*all_blocks + orth_total_aie + Rx # -1 means ddr latency 单独计算

        # ddr hls delay
        SUB_BLOCK_SIZE = BLK2/IO_NUM
        delay_ddr_hls = (BLK1/BLK2)*PARALLEL_NUM*IO_NUM*SUB_BLOCK_SIZE*CascadeLevel*(ROW/CascadeLevel/32) \
                + (BLK1/BLK2)*PARALLEL_NUM*IO_NUM*SUB_BLOCK_SIZE*CascadeLevel \
                + (BLK1/BLK2)*PARALLEL_NUM*IO_NUM*SUB_BLOCK_SIZE \
                + (BLK1/BLK2)*PARALLEL_NUM*IO_NUM \
                + (BLK1/BLK2)*PARALLEL_NUM \
                + (BLK1/BLK2) # cycles
        delay_ddr_hls = delay_ddr_hls/Frequency # us

        # # ddr hls discontinuous read
        # delay_ddr_read = 70*num_blk2/Frequency # us
        # delay_ddr_write = 30 *num_blk2/Frequency # us

        t_ddr_read = Tx_row*BLK1*2  + delay_ddr_hls # + (BLK1/BLK2)*PARALLEL_NUM*IO_NUM*SUB_BLOCK_SIZE*CascadeLevel*(ROW/CascadeLevel/32)*13/Frequency
        t_ddr_write = Tx_row*BLK1*2*2
        t_ddr = t_ddr_read + t_ddr_write
        t_level2 = t_ddr + level1_sweep
        if ifprint:
            print(f'delay_ddr_hls: {delay_ddr_hls}')
            print(f'block: {Tx + AIE_wait}, all_blocks: {all_blocks}, level1_sweep: {level1_sweep}')
            print(f't_level2: {t_level2}')

        # ------------------------ BLK1 Level -----------------------------------------
        level1_block_num = COL/BLK1
        level1_block_pair_num = COL/BLK1/2
        t_orth = level1_block_pair_num*(level1_block_num-1)*t_level2

        # print(f't_orth: {t_orth}')


        # todo: norm ddr read and norm ddr write
        norm_stage = num_blk2*Tx_row*BLK2
        task = ITER*t_orth + norm_stage

        total_swaps = level1_block_pair_num * (level1_block_num - 1)
        total_ddr_time = ITER * total_swaps * t_ddr + norm_stage

        # todo: need attention
        CONTENTION_FACTOR = 0.07
        contention_penalty = 0
        if TASK_NUM > 1:
            contention_penalty = total_ddr_time * (TASK_NUM - 1) * CONTENTION_FACTOR

        batch_task = math.ceil(BATCH / TASK_NUM) * (task + contention_penalty)

        if ifprint:
            print(f'Tx_row: {Tx_row}, Tx: {Tx_AIE_row}')
            print(f't_ddr_read: {t_ddr_read}, t_ddr_write: {t_ddr_write}, t_ddr: {t_ddr}')
            print(f'AIE_wait: {AIE_wait}, algo: {algo}, data_wait: {data_wait}')
            # print(f'blocks: {blocks}, iter: {iter}')
            print(f'norm_stage: {norm_stage}')
            print(batch_task/1000000)
            print('-------------------------------------------------------------------')
        

        # AIE_wait = max(orth_single_aie - SUB_BLOCK_SIZE*Tx_row - ROW*32/128/1250, 0.0)


        
        # Tx = Tx_row*SUB_BLOCK_SIZE + AIE_wait
        # Rx = Tx_row*SUB_BLOCK_SIZE

        # round_wait = max(orth_total_aie - BLOCK_NUM/2*Tx, 0.0)
        # round_robin_wait = Tx+Tx#second Tx -> algorithm latency

        # one_round = BLOCK_NUM/2*Tx + round_wait + round_robin_wait
        # one_sweep = (BLOCK_NUM-1)*one_round + orth_total_aie + Tx
        
        # norm_aie = 0.0003 * ROW + 0.1126
        # norm_stage = BLOCK_NUM*Tx

        # DDR_Latency = 2*Tx*BLOCK_NUM #+ 200
        
        # sys_predict_time = DDR_Latency + ITER*one_sweep + norm_stage

        # batch_predict_time = (BATCH//TASK_NUM*sys_predict_time + (BATCH > TASK_NUM)*sys_predict_time + (TASK_NUM-1)*50)/1000000
    

        # print(f'AIE_wait: {AIE_wait}, round_wait: {round_wait}')
        # print(f'one-round: {one_round}, one_sweep: {one_sweep}')
        # #print(f'orth_single_aie: {orth_single_aie}, Tx-block:  {BLOCK_SIZE*Tx_row}')
        # print(f'Tx-row: {Tx_row}, Tx:  {Tx} AIE_wait: {AIE_wait}')
        # print(f'orth stage: {ITER*one_sweep}')
        # print(f'DDR_Latency: {DDR_Latency/1000000}, sys_predict_time: {sys_predict_time/1000000}, batch_predict_time: {batch_predict_time}')

        return batch_task/1000000
        # return task/1000000
    
    


