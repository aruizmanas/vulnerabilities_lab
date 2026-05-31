# Virtual Machines Environment

This directory contains configurations for various virtual machines using Vagrant.

## Prerequisites

- [Vagrant](https://www.vagrantup.com/downloads)
- [VirtualBox](https://www.virtualbox.org/wiki/Downloads) (or another supported provider)

---

## 1. Debian (Creta)

A lightweight Debian 12 environment with XFCE desktop.

### Usage
Navigate to the `debian` directory to manage this machine:
```bash
cd debian
vagrant up
```

### Graphical Interface & Credentials
The machine starts in headless mode by default. To use the GUI:
1. Run `vagrant up` inside the `debian` folder.
2. Open **VirtualBox** and click **Show** on the "Creta" machine.
3. Log in at the terminal prompt.
4. Start the GUI manually:
   ```bash
   sudo systemctl start lightdm
   ```

- **User:** `admin`
- **Password:** `letmein`

---

## 2. Kali Linux

The official Kali Linux rolling release environment.

### Usage
Navigate to the `kali` directory to manage this machine:
```bash
cd kali
vagrant up
```

- **User:** `kali`
- **Password:** `letmein`

---

## General Vagrant Commands

Run these commands inside the specific machine's directory (e.g., `debian/`):

- **Access SSH:** `vagrant ssh`
- **Check Status:** `vagrant status`
- **Stop VM:** `vagrant halt`
- **Remove VM:** `vagrant destroy` (Deletes the VM disk, keeps the configuration)
- **Reprovision:** `vagrant provision` (Re-runs the installation scripts)

To see all Vagrant environments on your system from anywhere:
```bash
vagrant global-status
```
