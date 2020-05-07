FROM zabbix/zabbix-server-mysql:ubuntu-4.4-latest

RUN apt-get update && apt-get install -y \
ssh \
dnsutils \
bc \ 
sudo \
iputils-ping \ 
nmap \ 
traceroute \ 
python-pip
RUN pip install py-radius
