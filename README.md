# onnx2trt

A sample Jupyter notebook to explain how to export ONNX model to NVIDIA TensorRT engine.

## Target platform

- NVIDIA Jetson

## Prerequisites

- NVIDIA Jetson Developer Kit with JetPack
    - Tested with Jetson Xavier NX Developer Kit with JetPack 4.6

## Installation

1. Clone this repository.
    ```
    git clone https://github.com/MACNICA-CLAVIS-NV/onnx2trt
    ```

1. Build the Docker cotainer image contains the required softwares for this Jupyter notebook.
    ```
    ./scripts/docker_build.sh
    ```

## Usage

1. Run a container from the build image.
    ```
    ./scripts/docker_run.sh
    ```

1. Launch Jupyter Lab with the instruction displyed at the above step.

1. Open the onnx2trt.ipynb notebook from the /onnx2trt path in the Jupyter file browser.

