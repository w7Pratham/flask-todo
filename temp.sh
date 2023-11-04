#!/bin/bash

docker rmi flask_docker:v1 && docker stop flskdeployed

docker image build -t flask_docker:v1 . && docker run --name flskdeployed -p  5001:5001 -dt flask_docker:v1