#include <bits/stdc++.h>
using namespace std;

const int COL = 32;
const int ROW = 32;
const int ITER = 10;
float A[COL][ROW], U[COL][ROW], V[COL][ROW], sigma[COL];
float tmpA[COL][ROW], tmpV[COL][ROW];

void readData() {
    string path = "../data/";
    string filepath = path + "matrix.txt";
    std::ifstream inputFile(filepath);
    if(inputFile.is_open()) {
        for(int i = 0;i < ROW;i ++) {
            for(int j = 0;j < COL;j ++) {
                inputFile >> A[j][i];
            }
        }
    }
}

float sign(float x) {
    if(x > 0) return 1;
    else if(x == 0) return 0;
    else return -1;
}

void print(int i, int j) {
    for(int k = 0;k < ROW;k ++) {
        cout << A[i][k] << " ";
    }
    cout << "\n";
    for(int k = 0;k < ROW;k ++) {
        cout << A[j][k] << " ";
    }
    cout << "\n";
}

void orthogonalize(int i, int j) {
    //print(i, j);
    float tmp1 = 0, tmp2 = 0;
    for(int k = 0;k < ROW;k ++) {
        tmp1 += A[i][k]*A[i][k] - A[j][k]*A[j][k];
        tmp2 += 2*A[i][k]*A[j][k];
    }
    if(abs(tmp2) < 0.001) return ;
    float tau = tmp1 / tmp2;;
    float t = sign(tau) / (abs(tau) + sqrt(1 + tau * tau));
    float c = 1 / (sqrt(1 + t * t));
    float s = t * c;
    //printf("tau = %f, t = %f, c = %f, s = %f\n",tau,t,c,s);
    for(int k = 0;k < ROW;k ++) {
        tmpA[i][k] = A[i][k] * c + A[j][k] * s;
        tmpA[j][k] = -A[i][k] * s + A[j][k] * c;
        tmpV[i][k] = V[i][k] * c + V[j][k] * s;
        tmpV[j][k] = -V[i][k] * s + V[j][k] * c;
    }
    for(int k = 0;k < ROW;k ++) {
        A[i][k] = tmpA[i][k];
        A[j][k] = tmpA[j][k];
        V[i][k] = tmpV[i][k];
        V[j][k] = tmpV[j][k];
    }
}


//flag1 -> even odd COL; flag2 -> even odd sweep
void JacobiSwap(int flag1, int flag2) {
    if(flag1 == 0) {
        if(flag2 == 0) {
            for(int i = 0;i < COL;i ++) {
                if(i&1) {
                    swap(tmpA[i], A[i-1]); 
                    swap(tmpV[i], V[i-1]);
                }
                else {
                    swap(tmpA[i], A[i+1]);
                    swap(tmpV[i], V[i+1]);
                }
            }
        }
        else {
            swap(tmpA[0], A[0]);
            swap(tmpA[COL-1], A[COL-1]);
            swap(tmpV[0], V[0]);
            swap(tmpV[COL-1], V[COL-1]);
            for(int i = 1;i < COL-1;i ++) {
                if(i&1) {
                    swap(tmpA[i], A[i+1]);
                    swap(tmpV[i], V[i+1]);
                }
                else {
                    swap(tmpA[i], A[i-1]); 
                    swap(tmpV[i], V[i-1]); 
                }
            }
        }
        
    }
    for(int i = 0;i < COL;i ++) {
        swap(tmpA[i], A[i]);
        swap(tmpV[i], V[i]);
    }
    
}

void Normalize() {
    for(int j = 0;j < COL;j ++) {
        float tmp = 0;
        for(int i = 0;i < ROW;i ++) {
            tmp += A[j][i]*A[j][i];
        }
        sigma[j] = sqrt(tmp);
        for(int i = 0;i < ROW;i ++) {
            U[j][i] = A[j][i]/sigma[j];
        }
    }
    
}

void printA() {
    cout << "A\n";
    for(int i = 0;i < ROW;i ++) {
        for(int j = 0;j < COL;j ++) {
            cout << A[j][i] << " ";
        }
        cout << "\n";
    }
}

void print() {
    //printA();
    /*cout << "U\n";
    for(int i = 0;i < ROW;i ++) {
        for(int j = 0;j < COL;j ++) {
            cout << U[j][i] << " ";
        }
        cout << "\n";
    }*/
    sort(sigma, sigma+COL);
    cout << "Sigma\n";
    for(int i = 0;i < COL;i ++) {
        printf("%.6f ",sigma[i]);
    }
    cout << "\n";
    /*cout << "V\n";
    for(int i = 0;i < ROW;i ++) {
        for(int j = 0;j < COL;j ++) {
            cout << V[j][i] << " ";
        }
        cout << "\n";
    }*/
}

void JacobiEven() {
    for(int i = 0;i < ITER;i ++) {
        for(int j = 0;j < COL;j ++) {
            //printA();
            if(j&1) {
                for(int k = 1;k < COL-1;k += 2) {
                    orthogonalize(k, k+1);
                }
                JacobiSwap(0, 1);
            }
            else {
                for(int k = 0;k < COL;k += 2) {
                    orthogonalize(k, k+1);
                }
                JacobiSwap(0, 0);
            }
        }
    }
    Normalize();
    print();
}

void init() {
    for(int i = 0;i < ROW;i ++) {
        for(int j = 0;j < COL;j ++) {
            A[j][i] = j;
            U[j][i] = V[j][i] = 0;
            sigma[j] = 0;
        }
    }
    for(int i = 0;i < min(COL, ROW);i ++) {
        V[i][i] = 1;
    }
}

int main() {
    init();
    readData();
    if(COL&1) {

    }
    else {
        JacobiEven();
    }
    
}