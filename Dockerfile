FROM zabbix/zabbix-web-apache-mysql:ubuntu-latest

RUN apt-get update && apt-get install -y \
dnsutils \
