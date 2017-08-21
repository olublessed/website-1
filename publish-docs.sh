#!/usr/bin/env bash

set -ex

command -v aws >/dev/null 2>&1 || { pip install --user awscli; export PATH=$PATH:$HOME/.local/bin; }

aws s3 cp index.html s3://cfn-stacks.com/index.html
aws s3 cp docs/index.html s3://cfn-stacks.com/docs/index.html