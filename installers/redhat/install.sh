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
wget -O indexApp.lst https://raw.githubusercontent.com/yusufarbc/WebVuln-Runner/main/src/indexApp.lst
wget -O WebVuln-Runner https://raw.githubusercontent.com/yusufarbc/WebVuln-Runner/main/src/WebVuln-Runner
chmod +x /bin/WebVuln-Runner

echo "all done!"
echo "You can run the program with 'WebVuln-Runner' command"
