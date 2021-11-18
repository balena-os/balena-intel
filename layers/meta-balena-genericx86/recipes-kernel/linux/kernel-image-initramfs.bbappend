do_install_append_genericx86-64-ext () {
    if [ "${SIGN}" != "true" ]; then
        return 0
    fi

    for type in ${KERNEL_IMAGETYPE}; do
        install -m 0644 ${DEPLOY_DIR_IMAGE}/${type}.sig ${D}/boot/${type}.sig
    done
}
