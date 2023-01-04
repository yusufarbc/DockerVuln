# DockerVuln
--------------------------------------
DockerVuln is a whiptail project that facilitate to installation and management of vulnerable application docker containers.

## Getting Started
--------------------------------------
When the application runs, you will see a screen like this. YYou can select the application you want to start. You probably won't have an application installed on first run. So, no containers can be seen here. But, you can select 'add a new container' and install a new one. 

![image](https://user-images.githubusercontent.com/77548038/210498109-4228ee0f-f880-49d9-983b-1b8727dda3b2.png)
To exit from menu, you can select cancel by pressing the tab keys.

In the adding container menu, you can see indexed containers names and short descriptions. The containers take place indexApp.lst. You can update list to increase options. So, you can basically install the container belongs to vulnerable apps you want.

![image](https://user-images.githubusercontent.com/77548038/210498653-55fd8d49-9c04-4f6d-b7c1-9941301692c0.png)

In the removing container menu, you can see installed containers. You can basically select the container you want to remove and delete it.

![image](https://user-images.githubusercontent.com/77548038/210500043-52d16dad-2d58-4b5d-849d-e96e6d450a5b.png)

When a container start, you will see a screen like this. You can reach the app with the browser address "http://localhost". To stop the container, yyou can hit the enter and select yes from the incoming yes/no menu.

![image](https://user-images.githubusercontent.com/77548038/210500103-0d086b3d-4fc1-4668-9a1f-fbca3f7df388.png)

### Manuel Installation Video Tutorial

https://youtu.be/b08DFdoCQSQ

## Prerequisites
--------------------------------------
DockerVuln uses dockerCLI and Whiptail. So you have to make sure  them already installed. For debian-based sistems, the install.sh file checks all the prerequisites and install missing ones.

## Installation
--------------------------------------
### Debian and Ubuntu
Debian is the preferred operating system. You can install Prerequisites and DockerVuln with the install.sh file.
```sh
wget -O -https://github.com/yusufarbc/DockerVuln.git; ./install.sh

DockerVuln
```
### RedHat and Fedora
No automatic installation support yet. But you can even install Prerequisites and DockerVuln manually.

### CentOS
No automatic installation support yet. But you can even install Prerequisites and DockerVuln manually.

### FreeBSD
No automatic installation support yet. But you can even install Prerequisites and DockerVuln manually.

## ISSUES
--------------------------------------
If you find a bug you can report from github. And also, you can report the apps you want added to indexApp.lst.
