nvcc -arch=sm_80 -Xcompiler -fopenmp matmul-v00.cu main.cu -o test && ./test 

nvcc -arch=sm_80 -Xcompiler -fopenmp matmul-v17.cu main.cu -o test -I ../../../3rdparty/cutlass/include/ && ./test stages 4