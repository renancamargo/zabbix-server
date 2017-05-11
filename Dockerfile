FROM zabbix/zabbix-web-apache-mysql:ubuntu-latest

RUN apt-get install -y \ 
host \
