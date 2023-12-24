echo "Test Naive WMMA GEMM Performance."
nvcc -arch=sm_80 -Xcompiler -fopenmp matmul-v00.cu main.cu -o test && ./test
echo "Test CuTe-v1 GEMM Performance."
nvcc -arch=sm_80 -Xcompiler -fopenmp matmul-v16.cu -o test -I../../../3rdparty/cutlass/include/ -I../../../3rdparty/cutlass/tools/util/include/  && ./test
echo "Test CuTe-v2 GEMM Performance."
nvcc -arch=sm_80 -Xcompiler -fopenmp matmul-v17.cu main.cu -o test -I ../../../3rdparty/cutlass/include/ && ./test stages 4