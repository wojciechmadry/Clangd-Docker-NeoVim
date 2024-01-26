FROM ubuntu:22.04

# Set workdir
WORKDIR /ws

# Install dependencies
RUN apt update \
    && apt install -y \
      g++ \
      make \
      cmake \
      clangd

# Build example library
ADD examples/exampleLibrary /ws/exampleLibrary

RUN mkdir -p /ws/exampleLibrary/build \
    && cd /ws/exampleLibrary/build \
    && cmake .. \
    && make install -j
