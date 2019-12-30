FROM archlinux
MAINTAINER ecpy

RUN pacman -Syu --noconfirm libvirt

RUN pacman -Syu --noconfirm iproute2

RUN pacman -Syu --noconfirm ebtables dnsmasq firewalld

RUN pacman -Syu --noconfirm qemu

VOLUME [ ".:/root/libvirt" ]

WORKDIR /root/libvirt

COPY ./qemu.conf /etc/libvirt/

COPY ./start.sh .

CMD chmod +x ./start.sh && ./start.sh