FROM python:3.10-slim

WORKDIR /data

RUN apt-get update && apt-get install git ffmpeg -y
RUN pip3 install git+https://github.com/openai/whisper.git
RUN pip3 install --upgrade --no-deps --force-reinstall git+https://github.com/openai/whisper.git
