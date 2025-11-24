#!/bin/bash

# The installation file supports CentOS systems

# Run as Root!
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

yum check-update
yum install -y docker
service docker start
chkconfig docker on

yum install -y newt
yum install -y wget

cd /bin/
wget -O indexApp.lst https://raw.githubusercontent.com/yusufarbc/WebVuln-Runner/main/src/indexApp.lst
wget -O WebVuln-Runner https://raw.githubusercontent.com/yusufarbc/WebVuln-Runner/main/src/WebVuln-Runner
chmod +x /bin/WebVuln-Runner

echo "all done!"
echo "You can run the program with 'WebVuln-Runner' command"
