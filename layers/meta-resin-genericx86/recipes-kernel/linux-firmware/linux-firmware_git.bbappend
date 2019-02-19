PACKAGES =+ "${PN}-rtl8723b-bt"

FILES_${PN}-rtl8723b-bt = " \
    /lib/firmware/rtl_bt/rtl8723b_fw.bin \
    "

PACKAGES =+ "${PN}-ralink-nic"

FILES_${PN}-ralink-nic = " \
    /lib/firmware/rtl_nic/rtl8168g-2.fw \
"

# remove older firmware in order to decrease the rootfs size
do_install_append() {
    rm -rf ${D}/lib/firmware/iwlwifi-8000C-13.ucode
    rm -rf ${D}/lib/firmware/iwlwifi-8000C-16.ucode
    rm -rf ${D}/lib/firmware/iwlwifi-8000C-21.ucode
    rm -rf ${D}/lib/firmware/iwlwifi-8000C-22.ucode
}
