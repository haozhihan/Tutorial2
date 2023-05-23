#include <iostream>
#include "matrix_operations.h"

using namespace std;

int main()
{
    int m = 2;
    int n = 3;
    int k = 4;

    double* A = new double[m * n];
    A[0] = 1; A[1] = 2; A[2] = 3; A[3] = 4; A[4] = 5; A[5] = 6;

    double* B = new double[n * k];
    B[0] = 1; B[1] = 2; B[2] = 3; B[3] = 4; B[4] = 5; B[5] = 6;
    B[6] = 7; B[7] = 8; B[8] = 9; B[9] = 10; B[10] = 11; B[11] = 12;

    double* C1 = new double[m * k];
    double* C2 = new double[m * k];
    // 不需要初始化，因为该数组被初始化为0

    // matrix multiplication
    matrix_multiply(A, B, C1, m, n, k);

    // matrix addition
    matrix_add(A, B, C2, m, n);

    // print matrices
    cout << "Matrix A:" << endl;
    for(int i = 0; i < m; i++)
    {
        for(int j = 0; j < n; j++)
        {
            cout << C1[i*n+j] << " ";
        }
        cout << endl;
    }

    cout << "Matrix B:" << endl;
    for(int i = 0; i < m; i++)
    {
        for(int j = 0; j < n; j++)
        {
            cout << C2[i*n+j] << " ";
        }
        cout << endl;
    }

    delete[] A;
    delete[] B;
    delete[] C1;
    delete[] C2;
}
