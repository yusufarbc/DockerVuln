<div align="center">

# WebVuln-Runner

[![Stars](https://img.shields.io/github/stars/yusufarbc/webvuln-runner?style=flat-square)](https://github.com/yusufarbc/webvuln-runner/stargazers)
[![Issues](https://img.shields.io/github/issues/yusufarbc/webvuln-runner?style=flat-square)](https://github.com/yusufarbc/webvuln-runner/issues)
[![Last Commit](https://img.shields.io/github/last-commit/yusufarbc/webvuln-runner?style=flat-square)](https://github.com/yusufarbc/webvuln-runner/commits/main)
[![Top Language](https://img.shields.io/github/languages/top/yusufarbc/webvuln-runner?style=flat-square)](https://github.com/yusufarbc/webvuln-runner)
[![Repo Size](https://img.shields.io/github/repo-size/yusufarbc/webvuln-runner?style=flat-square)](https://github.com/yusufarbc/webvuln-runner)

<strong>EN:</strong> Docker-based TUI & static web dashboard to launch 15+ vulnerable web app labs (OWASP Juice Shop, DVWA, WebGoat, etc.) instantly.<br/>
<strong>TR:</strong> 15+ web güvenlik laboratuvarını (OWASP Juice Shop, DVWA, WebGoat vb.) Docker ile tek komutla başlatan TUI ve web arayüz.

</div>

It provides both a **TUI (Text User Interface)** for terminal usage and a modern **Web Interface** (static dashboard) for browser-based management.

---

## Table of Contents
- [Features](#features)
- [Educational Concepts](#educational-concepts)
- [Quick Start](#quick-start)
- [Web Interface](#web-interface)
- [TUI Interface](#tui-interface)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Supported Applications](#supported-applications)
- [Roadmap](#roadmap)
- [Contributing](#contributing)
- [Disclaimer](#disclaimer)
- [Issues](#issues)

## Features
- **One-Click Labs:** Launch 15+ vulnerable environments immediately.
- **Dual Interface:** Whiptail-based TUI + static HTML5 dashboard.
- **Docker Isolation:** Keeps host clean while experimenting with vulns.
- **Extensible Index:** Easily append new labs via `indexApp.lst`.
- **Lightweight:** No heavy dependencies beyond Docker & Whiptail (newt).
- **Cross Distro Support:** Debian/Ubuntu/Kali, RedHat/Fedora, CentOS, Arch.

## Educational Concepts
WebVuln-Runner helps explore common web security weaknesses (OWASP Top 10, injections, authentication flaws, insecure deserialization, API security) by providing target apps to practice exploitation safely.

![SQL Injection](assets/SQL-image.jpeg)



## Quick Start

```sh
# Become root (required for installer scripts)
sudo su

# Debian / Ubuntu / Kali
wget -O - https://raw.githubusercontent.com/yusufarbc/WebVuln-Runner/main/installers/debian/install.sh | bash;

# Run after install
WebVuln-Runner
```

### Web Interface
Open `index.html` locally or visit [GitHub Pages](https://yusufarbc.github.io/WebVuln-Runner/) for the static dashboard.

### TUI Interface
When you run `WebVuln-Runner` in a terminal you get a menu: select a lab to install/start, remove existing containers, or exit. Navigation uses arrow / tab keys.

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
Requires: `docker` daemon running + `whiptail` (newt). Installer scripts auto-detect and install missing components for supported distros.

## Installation
### Debian / Ubuntu / Kali
Kali Linux (Debian-based) is preferred. Run as root:

```sh
sudo su
wget -O - https://raw.githubusercontent.com/yusufarbc/WebVuln-Runner/main/installers/debian/install.sh | bash;

WebVuln-Runner
```
### RedHat / Fedora
Run as root:

```sh
sudo su
wget -O - https://raw.githubusercontent.com/yusufarbc/WebVuln-Runner/main/installers/redhat/install.sh | bash;

WebVuln-Runner
```
### CentOS
Run as root:

```sh
sudo su
wget -O - https://raw.githubusercontent.com/yusufarbc/WebVuln-Runner/main/installers/centos/install.sh | bash;

WebVuln-Runner
```
### Arch Linux
Run as root:

```sh
sudo su
wget -O - https://raw.githubusercontent.com/yusufarbc/WebVuln-Runner/main/installers/arch/install.sh | bash;

WebVuln-Runner
```

## Supported Applications
Currently indexed (partial list):
- **OWASP Juice Shop**
- **DVWA (Damn Vulnerable Web Application)**
- **OWASP WebGoat**
- **bWAPP**
- **OWASP Mutillidae II**
- **VulnLab**
- **XVWA**
- **VAmPI**
- **DVNA**
- **DVGA**
- **Hackazon**
- **Security Shepherd**
- **OWASP Benchmark**
- **DVWS**
- **DSVPWA**

Add more by editing `src/indexApp.lst` (PRs welcome).

## Roadmap
- Container health/status indicators in dashboard
- Optional docker-compose stack launcher
- Automated update check for lab images
- Multi-port exposure configuration per lab
- Basic metrics (start count, last run timestamp)

## Contributing
Contributions are welcome! Fork the repo and submit a PR.
1. Create a branch: `git checkout -b feature/my-lab`
2. Add lab entry to `src/indexApp.lst` following existing format
3. Test locally via installer script or direct run
4. Open a Pull Request describing changes

## Disclaimer
These applications are intentionally vulnerable. Do not expose them to the public internet or run on production infrastructure. Use isolated networks / lab environments.

## Issues
Found a bug or want a new lab added? Open an issue: https://github.com/yusufarbc/webvuln-runner/issues

---
Enjoy learning and practicing web application security!
