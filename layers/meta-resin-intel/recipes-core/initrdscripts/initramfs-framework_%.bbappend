FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI_append = " file://labelrootfs"

do_install_append() {
    install -m 0755 ${WORKDIR}/labelrootfs ${D}/init.d/88-labelrootfs
}

PACKAGES_append = " initramfs-module-labelrootfs"

SUMMARY_initramfs-module-labelrootfs = "Discover rootfs based on label"
RDEPENDS_initramfs-module-labelrootfs = "${PN}-base"
FILES_initramfs-module-labelrootfs = "/init.d/88-labelrootfs"
