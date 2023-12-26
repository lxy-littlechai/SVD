#include <iostream>
#include <cstring>
#include <cmath>
#include <fstream>
#include <random>
using namespace std;

void writeArrayToFile(const std::string& filepath, float* arr, int col) {
    std::ofstream file(filepath);
    if (file.is_open()) {
        for (int i = 0; i < col; i++) {
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

    // 生成随机数
    float random_number = dis(gen);
    for(int i = 0;i < col;i ++) {
        arr[i] = dis(gen);
    }
    writeArrayToFile(filepath, arr, col);
}

int main() {
    const int COL = 4;
    const int ROW = 16;
    for(int i = 0;i < COL;i ++) {
        string path = "../aie/data/";
        string filepath = path + "in" + to_string(i) + ".txt";
        generate2Col(filepath, ROW);
    }
    
}