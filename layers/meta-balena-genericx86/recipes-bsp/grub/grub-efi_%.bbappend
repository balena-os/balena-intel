DEPENDS_append_class-target = " grub-conf"
RDEPENDS_${PN}_class-target_remove = "grub-common"

do_deploy_append_class-target() {
    install -d ${DEPLOYDIR}/grub/${GRUB_TARGET}-efi
    cp -r ${D}/${libdir}/grub/${GRUB_TARGET}-efi/*.mod ${DEPLOYDIR}/grub/${GRUB_TARGET}-efi
}

do_install_append_class-target() {
    rm -rf ${D}/boot/
}
