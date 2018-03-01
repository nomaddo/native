FROM debian:stretch

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
   git curl cmake bc automake libtool build-essential pkg-config make \
   ca-certificates devscripts python unzip libllvm3.9 llvm-3.9-dev opencl-c-headers \
   g++-6 clang-3.9 ocl-icd-opencl-dev ocl-icd-dev \
 && apt-get clean && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*
