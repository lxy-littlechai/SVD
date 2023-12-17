#include "ProcessUnit.h"
#include <iostream>
using namespace std;

ProcessUnit::ProcessUnit(int row, std::vector<double> Ap) {
  this->Bp = Ap;
}

ProcessUnit::ProcessUnit(int row, 
                         std::vector<double> Ap,
                         std::vector<double> Aq) {
  this->row = row;
  this->Ap = Ap;
  this->Aq = Aq;
  Bp.resize(row);
  Bq.resize(row);
}

ProcessUnit::ProcessUnit(int row, 
                         std::vector<double> Ap,
                         std::vector<double> Aq,
                         std::vector<double> Vp,
                         std::vector<double> Vq) {
  this->row = row;
  this->Ap = Ap;
  this->Aq = Aq;
  this->Vp = Vp;
  this->Vq = Vq;
  Bp.resize(row);
  Bq.resize(row);
}
double sign(double x) {
  if(x > 0) return 1.0;
  else if(x == 0) return 0;
  else return -1.0;
}
void ProcessUnit::orthogonalize() {
  
  const int size = Ap.size();
  if (Ap.size() != Aq.size()) {
    std::cout << "Error unmatched size\n";
    return;
  }
  
  
  double tmp1 = 0, tmp2 = 0;
  for (int i = 0; i < size; i++) {
    tmp1 += Ap[i] * Ap[i] - Aq[i] * Aq[i];
    tmp2 += 2 * Ap[i] * Aq[i];
  }
  
  tau = tmp1 / tmp2;
  t = sign(tau) / (abs(tau) + sqrt(1 + tau * tau));
  c = 1 / (sqrt(1 + t * t));
  s = t * c;
  for (int i = 0; i < size; i++) {
    Bp[i] = Ap[i] * c + Aq[i] * s;
    Bq[i] = -Ap[i] * s + Aq[i] * c;
    //std::cout << "test " << Bp[i] << " ";
    //Vp[i] = Vp[i] * c + Vq[i] * s;
    //Vq[i] = -Vp[i] * c + Vq[i] * s;
  }
  std::cout << "-------------------\n";
  for(int i = 0;i < size;i ++) {
    std::cout << Ap[i] << " ";
  }
  std::cout << "\n";
  for(int i = 0;i < size;i ++) {
    std::cout << Aq[i] << " ";
  }
  std::cout << "\n";
  cout << "t: " << t << " c:" << c << " s:" << s << endl;
  for(int i = 0;i < size;i ++) {
    std::cout << Bp[i] << " ";
  }
  std::cout << "\n";
  for(int i = 0;i < size;i ++) {
    std::cout << Bq[i] << " ";
  }
}

std::vector<double> ProcessUnit::outBp() {
  return Bp;
}
std::vector<double> ProcessUnit::outBq() {
  return Bq;
}
std::vector<double> ProcessUnit::outVp() {
  return Vp;
}
std::vector<double> ProcessUnit::outVq() {
  return Vq;
}