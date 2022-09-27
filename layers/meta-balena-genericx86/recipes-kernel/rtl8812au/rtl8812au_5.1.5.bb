SUMMARY = "Realtek 802.11n WLAN Adapter Linux driver"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://Kconfig;md5=86b534dc42246c181a17debcd171f2fa"
MODULES_INSTALL_TARGET = "modules"

inherit module

SRC_URI = " \
	git://git@github.com/morrownr/8812au-20210629.git;protocol=https;branch=main \
"

# Latest head as of today, compatible with kernel 5.15
SRCREV = "a8450b030a187b71d6be147d004715e6858e0ef9"
S = "${WORKDIR}/git"

EXTRA_OEMAKE:append = " KSRC=${STAGING_KERNEL_DIR}"
