#!/bin/bash

docker image build -t flask_docker:v${buildNumber} . && docker run -p 5001:5001 -dt flask_docker:v${buildNumber}