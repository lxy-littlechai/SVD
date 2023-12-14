#include "Graph.h"
#include <iostream>

int main() {

  const int row = 4;
  const int col = 4;
  std::vector<double> vecA;
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

  Matrix A = Matrix(col, row, vecA);
  Graph graph = Graph(col, row, A);
  graph.start();
  graph.start();
  graph.start();
  graph.normalize();
  graph.print();


}