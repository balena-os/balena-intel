FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += " \
    file://board-2.bin \
    file://board.bin \
    file://firmware-6.bin \
"

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

PACKAGES =+ "${PN}-ath10k-qca6174"

FILES_${PN}-ath10k-qca6174= " \
    ${nonarch_base_libdir}/firmware/ath10k/QCA6174/hw3.0/board-2.bin \
    ${nonarch_base_libdir}/firmware/ath10k/QCA6174/hw3.0/board.bin \
    ${nonarch_base_libdir}/firmware/ath10k/QCA6174/hw3.0/firmware-6.bin \
"

do_install_append() {
    install -d ${D}${nonarch_base_libdir}/firmware/brcm/
    install -m 0644 ${WORKDIR}/raspbian-nf/brcm/brcmfmac43455-sdio.txt ${D}${nonarch_base_libdir}/firmware/brcm/

    install -d ${D}${nonarch_base_libdir}/firmware/ath10k/QCA6174/hw3.0/
    install -m 0644 ${WORKDIR}/board-2.bin ${WORKDIR}/board.bin ${WORKDIR}/firmware-6.bin ${D}${nonarch_base_libdir}/firmware/ath10k/QCA6174/hw3.0/
}
