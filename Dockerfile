FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
python3 \
rsync \
sshpass 

ENTRYPOINT ["/bin/bash"]

