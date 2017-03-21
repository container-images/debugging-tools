# debugging-tools
A set of debugging tools so I can troubleshoot my running server.

The list of packages available in container is sorted by their relations.

## Debugging packages related to networking
 * bind-utils - Utilities for querying DNS name servers
 * crash - Kernel analysis utility for live systems, netdump, diskdump
 * ethtool - Settings tool for Ethernet NICs
 * iproute -  Advanced IP routing and network device configuration tools
 * iptraf-ng - A console-based network monitoring utility
 * iputils - Network monitoring tools including ping
 * nagios - Host/service/network monitoring program
 * net-tools - Basic networking tools
 * netsniff-ng - Packet sniffing beast
 * netstat-nat - A tool that displays NAT connections
 * netstat-monitor - A command line tool to monitor network connections
 * nmap-ncat - Nmap's Netcat replacement
 * ntop - A network traffic probe similar to the UNIX top command
 * sysstat - Collection of performance monitoring tools for Linux
 * tcpdump - A network traffic monitoring tool
 * vnstat - Console-based network traffic monitor

## Debugging packages related to system
 * btrfs-progs - Userspace programs for btrfs
 * cacti - An rrd based graphing tool
 * conky - A system monitor for X
 * crash - Kernel analysis utility for live systems, netdump, diskdump
 * hwloc - Portable Hardware Locality - portable abstraction of hierarchical
 * lsof - A utility which lists open files on a Linux/UNIX system
 * ostree - Tool for managing bootable, immutable filesystem trees
 * parted - The GNU disk partition manipulation program
 * pciutils - PCI bus related utilities
 * pcp - System-level performance monitoring and performance management
 * xfsprogs - Utilities for managing the XFS filesystem
 * xorg-x11-xauth - X.Org X11 X authority utilities
 * mailx - Enhanced implementation of the mailx command

## Debugging packages related to C/C++

 * blktrace - Utilities for performing block layer IO tracing in the Linux
 * crash - Kernel analysis utility for live systems, netdump, diskdump
 * iotop - Top like utility for I/O
 * lsof - A utility which lists open files on a Linux/UNIX system
 * ltrace - Tracks runtime library calls from dynamically linked executables
 * htop - Interactive process viewer
 * strace - Tracks and displays system calls associated with a running process
 * valgrind - Tool for finding memory management bugs in programs
 * gkrellm - Multiple stacked system monitors in one process

## How to run the container for debugging

For running the container, use command:

```bash
docker run -it --name NAME --privileged --ipc=host --net=host --pid=host -e HOST=/host -e NAME=NAME -e IMAGE=IMAGE -v /run:/run -v /var/log:/var/log -v /etc/machine-id:/etc/machine-id -v /etc/localtime:/etc/localtime -v /:/host debugging-tools
```
