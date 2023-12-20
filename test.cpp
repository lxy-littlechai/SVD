#include<bits/stdc++.h>
using namespace std;

class A {
public:
 int x;
};
class B: public A {
public:
  B() {
    x = 2;
  }
};
class C {
public:
  A a;
  C() {
    a = B();
    cout << a.x;
  }
}

int main() {
  C c;
}