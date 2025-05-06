FROM python:3.10.0

RUN apt-get update && apt-get install -y net-tools ffmpeg curl sudo

RUN mkdir -p /home/app/
COPY . /home/app/

WORKDIR /home/app/
RUN pip3 install -r requirements.txt


