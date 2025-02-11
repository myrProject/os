#!/bin/bash

# Get the absolute path of the current directory
REPO_PATH=$(pwd)

# Run the Docker container with dynamic volume mounting
docker run --rm -it --privileged -v "${REPO_PATH}:/mnt/repo" debian:stable bash -c "apt update && apt install -y make && cd /mnt/repo && bash"
