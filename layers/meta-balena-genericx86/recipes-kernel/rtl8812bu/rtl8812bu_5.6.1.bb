SUMMARY = "Realtek RTL8812BU Driver for Linux"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://Kconfig;md5=19ad8a52020550b4b0387225ae48ec9f"

inherit module

SRC_URI = " \
	git://github.com/fastoe/RTL8812BU.git;protocol=https;branch=master; \
	file://0001-Use-modules_install-as-wanted-by-yocto.patch \
	file://0002-Makefile-Fix-yocto-build.patch \
"

# Branch 5.6.1 is recommended for kernel 5.10
# We specify the HEAD revision as of integrating
# this module, so that it's clear which version
# of the driver is used for any particular release.
# Otherwise a jenkins build triggered right after OS testing
# could use a newer revision that has not been actually verified.
SRCREV = "0b0d7057b1039e25b4954b7e1d29b32067ae0db2"
S = "${WORKDIR}/git"

EXTRA_OEMAKE:append = " KSRC=${STAGING_KERNEL_DIR}"
