FROM zabbix/zabbix-server-mysql:ubuntu-latest

RUN apt-get update && apt-get install -y \
sshpass \
dnsutils
