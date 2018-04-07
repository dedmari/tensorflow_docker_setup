## start with the Docker 'base Tensorflow1.6-gpu for python3' Debian-based image

FROM gcr.io/tensorflow/tensorflow:1.6.0-gpu-py3


##Install custom libraries

RUN apt-get update && apt-get install -y --no-install-recommends \
	python3-tk

## Copying requirement file in docker filesystem
COPY requirements.txt /tmp
WORKDIR "/tmp"
## install pip related dependencies
RUN pip install --trusted-host pypi.python.org -r requirements.txt

WORKDIR "/"
