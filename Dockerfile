FROM archlinux
MAINTAINER ecpy

# ENV USER=_1000

RUN pacman -Sy --noconfirm archlinux-keyring && pacman -Syyu --noconfirm vim libvirt iproute2 ebtables dnsmasq firewalld qemu openssh

COPY ./qemu.conf /etc/libvirt/

COPY ./libvirt.conf /etc/libvirt/

WORKDIR /root/libvirt

COPY ./start.sh .

# RUN useradd -ms /bin/bash ${USER}

CMD chmod +x ./start.sh && ./start.sh