import math
import numpy as np
from model.AIE import SVD_AIE
from model.AIE import GraphInfo
from model.PL import SVD_PL

VCK190_COL = 50
VCK190_ROW = 8

class SysConfig:
    def __init__(self):
        self.valid = False
        self.COL = 0
        self.ROW = 0
        self.BATCH = 0
        self.Frequency = 0.0
        self.BLOCK_SIZE = 0
        self.aie_num = 0
        self.graph_num = 0
        self.graph_list = [] #row, col, direction

        self.plio_num = 0
        self.usedAIE = np.zeros((VCK190_COL, VCK190_ROW), dtype=int)  # 0 - not used; 1 - orth; 2 - norm;
        self.estimated_time = 0.0
        
    def keys(self):
        return ('COL', 'ROW', 'BATCH', 'Frequency', 'BLOCK_SIZE', 'graph_num', 'graph_list')

    def __getitem__(self, item):
        return getattr(self, item)

class SVD_Model:
    def __init__(self, COL, ROW, BATCH, Frequency):
        self.sysConfig = SysConfig()
        self.sysConfig.COL = COL
        self.sysConfig.ROW = ROW
        self.sysConfig.Frequency = Frequency
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
                break

            config.estimated_time = self.predict(config.BLOCK_SIZE, config.graph_num)
            self.print(config)
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

        while svd_aie.tryAIEPlacement():
            config.valid = True
            config.graph_list.append(aiePosition)

            if svd_aie.getGraphNum() >= self.sysConfig.BATCH or (not config.valid):
                break
            
            aiePosition = svd_aie.getAIEPosition()
            
            
        
        config.aie_num = svd_aie.getAIENum()
        config.graph_num = min(svd_aie.getGraphNum(), self.sysConfig.BATCH)

        ## PL Check
        svd_pl = SVD_PL(self.sysConfig.COL, self.sysConfig.ROW, config.graph_num)
        if not svd_pl.checkRAM():
            config.valid = False

        return config

    def predict(self, BLOCK_SIZE, GRAPH_NUM):
        COL = self.sysConfig.COL
        ROW = self.sysConfig.ROW
        BATCH = self.sysConfig.BATCH
        Frequency = self.sysConfig.Frequency/1000000

        BLOCK_NUM = COL / BLOCK_SIZE
        # y = 0.0036x + 0.2125 us
        orthAIE = 0.0036 * ROW + 0.2125
        # y = 0.0003x + 0.1126
        normAIE = 0.0003 * ROW + 0.1126
        send = 1.0 / Frequency * ROW * 32 / 128
        receive = 1.0 / Frequency * ROW * 32 / 128

        orth_total = send + orthAIE * (2 * BLOCK_SIZE - 1) + receive
        norm_total = send + normAIE + receive

        predict_sweep = orth_total + BLOCK_NUM * (BLOCK_NUM - 1) / 2 * BLOCK_SIZE * send
        predict_norm = norm_total + BLOCK_NUM * BLOCK_SIZE * send

        DDR_latency = BLOCK_NUM * BLOCK_SIZE * send / 2
        Sweep_latency = max(0.0, orth_total + send - BLOCK_NUM / 2 * BLOCK_SIZE * send) * (BLOCK_NUM - 1)
        #                  DDR_HLS_latency          + Sweep_HLS_latency                                + Norm_HLS_latency
        HLS_latency = BLOCK_NUM * BLOCK_SIZE / Frequency + BLOCK_NUM * (BLOCK_NUM - 1) / 2 * BLOCK_SIZE / Frequency * 4 + BLOCK_NUM * BLOCK_SIZE / Frequency * 4
        Round_robin_latency = min(Sweep_latency, (BLOCK_NUM - 1) * BLOCK_SIZE * send)
        single_predict_time = predict_sweep + predict_norm + DDR_latency + Sweep_latency + HLS_latency + Round_robin_latency

        batch_predict_time = (BATCH // GRAPH_NUM + BATCH%GRAPH_NUM) * single_predict_time
        return batch_predict_time
    
    


