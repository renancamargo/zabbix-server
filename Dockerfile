FROM zabbix/zabbix-server-mysql:ubuntu-5.0-latest

USER root

RUN set -eux && \
    apt-get -y update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y --no-install-recommends install \
            ssh \
            dnsutils \
            bc \
            sudo \
            iputils-ping \
            nmap \
            traceroute \
            python3-pip && \
    apt-get -y autoremove && \
    rm -rf /var/lib/apt/lists/*
            
RUN pip3 install py-radius

USER 1997
