xhost +local:root
DATA_PATH=~/
docker run \
    --gpus all \
    --privileged \
    -e DISPLAY=${DISPLAY} \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v /etc/udev:/etc/udev \
    -v /etc/udev:/etc/udev \
    -v /dev:/dev \
    -v $DATA_PATH:/ws \
    -v /usr/local/cuda-12.3:/usr/local/cuda-12.3 \
    -v /dev:/dev \
    --network=host --name aloha -it 9ec57750944e


