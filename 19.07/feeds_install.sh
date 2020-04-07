#!/bin/sh
 # Update source code and config
 ./scripts/feeds update -a &&\
 ./scripts/feeds install shadow sudo bash rsync nginx openssh tmux vim\
 git git-gitweb gitolite autossh python3 php7 python screen kmod-fs-exfat modemmanager\
 isc-dhcp socat acme clamav luci fwknop fwknopd luci-app-fwknopd ddns-scripts luci-app-ddns \
 luci-app-commands luci-app-sqm sqm-scripts jansson squid luci-app-squid luci-mod-admin-full \
 luci-app-wol libpam libssh2 libgnutls libidn2 aria2 ariang-nginx luci-app-aria2 libcap

# 下載設定檔
# wget https://raw.githubusercontent.com/August-Icekimo/docker-openwrt-buildroot/master/19.07/archer-c7-v5.config -O .config && make download

# 下載特殊包
git clone https://github.com/BROBIRD/openwrt-r8168.git ./openwrt/package/kernel/openwrt-r8168

# 編譯指令
make clean
make -j5 # V=s