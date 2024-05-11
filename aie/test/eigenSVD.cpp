#include <iostream>
#include <Eigen/Dense>
#include <Eigen/SVD>

void readData() {
    
}

int main() {

    Eigen::MatrixXd mat(16, 16);

    string path = "../data/";
    string filepath = path + "matrix.txt";
    std::ifstream inputFile(filepath);
    if(inputFile.is_open()) {
        for(int i = 0;i < ROW;i ++) {
            for(int j = 0;j < COL;j ++) {
                inputFile >> mat[i][j];
            }
        }
    }
    

    Eigen::JacobiSVD<Eigen::MatrixXd>::SVDOptions options;
    options = Eigen::ComputeThinU | Eigen::ComputeThinV;

    Eigen::JacobiSVD<Eigen::MatrixXd> svd(mat, options);
    svd.setMaxIterations(100); 

    svd.compute(mat);

    std::cout << "Singular values:\n" << svd.singularValues() << std::endl;
    std::cout << "Left singular vectors:\n" << svd.matrixU() << std::endl;
    std::cout << "Right singular vectors:\n" << svd.matrixV() << std::endl;

    return 0;
}
