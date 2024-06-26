SUMMARY = "Realtek 802.11n WLAN Adapter Linux driver"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://Kconfig;md5=42f39b442650aff3e19aff7af8b6425e"
MODULES_INSTALL_TARGET = "modules"

inherit module

SRC_URI = " \
	git://git@github.com/morrownr/8812au-20210820.git;protocol=https;branch=main \
"

# Latest head as of today, compatible with kernel 5.15
SRCREV = "b350eb84be9808a6748c81711c187e205889e968"
S = "${WORKDIR}/git"

EXTRA_OEMAKE:append = " KSRC=${STAGING_KERNEL_DIR}"
