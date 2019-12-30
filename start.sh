#!/bin/sh

virtlogd > /dev/null & \
libvirtd > /dev/null & \
(sleep 1 && [ ! `ip link list | grep -q virbr0` ] && ip link delete virbr0 || true) && \
(sleep 1 && virsh net-destroy default || true ) && \
(sleep 1 && virsh net-start default || true ) && \
virsh create --file ./archlinux_vm.xml

while true; do (sleep 1; echo 'fetching ip';virsh net-dhcp-leases default | grep -E -o '[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+' > .vm-ip); done;
