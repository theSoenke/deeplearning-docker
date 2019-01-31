#!/bin/bash
source activate fastai
ln -s /data /notebooks/course-v3/nbs/dl1/data
jupyter notebook --ip 0.0.0.0 --no-browser --allow-root --NotebookApp.token='' --NotebookApp.password=''
