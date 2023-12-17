#include "Graph.h"
#include <cstring>
#include <fstream>
#include <iostream>
using namespace std;
void readDataFromFile(const string& filePath, vector<double>&vec, int row) {
    std::ifstream inputFile(filePath);
    if (!inputFile.is_open()) {
        std::cerr << "无法打开文件: " << filePath << std::endl;
        return ;
    }
    double number;
    for(int i = 0;i < row;i ++) {
      inputFile >> number;
      vec.push_back(number);
        //cout  << number << " ";
    }
    inputFile.close();
}

int main() {              

  const int row = 8;
  const int col = 2;
  std::vector<double> vecA;
  readDataFromFile("inAp.txt", vecA, row);
  readDataFromFile("inAq.txt", vecA, row);
  
  // for(int i = 0;i < vecA.size();i ++) {
  //   cout << vecA[i] << endl;
  // }
  
/*
  for(int j = 1;j <= col;j ++) {
    for(int i = 1;i <= row;i ++) {
      vecA.emplace_back(rand());
    }
  }
  for(int i = 0;i < row;i ++) {
    for(int j = 0;j < col;j ++) {
      std::cout << vecA[i + j*col] << " ";
    }
    std::cout << "\n";
  }
*/
  
  Matrix A = Matrix(col, row, vecA);
  Graph graph = Graph(col, row, A);
  graph.start();
  
  graph.normalize();
  graph.print();


}