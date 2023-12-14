#include "new_odd_even.h"
#include <iostream>

new_odd_even::new_odd_even(int NUM) {
  this->NUM = NUM;
  vec.resize(NUM + 1);
  for (int i = 0; i <= NUM; i++) {
    vec[i].v[0] = i;
    vec[i].v[1] = i;
  }

  vis.resize(NUM + 1);
  for (int i = 0; i <= NUM; i++) {
    vis[i].resize(NUM + 1);
    for (int j = 0; j <= NUM; j++) {
      vis[i][j] = 0;
    }
  }
}

void new_odd_even::generate() {
  if (NUM & 1)
    new_odd(1);
  else
    new_even(1);
}

void new_odd_even::new_odd(int step) {
    if (step > NUM)
    return;
  std::vector<node> temp;
  temp.resize(NUM + 1);
  int blue = (step & 1) ^ 1;
  int red = step & 1;
  temp[1].v[blue] = vec[1].v[blue];
  temp[2].v[red] = vec[1].v[red];
  temp[NUM].v[red] = vec[NUM].v[red];
  temp[NUM - 1].v[blue] = vec[NUM].v[blue];
  for (int i = 2; i < NUM; i++) {
    if (i & 1) {
      temp[i - 1].v[blue] = vec[i].v[blue];
      temp[i + 1].v[red] = vec[i].v[red];
    } else {
      temp[i + 1].v[blue] = vec[i].v[blue];
      temp[i - 1].v[red] = vec[i].v[red];
    }
  }
  vec = temp;
  new_odd(step + 1);
}
void new_odd_even::new_even(int step) {
  print();
  if (step > NUM)
    return;
  std::vector<node> temp;
  temp.resize(NUM + 1);
  int blue = (step & 1) ^ 1;
  int red = step & 1;
  temp[1].v[blue] = vec[1].v[blue];
  temp[2].v[red] = vec[1].v[red];
  temp[NUM].v[blue] = vec[NUM].v[blue];
  temp[NUM - 1].v[red] = vec[NUM].v[red];
  for (int i = 2; i < NUM; i++) {
    if (i & 1) {
      temp[i - 1].v[blue] = vec[i].v[blue];
      temp[i + 1].v[red] = vec[i].v[red];
    } else {
      temp[i + 1].v[blue] = vec[i].v[blue];
      temp[i - 1].v[red] = vec[i].v[red];
    }
  }
  vec = temp;
  new_even(step + 1);
}

void new_odd_even::print() {
  for (int i = 1; i <= NUM; i++) {
    std::cout << "(" << vec[i].v[0] << "," << vec[i].v[1] << ")"
              << " ";
  }
  std::cout << std::endl;
}
