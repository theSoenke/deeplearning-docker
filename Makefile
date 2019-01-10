
default: start-fastai

start-fastai:
	docker run -it --runtime=nvidia -p 8888:8888 \
		-v ${HOME}/code/fastai:/content/fastai \
		--rm thesoenke/dl-setup \
		jupyter notebook --ip 0.0.0.0 --no-browser --allow-root

build-fastai:
	docker build -t thesoenke/dl-setup fastai/
