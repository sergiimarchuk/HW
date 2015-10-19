# 1. Prepare host system

## 1.1. Install Unubtu 14.04 x64 on host system.

Download page: http://www.ubuntu.com/download/desktop

Install it.

## 1.2. Install VirtualBox 5.0.6.

Download page https://www.virtualbox.org/wiki/Linux_Downloads

Install:

```bash
sudo dpkg -i virtualbox-5.0_5.0.6-103037~Ubuntu~trusty_amd64.deb
```

## 1.3. Generating public/private rsa key pair

```bash
ssh-keygen
cp -a .ssh/id_rsa .vagrant.d/
```

## 1.4. Install SSH server

```bash
sudo apt-get install openssh-server
sudo /etc/init.d/ssh restart
```

## 1.5. Install Git

```bash
sudo apt-get install git
```

# 2. Install VM guest

## 2.1. Download deployment files to your home

```bash
git clone https://github.com/sergiimarchuk/HomeWork.git
```

## 2.2. Download CentoOS 6.7 x64 minimal

Download page: https://wiki.centos.org/Download

File: CentOS-6.7-x86_64-minimal.iso

## 2.3. Create new virtual machine
- Name: centos6
- Type: Linux
- Version: Red Hat (64-bit)
- Other option by default.

Start machine and use ISO CentOS-6.7-x86_64-minimal.iso.
- Install options by default.
- Set root password: vagrant

## 2.4. Prepare VM for vagrant

Run virtual box centos6 and login.
Use user: root and password vagrant

IMPORTANT: Insert Guest Additions

Get IP from host system
```bash
ip a | grep "inet " | grep -v '127.0.0.1'
```

For example you got 192.168.1.131

IMPORTANT (reminder): Insert Guest Additions before run config_vm.sh

VirtualBox window > Devices > Insert Guest Additions CD image

Run these commands on guest system (replace nidlar with your username):

```bash
ifup eth0
scp nidlar@192.168.1.131:/home/nidlar/HomeWork/id_rsa.pub ./
scp nidlar@192.168.1.131:/home/nidlar/HomeWork/config_vm.sh ./
bash config_vm.sh
shutdown -h now
```

# 3. Configure Vagrant on host system

## 3.1. Download and install Vagrand

Download page: http://www.vagrantup.com/downloads

Install
```bash
sudo dpkg -i vagrant_1.7.4_x86_64.deb
```

## 3.2. Create vagrant box

Create directory for new vagrant environment and copy files:

```bash
mkdir vagrant-homework
cp HomeWork/Vagrantfile vagrant-homework/
cp HomeWork/HomeWork.java vagrant-homework/
cp HomeWork/run_app.sh vagrant-homework/
cp HomeWork/stress.sh vagrant-homework/
```

Package VM and add vagrant box and add id_rsa file:

```bash
vagrant package --output centos6.box --base centos6
vagrant box add appsrv centos6.box
vagrant box add monsrv centos6.box
cp HomeWork/id_rsa .vagrant.d/
```

Start vagrant environment:

```bash
cd vagrant-homework
vagrant up
```

Test ssh connection:

```bash
ssh -i ~/.vagrant.d/id_rsa vagrant@127.0.0.1 -p 3333
ssh -i ~/.vagrant.d/id_rsa vagrant@127.0.0.1 -p 4444
```
