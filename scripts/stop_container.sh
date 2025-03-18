#!/bin/bash

# Get the list of running container IDs
container_ids=$(docker ps -q)

# Check if there are any running containers
if [ -z "$container_ids" ]; then
  echo "No running containers found."
  exit 0
fi

# Stop and remove all running containers
docker rm -f $container_ids

# Verify that all containers have been removed
if [ $? -eq 0 ]; then
  echo "All containers have been removed successfully."
else
  echo "Failed to remove some containers."
  exit 1
fi