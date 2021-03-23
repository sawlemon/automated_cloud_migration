#!/bin/bash

aws cloudformation create-stack \
--stack-name myteststack \
--template-body file://infrastructure.json