#include <iostream>
#include <cstring>
#include <cmath>
#include <fstream>
#include <random>
#include <bitset>
using namespace std;


template<int COL, int ROW, int ITER>
class DataGenerator{
private:
    union Float32Converter {
        float floatValue;
        uint32_t uintValue;
    };

public:

    template<typename T>
    void writeArrayToFile(const std::string& filepath, T* arr, int col, int row) {
        std::ofstream file(filepath);
        if (file.is_open()) {
            for (int i = 0; i < row; i++) {
                for(int j = 0;j < col;j ++) {
                    file << arr[i*col + j] << " ";
                }   
                file << "\n";
                
            }
            file.close();
        } else {
            std::cerr << "Unable to open file: " << filepath << std::endl;
        }
    }

    vector<float> generateCol(int row) {
        vector<float> arr(row);
        std::random_device rd;
        std::mt19937 gen(rd());
        std::uniform_real_distribution<float> dis(-50.0, 50.0);
        float random_number = dis(gen);
        for(int i = 0;i < row;i ++) {
            arr[i] = dis(gen);
        }
        return arr;
    }

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

    string getFP() {
        static std::random_device rd;
        static std::mt19937 gen(rd());
        static std::uniform_real_distribution<float> dis(-5000.0, 5000.0);
        Float32Converter converter;
        converter.floatValue = dis(gen);
        uint32_t result = converter.uintValue;
        
        return to_string(result);
    }

    void generateFpPacket() {
        string arr[ITER*COL*(ROW+2)];
        int idx = 0;
        for(int k = 0;k < ITER;k ++) {
            for(int j = 0;j < COL;j ++) {
                arr[idx ++] = generateHeader(j, 0);
                for(int i = 0;i < ROW-1;i ++) {
                    arr[idx ++] = getFP();
                }
                arr[idx ++] = "TLAST";
                arr[idx ++] = getFP();
            }
        }
        string path = "../aie/data/";
        string filepath = path + "in.txt";
        writeArrayToFile<string>(filepath, arr, 1, idx);
    }

    void generateMBCV(int graphID) {
        float matrix[COL*ROW], tempCOL[ROW];
        for(int j = 0;j < COL;j ++) {
            auto matrixCOL = generateCol(ROW);
            for(int i = 0;i < ROW;i ++) {
                matrix[i*COL + j] = matrixCOL[i];
                tempCOL[i] = matrixCOL[i];
            }
            if(j&1) {
                string filePath = "../aie/data/" + to_string(graphID) + "in" +  to_string(j/2) + "_1.txt";
                writeArrayToFile(filePath, tempCOL, 1, ROW);
            }
            else {
                string filePath = "../aie/data/" + to_string(graphID) + "in" +  to_string(j/2) + "_0.txt";
                writeArrayToFile(filePath, tempCOL, 1, ROW);
            }
        }

        string filePath = "../aie/data/matrix.txt";
        writeArrayToFile(filePath, matrix, COL, ROW);

    }
};



int main() {
    const int COL = 8;
    const int ROW = 8;
    const int ITER = 6;
    DataGenerator<COL, ROW, ITER> generator;
    generator.generateMBCV(0);
    
}