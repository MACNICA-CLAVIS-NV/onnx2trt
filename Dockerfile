ARG BASE_IMAGE=nvcr.io/nvidia/l4t-ml:r32.6.1-py3
FROM ${BASE_IMAGE}

ARG REPOSITORY_NAME=onnx2trt

ENV DEBIAN_FRONTEND=noninteractive
ENV LANG C.UTF-8
ENV PATH="/usr/local/cuda/bin:${PATH}"
ENV LD_LIBRARY_PATH="/usr/local/cuda/lib64:${LD_LIBRARY_PATH}"

WORKDIR /tmp

RUN apt-get update && apt-get install -y ca-certificates
COPY  nvidia-l4t-apt-source.list /etc/apt/sources.list.d/nvidia-l4t-apt-source.list
COPY  jetson-ota-public.asc /etc/apt/trusted.gpg.d/jetson-ota-public.asc
RUN apt-get update

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        libprotobuf* \
        protobuf-compiler \
        ninja-build \
        graphviz && \
    rm -rf /var/lib/apt/lists/*

RUN pip3 install pydotplus graphviz

WORKDIR /

RUN mkdir /${REPOSITORY_NAME}
COPY ./*.ipynb /${REPOSITORY_NAME}/
COPY ./*.py /${REPOSITORY_NAME}/
