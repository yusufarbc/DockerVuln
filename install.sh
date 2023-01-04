#!/bin/bash

# The installation file supports debian-based systems

# Run as Root!
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

apt update
apt install docker.io
systemctl start docker.service

cp app/indexApp.lst /bin/indexApp.lst
cp app/DockerVuln /bin/DockerVuln
chmod +x /bin/DockerVuln

echo "all done!"
