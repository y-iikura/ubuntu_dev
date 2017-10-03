FROM ubuntu
MAINTAINER Yoshikazu Iikura "iikura@me.com"

# python and relevant tools
RUN apt-get update && apt-get install -y \ 
    build-essential \
    gfortran\
    python \
    python-dev \
    python-pip \
    git

# for gdal and opencv
RUN apt-get install -y libopencv-dev python-opencv 
RUN apt-get install -y gdal-bin python-gdal

# pip upgrade and python packages
Run pip install --upgrade pip && \
    pip install numpy scipy pyproj fiona

