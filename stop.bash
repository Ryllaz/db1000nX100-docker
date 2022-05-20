#!/bin/bash

container="db1000nx100-container"

docker stop ${container}
docker rm ${container}
