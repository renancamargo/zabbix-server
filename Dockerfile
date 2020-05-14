FROM zabbix/zabbix-server-mysql:ubuntu-5.0-latest

RUN set -eux && \
    apt-get -y update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install \
            ssh \
            dnsutils \
            bc \
            sudo \
            iputils-ping \
            nmap \
            traceroute \
            python-pip
            
RUN pip install py-radius
