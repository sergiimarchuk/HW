# 1. Ansible

We configure server and install Zabbix via Ansible.

## 1.1. Install ansible

```bash
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible
```

## 1.2. Register host in /etc/ansible/hosts

```bash
[appsrv]
appsrv ansible_ssh_port=3333 ansible_ssh_host=127.0.0.1 ansible_ssh_private_key_file=~/.vagrant.d/id_rsa
[monsrv]
monsrv ansible_ssh_port=4444 ansible_ssh_host=127.0.0.1 ansible_ssh_private_key_file=~/.vagrant.d/id_rsa
```

## 1.3. Run ansible playbook

```bash
cd ~/HomeWork/
ansible-playbook playbook-appsrv.yml
ansible-playbook playbook-monsrv.yml
ansible-playbook playbook-deployment.yml
```

## 1.4. Reboot environment

```bash
cd ~/vagrant-homework/
vagrant reload
```



