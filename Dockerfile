FROM jenkins/jenkins:lts

MAINTAINER Travis Clarke

USER root

RUN OS=$(. /etc/os-release; echo "$ID") && \
    echo $OS && \
    apt-get update && \
    apt-get -y install \
        apt-transport-https \
        ca-certificates \
        curl \
        software-properties-common && \
    curl -fsSL https://download.docker.com/linux/$OS/gpg > /tmp/gkey && \
    apt-key add /tmp/gkey && \
    add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/$OS \
       $(lsb_release -cs) \
       stable" && \
   apt-get update && \
   apt-get -y install docker-ce

USER jenkins
