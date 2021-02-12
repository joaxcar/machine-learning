#!/bin/bash

docker run \
        -e JUPYTER_ENABLE_LAB=yes \
        -p 8888:8888 \
        -v /Users/ladmin/skola/kurser/machine-learning/data:/home/jovyan/work \
	-v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY \
        kth-ml:latest

