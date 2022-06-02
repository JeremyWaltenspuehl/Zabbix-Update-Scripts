rpm -Uvh https://repo.zabbix.com/zabbix/6.0/rhel/8/x86_64/zabbix-release-6.0-5.el8.noarch.rpm
dnf clean all
systemctl stop zabbix-proxy
rm -y /var/lib/sqlite/zabbix_proxy.db
dnf update
systemctl start zabbix-proxy
