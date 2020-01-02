#!/bin/bash
docker build -t client ./client
docker build -t server ./server
terraform init
terraform apply