#!/usr/bin/env bash

set -eu

source docker_base.sh

sudo docker run \
    -it \
    --rm \
    --net=host \
    --runtime nvidia \
    -v ${PWD}:/onnx2trt \
    ${BASE_IMAGE}
