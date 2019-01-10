
default: start

start:
	docker run -it --runtime=nvidia -p 8888:8888 --rm thesoenke/dl-fastai \
		jupyter notebook --ip 0.0.0.0 --no-browser --allow-root --NotebookApp.token='' --NotebookApp.password=''

build:
	docker build -t thesoenke/dl-fastai fastai/
