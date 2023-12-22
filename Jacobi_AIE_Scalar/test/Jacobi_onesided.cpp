#include <bits/stdc++.h>
using namespace std;

const int COL = 4;
const int ROW = 8;
const int iter = 1;
int A[COL][ROW];

void readDataFromFile(const string& filePath, int* vec, int row) {
    std::ifstream inputFile(filePath);
    if (!inputFile.is_open()) {
        std::cerr << "Error: " << filePath << std::endl;
        return ;
    }
    double number;
    for(int i = 0;i < row;i ++) {
      inputFile >> number;
      vec[i] = number;
        //cout  << number << " ";
    }
    inputFile.close();
}

void readData(const int COL, const int ROW) {
    for(int i = 0;i < COL;i ++) {
        string path = "../aie/data/";
        string filepath = path + "in" + to_string(i) + ".txt";
        readDataFromFile(filepath, A[i], ROW);
    }
}

int main() {
    
    readData(COL, ROW);
}