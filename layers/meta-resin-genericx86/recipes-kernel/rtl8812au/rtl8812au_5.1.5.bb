SUMMARY = "Realtek 802.11n WLAN Adapter Linux driver"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://Kconfig;md5=4b85004ff83dd932ff28f7f348fb2a28"

inherit module

SRC_URI = " \
	git://github.com/mk-fg/rtl8812AU.git;protocol=https;branch=old-5.1.5 \
	file://0001-Use-modules_install-as-wanted-by-yocto.patch \
"

SRCREV = "2fb359cccd7b1a5b337fbf82efa57e27082acdcd"

S = "${WORKDIR}/git"

EXTRA_OEMAKE_append = " KSRC=${STAGING_KERNEL_DIR}"