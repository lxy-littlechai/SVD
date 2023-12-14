#include <vector>

class Matrix {
 public:
  Matrix() = default;
  Matrix(int col, int row);
  Matrix(int col, int row, std::vector<double> vec);
  void insert(int j, std::vector<double> vec);
  void insert(int j, int i, double v);
  void initE();
  double get(int j, int i);
  std::vector<double> get(int j);
  void print();

 private:
  int col, row;
  std::vector<std::vector<double>> mat;
};