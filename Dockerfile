FROM zabbix/zabbix-server-mysql:ubuntu-3.2.6

RUN apt-get update && apt-get install -y \
sshpass \
dnsutils
