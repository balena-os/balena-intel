SUMMARY = "Realtek 802.11n WLAN Adapter Linux driver"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://Kconfig;md5=4b85004ff83dd932ff28f7f348fb2a28"

inherit module

SRC_URI = " \
	git://git@github.com/gordboy/rtl8812au-5.9.3.2.git;protocol=https;branch=main \
	file://0001-Use-modules_install-as-wanted-by-yocto.patch \
"

SRCREV = "b95e75064d6aa5b680049a3fe63b2131a3033e3e"
S = "${WORKDIR}/git"

EXTRA_OEMAKE_append = " KSRC=${STAGING_KERNEL_DIR}"
