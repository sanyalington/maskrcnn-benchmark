#!/bin/bash

#SNAME=SigmoidFocalLoss_cuda
SNAME=ROIPool_cuda

/usr/local/cuda/bin/nvcc -DWITH_CUDA -I/root/maskrcnn-benchmark/maskrcnn_benchmark/csrc -I/opt/conda/lib/python3.6/site-packages/torch/include -I/opt/conda/lib/python3.6/site-packages/torch/include/torch/csrc/api/include -I/opt/conda/lib/python3.6/site-packages/torch/include/TH -I/opt/conda/lib/python3.6/site-packages/torch/include/THC -I/usr/local/cuda/include -I/opt/conda/include/python3.6m -c /root/csrc/cuda/${SNAME}.cu -o /root/build/${SNAME}.o -D__CUDA_NO_HALF_OPERATORS__ -D__CUDA_NO_HALF_CONVERSIONS__ -D__CUDA_NO_HALF2_OPERATORS__ --compiler-options '-fPIC' -DCUDA_HAS_FP16=1 -D__CUDA_NO_HALF_OPERATORS__ -D__CUDA_NO_HALF_CONVERSIONS__ -D__CUDA_NO_HALF2_OPERATORS__ -DTORCH_API_INCLUDE_EXTENSION_H -DTORCH_EXTENSION_NAME=_C -D_GLIBCXX_USE_CXX11_ABI=0 -std=c++11
