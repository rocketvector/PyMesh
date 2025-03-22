FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    libeigen3-dev \
    libgmp-dev \
    libgmpxx4ldbl \
    libmpfr-dev \
    libboost-dev \
    libboost-thread-dev \
    libtbb-dev \
    python3-dev \
    build-essential \
    cmake \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /pymesh

COPY . .

# Default command (optional)
CMD ["/bin/bash"]