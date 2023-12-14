#include <vector>
#include "Matrix.h"
#include "ProcessUnit.h"

class Graph {
 public:
  Graph(int col, int row, Matrix A);
  void start();
  void evenGraph();
  void oddGraph();
  void normalize();
  void print();

 private:
  int col, row;
  Matrix A, U, V, E;
  std::vector<double>sigma;
  std::vector<std::vector<ProcessUnit>> processArray;
};