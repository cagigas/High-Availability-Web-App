#!/usr/bin/env sh
aws cloudformation create-stack --stack-name myNetworkStack --template-body file://network.yml --parameters file://network-parameters.json --region us-west-2  --capabilities CAPABILITY_NAMED_IAM
