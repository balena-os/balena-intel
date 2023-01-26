FILESEXTRAPATHS:prepend := "${THISDIR}/files:${THISDIR}/files/ax211:"

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

SRC_URI:append = " \
    git://github.com/RPi-Distro/firmware-nonfree;destsuffix=raspbian-nf;protocol=https;name=raspbian-nf \
"

# NOTE: These files show be removed once linux-firmware is updated in meta-balena,
# see README
SRC_URI:append = " \
    file://ibt-0040-0041.ddc \
    file://ibt-0040-0041.sfi \
    file://iwlwifi-so-a0-gf-a0-64.ucode \
    file://iwlwifi-so-a0-gf-a0.pnvm \
"

SRCREV_raspbian-nf = "86e88fbf0345da49555d0ec34c80b4fbae7d0cd3"
SRCREV_FORMAT = "default+raspbian-nf"

PACKAGES =+ " \
    ${PN}-ibt-20-1-3 \
    ${PN}-ipts-v102 \
    ${PN}-ibt-40-41 \
    ${PN}-iwlwifi-so-a0 \
    ${PN}-ipu3-firmware \
"
FILES:${PN}-ibt-20-1-3  = " \
    ${nonarch_base_libdir}/firmware/intel/ibt-20-1-3.ddc* \
    ${nonarch_base_libdir}/firmware/intel/ibt-20-1-3.sfi* \
"

FILES:${PN}-ipts-v102 = " \
    ${nonarch_base_libdir}/firmware/intel/ipts/* \
"

FILES:${PN}-ibt-40-41  = " \
    ${nonarch_base_libdir}/firmware/intel/ibt-0040-0041.ddc \
    ${nonarch_base_libdir}/firmware/intel/ibt-0040-0041.sfi \
"

LICENSE:${PN}-ibt-40-41 = "Firmware-ibt_firmware"
RDEPENDS:${PN}-ibt-40-41 = "${PN}-ibt-license"


FILES:${PN}-iwlwifi-so-a0  = " \
    ${nonarch_base_libdir}/firmware/iwlwifi-so-a0-gf-a0-64.ucode \
    ${nonarch_base_libdir}/firmware/iwlwifi-so-a0-gf-a0.pnvm \
"
LICENSE:${PN}-iwlwifi-so-a0 = "Firmware-iwlwifi_firmware"
RDEPENDS:${PN}-iwlwifi-so-a0 = "${PN}-iwlwifi-license"

FILES:${PN}-ipu3-firmware = " \
    ${nonarch_base_libdir}/firmware/intel/ipu3-fw.bin* \
    ${nonarch_base_libdir}/firmware/intel/irci_irci_ecr-master_20161208_0213_20170112_1500.bin* \
    ${nonarch_base_libdir}/firmware/LICENSE.ipu3_firmware* \
"

do_install:append() {
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

    install -m 0644 ${WORKDIR}/ibt-0040-0041.ddc ${D}${nonarch_base_libdir}/firmware/intel/ibt-0040-0041.ddc
    install -m 0644 ${WORKDIR}/ibt-0040-0041.sfi ${D}${nonarch_base_libdir}/firmware/intel/ibt-0040-0041.sfi
    install -m 0644 ${WORKDIR}/iwlwifi-so-a0-gf-a0-64.ucode ${D}${nonarch_base_libdir}/firmware/iwlwifi-so-a0-gf-a0-64.ucode
    install -m 0644 ${WORKDIR}/iwlwifi-so-a0-gf-a0.pnvm ${D}${nonarch_base_libdir}/firmware/iwlwifi-so-a0-gf-a0.pnvm
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
