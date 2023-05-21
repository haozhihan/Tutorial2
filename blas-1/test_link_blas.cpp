#include <iostream>
#include <cstring>
#include <cblas.h>

using namespace std;

int main()
{
    int m=3;
    int n=4;
    int k=2;

    double *a = new double[m*k]();
    double *b = new double[k*n]();
    double *c = new double[m*n]();

    //     | 2 0 |      | 4 0 0 0 |
    // a = | 0 3 |  b = | 0 5 0 0 |
    //     | 0 0 |
    a[0]=2; a[3]=3;
    b[0]=4; b[5]=5;

    //             | 8 0  0 0 |
    // c = a * b = | 0 15 0 0 |
    //             | 0 0  0 0 |

    // call gemm
    cblas_dgemm(
        CblasRowMajor,
        CblasNoTrans,
        CblasNoTrans,
        m, n, k, 1.0, a, k, b, n, 0.0, c, n);

    // output results
    for (int i = 0; i < m; i++)
    {
        for (int j = 0; j < n; j++)
        {
            cout << c[i*n+j] << "\t";
        }
        cout << endl;
    }

    return 0;
}