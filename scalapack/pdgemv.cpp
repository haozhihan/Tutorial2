/**
 * https://www.cnblogs.com/kuangsyx/p/7406718.html
 */
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "mpi.h"
#include "scalapack_connector.h"

#define AA(i, j) AA[(i)*M + (j)]

int main(int argc, char **argv)
{
   int i, j, k;
   /************  MPI ***************************/
   int myrank_mpi, nprocs_mpi;
   MPI_Init(&argc, &argv);
   MPI_Comm_rank(MPI_COMM_WORLD, &myrank_mpi);
   MPI_Comm_size(MPI_COMM_WORLD, &nprocs_mpi);
   /************  BLACS ***************************/
   int ictxt, nprow, npcol, myrow, mycol, nb;
   int info, itemp;
   int ZERO = 0, ONE = 1;
   nprow = 2;
   npcol = 2;
   nb = 1;
   Cblacs_pinfo(&myrank_mpi, &nprocs_mpi);
   Cblacs_get(-1, 0, &ictxt);
   Cblacs_gridinit(&ictxt, "Row", nprow, npcol);
   Cblacs_gridinfo(ictxt, &nprow, &npcol, &myrow, &mycol);
   int M = 4;

   int descA[9], descx[9], descy[9];
   int mA = numroc_(&M, &nb, &myrow, &ZERO, &nprow);
   int nA = numroc_(&M, &nb, &mycol, &ZERO, &npcol);
   int nx = numroc_(&M, &nb, &myrow, &ZERO, &nprow);
   int my = numroc_(&M, &nb, &myrow, &ZERO, &nprow);
   descinit_(descA, &M, &M, &nb, &nb, &ZERO, &ZERO, &ictxt, &mA, &info);
   descinit_(descx, &M, &ONE, &nb, &ONE, &ZERO, &ZERO, &ictxt, &nx, &info);
   descinit_(descy, &M, &ONE, &nb, &ONE, &ZERO, &ZERO, &ictxt, &my, &info);

   double *x = (double *)malloc(nx * sizeof(double));
   double *y = (double *)calloc(my, sizeof(double));
   double *A = (double *)malloc(mA * nA * sizeof(double));
   int sat, sut;
   for (i = 0; i < mA; i++)
   {
      for (j = 0; j < nA; j++)
      {
         A[j * mA + i] = 1.0;
      }
   }
   for (i = 0; i < nx; i++)
   {
      x[i] = 1.0;
   }
   double alpha = 1.0;
   double beta = 0.0;
   pdgemv_("N", &M, &M, &alpha, A, &ONE, &ONE, descA, x, &ONE, &ONE, descx, &ONE, &beta, y, &ONE, &ONE, descy, &ONE);

   for (i = 0; i < my; i++)
      printf("rank=%d ,%f \n", myrank_mpi, y[i]);
   MPI_Finalize();
   return 0;
}
