## Docker X11 setup

## Run

    docker run -it --runtime=nvidia --rm -v /"/tmp/.X11-unix:/tmp/.X11-unix:rw" -e DISPLAY image

