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

    void writeArrayToFile(const std::string& filepath, string* arr, int length) {
        std::ofstream file(filepath);
        if (file.is_open()) {
            for (int i = 0; i < length; i++) {
                file << arr[i] << "\n";
            }
            file.close();
        } else {
            std::cerr << "Unable to open file: " << filepath << std::endl;
        }
    }

    void generate2Col(string filepath, int col) {
        float arr[col];
        std::random_device rd;
        std::mt19937 gen(rd());
        std::uniform_real_distribution<float> dis(-5.0, 5.0);
        float random_number = dis(gen);
        for(int i = 0;i < col;i ++) {
            arr[i] = dis(gen);
        }
            writeArrayToFile(filepath, arr, col);
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
        writeArrayToFile(filepath, arr, idx);
    }
};



int main() {
    const int COL = 4;
    const int ROW = 4;
    const int ITER = 6;
    DataGenerator<COL, ROW, ITER> generator;
    generator.generateFpPacket();
    
}