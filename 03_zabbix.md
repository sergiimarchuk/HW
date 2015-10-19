# 1. Configure Zabbix Server

Open on you host:

http://127.0.0.1:8181/zabbix

or 

https://127.0.0.1:4433/zabbix

Click Next:

![Zabbix 1](https://github.com/sergiimarchuk/HomeWork/blob/master/images/zabbix_100.png "Zabbix 1")

Click Next:

![Zabbix 1](https://github.com/sergiimarchuk/HomeWork/blob/master/images/zabbix_101.png "Zabbix 1")

Click "Test connection" then Next:

![Zabbix 1](https://github.com/sergiimarchuk/HomeWork/blob/master/images/zabbix_102.png "Zabbix 1")

Click Next:

![Zabbix 1](https://github.com/sergiimarchuk/HomeWork/blob/master/images/zabbix_103.png "Zabbix 1")

Click Next:

![Zabbix 1](https://github.com/sergiimarchuk/HomeWork/blob/master/images/zabbix_104.png "Zabbix 1")

Click Finish:

![Zabbix 1](https://github.com/sergiimarchuk/HomeWork/blob/master/images/zabbix_105.png "Zabbix 1")

## 1.1. Login Zabbix Web GUI

http://127.0.0.1:8080/zabbix

Default username/password is admin/zabbix.

![Zabbix 1](https://github.com/sergiimarchuk/HomeWork/blob/master/images/zabbix_106.png "Zabbix 1")

## Register zabbix client on Zabbix Web GUI.

Configuration > Hosts > Create host:

- Host name: appsrv
- Visible name: appsrv
- Groups add: "Linux servers", "Templates"
- Agent interface: 10.10.10.2
- SNMP interface: 10.10.10.2

Click "Update"

![Zabbix 1](https://github.com/sergiimarchuk/HomeWork/blob/master/images/zabbix_107.png "Zabbix 1")

## Add more templates

Configuration > Hosts > appsrv > Templates > Select:

- Template OS Linux
- Template SNMP Disks

Click "Add" then click "Update"

![Zabbix 1](https://github.com/sergiimarchuk/HomeWork/blob/master/images/zabbix_108.png "Zabbix 1")

## Add application check

Configuration > Hosts > line:appsrv click "Items" > Create item:

- Name: custom.homework
- Key: custom.homework

Click "Add".

![Zabbix 1](https://github.com/sergiimarchuk/HomeWork/blob/master/images/zabbix_109.png "Zabbix 1")

## Add graph for custom.homework check

Configuration > Hosts > line:appsrv click "Graphs" > Create graph:

- Name: custom.homework
- Line:Items > Add and select custom.homework from list.

Click "Add" at the bottom.

![Zabbix 1](https://github.com/sergiimarchuk/HomeWork/blob/master/images/zabbix_110.png "Zabbix 1")

## Check new graphs

Check graphs:
- Monitoring > Graphs > host:appsrv > CPU utilization

![Zabbix 1](https://github.com/sergiimarchuk/HomeWork/blob/master/images/zabbix_202.png "Zabbix 1")

- Monitoring > Graphs > host:appsrv > Memory usage

![Zabbix 1](https://github.com/sergiimarchuk/HomeWork/blob/master/images/zabbix_201.png "Zabbix 1")

- Monitoring > Graphs > host:appsrv > Disk usage (It will appear after next environment reboot)

![Zabbix 1](https://github.com/sergiimarchuk/HomeWork/blob/master/images/zabbix_203.png "Zabbix 1")

- Monitoring > Graphs > host:appsrv > custom.homework

![Zabbix 1](https://github.com/sergiimarchuk/HomeWork/blob/master/images/zabbix_200.png "Zabbix 1")

## Add trigger

Configuration > Hosts > line:appsrv click "Triggers" > Create trigger:

- Name: custom.homework
- Expression: {appsrv:custom.homework.last()}>10
- Severity: High

Click "Add".

![Zabbix 1](https://github.com/sergiimarchuk/HomeWork/blob/master/images/zabbix_111.png "Zabbix 1")

## Run stress test to check trigger

```bash
cd ~/vagrant-homework/
bash stress.sh 
```

![Zabbix 1](https://github.com/sergiimarchuk/HomeWork/blob/master/images/zabbix_204.png "Zabbix 1")



