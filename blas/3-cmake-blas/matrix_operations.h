#ifndef MATRIX_OPERATIONS_H
#define MATRIX_OPERATIONS_H

#include <cblas.h>

void matrix_multiply(double* A, double* B, double* C, int m, int n, int k);
void matrix_add(double* A, double* B, double* C, int m, int n);

#endif
