#!/bin/bash

# The installation file supports redhat-based systems

# Run as Root!
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

dnf -y install newt
dnf -y install docker-ce
systemctl start docker.service

cd /bin/
wget -O indexApp.lst https://raw.githubusercontent.com/yusufarbc/DockerVuln/main/app/indexApp.lst
wget -O DockerVuln https://raw.githubusercontent.com/yusufarbc/DockerVuln/main/app/DockerVuln
chmod +x /bin/DockerVuln

echo "all done!"
echo "You can run the program with 'DockerVuln' command"
