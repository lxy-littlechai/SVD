#include <bits/stdc++.h>
using namespace std;


template<int COL, int ROW, int BLOCK_SIZE>
class MBCV {
private:
  const int BLOCK_NUM = COL/BLOCK_SIZE;
  float A[COL][ROW], U[COL][ROW], V[COL][ROW], sigma[COL];
  float block[COL/BLOCK_SIZE][BLOCK_SIZE][ROW];
  

public:

  void readMatrix(string filePath) {
    std::ifstream inputFile(filePath);
    if (!inputFile.is_open()) {
        std::cerr << "Error: " << filePath << std::endl;
        return ;
    }
    double number;
    for(int j = 0;j < COL;j ++) {
      for(int i = 0;i < ROW;i ++) {
        inputFile >> number;
        A[j][i] = j+1;
        //std::cout << number << " ";
      }
      //cout << "\n";
    }

    for(int k = 0;k < BLOCK_NUM;k ++) {
      for(int j = 0; j < BLOCK_SIZE;j ++) {
        for(int i = 0;i < ROW;i ++) {
          block[k][j][i] = A[k*BLOCK_SIZE + j][i];
        }
      }
    }
    
    inputFile.close();
  }

  float sign(float x) {
    if(x > 0) return 1;
    else if(x == 0) return 0;
    else return -1;
  }

  void print(float* vec) {
    
    for(int i = 0;i < ROW;i ++) {
      cout << vec[i] << " ";
    }
    cout << "\n";
  }

  void orthogonalize(float* Left, float* Right) {
    print(Left);
    print(Right);
    float tmp1 = 0, tmp2 = 0;
    for(int k = 0;k < ROW;k ++) {
        tmp1 += Left[k]*Left[k] - Right[k]*Right[k];
        tmp2 += 2*Left[k]*Right[k];
    }
    if(abs(tmp2) < 0.00001) return ;
    float tau = tmp1 / tmp2;;
    float t = sign(tau) / (abs(tau) + sqrt(1 + tau * tau));
    float c = 1 / (sqrt(1 + t * t));
    float s = t * c;
    printf("tau = %f, t = %f, c = %f, s = %f\n",tau,t,c,s);
    float tmpL[ROW], tmpR[ROW];
    for(int k = 0;k < ROW;k ++) {
        tmpL[k] = Left[k] * c + Right[k] * s;
        tmpR[k] = -Left[k] * s + Right[k] * c;
        //tmpV[k] = V[i][k] * c + V[j][k] * s;
        //tmpV[k] = -V[i][k] * s + V[j][k] * c;
    }
    for(int k = 0;k < ROW;k ++) {
      Left[k] = tmpL[k];
      Right[k] = tmpR[k];
    }
    
  }

  void sweep1() {
    for(int L = 0;L < BLOCK_NUM;L ++) {
      for(int R = L+1;R < BLOCK_NUM;R ++) {

        for(int level = 0; level < BLOCK_SIZE; level ++) {
          for(int k = 0;k < BLOCK_SIZE;k ++) {
            orthogonalize(block[L][k], block[R][k]);
          }
          float tmpL[BLOCK_SIZE][ROW], tmpR[BLOCK_SIZE][ROW];
          if(BLOCK_SIZE&1) {
            if(level&1) {
              swap(tmpL[1], block[L][0]);
              swap(tmpR[0], block[R][0]);
              for(int j = 1;j < BLOCK_SIZE-1;j ++) {
                if(j&1) {
                  swap(tmpL[j-1], block[L][j]);
                  swap(tmpR[j+1], block[R][j]);
                }
                else {
                  swap(tmpL[j+1], block[L][j]);
                  swap(tmpR[j-1], block[R][j]);
                }
              }
              swap(tmpL[BLOCK_SIZE-1], block[L][BLOCK_SIZE-1]);
              swap(tmpR[BLOCK_SIZE-2], block[R][BLOCK_SIZE-1]);
            }
            else {
              swap(tmpL[0], block[L][0]);
              swap(tmpR[1], block[R][0]);
              for(int j = 1;j < BLOCK_SIZE-1;j ++) {
                if(j&1) {
                  swap(tmpL[j+1], block[L][j]);
                  swap(tmpR[j-1], block[R][j]);
                }
                else {
                  swap(tmpL[j-1], block[L][j]);
                  swap(tmpR[j+1], block[R][j]);
                }
              }
              swap(tmpL[BLOCK_SIZE-2], block[L][BLOCK_SIZE-1]);
              swap(tmpR[BLOCK_SIZE-1], block[R][BLOCK_SIZE-1]);
            }
          }
          for(int j = 0;j < BLOCK_SIZE;j ++) {
            swap(tmpL[j], block[L][j]);
            swap(tmpR[j], block[R][j]);
          }
        }
      }
    }
  }

  void sweep2() {
    for(int L = 0;L < BLOCK_NUM;L ++) {
      float Lm[BLOCK_SIZE][ROW], Rm[BLOCK_SIZE][ROW];
      for(int j = 0;j < BLOCK_SIZE;j ++) {
        for(int i = 0;i < ROW;i ++) {
          Lm[j][i] = block[L][j][i];
          Rm[j][i] = block[L][j][i];
        }
      }
      float tmpL[BLOCK_SIZE][ROW], tmpR[BLOCK_SIZE][ROW];
      for(int level = 0; level < BLOCK_SIZE; level ++) {
        for(int k = 0;k < BLOCK_SIZE;k ++) {
          orthogonalize(Lm[k], Rm[k]);
        }
        if(BLOCK_SIZE&1) {
          if(level&1) {
            swap(tmpL[1], Lm[0]);
            swap(tmpR[0], Rm[0]);
            for(int j = 1;j < BLOCK_SIZE-1;j ++) {
              if(j&1) {
                swap(tmpL[j-1], Lm[j]);
                swap(tmpR[j+1], Rm[j]);
              }
              else {
                swap(tmpL[j+1], Lm[j]);
                swap(tmpR[j-1], Rm[j]);
              }
            }
            swap(tmpL[BLOCK_SIZE-1], Lm[BLOCK_SIZE-1]);
            swap(tmpR[BLOCK_SIZE-2], Rm[BLOCK_SIZE-1]);
          }
          else {
            swap(tmpL[0], Lm[0]);
            swap(tmpR[1], Rm[0]);
            for(int j = 1;j < BLOCK_SIZE-1;j ++) {
              if(j&1) {
                swap(tmpL[j+1], Lm[j]);
                swap(tmpR[j-1], Rm[j]);
              }
              else {
                swap(tmpL[j-1], Lm[j]);
                swap(tmpR[j+1], Rm[j]);
              }
            }
            swap(tmpL[BLOCK_SIZE-2], Lm[BLOCK_SIZE-1]);
            swap(tmpR[BLOCK_SIZE-1], Rm[BLOCK_SIZE-1]);
          }
        }
        for(int j = 0;j < BLOCK_SIZE;j ++) {
          swap(tmpL[j], Lm[j]);
          swap(tmpR[j], Rm[j]);
        }
      }
      for(int j = 0;j < BLOCK_SIZE;j ++) {
        for(int i = 0;i < ROW;i ++) {
          block[L][j][i] = Lm[j][i];
          block[L][j][i] = Rm[j][i];
        }
      }
      
    
    }
  }

  void normalize() {
    for(int k = 0;k < BLOCK_NUM;k ++) {
      for(int j = 0;j < BLOCK_SIZE;j ++) {
        float tmp = 0;
        for(int i = 0;i < ROW;i ++) {
            tmp += block[k][j][i]*block[k][j][i];
        }
        sigma[k*BLOCK_SIZE + j] = sqrt(tmp);
        for(int i = 0;i < ROW;i ++) {
            A[k*BLOCK_SIZE + j][i] = block[k][j][i];
            U[k*BLOCK_SIZE + j][i] = block[k][j][i]/sigma[k*BLOCK_SIZE + j];
        }
      }
    }
  }

  void print() {
    cout << "A" << endl;
    for(int i = 0;i < ROW;i ++) {
      for(int j = 0;j < COL;j ++) {
        cout << A[j][i] << " ";
      }
      cout << endl;
    }
    cout << "U" << endl;
    for(int i = 0;i < ROW;i ++) {
      for(int j = 0;j < COL;j ++) {
        cout << U[j][i] << " ";
      }
      cout << endl;
    }
    cout << "sigma" << endl;
    //sort(sigma, sigma+COL);
    for(int i = 0;i < COL;i ++) {
      cout << sigma[i] << " "; 
    }
  }

  void test2Block(string filePath) {
    readMatrix(filePath);
    for(int i = 0;i < 1;i ++) {
       //cout << "\n----------sweep2-----------\n";
      sweep2();
    }
    //sweep1();
   
    normalize();
    print();
  }

};

int main() {
  MBCV<5, 5, 5> mbcv;
  string filePath = "../aie/data/matrix.txt";
  mbcv.test2Block(filePath);
}