#!/bin/bash

docker build -t test --platform linux/x86_64 .
docker tag test:latest <自分のAWSアカウントID>.dkr.ecr.ap-northeast-1.amazonaws.com/test-ecr-repo:latest
aws ecr get-login-password --region ap-northeast-1 | docker login --username AWS --password-stdin <自分のAWSアカウントID>.dkr.ecr.ap-northeast-1.amazonaws.com
docker push <自分のAWSアカウントID>.dkr.ecr.ap-northeast-1.amazonaws.com/test-ecr-repo:latest