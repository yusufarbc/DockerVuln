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

cp -f  app/indexApp.lst /bin/indexApp.lst
cp -f app/DockerVuln /bin/DockerVuln
chmod +x /bin/DockerVuln

echo "all done!"
echo "You can run the program with 'DockerVuln' command"
