#!/bin/bash

# The installation file supports centos-based systems

# Run as Root!
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

yum check-update
yum install -y yum-utils device-mapper-persistent-data lvm2
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum -y install docker
systemctl start docker.service
systemctl enable docker

cd /bin/
wget -O indexApp.lst https://raw.githubusercontent.com/yusufarbc/DockerVuln/main/app/indexApp.lst
wget -O DockerVuln https://raw.githubusercontent.com/yusufarbc/DockerVuln/main/app/DockerVuln
chmod +x /bin/DockerVuln

echo "all done!"
echo "You can run the program with 'DockerVuln' command"

