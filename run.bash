#!/bin/bash

cpuArch=$(uname -m)
dockerHost=$(uname)
container="db1000nx100-container"

if     [ "$cpuArch" == "aarch64" ] || [ "$cpuArch" == "arm64" ]; then
    image="ihorlv/db1000nx100-image-arm64v8"
elif   [ "$cpuArch" == "x86_64" ]; then
    image="ihorlv/db1000nx100-image"
else
  echo "No container for your CPU architecture $cpuArch"
  sleep 10
  exit
fi

if ! docker container ls; then
   echo ========================================================================
   echo Docker not running. Please, start Docker Desktop and restart this script
   echo ========================================================================
   sleep 3
   exit
fi

docker container stop ${container}
docker rm             ${container}

docker pull ${image}:latest

if ! cd put-your-ovpn-files-here; then
   echo =========================================
   echo Please, change your directory to root dir of db1000nx100-docker project.
   echo =========================================
   sleep 3
   exit
fi

if [[ ! -f db1000nx100-config-override.txt ]]
then
  cp db1000nx100-config.txt db1000nx100-config-override.txt
fi

docker create --volume "$(pwd)":/media/put-your-ovpn-files-here  --privileged  --interactive  --name ${container}  ${image}
docker container start ${container}
docker exec -itd ${container}  /root/DDOS/x100-suid-run.elf
