#include <cmath>
#include <vector>

class ProcessUnit {
 public:
  ProcessUnit() = default;
  ProcessUnit(int row,  std::vector<double> Ap);
  ProcessUnit(int row, 
              std::vector<double> Ap,
              std::vector<double> Aq);
  ProcessUnit(int row, 
              std::vector<double> Ap,
              std::vector<double> Aq,
              std::vector<double> Vp,
              std::vector<double> Vq);
  void orthogonalize();
  std::vector<double> outBp();
  std::vector<double> outBq();
  std::vector<double> outVp();
  std::vector<double> outVq();

 private:
  int row;
  double c, s, t, tau;
  std::vector<double> Bp, Bq;
  std::vector<double> Vp, Vq;
  std::vector<double> Ap, Aq;
};