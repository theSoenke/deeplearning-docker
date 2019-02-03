#!/bin/bash
source activate pytorch
jupyter lab --ip 0.0.0.0 --no-browser --allow-root --NotebookApp.token='' --NotebookApp.password='' --NotebookApp.disable_check_xsrf=True
