#!/bin/bash -el

docker build -t adilforms/the-example-app.nodejs .
docker login --username adilforms --password Rimsha@548
docker push adilforms/the-example-app.nodejs
