SUMMARY = "Realtek 802.11n WLAN Adapter Linux driver"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://Kconfig;md5=4b85004ff83dd932ff28f7f348fb2a28"

inherit module

SRC_URI = " \
	git://github.com/gordboy/rtl8812au.git;protocol=https \
	file://0001-Use-modules_install-as-wanted-by-yocto.patch \
"

SRCREV = "edcd447de00568d963a32e47d68180c55ef89fb0"

S = "${WORKDIR}/git"

EXTRA_OEMAKE_append = " KSRC=${STAGING_KERNEL_DIR}"