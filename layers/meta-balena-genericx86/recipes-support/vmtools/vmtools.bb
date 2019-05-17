DESCRIPTION = "VM Tools"
LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = "file://${RESIN_COREBASE}/COPYING.Apache-2.0;md5=89aea4e17d99a7cacdbeed46a0096b10"

DEPENDS = "libmspack glib-2.0 glib-2.0-native libtirpc"

PACKAGES =+ "${PN}-fs"

EXTRA_AUTORECONF = "-i"
EXTRA_OECONF = " --disable-tests \
			--without-pam \
			--without-ssl \
			--without-xml2 \
			--without-x \
			--without-dnet \
			--without-icu"

S = "${WORKDIR}/git/open-vm-tools"

SRC_URI = " \
    git://github.com/vmware/open-vm-tools.git;protocol=https;branch=master \
    "

SRCREV = "stable-10.3.10"

inherit autotools pkgconfig

FILES_${PN} = " \
    /usr \
    /sbin \
    /lib \
    /etc \
"
