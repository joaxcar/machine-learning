#!/bin/bash

docker run \
        -e JUPYTER_ENABLE_LAB=yes \
        -p 8888:8888 \
        -v /Users/ladmin/skola/kurser/machinelearning/data:/home/jovyan/work \
        kth-ml:Dockerfile

