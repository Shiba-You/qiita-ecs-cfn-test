#!/bin/bash

docker build -t test --platform linux/x86_64 .
docker tag test:latest 350559882992.dkr.ecr.ap-northeast-1.amazonaws.com/test-ecr-repo:latest
aws ecr get-login-password --region ap-northeast-1 | docker login --username AWS --password-stdin 350559882992.dkr.ecr.ap-northeast-1.amazonaws.com
docker push 350559882992.dkr.ecr.ap-northeast-1.amazonaws.com/test-ecr-repo:latest