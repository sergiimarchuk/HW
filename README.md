# HomeWork

## 1.1. Quick start

### 1.1.1. Download vagrant environment.

Link: https://www.dropbox.com/s/9fgti8ypn37nh8g/vagrant_env.tar?dl=0

Put file vagrant_env.tar to your home directory.

### 1.1.2. Start vagrant environment.

```bash
cd ~
tar xf vagrant_env.tar
vagrant box add appsrv appsrv.box 
vagrant box add monsrv monsrv.box 
cd vagrant-homework/
vagrant up
```

### 1.1.3. Open URLs

Application session counter:

http://localhost:8080/mon

Application page (sleep 60 seconds):

http://localhost:8080/app

Zabbix Web GUI via HTTPS and HTTP:

https://127.0.0.1:4433/zabbix/ # user/password: admin/zabbix

http://127.0.0.1:8181/zabbix/ # user/password: admin/zabbix

SSH conection available via public key or password access for root:

ssh -i ~/.vagrant.d/id_rsa vagrant@127.0.0.1 -p 3333
ssh -i ~/.vagrant.d/id_rsa vagrant@127.0.0.1 -p 4444
ssh root@127.0.0.1 -p 3333  # password: vagrant
ssh root@127.0.0.1 -p 4444  # password: vagrant

### 1.1.4. Run stress test

```bash
cd ~/vagrant-homework/
bash stress.sh 
```

# 1.2. Vagrant environment port forwarding:

![Schema 1](https://github.com/sergiimarchuk/HomeWork/blob/master/schema1.png "Schema 1")

