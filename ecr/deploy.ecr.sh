#!/bin/bash

aws cloudformation create-stack \
  --stack-name testStackECR \
  --template-body file://template.ecr.yaml \
  --parameters file://parameter.ecr.json