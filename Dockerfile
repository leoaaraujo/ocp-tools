# DESCRIPTION:  
#    Container with tools to help on analyze and 
#    troubleshooting in network environments
#
# AUTHOR: 
#    Leonardo Araujo <laraujo@redhat.com>
# 
# USAGE:
#
#   podman run -it \
#       --name ocp-tools \
#       --net=host \
#       --pid=host \
#       --ipc=host \
#       --cap-add=SYS_PTRACE \
#       quay.io/laraujo/tools:ocp-tools-1.1
#

FROM alpine:3.16.0
MAINTAINER "Leonardo Araujo <laraujo@redhat.com>"
RUN \
     apk update && apk upgrade && \
     apk add --no-cache \
             ncurses-dev
             unzip
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
             aws-cli \
             aws-cli-bash-completion \
             vim

