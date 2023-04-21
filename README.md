# Ubuntu Docker


A basic [Ubuntu:kinetic (20.10)](https://hub.docker.com/layers/library/ubuntu/kinetic/images/sha256-75d11da998393ed4a786917130c205967123f7ca8cddce2889fd9e3a0a69fcdd) docker image with custom installations for personal use.
- [Ubuntu Docker](#Ubuntu-Docker)
- [Features](#Features)
- [Installation](#Installation)
  - [Requirements](#Requirements)
  - [Instructions](#Instructions)

# Features


# Installation
### Requirements
- Docker
- That's all

### Instructions
1. Pull this repo:
   ```bash 
      git init
      git pull https://github.com/seanfahey1/ubuntu-docker.git
2. Build image with docker
    ```bash
   docker build -t ubuntu .
3. Run docker image
    ```bash
   docker run -it --rm -v $(pwd):/home ubuntu bash
4. Exit image
    ```bash
    exit
5. (Optional) Delete image to recover space
    ```bash
    docker rmi ubuntu