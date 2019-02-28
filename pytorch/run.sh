#!/bin/bash
source activate pytorch
ldconfig # workaround for https://github.com/NVIDIA/nvidia-docker/issues/854
jupyter lab --ip 0.0.0.0 --no-browser --allow-root --NotebookApp.token='' --NotebookApp.password='' --NotebookApp.disable_check_xsrf=True
