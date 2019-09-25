#!/usr/bin/env sh
aws cloudformation create-stack --stack-name myServersStack --template-body file://servers.yml --parameters file://servers-parameters.json --region us-west-2
