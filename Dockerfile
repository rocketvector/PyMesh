FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV PATH="/opt/anaconda/bin:$PATH"

RUN apt-get update && apt-get install -y \
    curl \
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

RUN curl -fsSL https://repo.anaconda.com/archive/Anaconda3-2023.07-1-Linux-x86_64.sh -o anaconda.sh \
    && bash anaconda.sh -b -p /opt/anaconda \
    && rm anaconda.sh \
    && /opt/anaconda/bin/conda init

WORKDIR /pymesh

COPY . .

RUN python setup.py bdist_wheel

# Default command (optional)
CMD ["/bin/bash"]