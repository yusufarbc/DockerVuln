#!/bin/bash

# The installation file supports debian-based systems

# Run as Root!
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

apt update
apt -y install docker.io
systemctl start docker.service

cd /bin/
wget -O indexApp.lst https://raw.githubusercontent.com/yusufarbc/DockerVuln/main/src/indexApp.lst
wget -O DockerVuln https://raw.githubusercontent.com/yusufarbc/DockerVuln/main/src/DockerVuln
chmod +x /bin/DockerVuln

echo "all done!"
echo "You can run the program with 'DockerVuln' command"
