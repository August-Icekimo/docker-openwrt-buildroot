FROM ubuntu:18.04

#MAINTAINER Icekimo august.icekimo@gmail.com
LABEL description="Create Openwrt Build Docker"

RUN apt-get update &&\
    apt-get install -y sudo time git-core subversion build-essential gcc-multilib quilt rsync \
                       libncurses5-dev zlib1g-dev gawk flex gettext wget unzip python vim &&\
    apt-get clean

RUN useradd -m openwrt &&\
    echo 'openwrt ALL=NOPASSWD: ALL' > /etc/sudoers.d/openwrt

USER openwrt
WORKDIR /home/openwrt
ENV HOME="/home/openwrt"

# RUN git config --add core.compression 0 && git clone git://git.openwrt.org/openwrt/openwrt.git -b openwrt-18.06
RUN git clone git://git.openwrt.org/openwrt/openwrt.git -b openwrt-18.06
RUN ~/openwrt/scripts/feeds update -a &&\
 ~/openwrt/scripts/feeds install  shadow sudo bash rsync nginx openssh tmux vim\
 git git-gitweb gitolite fossil autossh fwknop fwknopd python3 php7 python screen\
 squid acme clamav ddns-scripts luci luci-app-fwknopd luci-app-ddns django\
 samba36-server samba36-net luci-app-samba luci-app-wol libgnutls libidn2 libssh2
# Special RTL8168 network interface card driver 
RUN cd /tmp && git clone https://github.com/BROBIRD/openwrt-r8168.git && mv /tmp/openwrt-r8168 ~/openwrt/package/kernel
RUN wget https://raw.githubusercontent.com/August-Icekimo/docker-openwrt-buildroot/master/18.06/X86/X86.config -O /home/openwrt/openwrt/.config
RUN cd ~/openwrt && make download
