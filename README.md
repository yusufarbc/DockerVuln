# DockerVuln
--------------------------------------
DockerVuln is a whiptail project that facilitate to installation and management of vulnerable application docker containers.

## Getting Started
--------------------------------------
When the application runs, you will see a screen like this. You can select the application you want to start. You probably won't have an application installed on first run. So, no containers can be seen here. But, you can select 'add a new container' and install a new one. 

![image](https://user-images.githubusercontent.com/77548038/211136750-f430013b-c02e-4a3a-bcfc-859dedc10527.png)

To exit from menu, you can select cancel by pressing the tab keys.

In the adding container menu, you can see indexed containers names and short descriptions. You can install the container belongs to vulnerable apps you want. 

![image](https://user-images.githubusercontent.com/77548038/211136963-f8970b5c-a2f5-4ff0-a9f6-040adeade147.png)

In the removing container menu, you can see installed containers. You can select the container you want to remove and delete it.

![image](https://user-images.githubusercontent.com/77548038/211137069-64cc7aa2-e872-4bba-8b67-825935a06024.png)

When a container start, you will see a screen like this. You can reach the app with the browser address "http://localhost". 

![image](https://user-images.githubusercontent.com/77548038/211138768-e001ceff-2d94-4338-84d8-2b30e4b6c82f.png)

To stop the container, you can hit the enter and select yes from the incoming yes/no menu.


## Prerequisites
--------------------------------------
DockerVuln uses dockerCLI and Whiptail. So you have to make sure them already installed. For debian-based, redhat-based and centos-based systems, the install.sh file checks all the prerequisites and install missing ones.

## Installation
--------------------------------------
### Debian and Ubuntu
Kali Linux(debian-based) is the preferred operating system. You can install Prerequisites and DockerVuln with the install.sh file. First of all, you need to be root!

```sh
sudo su
wget -O - https://raw.githubusercontent.com/yusufarbc/DockerVuln/main/debian-ubuntu/install.sh | bash;

DockerVuln
```
### RedHat and Fedora
For Redhat-based operating system, you can install Prerequisites and DockerVuln with the install.sh file. First of all, you need to be root!

```sh
sudo su
wget -O - https://raw.githubusercontent.com/yusufarbc/DockerVuln/main/redhat-fedora/install.sh | bash;

DockerVuln
```
### CentOS
For CentOS operating system, you can install Prerequisites and DockerVuln with the install.sh file. First of all, you need to be root!

```sh
sudo su
wget -O - https://raw.githubusercontent.com/yusufarbc/DockerVuln/main/centos/install.sh | bash;

DockerVuln
```

## Issues
--------------------------------------
If you find a bug you can report from github. And also, you can report the apps you want added to indexApp.lst.
