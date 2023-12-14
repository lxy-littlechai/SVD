#include <vector>

struct node {
  int v[2];
};
class new_odd_even {
 private:
  int NUM;
  std::vector<node> vec;
  std::vector<std::vector<int>> vis;

  void new_even(int step);
  void new_odd(int step);
  bool checkResult();

 public:
  new_odd_even(int NUM);
  void generate();
  void print();
};
