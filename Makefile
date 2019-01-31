.PHONY: fastai-v2 fastai-v3 pytorch

default: pytorch

fastai-v2:
	docker build -t thesoenke/dl-fastai-v2 fastai-v2/
	docker run -it --runtime=nvidia -p 8888:8888 --rm thesoenke/dl-fastai-v2 \
		jupyter notebook --ip 0.0.0.0 --no-browser --allow-root --NotebookApp.token='' --NotebookApp.password=''

fastai-v3:
	docker build -t thesoenke/dl-fastai-v3 fastai-v3/
	docker run -it --runtime=nvidia -p 8888:8888 --shm-size 8G --rm -v ${HOME}/data:/data thesoenke/dl-fastai-v3

pytorch:
	docker build -t thesoenke/dl-pytorch pytorch/
	docker run -it --runtime=nvidia -p 8888:8888 --rm -v ${HOME}/data:/data -v ${HOME}/projects/ml-notebooks:/notebooks thesoenke/dl-pytorch \
		jupyter lab --ip 0.0.0.0 --no-browser --allow-root --NotebookApp.token='' --NotebookApp.password='' --NotebookApp.disable_check_xsrf=True
