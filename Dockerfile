FROM fedora:25

MAINTAINER "Petr Hracek" <phracek@redhat.com>

LABEL summary="Provides the latest set of packages used for debugging."
LABEL description="The Fedora Debugging Tools Container is a docker-formatted image that includes hundreds of software tools for troubleshooting and investigating a Fedora Host. Designed to run as a privileged container."
LABEL io.k8s.display-name="Fedora Debugging Tools"

RUN dnf install -y --setopt=tsflags=nodocs \
    abrt \
    atomic \
    bash-completion \
    bind-utils \
    blktrace \
    btrfs-progs \
    container-selinux \
    crash \
    docker \
    docker-latest \
    docker-v1.10-migrator \
    ethtool \
    git \
    gomtree \
    hwloc \
    iotop \
    iproute \
    iputils \
    kubernetes \
    kubernetes-master \
    kubernetes-client \
    kubernetes-node \
    ltrace \
    mailx \
    net-tools \
    netsniff-ng \
    nmap-ncat \
    numactl \
    numactl-devel \
    ostree \
    parted \
    passwd \
    pciutils \
    pcp \
    pcp-collector \
    pcp-export-pcp2graphite \
    pcp-export-zabbix-agent \
    python-docker-py \
    rootfiles \
    screen \
    strace \
    sysstat \
    systemtap \
    systemtap-client \
    tcpdump \
    xfsprogs \
    xorg-x11-xauth && \
    dnf -y clean all

CMD ["/usr/bin/bash"]
