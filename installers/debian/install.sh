#!/bin/bash
set -e

# The installation file supports debian-based systems

# Run as Root!
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

apt update
apt -y install docker.io whiptail wget
systemctl start docker.service
systemctl enable docker.service

cd /bin/
wget -O indexApp.lst https://raw.githubusercontent.com/yusufarbc/webvuln-runner/main/src/indexApp.lst
wget -O WebVuln-Runner https://raw.githubusercontent.com/yusufarbc/webvuln-runner/main/src/webvuln-runner
chmod +x /bin/WebVuln-Runner

echo "all done!"
echo "You can run the program with 'WebVuln-Runner' command"
