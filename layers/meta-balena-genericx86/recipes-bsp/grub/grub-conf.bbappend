MACHINE_SPECIFIC_EXTRA_CMDLINE_surface-go = "acpi_enforce_resources=lax "

do_sign() {
    if [ "x${SIGN_API}" = "x" ]; then
        return 0
    fi

    # Sign grub configs
    TO_SIGN=$(mktemp)

    echo "${B}/grub.cfg_external" > "${TO_SIGN}"
    echo "${B}/grub.cfg_internal" >> "${TO_SIGN}"

    for FILE_TO_SIGN in $(cat "${TO_SIGN}")
    do
        REQUEST_FILE=$(mktemp)
        RESPONSE_FILE=$(mktemp)
        echo "{\"key_id\": \"${SIGN_GRUB_KEY_ID}\", \"payload\": \"$(/usr/bin/base64 -w 0 ${FILE_TO_SIGN})\"}" > "${REQUEST_FILE}"
        /usr/bin/curl --fail "${SIGN_API}/gpg/sign" -X POST -H "Content-Type: application/json" -H "X-API-Key: ${SIGN_API_KEY}" -d "@${REQUEST_FILE}" > "${RESPONSE_FILE}"
        /usr/bin/jq -r .signature < "${RESPONSE_FILE}" | /usr/bin/base64 -d > "${FILE_TO_SIGN}.sig"
        rm -f "${REQUEST_FILE}" "${RESPONSE_FILE}"
    done

    rm -f "${TO_SIGN}"
}

do_deploy_append() {
    if [ "x${SIGN_API}" != "x" ]; then
        install -m 644 ${B}/grub.cfg_external.sig ${DEPLOYDIR}
        install -m 644 ${B}/grub.cfg_internal.sig ${DEPLOYDIR}/grub.cfg_internal.sig
    fi
}

addtask sign before do_install after do_compile
