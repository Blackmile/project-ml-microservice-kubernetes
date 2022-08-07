#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
export dockerpath=uchebest/my-tag:v1.0.0

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy my-tag --image=$dockerpath


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/my-tag-5bfbcb7d96-shlnx --address 0.0.0.0 8080:80