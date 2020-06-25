SUMMARY = "Grub configuration and other various files"
LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = "file://${RESIN_COREBASE}/COPYING.Apache-2.0;md5=89aea4e17d99a7cacdbeed46a0096b10"

SRC_URI = " \
    file://grub.cfg_external \
    file://grub.cfg_internal_template \
    file://grubenv \
    "

inherit deploy nopackages

INHIBIT_DEFAULT_DEPS = "1"

do_configure[noexec] = '1'
do_compile() {
    sed -e 's/@@TIMEOUT@@/3/' \
        -e 's/@@KERNEL_CMDLINE@@/rootwait intel_idle.max_cstate=1/' \
        "${WORKDIR}/grub.cfg_internal_template" > "${B}/grub.cfg_internal-dev"

    sed -e 's/@@TIMEOUT@@/3/' \
        -e 's/@@KERNEL_CMDLINE@@/rootwait quiet loglevel=0 splash udev.log-priority=3 vt.global_cursor_default=0 intel_idle.max_cstate=1/' \
        "${WORKDIR}/grub.cfg_internal_template" > "${B}/grub.cfg_internal-prod"
}
do_install[noexec] = '1'
do_deploy() {
    install -m 644 ${WORKDIR}/grub.cfg_external ${DEPLOYDIR}
    if ${@bb.utils.contains('DISTRO_FEATURES','development-image','true','false',d)}; then
        install -m 644 ${B}/grub.cfg_internal-dev ${DEPLOYDIR}/grub.cfg_internal
    else
        install -m 644 ${B}/grub.cfg_internal-prod ${DEPLOYDIR}/grub.cfg_internal
    fi

    install -m 644 ${WORKDIR}/grubenv ${DEPLOYDIR}/grubenv
    touch ${DEPLOYDIR}/grub_extraenv

}

addtask do_deploy before do_package after do_install
