#include <cstddef>
#include <stdio.h>
#include <iostream>
#include <cuda_runtime.h>


__global__ void arraySum(const float* a, float *ret, int numElements) {
  int tid = blockDim.x * blockIdx.x + threadIdx.x;
  if (tid < numElements) {
    __shared__ float sData[16];  // 申请共享数据内存
    sData[tid] = a[tid];
    __syncthreads();
    for (int i = numElements / 2; i > 0; i /= 2) {
      if (tid < i) {
        sData[tid] = sData[tid] + sData[tid + i];
      }
      __syncthreads();
    }
    if (tid == 0) {
      ret[0] = sData[0];
    }
  }
}

int main(int argc, char **argv) {

  // std::array<float, 16> a;
  // for (auto &i : a) {
  //   i *= (i + 1);
  // }

  int numElements = 16;
  size_t size = numElements * sizeof(float);

  float *h_data = (float *)malloc(size);;
  float *h_ret = (float *)malloc(size); // result on the host
  float* d_data = nullptr;  // data of device
  float *d_ret = nullptr; // result on the device

  for (int i = 0; i < numElements; ++ i) {
    h_data[i] = i * (i + 1);
  }

  cudaMalloc((void**)&d_data, size);
  cudaMalloc((void**)&d_ret, 1 * sizeof(float));

  cudaMemcpy(d_data, h_data, size, cudaMemcpyHostToDevice);

  arraySum<<<1, 16>>>(d_data, d_ret, numElements);
  cudaMemcpy(h_ret, d_ret, 1 * sizeof(float), cudaMemcpyDeviceToHost);

  // float temp[16];
  // cudaMemcpy(temp, d_data, 16 * sizeof(float), cudaMemcpyDeviceToHost);

  std::cout << "result: " << h_ret[0] << std::endl;
  cudaFree(d_data);
  cudaFree(d_ret);
  free(h_data);
  free(h_ret);
  return 0;
}
