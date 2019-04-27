## Docker X11 setup

## Display server

    sudo apt install -y xserver-xorg mesa-utils
    sudo cp xorg.conf /etc/X11/xorg.conf
    sudo /usr/bin/X :0 &
    export DISPLAY=:0

## Run

    docker run -it --runtime=nvidia --rm -v /"/tmp/.X11-unix:/tmp/.X11-unix:rw" -e DISPLAY image

