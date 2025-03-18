#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull anil357/simple-python-flask:latest

# Run the Docker image as a container
docker run -d -p 5000:5000 anil357/simple-python-flask:latest
