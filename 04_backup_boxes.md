# Backup boxes

Remove file 70-persistent-net.rules on appsrv and monsrv before backup:

```bash
ssh -i ~/.vagrant.d/id_rsa vagrant@127.0.0.1 -p 3333 'sudo rm -f /etc/udev/rules.d/70-persistent-net.rules'
ssh -i ~/.vagrant.d/id_rsa vagrant@127.0.0.1 -p 4444 'sudo rm -f /etc/udev/rules.d/70-persistent-net.rules'
```

Stop environment:

```bash
cd ~/vagrant-homework/
vagrant halt
```

List VirtualBox VMs

```bash
$ vboxmanage list vms
"centos6" {ba7bbf9f-cf45-4872-a2b4-f4a6998e333a}
"vagrant-homework_appsrv_1445242618886_52097" {282d58e1-9894-4862-9699-81f8711c61b4}
"vagrant-homework_monsrv_1445242661704_79538" {6cec7ec4-5ab2-418e-befd-810f21e2fdc7}
```

Package appsrv and monsrv:

```bash
cd ~
vagrant package --output appsrv.box --base vagrant-homework_appsrv_1445242618886_52097
vagrant package --output monsrv.box --base vagrant-homework_monsrv_1445242661704_79538
```

Put all file in one archive:

```bash
cd ~
tar cf vagrant_env.tar .vagrant.d/id_rsa 
tar rf vagrant_env.tar appsrv.box 
tar rf vagrant_env.tar monsrv.box 
tar rf vagrant_env.tar vagrant-homework/
```

Share file vagrant_env.tar via Dropbox. 

Link: https://www.dropbox.com/s/9fgti8ypn37nh8g/vagrant_env.tar?dl=0


