import math
import numpy as np
from model.AIE import SVD_AIE
from model.AIE import GraphInfo
from model.PL import SVD_PL
from model.AIE_sim import single_aie, total_aie

VCK190_COL = 50
VCK190_ROW = 8

class SysConfig:
    def __init__(self):
        self.valid = False
        self.COL = 0
        self.ROW = 0
        self.BATCH = 0
        self.Frequency = 0.0
        self.ITER = 1
        self.BLOCK_SIZE = 0
        self.aie_num = 0
        self.graph_num = 0
        self.graph_list = [] #row, col, direction

        self.plio_num = 0
        self.usedAIE = np.zeros((VCK190_COL, VCK190_ROW), dtype=int)  # 0 - not used 1 - orth 2 - norm
        self.estimated_time = 0.0
        
    def keys(self):
        return ('COL', 'ROW', 'BATCH', 'Frequency', 'BLOCK_SIZE', 'graph_num', 'graph_list')

    def __getitem__(self, item):
        return getattr(self, item)

class SVD_Model:
    def __init__(self, COL, ROW, BATCH, Frequency, ITER):
        self.sysConfig = SysConfig()
        self.sysConfig.COL = COL
        self.sysConfig.ROW = ROW
        self.sysConfig.Frequency = Frequency
        self.sysConfig.ITER = ITER
        self.sysConfig.BATCH = BATCH
        self.sysConfig.valid = False

    def optimize(self):
        best_config = SysConfig()

        for i in range(1, self.sysConfig.COL):
            if (i & 1) and (i != 1):
                continue
            if self.sysConfig.COL % i != 0:
                continue
            BLOCK_SIZE = i
            config = self.resourceCheck(BLOCK_SIZE)
            
            if not config.valid:
                continue
            self.print(config)

            config.estimated_time = self.predict(config.BLOCK_SIZE, config.graph_num)
            
            if not best_config.valid or config.estimated_time < best_config.estimated_time:
                best_config = config

        self.sysConfig.BLOCK_SIZE = best_config.BLOCK_SIZE
        self.sysConfig.aie_num = best_config.aie_num
        self.sysConfig.graph_num = best_config.graph_num
        self.sysConfig.graph_list = best_config.graph_list
        self.sysConfig.estimated_time = best_config.estimated_time

    def getBestConfig(self):
        print("Best Config!")
        self.print(self.sysConfig)
        return dict(self.sysConfig)

    def print(self, config):
        print("----------------------------------")
        print(f"COL: {self.sysConfig.COL} ROW: {self.sysConfig.ROW} BATCH: {self.sysConfig.BATCH}")
        print(f"BLOCK_SIZE: {config.BLOCK_SIZE} aie_num: {config.aie_num} graph_num: {config.graph_num}")
        print(f"estimated_1ITER_time: {config.estimated_time}")
        print("----------------------------------")

    def resourceCheck(self, BLOCK_SIZE):
        config = SysConfig()
        config.BLOCK_SIZE = BLOCK_SIZE

        ## AIE Check
        svd_aie = SVD_AIE(1, 0, 1, BLOCK_SIZE)
        aiePosition = svd_aie.getAIEPosition()
        #print(config.graph_list)
        ## PL Uram Check
        svd_pl = SVD_PL(self.sysConfig.COL, self.sysConfig.ROW)

        while svd_pl.checkRAM(svd_aie.getGraphNum()+1) and svd_aie.tryAIEPlacement():
            config.valid = True
            config.graph_list.append(aiePosition)

            if svd_aie.getGraphNum() >= self.sysConfig.BATCH or (not config.valid):
                break
            
            aiePosition = svd_aie.getAIEPosition()
            
            
        
        config.aie_num = svd_aie.getAIENum()
        config.graph_num = min(svd_aie.getGraphNum(), self.sysConfig.BATCH)

        return config

    def predict(self, BLOCK_SIZE, GRAPH_NUM):
        COL = self.sysConfig.COL
        ROW = self.sysConfig.ROW
        BATCH = self.sysConfig.BATCH
        Frequency = self.sysConfig.Frequency/10000000
        ITER = self.sysConfig.ITER

        BLOCK_NUM = COL/BLOCK_SIZE

        Tx_row = 1.0/Frequency*(ROW*32/128 + 4)

        id = str(ROW) + "_" + str(BLOCK_SIZE)
        orth_single_aie = single_aie[id]
        orth_total_aie = total_aie[id]

        CTC_wait = max(orth_single_aie - BLOCK_SIZE*Tx_row, 0.0)
        Tx = 1.0/Frequency*(ROW*32/128 + 4)*BLOCK_SIZE + CTC_wait
        Rx = 1.0/Frequency*(ROW*32/128 + 4)*BLOCK_SIZE + CTC_wait

        round_wait = max(orth_total_aie + Rx - BLOCK_NUM/2*Tx, 0.0)
        round_robin_wait = Tx + Tx #second Tx -> algorithm latency

        one_round = BLOCK_NUM/2*Tx + round_wait + round_robin_wait
        one_sweep = (BLOCK_NUM-1)*one_round + orth_total_aie + Tx
        
        norm_aie = 0.0003 * ROW + 0.1126
        norm_stage = BLOCK_NUM*Tx

        DDR_Latency = Tx*BLOCK_NUM + 200
        sys_predict_time = DDR_Latency + ITER*one_sweep + norm_stage

        batch_predict_time = (BATCH//GRAPH_NUM*sys_predict_time + (BATCH > GRAPH_NUM)*sys_predict_time)/1000000
    
        return batch_predict_time
    
    


