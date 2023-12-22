#include "Graph.h"
#include <iostream>

Graph::Graph(int col, int row, Matrix A) {
  this->col = col;
  this->row = row;
  processArray.resize(row + 1);
  for (int i = 0; i <= row; i++) {
    processArray[i].resize(col);
  }
  this->A = A;
  sigma.resize(col+1);
  E = Matrix(col, row);
  E.initE();
}

void Graph::start() {
    evenGraph();
}

void Graph::oddGraph() {

}

void Graph::evenGraph() {
  int AIEcol = 0;
  
  for (int j = 0; j < col; j += 2) {
    auto Ap = A.get(j);
    auto Aq = A.get(j+1);
    //auto Ep = E.get(j);
    //auto Eq = E.get(j+1);
    processArray[0][AIEcol] = ProcessUnit(row, Ap, Aq);
    processArray[0][AIEcol].orthogonalize();
    
    AIEcol ++;
  }
  
  for(int i = 1;i < AIEcol;i ++) {
    if(i&1) {
      for(int j = 0;j < AIEcol-1;j ++) {
        processArray[i][j] = ProcessUnit(row, processArray[i-1][j].outBp(), processArray[i-1][j+1].outBq());
        processArray[i][j].orthogonalize();
      }
    }
    else {
      processArray[i][0] = ProcessUnit(row, processArray[i-2][0].outBq(), processArray[i-1][0].outBq());
      processArray[i][0].orthogonalize();
      processArray[i][AIEcol-1] = ProcessUnit(row, processArray[i-1][AIEcol-2].outBp(), processArray[i-2][AIEcol-1].outBp());
      processArray[i][AIEcol-1].orthogonalize();
      for(int j = 1;j < AIEcol-1;j ++) {
        processArray[i][j] = ProcessUnit(row, processArray[i-1][j-1].outBp(), processArray[i-1][j].outBq());
        processArray[i][j].orthogonalize();
      }
    }
  }
  int idx = -1;
  for(int j = AIEcol-1;j >= 0;j --) {
    idx ++;
    A.insert(idx, processArray[AIEcol-1][j].outBq());
    idx ++;
    A.insert(idx, processArray[AIEcol-1][j].outBp());
  }
  //A.print();
}

void Graph::normalize() {
  
  for(int j = 0;j < col;j ++) {
    auto vec = A.get(j);
    double tmp = 0;
    for (int i = 0; i < row; i++) {
      tmp += vec[i]*vec[i];
    }
    sigma[j] = sqrt(tmp);
  }
  U = Matrix(col, row);
  for(int j = 0;j < col;j ++) {
    if(sigma[j] < 0.0000005) continue;
    for(int i = 0;i < row;i ++) {
      U.insert(j, i, A.get(j, i)/sigma[j]);
    }
  }
}

void Graph::print() {
  std::cout << "Matrix: U" << std::endl;
  U.print();
  std::cout << "Matrix: Sigma" << std::endl;
  for(int j = 0;j < col;j ++) {
    std::cout << sigma[j] << " ";
  }
}

