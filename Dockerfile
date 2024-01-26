FROM scratch

# FIRMWARE 使用远程的URL地址的.tar.gz包时不会自动解压，因此只能添加本地文件
ADD https://github.com/mslovecc/openwrt-armvirt-v22.03.6/releases/download/2024.01.26-0939/openwrt-armvirt-64-default-rootfs.tar.gz /

EXPOSE 80
USER root
# using exec format so that /sbin/init is proc 1 (see procd docs)
CMD ["/sbin/init"]
