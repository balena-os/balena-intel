# Augments upstream linux-firmware with additional and updated images
# from Raspbian:
# https://github.com/RPi-Distro/firmware-nonfree

SRC_URI_append = " \
    git://github.com/RPi-Distro/firmware-nonfree;destsuffix=raspbian-nf;name=raspbian-nf \
"

SRCREV_raspbian-nf = "86e88fbf0345da49555d0ec34c80b4fbae7d0cd3"
SRCREV_FORMAT = "default+raspbian-nf"

PACKAGES =+ "${PN}-rtl8723b-bt"

FILES_${PN}-rtl8723b-bt = " \
    /lib/firmware/rtl_bt/rtl8723b_fw.bin \
    "

PACKAGES =+ "${PN}-ralink-nic"

FILES_${PN}-ralink-nic = " \
    /lib/firmware/rtl_nic/rtl8168g-2.fw \
"

FILES_${PN}-bcm43455 = " \
  ${nonarch_base_libdir}/firmware/brcm/brcmfmac43455-sdio.* \
"

PACKAGES =+ "${PN}-ibt-18-16-1"

FILES_${PN}-ibt-18-16-1  = " \
    ${nonarch_base_libdir}/firmware/intel/ibt-18-16-1.sfi \
    ${nonarch_base_libdir}/firmware/intel/ibt-18-16-1.ddc \
"

do_install_append() {
    install -d ${D}${nonarch_base_libdir}/firmware/brcm/
    install -m 0644 ${WORKDIR}/raspbian-nf/brcm/brcmfmac43455-sdio.txt ${D}${nonarch_base_libdir}/firmware/brcm/
}
