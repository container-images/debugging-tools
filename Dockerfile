FROM fedora:25

MAINTAINER "Petr Hracek" <phracek@redhat.com>

RUN dnf install -y --setopt=tsflags=nodocs \
    abrt \
    atomic \
    bash-completion \
    bc \
    bind-utils \
    blktrace \
    btrfs-progs \
    container-selinux \
    crash \
    docker \
    docker-latest \
    docker-v1.10-migrator \
    e2fsprogs \
    ethtool \
    file \
    findutils \
    gcc \
    gdb \
    gdb-gdbserver \
    git \
    glibc-common \
    glibc-utils \
    gomtree \
    hwloc \
    iotop \
    iproute \
    iputils \
    kernel \
    kubernetes \
    kubernetes-master \
    kubernetes-client \
    kubernetes-node \
    less \
    ltrace \
    mailx \
    man-db \
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
    perf \
    procps-ng \
    psmisc \
    python-docker-py \
    rootfiles \
    screen \
    strace \
    sysstat \
    systemd \
    systemtap \
    systemtap-client \
    tar \
    tcpdump \
    vim-enhanced \
    vim-minimal \
    which \
    xfsprogs \
    xorg-x11-xauth && \
    dnf -y clean all

CMD ["/usr/bin/bash"]
