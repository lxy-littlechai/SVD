#include "Matrix.h"
#include <iostream>

Matrix::Matrix(int col, int row) {
  this->col = col;
  this->row = row;
  mat.resize(row);
  for (int j = 0; j < col; j++) {
    mat[j].resize(row);
    for(int i = 0;i < row;i ++) {
      mat[j][i] = 0;
    }
  }
}

Matrix::Matrix(int col, int row, std::vector<double> vec) {
  this->col = col;
  this->row = row;
  mat.resize(col);
  for (int j = 0; j < col; j++) {
    mat[j].resize(row);
    for(int i = 0;i < row;i ++) {
      mat[j][i] = vec[i + col*j];
    }
  }
}

void Matrix::insert(int j, int i, double v) {
  mat[j][i] = v;
}

void Matrix::insert(int j, std::vector<double> vec) {
  mat[j] = vec;
}

double Matrix::get(int j, int i) {
  return mat[j][i];
}

std::vector<double> Matrix::get(int j) {
  return mat[j];
}

void Matrix::initE() {
  for (int i = 0; i < col; i++) {
    for (int j = 0; j < row; j++) {
      mat[j][i] = 0;
      if (i == j)
        mat[j][i] = 1;
    }
  }
}

void Matrix::print() {
  for (int i = 0; i < row; i++) {
    for (int j = 0; j < col; j++) {
      std::cout << mat[j][i] << " ";
    }
    std::cout << "\n";
  }
}