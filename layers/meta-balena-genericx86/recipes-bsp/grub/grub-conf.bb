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

MACHINE_SPECIFIC_EXTRA_CMDLINE_surface-go = "acpi_enforce_resources=lax "

do_configure[noexec] = '1'
do_compile() {
    sed -e 's/@@TIMEOUT@@/3/' \
        -e 's/@@KERNEL_CMDLINE@@/rootwait intel_idle.max_cstate=1 ${MACHINE_SPECIFIC_EXTRA_CMDLINE}/' \
        "${WORKDIR}/grub.cfg_internal_template" > "${B}/grub.cfg_internal-dev"

    sed -e 's/@@TIMEOUT@@/3/' \
        -e 's/@@KERNEL_CMDLINE@@/rootwait quiet loglevel=0 splash udev.log-priority=3 vt.global_cursor_default=0 intel_idle.max_cstate=1 ${MACHINE_SPECIFIC_EXTRA_CMDLINE}/' \
        "${WORKDIR}/grub.cfg_internal_template" > "${B}/grub.cfg_internal-prod"
}
do_sign() {
    if [ "x${SIGN_API}" = "x" ]; then
        return 0
    fi

    SIGN_GRUB_KEY_ID="66EDD781D72CE409CDE823392244F835254BB920"

    # Sign grub configs
    TO_SIGN=$(mktemp)
    echo "${WORKDIR}/grub.cfg_external" > "${TO_SIGN}"
    echo "${B}/grub.cfg_internal-dev" >> "${TO_SIGN}"
    echo "${B}/grub.cfg_internal-prod" >> "${TO_SIGN}"

    for FILE_TO_SIGN in $(cat "${TO_SIGN}")
    do
        REQUEST_FILE=$(mktemp)
        RESPONSE_FILE=$(mktemp)
        echo "{\"key_id\": \"${SIGN_GRUB_KEY_ID}\", \"payload\": \"$(/usr/bin/base64 -w 0 ${FILE_TO_SIGN})\"}" > "${REQUEST_FILE}"
        /usr/bin/curl --fail "${SIGN_API}/gpg/sign" -X POST -H "Content-Type: application/json" -d "@${REQUEST_FILE}" > "${RESPONSE_FILE}"
        /usr/bin/jq -r .signature < "${RESPONSE_FILE}" | /usr/bin/base64 -d > "${FILE_TO_SIGN}.sig"
        rm -f "${REQUEST_FILE}" "${RESPONSE_FILE}"
    done

    rm -f "${TO_SIGN}"
}
do_install[noexec] = '1'
do_deploy() {
    install -m 644 ${WORKDIR}/grub.cfg_external ${DEPLOYDIR}
    if ${@bb.utils.contains('DISTRO_FEATURES','development-image','true','false',d)}; then
        install -m 644 ${B}/grub.cfg_internal-dev ${DEPLOYDIR}/grub.cfg_internal
    else
        install -m 644 ${B}/grub.cfg_internal-prod ${DEPLOYDIR}/grub.cfg_internal
    fi

    if [ "x${SIGN_API}" != "x" ]; then
        install -m 644 ${WORKDIR}/grub.cfg_external.sig ${DEPLOYDIR}
        if ${@bb.utils.contains('DISTRO_FEATURES','development-image','true','false',d)}; then
            install -m 644 ${B}/grub.cfg_internal-dev.sig ${DEPLOYDIR}/grub.cfg_internal.sig
        else
            install -m 644 ${B}/grub.cfg_internal-prod.sig ${DEPLOYDIR}/grub.cfg_internal.sig
        fi
    fi

    install -m 644 ${WORKDIR}/grubenv ${DEPLOYDIR}/grubenv
    touch ${DEPLOYDIR}/grub_extraenv

}

addtask do_deploy before do_package after do_install
addtask sign before do_install after do_compile
