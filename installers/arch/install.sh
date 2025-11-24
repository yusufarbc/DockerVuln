#!/bin/bash

# The installation file supports Arch Linux based systems

# Run as Root!
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# Update package database
pacman -Sy

# Install Docker, Whiptail (libnewt), and wget
pacman -S --noconfirm docker libnewt wget

# Start Docker service
systemctl start docker.service
# Enable Docker service to start on boot (optional but recommended)
systemctl enable docker.service

cd /bin/
wget -O indexApp.lst https://raw.githubusercontent.com/yusufarbc/DockerVuln/main/src/indexApp.lst
wget -O DockerVuln https://raw.githubusercontent.com/yusufarbc/DockerVuln/main/src/DockerVuln
chmod +x /bin/DockerVuln

echo "all done!"
echo "You can run the program with 'DockerVuln' command"
