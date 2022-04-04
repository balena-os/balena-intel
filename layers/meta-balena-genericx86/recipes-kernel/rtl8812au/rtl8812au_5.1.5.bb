SUMMARY = "Realtek 802.11n WLAN Adapter Linux driver"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://Kconfig;md5=4b85004ff83dd932ff28f7f348fb2a28"

inherit module

SRC_URI = " \
	git://git@github.com/gordboy/rtl8812au-5.9.3.2.git;protocol=https;branch=main \
	file://0001-Use-modules_install-as-wanted-by-yocto.patch \
"

# Latest head as of today, compatible with kernel 5.12
SRCREV = "460ad2e6896381551f66f1d3991fed552323c38d"
S = "${WORKDIR}/git"

EXTRA_OEMAKE:append = " KSRC=${STAGING_KERNEL_DIR}"
