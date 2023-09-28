# DESCRIPTION:  
#    Container with tools to help on analyze and 
#    troubleshooting in network environments
#
# AUTHOR: 
#    Leonardo Araujo <laraujo@redhat.com>
# 
# USAGE:
#
#   podman run -it --rm \
#       --name ocp-tools \
#       --net=host \
#       --pid=host \
#       --ipc=host \
#       --cap-add=SYS_PTRACE \
#       quay.io/laraujo/tools:ocp-tools-1.1
#

FROM alpine:latest
LABEL maintainer "Leonardo Araujo <laraujo@redhat.com>"
RUN \
     apk update --no-cache && apk upgrade --no-cache && \
     apk add --no-cache \
             ncurses-dev \
             unzip \
             bash \
             bind-tools \
             curl \
             iptraf-ng \
             iperf3 \
             iotop \
             iftop \
             nload \
             mtr \
             jq \
             nano \
             netcat-openbsd \
             net-tools \
             openssh-client \
             python3 \
             sysstat \
             tcpdump \
             tshark \
             strace \
             inetutils-telnet \
             nmap \
             fio \
             nfs-utils \
             aws-cli \
             aws-cli-bash-completion \
             openssh \
             sshpass \
             lftp \
             vim

RUN \
     wget https://mirror.openshift.com/pub/openshift-v4/aarch64/clients/ocp/latest/openshift-client-linux-amd64.tar.gz && \
     tar -zxvf openshift-client-linux-amd64.tar.gz --directory /usr/local/bin/ --exclude=README.md && \
     chmod +x /usr/local/bin/oc /usr/local/bin/kubectl && \
     rm -rf openshift-client-linux-amd64.tar.gz 

RUN \
    sed -i '/E-Tugra/d' /etc/ca-certificates.conf && update-ca-certificates && rm -rf /usr/share/ca-certificates/mozilla/E-Tugra_* 
