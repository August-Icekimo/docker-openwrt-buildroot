#!/bin/sh
 # Update source code and config
 ./scripts/feeds update -a &&\
 ./scripts/feeds install shadow sudo bash rsync nginx openssh tmux vim\
 git git-gitweb gitolite fossil autossh fwknop fwknopd python3 php7 python screen\
 isc-dhcp socat squid acme clamav ddns-scripts luci luci-app-fwknopd luci-app-ddns \
 luci-app-commands luci-app-qos qos-scripts luci-app-squid luci-mod-admin-full \
 luci-theme-material luci-app-wol luci-app-upnp  luci-app-diag-core luci-app-hd-idle \
 luci-app-samba  luci-app-wol luci-app-acme acme-dnsapi libpam libssh2 libgnutls libidn2
