IP=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
RED_CURRENT_PROJECT=$(pwd)
open -a XQuartz
socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\" &
docker run -it  -e DISPLAY=$IP:0 -v /tmp/.X11-unix:/tmp/.X11-unix -v $RED_CURRENT_PROJECT:$1 red

