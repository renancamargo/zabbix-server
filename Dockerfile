FROM zabbix/zabbix-server-mysql:ubuntu-5.0-latest

USER root

RUN set -eux && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install \
            ssh \
            dnsutils \
            bc \
            sudo \
            iputils-ping \
            nmap \
            traceroute \
            python-pip
 && \
       apt-get -y autoremove && \
       rm -rf /var/lib/apt/lists/*
            
RUN pip install py-radius

USER 1997
