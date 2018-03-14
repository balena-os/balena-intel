PACKAGES =+ "${PN}-rtl8723b-bt"

FILES_${PN}-rtl8723b-bt = " \
    /lib/firmware/rtl_bt/rtl8723b_fw.bin \
    "

PACKAGES =+ "${PN}-ralink-nic"

FILES_${PN}-ralink-nic = " \
    /lib/firmware/rtl_nic/rtl8168g-2.fw \
"
