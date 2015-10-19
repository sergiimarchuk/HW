# 1. Introduction.

Quick start in document:

- README.md

Installation and configuration from scratch in 4 documents:

- [01_vagrant.md](https://github.com/sergiimarchuk/HomeWork/blob/master/01_vagrant.md)
- [02_ansible.md](https://github.com/sergiimarchuk/HomeWork/blob/master/02_ansible.md)
- [03_zabbix.md](https://github.com/sergiimarchuk/HomeWork/blob/master/03_zabbix.md)
- [04_backup_boxes.md](https://github.com/sergiimarchuk/HomeWork/blob/master/04_backup_boxes.md)

Additional files:

- config_vm.sh
- HomeWork.java
- id_rsa
- id_rsa.pub
- playbook-appsrv.yml
- playbook-deployment.yml
- playbook-monsrv.yml
- run_app.sh
- schema1.png
- stress.sh
- Vagrantfile

Directory *images* for document *03_zabbix.md*

# 2. Quick start

## 2.1. Download vagrant environment.

Link: [https://www.dropbox.com/s/9fgti8ypn37nh8g/vagrant_env.tar?dl=0](https://www.dropbox.com/s/9fgti8ypn37nh8g/vagrant_env.tar?dl=0)

Put file **vagrant_env.tar** to your home directory.

## 2.2. Start vagrant environment.

```bash
cd ~
tar xf vagrant_env.tar
vagrant box add appsrv appsrv.box 
vagrant box add monsrv monsrv.box 
cd vagrant-homework/
vagrant up
```

# 3. Open URLs

**Application session counter**

[http://localhost:8080/mon](http://localhost:8080/mon)

**Application page (sleep 60 seconds)**

[http://localhost:8080/app](http://localhost:8080/app)

**Zabbix Web GUI via HTTPS (User/password: admin/zabbix)**

[https://127.0.0.1:4433/zabbix/](https://127.0.0.1:4433/zabbix/)

**Zabbix Web GUI via HTTP (User/password: admin/zabbix)**

[http://127.0.0.1:8181/zabbix/](http://127.0.0.1:8181/zabbix/)

**SSH conection available:**

- user vagrant with public key
- password access for user root with password: vagrant

```bash
ssh -i ~/.vagrant.d/id_rsa vagrant@127.0.0.1 -p 3333
ssh -i ~/.vagrant.d/id_rsa vagrant@127.0.0.1 -p 4444
ssh root@127.0.0.1 -p 3333
ssh root@127.0.0.1 -p 4444
```

# 4. Run stress test

```bash
cd ~/vagrant-homework/
bash stress.sh 
```

# 5. Vagrant environment port forwarding

![Schema 1](https://github.com/sergiimarchuk/HomeWork/blob/master/schema1.png "Schema 1")

