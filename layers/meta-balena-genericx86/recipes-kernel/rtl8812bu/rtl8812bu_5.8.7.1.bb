SUMMARY = "Realtek RTL8812BU Driver for Linux"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://Kconfig;md5=19ad8a52020550b4b0387225ae48ec9f"

inherit module

SRC_URI = " \
	git://github.com/cilynx/rtl88x2bu.git;protocol=https;branch=5.8.7.1_35809.20191129_COEX20191120-7777; \
	file://0001-Use-modules_install-as-wanted-by-yocto.patch \
	file://0002-Makefile-Fix-yocto-build.patch \
"

# Branch 5.6.1 is recommended for kernel 5.10
# We specify the HEAD revision as of integrating
# this module, so that it's clear which version
# of the driver is used for any particular release.
# Otherwise a jenkins build triggered right after OS testing
# could use a newer revision that has not been actually verified.
SRCREV = "1751f39dcbc2ab101cb17a09052945613bb9b78c"
S = "${WORKDIR}/git"

EXTRA_OEMAKE:append = " KSRC=${STAGING_KERNEL_DIR}"
