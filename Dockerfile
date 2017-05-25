FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
pyhton3 \
sshpass

ENTRYPOINT ["/bin/bash"]

