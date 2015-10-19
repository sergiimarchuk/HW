# HomeWork

## 1.1. Quick start

### Download vagrant environment.

Link: https://www.dropbox.com/s/9fgti8ypn37nh8g/vagrant_env.tar?dl=0

Put file vagrant_env.tar to your home directory.

### Start vagrant environment.

```bash
cd ~
tar xf vagrant_env.tar
vagrant box add appsrv appsrv.box 
vagrant box add monsrv monsrv.box 
cd vagrant-homework/
vagrant up
```

### Open URLs

Application session counter: http://localhost:8080/mon

Application page (sleep 60 seconds): http://localhost:8080/app

Zabbix Web GUI via HTTPS : https://127.0.0.1:4433/zabbix/ 

Zabbix Web GUI via HTTP: http://127.0.0.1:8181/zabbix/

User/password: admin/zabbix

SSH conection available via:

- user vagrant - public key
- password access for user root with password: vagrant

```bash
ssh -i ~/.vagrant.d/id_rsa vagrant@127.0.0.1 -p 3333
ssh -i ~/.vagrant.d/id_rsa vagrant@127.0.0.1 -p 4444
ssh root@127.0.0.1 -p 3333  
ssh root@127.0.0.1 -p 4444  # password: vagrant
```

### Run stress test

```bash
cd ~/vagrant-homework/
bash stress.sh 
```

# 1.2. Vagrant environment port forwarding:

![Schema 1](https://github.com/sergiimarchuk/HomeWork/blob/master/schema1.png "Schema 1")

