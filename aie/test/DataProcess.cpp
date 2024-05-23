#include <iostream>
#include <cstring>
#include <cmath>
#include <fstream>
#include <random>
#include <bitset>
using namespace std;


template<int COL, int ROW, int ITER, int WIDTH>
class DataGenerator{
private:
    union Float32Converter {
        float floatValue;
        uint32_t uintValue;
    }matrix[COL][ROW];

public:

    int calculateParity(int data) {
        int parity = 1;
        while(data) {
            parity ^= (data&1);
            data >>= 1;
        }
        return parity;
    }

    string generateHeader(int pktID, int pktType) {
        uint header = pktID + (pktType<<12) + (31<<16) + (31<<21);
        uint parity = calculateParity(header);
        header = header | (parity << 31);
        return to_string(header);
    }

    float getRand(float L, float R) {
        static std::random_device rd;
        static std::mt19937 gen(rd());
        static std::uniform_real_distribution<float> dis(L, R);
        float result = dis(gen);
        
        return result;
    }

    void generateFpPacket(string filepath) {
         
        for(int j = 0;j < COL;j ++) {
            for(int i = 0;i < ROW;i ++) {
                matrix[j][i].floatValue = getRand(0, 30);
            }
        }
        std::ofstream fileMatrix(filepath + "/matrix.txt");
        if(fileMatrix.is_open()) {
            for(int i = 0;i < ROW;i ++) {
                for(int j = 0;j < COL;j ++) {
                    fileMatrix << matrix[j][i].floatValue << " ";
                }
                fileMatrix << "\n";
            }
        }
        fileMatrix.close();


        std::ofstream file0(filepath + "/0_sweep_in_0.txt");
        if(file0.is_open()) {
            for(int k = 0;k < ITER;k ++) {
                for(int j = 0;j < COL;j += 2) {
                    int idx = 0;
                    file0 << generateHeader(j/2, 0) << " ";
                    idx ++;
                    for(int i = 0;i < ROW-1;i ++) {
                        file0 << matrix[j][i].uintValue << " ";
                        idx ++;
                        if(idx == WIDTH/32) {
                            file0 << "\n";
                            idx = 0;
                        }
                    }
                    file0 << "TLAST\n";
                    file0 << matrix[j][ROW-1].uintValue << "\n";
                }
            }
            
        }
        file0.close();

        std::ofstream file1(filepath + "/0_sweep_in_1.txt");
        if(file1.is_open()) {
            for(int k = 0;k < ITER;k ++) {
                for(int j = 1;j < COL;j += 2) {
                    int idx = 0;
                    file1 << generateHeader(j/2, 0) << " ";
                    idx ++;
                    for(int i = 0;i < ROW-1;i ++) {
                        file1 << matrix[j][i].uintValue << " ";
                        idx ++;
                        if(idx == WIDTH/32) {
                            file1 << "\n";
                            idx = 0;
                        }
                    }
                    file1 << "TLAST\n";
                    file1 << matrix[j][ROW-1].uintValue << "\n";
                }
            }
            
        }
        file1.close(); 

        std::ofstream file3(filepath + "/0_norm_in_0.txt");
        if(file3.is_open()) {
            for(int k = 0;k < ITER;k ++) {
                for(int j = 1;j < COL;j += 2) {
                    int idx = 0;
                    file3 << generateHeader(j/2, 0) << " ";
                    idx ++;
                    for(int i = 0;i < ROW-1;i ++) {
                        file3 << matrix[j][i].uintValue << " ";
                        idx ++;
                        if(idx == WIDTH/32) {
                            file3 << "\n";
                            idx = 0;
                        }
                    }
                    file3 << "TLAST\n";
                    file3 << matrix[j][ROW-1].uintValue << "\n";
                }
            }
            
        }
        file3.close(); 
        
    }

};



int main() {
    const int COL = 8;
    const int ROW = 1024;
    const int ITER = 2;
    const int WIDTH = 128;
    DataGenerator<COL, ROW, ITER, WIDTH> generator;
    generator.generateFpPacket("../data");
    
}