FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += " \
    file://SurfaceTouchServicingDescriptorMSHW0102.bin \
    file://SurfaceTouchServicingKernelMSHW0102.bin \
    file://SurfaceTouchServicingKernelMSHW0102.bin.sig \
    file://SurfaceTouchServicingSFTConfigMSHW0102.bin \
    file://SurfaceTouchServicingTouchBlobMSHW0102.bin \
    file://board-2.bin \
    file://board.bin \
    file://config.bin \
    file://firmware-6.bin \
    file://iaPreciseTouchDescriptor.bin \
    file://intel_desc.bin \
    file://ipts_fw_config.bin \
    file://vendor_desc.bin \
    file://vendor_kernel.bin \
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

PACKAGES =+ "${PN}-i915-kbl"
FILES_${PN}-i915-kbl = " \
    ${nonarch_base_libdir}/firmware/i915/kbl_dmc_ver1_01.bin \
    ${nonarch_base_libdir}/firmware/i915/kbl_dmc_ver1_04.bin \
    ${nonarch_base_libdir}/firmware/i915/kbl_guc_ver9_14.bin \
    ${nonarch_base_libdir}/firmware/i915/kbl_guc_ver9_39.bin \
    ${nonarch_base_libdir}/firmware/i915/kbl_huc_ver02_00_1810.bin \
"

PACKAGES =+ "${PN}-ipts-v102"
FILES_${PN}-ipts-v102 = " \
    ${nonarch_base_libdir}/firmware/intel/ipts/* \
"

PACKAGES =+ "${PN}-iwlwifi-3168"
FILES_${PN}-iwlwifi-3168 = " \
    ${nonarch_base_libdir}/firmware/iwlwifi-3168-* \
"

do_install_append() {
    install -d ${D}${nonarch_base_libdir}/firmware/brcm/
    install -m 0644 ${WORKDIR}/raspbian-nf/brcm/brcmfmac43455-sdio.txt ${D}${nonarch_base_libdir}/firmware/brcm/

    install -d ${D}${nonarch_base_libdir}/firmware/ath10k/QCA6174/hw3.0/
    install -m 0644 ${WORKDIR}/board-2.bin ${WORKDIR}/board.bin ${WORKDIR}/firmware-6.bin ${D}${nonarch_base_libdir}/firmware/ath10k/QCA6174/hw3.0/

    install -d ${D}${nonarch_base_libdir}/firmware/intel/ipts/
    install -m 0644 ${WORKDIR}/SurfaceTouchServicingDescriptorMSHW0102.bin \
		    ${WORKDIR}/SurfaceTouchServicingKernelMSHW0102.bin \
		    ${WORKDIR}/SurfaceTouchServicingKernelMSHW0102.bin.sig \
		    ${WORKDIR}/SurfaceTouchServicingSFTConfigMSHW0102.bin \
		    ${WORKDIR}/SurfaceTouchServicingTouchBlobMSHW0102.bin \
		    ${WORKDIR}/config.bin \
		    ${WORKDIR}/iaPreciseTouchDescriptor.bin \
		    ${WORKDIR}/intel_desc.bin \
		    ${WORKDIR}/ipts_fw_config.bin \
		    ${WORKDIR}/vendor_desc.bin \
		    ${WORKDIR}/vendor_kernel.bin \
		    ${D}${nonarch_base_libdir}/firmware/intel/ipts/
}
