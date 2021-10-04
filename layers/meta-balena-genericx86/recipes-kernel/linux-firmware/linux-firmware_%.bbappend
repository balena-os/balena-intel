FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += " \
    file://SurfaceTouchServicingDescriptorMSHW0102.bin \
    file://SurfaceTouchServicingKernelMSHW0102.bin \
    file://SurfaceTouchServicingKernelMSHW0102.bin.sig \
    file://SurfaceTouchServicingSFTConfigMSHW0102.bin \
    file://SurfaceTouchServicingTouchBlobMSHW0102.bin \
    file://config.bin \
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

PACKAGES =+ "${PN}-ibt-20-1-3"
FILES_${PN}-ibt-20-1-3  = " \
    ${nonarch_base_libdir}/firmware/intel/ibt-20-1-3.ddc* \
    ${nonarch_base_libdir}/firmware/intel/ibt-20-1-3.sfi* \
"

PACKAGES =+ "${PN}-ipts-v102"
FILES_${PN}-ipts-v102 = " \
    ${nonarch_base_libdir}/firmware/intel/ipts/* \
"

PACKAGES =+ "${PN}-ipu3-firmware"
FILES_${PN}-ipu3-firmware = " \
    ${nonarch_base_libdir}/firmware/intel/ipu3-fw.bin* \
    ${nonarch_base_libdir}/firmware/intel/irci_irci_ecr-master_20161208_0213_20170112_1500.bin* \
    ${nonarch_base_libdir}/firmware/LICENSE.ipu3_firmware* \
"

do_install_append() {
    install -d ${D}${nonarch_base_libdir}/firmware/brcm/
    install -m 0644 ${WORKDIR}/raspbian-nf/brcm/brcmfmac43455-sdio.txt ${D}${nonarch_base_libdir}/firmware/brcm/

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

IWLWIFI_FW_TOCLEAN += " \
    1000 \
    3160 \
    3168 \
    5000 \
    6000g2a \
    6000g2b \
    6050 \
    9000-pu-b0-jf-b0 \
    9260-th-b0-jf-b0 \
"

IWLWIFI_FW_MIN_API[1000] = "5"
IWLWIFI_FW_MIN_API[3160] = "17"
IWLWIFI_FW_MIN_API[3168] = "29"
IWLWIFI_FW_MIN_API[5000] = "5"
IWLWIFI_FW_MIN_API[6000g2a] = "6"
IWLWIFI_FW_MIN_API[6000g2b] = "6"
IWLWIFI_FW_MIN_API[6050] = "5"
IWLWIFI_FW_MIN_API[8000C] = "36"
IWLWIFI_FW_MIN_API[8265] = "36"
IWLWIFI_FW_MIN_API[9000-pu-b0-jf-b0] = "46"
IWLWIFI_FW_MIN_API[9260-th-b0-jf-b0] = "46"
