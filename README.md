# tensorflow_docker_setup

# Building the docker image on top of tensorflow1.6-gpu-py3 #

Base image of official TensorFlow 1.6(GPU, Py3) is used. Please visit https://hub.docker.com/r/tensorflow/tensorflow/tags/ for official TensorFlow images.

## Steps to create custom docker image: ##
1. Create a directory and copy Dockerfile. Dockerfile defines what goes on in the environment inside your container.
2. Dockerfile starts with base image, in this case ``` FROM gcr.io/tensorflow/tensorflow:1.6.0-gpu-py3 ``` 

