#!/bin/sh

docker run -it --rm \
	--env="USER_UID=$(id -u)" \
	--env="USER_GID=$(id -g)" \
	--env="DISPLAY=${DISPLAY}" \
	--volume=/tmp/.X11-unix:/tmp/.X11-unix \
	--volume=/run/user/$(id -u)/pulse:/run/pulse \
	wadoon/msml_tutorial_local:2015.04.20 $@
