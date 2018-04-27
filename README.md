# Custom TensorFlow Docker setup

# Building the docker image on top of tensorflow1.6-gpu-py3 #

Base image of official TensorFlow 1.6(GPU, Py3) is used. Please visit https://hub.docker.com/r/tensorflow/tensorflow/tags/ for official TensorFlow images.

## Steps to create custom docker image: ##
1. Create a directory and copy Dockerfile. Dockerfile defines what goes on in the environment inside your container.
2. Dockerfile starts with base image, in this case ``` FROM gcr.io/tensorflow/tensorflow:1.6.0-gpu-py3 ```.
3. Additional dependencies can be included on top of base image e.g. ``` RUN apt-get update && apt-get install -y --no-install-recommends python3-tk ```. ```RUN``` command is used to execute installation. If dependencies are stored in additional file, we have to first copy it (e.g. requirements.txt) to docker container with the help of ```COPY``` command.
4. Likewise ```pip``` or anyother package management system can be used to install dependencies. e.g. ```RUN pip install --trusted-host pypi.python.org -r requirements.txt``` . In this case dependencies are written in requirements.txt file.
5. Before loading the container, other initial settings can be applied e.g. ```WORKDIR /``` changes the current working directory to root.
6. For building docker, using terminal go to directory where Dockerfile is stored. Now run the build command i.e. ```docker build -t friendlyhello .```, this creates a Docker image. This image gets stored in local Docker image registry. 

