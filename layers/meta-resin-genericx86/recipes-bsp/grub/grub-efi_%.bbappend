FILESEXTRAPATHS_append := ":${THISDIR}/files"

SRC_URI_append = " \
    file://grub.cfg_external \
    file://grub.cfg_internal-dev \
    file://grub.cfg_internal-prod \
    "

do_deploy_append() {
    install -m 644 ${WORKDIR}/grub.cfg_external ${DEPLOYDIR}
    if ${@bb.utils.contains('DISTRO_FEATURES','development-image','true','false',d)}; then
        install -m 644 ${WORKDIR}/grub.cfg_internal-dev ${DEPLOYDIR}/grub.cfg_internal
    else
        install -m 644 ${WORKDIR}/grub.cfg_internal-prod ${DEPLOYDIR}/grub.cfg_internal
    fi
}
