.PHONY: fastai pytorch

default: pytorch

fastai-course:
	docker build -t thesoenke/dl-fastai fastai/
	docker run -it --runtime=nvidia -p 8888:8888 --rm thesoenke/dl-fastai \
		jupyter notebook --ip 0.0.0.0 --no-browser --allow-root --NotebookApp.token='' --NotebookApp.password=''

pytorch:
	docker build -t thesoenke/dl-pytorch pytorch/
	docker run -it --runtime=nvidia -p 8888:8888 --rm -v ${HOME}/data:/data -v ${HOME}/projects/ml-notebooks:/notebooks thesoenke/dl-pytorch \
		jupyter notebook --ip 0.0.0.0 --no-browser --allow-root --NotebookApp.token='' --NotebookApp.password=''
