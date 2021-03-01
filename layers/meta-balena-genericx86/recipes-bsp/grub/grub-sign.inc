GRUB_BUILDIN += " gcry_sha512 gcry_rsa"

do_configure_append_class-target() {
    if [ "x${SIGN_API}" = "x" ]; then
        return 0
    fi

    # Get public key for mkimage
    RESPONSE_FILE=$(mktemp)
    PUBKEY_FILE="${B}/pubkey.gpg"
    /usr/bin/curl --fail "${SIGN_API}/gpg/key/${SIGN_GRUB_KEY_ID}" > "${RESPONSE_FILE}"
    /usr/bin/jq -r ".key" < "${RESPONSE_FILE}" | gpg --dearmor > "${PUBKEY_FILE}"
    rm -f "${RESPONSE_FILE}"
}

do_sign_class-target() {
    if [ "x${SIGN_API}" = "x" ]
    then
        return 0
    fi

    # Get public key for mkimage
    RESPONSE_FILE=$(mktemp)
    PUBKEY_FILE="${B}/pubkey.gpg"
    /usr/bin/curl --fail "${SIGN_API}/gpg/key/${SIGN_GRUB_KEY_ID}" > "${RESPONSE_FILE}"
    /usr/bin/jq -r ".key" < "${RESPONSE_FILE}" | gpg --dearmor > "${PUBKEY_FILE}"
    rm -f "${RESPONSE_FILE}"

    # Sign grub modules
    TO_SIGN=$(mktemp)
    find "${B}/grub-core/" -name "*.mod" -type f > "${TO_SIGN}"

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

do_sign() {
    :
}

addtask sign before do_install after do_compile
