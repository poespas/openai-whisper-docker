# OpenAI Whisper

[ [Docker Hub](https://hub.docker.com/r/wortel538/openai-whisper) ] [ [Github](https://github.com/poespas/openai-whisper-docker) ]

This repository hosts a Docker image for OpenAI's Whisper, an automatic speech recognition (ASR) system. You can use this image to run Whisper in a Docker container, making it easy to integrate into your projects.

## Usage

To run the OpenAI Whisper Docker container, you can use the following command:

```bash
docker run --rm --name whisper -v ${PWD}:/data wortel538/openai-whisper:latest whisper audio.wav
```

If you want to persist the models to avoid downloading them on each restart, you can mount the /root/.cache/whisper folder. Here's an example command to do that:

```bash
docker run --rm --name whisper -v ${PWD}:/data -v ${PWD}/whisper-cache:/root/.cache/whisper wortel538/openai-whisper:latest audio.wav
```

## Tags

This Docker image uses tags that correspond to the releases of OpenAI Whisper. Each tag corresponds to a specific version of Whisper. You can find the original Whisper releases on the [OpenAI Whisper GitHub repository](https://github.com/openai/whisper). For example, to use version `v20230918` of Whisper, you can specify the tag in the Docker command like this:

```bash
docker run --rm --name whisper -v ${PWD}:/data wortel538/openai-whisper:v20230918 whisper audio.wav
```

## Author

poespas

Email: me@poespas.me