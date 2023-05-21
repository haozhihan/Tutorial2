#include "matrix_operations.h"

void matrix_multiply(double* A, double* B, double* C, int m, int n, int k)
{
    cblas_dgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans, m, k, n, 1, A, n, B, k, 0, C, k);
}

void matrix_add(double* A, double* B, double* C, int m, int n)
{
    for(int i = 0; i < m; i++)
    {
        for(int j = 0; j < n; j++)
        {
            C[i*n+j] = A[i*n+j] + B[i*n+j];
        }
    }
}
