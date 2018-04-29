#!/bin/bash
#step 2. Dokerize nginx by Jenkinsfile
#nginx2docker
docker build -t opswork/nginx:1.14.0-${BUILD_NUMBER} -t opswork/nginx:latest .