# **OCP TOOLS**

## Description

This image was created with the objective of supporting the analysis of network problems in different environments, below is a list of tools that are contemplated in this image.

## Packages

||  List of Packages                              || 
|----------------|---------------|---------------|
| <ul><li>- [x] Bind-tools</li> | <ul><li>- [x] iptraf-ng</li> | <ul><li>- [x] iotop</li> |
| <ul><li>[x] cURL</li> | <ul><li>- [x] iperf3</li> |  <ul><li>- [x] iftop</li> |
   

- [x] Bind-tools
- [x] cURL
- [x] iptraf-ng
- [x] iperf3
- [x] iotop
- [x] iftop
- [x] nload
- [x] mtr
- [x] jq
- [x] netcat-openbsd
- [x] net-tools
- [x] openssh-client
- [x] python3
- [x] sysstat
- [x] tcpdump
- [x] tshark
- [x] strace
- [x] inetutils-telnet
- [x] nmap
- [x] aws-cli
- [x] aws-cli-bash-completion
- [x] vim
- [ ] oc-cli
- [ ] kubectl

## Usage

### Image pull

```bash
   podman pull quay.io/laraujo/tools:ocp-tools-1.1
```

#### Run
```bash
   podman run -it \
       --name ocp-tools \
       --net=host \
       --pid=host \
       --ipc=host \
       --cap-add=SYS_PTRACE \
       quay.io/laraujo/tools:ocp-tools-1.1
```

