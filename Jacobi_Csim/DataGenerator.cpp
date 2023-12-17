#include <iostream>
#include <cstring>
#include <cmath>
#include <fstream>
#include <random>
using namespace std;



void writeArrayToFile(const std::string& filename, float* arr, int col) {
    std::ofstream file(filename);
    if (file.is_open()) {
        for (int i = 0; i < col; i++) {
            file << arr[i] << "\n";
        }
        file.close();
    } else {
        std::cerr << "Unable to open file: " << filename << std::endl;
    }
}

void generate2Col(string ApFilename, string AqFilename, int col) {
    float arr1[col];
    float arr2[col];
    std::random_device rd;
    std::mt19937 gen(rd());
    std::uniform_real_distribution<float> dis(-5.0, 5.0);

    // 生成随机数
    float random_number = dis(gen);
    for(int i = 0;i < col;i ++) {
        arr1[i] = dis(gen);
        arr2[i] = dis(gen);
    }
    writeArrayToFile(ApFilename, arr1, col);
    writeArrayToFile(AqFilename, arr2, col);
}

int main() {
    generate2Col("inAq.txt", "inAp.txt", 8);
}