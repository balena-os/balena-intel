FILESEXTRAPATHS_append_intel-corei7-64 := ":${THISDIR}/files"

SRC_URI_append_intel-corei7-64 = " file://grub.cfg"

do_deploy_append_intel-corei7-64() {
    install -m 644 ${WORKDIR}/grub.cfg ${DEPLOYDIR}
}
