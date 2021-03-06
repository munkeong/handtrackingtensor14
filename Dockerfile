#FROM nvidia/cuda:10.0-base-ubuntu16.04
#FROM centos:7
#FROM centos/python-36-centos7
#USER root
#MAINTAINER  jeon

FROM python:3.6

RUN mkdir /src
WORKDIR /src

COPY requirements.txt /src/requirements.txt
RUN pip install -r requirements.txt

COPY . /src
RUN pip install .



#RUN sed -i 's/archive.ubuntu.com/mirror.us.leaseweb.net/' /etc/apt/sources.list \
#    && sed -i 's/deb-src/#deb-src/' /etc/apt/sources.list \
#    && apt-get update \
#    && apt-get upgrade -y \
#    && apt-get install -y \
#    build-essential \
#    ca-certificates \
#    gcc \
#    git \
#    libpq-dev \
#    make \
#    pkg-config \
#    python3 \
#    python3-dev \
#    python3-pip \
#    aria2 \
#    && apt-get autoremove -y \
#    && apt-get clean

#RUN mkdir -p /root/detection
#WORKDIR /root/detection
#WORKDIR /opt/app-root/src
#ADD . /root/detection/
#ADD . /opt/app-root/src/


#RUN apt-get update
#RUN apt-get install wget

#RUN pip3 install --upgrade pip
#RUN pip3 install -U virtualenv
#RUN pip3 install zipp==1.0.0
#RUN yum -y install libXrender
#RUN yum -y install libXrender1
#RUN yum -y install libXrender-dev

#RUN pip3 install -r requirements.txt
#RUN apt-get update
#RUN apt-get install -y libsm6 libxext6 libxrender-dev
#RUN pip3 install opencv-python

#RUN apt-get install -y python3.5-tk
#RUN pip3 install pillow
#RUN pip3 install flask

 #echo "TEST----1"
#RUN pip3 install tensorflow-1.14.1-cp36-cp36m-linux_x86_64.whl
#RUN pip3 list
# echo "TEST----2"

#RUN unlink /usr/lib64/libm.so.6
#RUN cp /opt/app-root/src/libm.so.6 /usr/lib64/
EXPOSE 5000

#CMD []
#ENTRYPOINT ["/bin/bash"]
#CMD ["pip", "install tensorflow-1.14.1-cp36-cp36m-linux_x86_64.whl"]

RUN LD_LIBRARY_PATH=$LD_LIBRARY_PATH:./ 
RUN LD_LIBRARY_PATH

#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:./
CMD ["python3", "app.py"]
