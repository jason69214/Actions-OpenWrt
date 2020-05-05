#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# Modify default IP
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate
sed -i "/CYXluq4wUazHjmCDBCqXF/d" package/lean/default-settings/files/zzz-default-settings
sed -i 's/OpenWrt/AutoBuild $(date "+%Y.%m.%d") @ OpenWrt/g' package/lean/default-settings/files/zzz-default-settings
# git clone https://github.com/sypopo/luci-theme-atmaterial.git package/lean/luci-theme-atmaterial
git clone https://github.com/tzxiaozhen88/luci-app-koolproxyR.git package/lean/luci-app-koolproxyR
# git clone https://github.com/vernesong/OpenClash.git package/lean/luci-app-openclash 
# git clone https://github.com/lisaac/luci-lib-docker.git package/luci-lib-docker
# git clone https://github.com/lisaac/luci-app-dockerman.git package/luci-app-dockerman
git clone https://github.com/fw876/helloworld.git package/lean/luci-app-helloworld
