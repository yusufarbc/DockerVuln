<div align="center">

# WebVuln-Runner

[![Stars](https://img.shields.io/github/stars/yusufarbc/webvuln-runner?style=flat-square)](https://github.com/yusufarbc/webvuln-runner/stargazers)
[![Issues](https://img.shields.io/github/issues/yusufarbc/webvuln-runner?style=flat-square)](https://github.com/yusufarbc/webvuln-runner/issues)
[![Last Commit](https://img.shields.io/github/last-commit/yusufarbc/webvuln-runner?style=flat-square)](https://github.com/yusufarbc/webvuln-runner/commits/main)
[![Top Language](https://img.shields.io/github/languages/top/yusufarbc/webvuln-runner?style=flat-square)](https://github.com/yusufarbc/webvuln-runner)
[![Repo Size](https://img.shields.io/github/repo-size/yusufarbc/webvuln-runner?style=flat-square)](https://github.com/yusufarbc/webvuln-runner)

Docker-based runner providing a TUI and a static web dashboard to launch 15+ vulnerable web app labs (OWASP Juice Shop, DVWA, WebGoat, etc.) in seconds.

</div>

It offers both a fast **terminal TUI** and a modern **static web dashboard** for managing labs.

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
- [License](#license)
- [Issues](#issues)

## Features
- **One-Click Labs:** Spin up 15+ vulnerable environments instantly.
- **Dual Interface:** Whiptail-based TUI plus a static HTML5 dashboard.
- **Host Isolation:** Keeps your host clean while testing vulnerabilities.
- **Extensible Index:** Add new labs by editing `src/indexApp.lst`.
- **Minimal Footprint:** Only Docker and Whiptail (newt) are required.
- **Multi-Distro Support:** Debian/Ubuntu/Kali, RedHat/Fedora, CentOS, Arch.

## Educational Concepts
Use WebVuln-Runner to explore common web security weaknesses (OWASP Top 10, injections, auth flaws, insecure deserialization, API risks) with contained, disposable targets for safe practice.

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
Launching `WebVuln-Runner` presents a menu where you can install & start labs, remove containers, or exit. Use arrow keys to navigate; Tab switches buttons.

![image](https://user-images.githubusercontent.com/77548038/211136750-f430013b-c02e-4a3a-bcfc-859dedc10527.png)

To exit, choose the Cancel button.

In the Add Container menu each indexed lab appears with a short description. Select any entry to pull and start its container.

![image](https://user-images.githubusercontent.com/77548038/211136963-f8970b5c-a2f5-4ff0-a9f6-040adeade147.png)

The Remove Container menu lists installed labs; select one to stop and delete its container.

![image](https://user-images.githubusercontent.com/77548038/211137069-64cc7aa2-e872-4bba-8b67-825935a06024.png)

After a container starts a confirmation screen is shown. Open http://localhost in your browser to access the lab.

![image](https://user-images.githubusercontent.com/77548038/211138768-e001ceff-2d94-4338-84d8-2b30e4b6c82f.png)

Press Enter and confirm "Yes" to stop the running container.


## Prerequisites
Requires a running `docker` daemon and `whiptail` (newt). Installer scripts detect and install missing dependencies on supported distributions.

## Installation
### Debian / Ubuntu / Kali
Example (run as root):

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

Add additional labs by editing `src/indexApp.lst` and submitting a PR.

## Roadmap
- Container health/status indicators in the dashboard
- Optional docker-compose stack launcher
- Automated update checks for lab images
- Multi-port exposure configuration per lab
- Basic usage metrics (start count, last run timestamp)

## Contributing
Contributions are welcome:
1. Create a branch: `git checkout -b feature/my-lab`
2. Add a lab entry to `src/indexApp.lst` following the existing format
3. Test locally (installer or direct run)
4. Open a Pull Request describing the change

## Disclaimer
These applications are intentionally vulnerable. Do not expose them to the public internet or run on production infrastructure. Use isolated networks / lab environments.

## License
Released under the GNU General Public License v3.0 (GPL-3.0). See `LICENSE` for details. Third-party Docker images referenced by this tool maintain their own licenses.

## Issues
Report bugs or request new labs here: https://github.com/yusufarbc/webvuln-runner/issues

---
Enjoy learning and practicing web application security!
