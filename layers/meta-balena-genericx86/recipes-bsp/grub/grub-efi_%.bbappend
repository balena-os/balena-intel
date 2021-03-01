require grub-sign.inc

do_deploy_append_class-target() {
    if [ "x${SIGN_API}" != "x" ]; then
        find "${B}" -name "*.mod.sig" -exec install -m 0644 {} "${DEPLOYDIR}/grub/${GRUB_TARGET}-efi/" \;
    fi
}

do_mkimage() {
    cd ${B}

    if [ "x${SIGN_API}" != "x" ]; then
        GRUB_PUBKEY_ARG="--pubkey "${B}/pubkey.gpg""
    fi

    # Search for the grub.cfg on the local boot media by using the
    # built in cfg file provided via this recipe
    grub-mkimage -c ../cfg -p ${EFIDIR} -d ./grub-core/ \
           -O ${GRUB_TARGET}-efi -o ./${GRUB_IMAGE_PREFIX}${GRUB_IMAGE} \
           ${GRUB_BUILDIN} ${GRUB_PUBKEY_ARG}
}

do_sign_efi() {
    if [ "x${SIGN_API}" = "x" ]; then
        return 0
    fi

    EFI_APP="${B}/${GRUB_IMAGE_PREFIX}${GRUB_IMAGE}"
    REQUEST_FILE=$(mktemp)
    RESPONSE_FILE=$(mktemp)
    echo "{\"key_id\": \"${SIGN_EFI_KEY_ID}\", \"payload\": \"$(/usr/bin/base64 -w 0 ${EFI_APP})\"}" > "${REQUEST_FILE}"
    /usr/bin/curl --fail "${SIGN_API}/secureboot/efi" -X POST -H "Content-Type: application/json" -H "X-API-Key: ${SIGN_API_KEY}" -d "@${REQUEST_FILE}" > "${RESPONSE_FILE}"
    /usr/bin/jq -r .signed < "${RESPONSE_FILE}" | /usr/bin/base64 -d > "${EFI_APP}.signed"
    rm -f "${REQUEST_FILE}" "${RESPONSE_FILE}"

    mv "${EFI_APP}.signed" "${EFI_APP}"
}

do_sign_efi_class-native() {
    :
}

addtask sign_efi after do_mkimage before do_install
