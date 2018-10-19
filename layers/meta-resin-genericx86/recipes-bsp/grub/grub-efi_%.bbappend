FILESEXTRAPATHS_append := ":${THISDIR}/files"

SRC_URI_append = " \
    file://grub.cfg_external \
    file://grub.cfg_internal_template \
    file://grubenv \
    "

do_compile_append() {
    sed -e 's/@@TIMEOUT@@/3/' \
        -e 's/@@KERNEL_CMDLINE@@/rootwait intel_idle.max_cstate=1/' \
        "${WORKDIR}/grub.cfg_internal_template" > "${WORKDIR}/grub.cfg_internal-dev"

    sed -e 's/@@TIMEOUT@@/3/' \
        -e 's/@@KERNEL_CMDLINE@@/rootwait quiet loglevel=0 splash udev.log-priority=3 vt.global_cursor_default=0 intel_idle.max_cstate=1/' \
        "${WORKDIR}/grub.cfg_internal_template" > "${WORKDIR}/grub.cfg_internal-prod"
}

do_deploy_append() {
    install -m 644 ${WORKDIR}/grub.cfg_external ${DEPLOYDIR}
    if ${@bb.utils.contains('DISTRO_FEATURES','development-image','true','false',d)}; then
        install -m 644 ${WORKDIR}/grub.cfg_internal-dev ${DEPLOYDIR}/grub.cfg_internal
    else
        install -m 644 ${WORKDIR}/grub.cfg_internal-prod ${DEPLOYDIR}/grub.cfg_internal
    fi

    install -m 644 ${WORKDIR}/grubenv ${DEPLOYDIR}/grubenv

}

RDEPENDS_${PN}_class-target_remove = "grub-common"
