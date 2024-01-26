FROM scratch

# FIRMWARE 使用远程的URL地址的.tar.gz包时不会自动解压，因此只能添加本地文件
ADD https://downloads.openwrt.org/chaos_calmer/15.05/x86/generic/openwrt-15.05-x86-generic-Generic-rootfs.tar.gz /

EXPOSE 80
USER root
# using exec format so that /sbin/init is proc 1 (see procd docs)
CMD ["/sbin/init"]
