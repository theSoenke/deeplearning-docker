
.PHONY: build

default: build

start-fastai:
	docker run -it --runtime=nvidia -p 8888:8888 \
		-v /home/soenke/code/fastai:/content/fastai \
		--rm thesoenke/dl-setup \
		jupyter notebook --ip 0.0.0.0 --no-browser --allow-root --NotebookApp.token='' --NotebookApp.password='' --notebook-dir "/content"

build:
	docker build -t thesoenke/dl-setup .
