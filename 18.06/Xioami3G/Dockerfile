FROM ubuntu:18.04

#MAINTAINER Icekimo august.icekimo@gmail.com
LABEL description="Create Openwrt Build Docker"
#ARG devconf=".config"

RUN apt-get update &&\
    apt-get install -y sudo time git-core subversion build-essential gcc-multilib quilt rsync \
                       libncurses5-dev zlib1g-dev gawk flex gettext wget unzip python vim &&\
    apt-get clean

RUN useradd -m openwrt &&\
    echo 'openwrt ALL=NOPASSWD: ALL' > /etc/sudoers.d/openwrt

USER openwrt
WORKDIR /home/openwrt
ENV HOME="/home/openwrt"

RUN git clone git://git.openwrt.org/openwrt/openwrt.git -b openwrt-18.06 
RUN ~/openwrt/scripts/feeds update -a &&\
 ~/openwrt/scripts/feeds install shadow sudo bash rsync nginx openssh tmux vim\
 git git-gitweb gitolite fossil autossh fwknop fwknopd python3 php7 python screen\
 squid acme clamav ddns-scripts luci luci-app-fwknopd luci-app-ddns luci-app-acme django\
 samba36-server samba36-net luci-app-samba luci-app-wol batman-adv batctl libgnutls libidn2 libssh2

RUN cd /home/openwrt/openwrt && wget https://raw.githubusercontent.com/August-Icekimo/docker-openwrt-buildroot/master/18.06/Xioami3G/XM3G.config -O .config && make download
