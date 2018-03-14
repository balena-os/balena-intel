inherit kernel-resin

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += "file://0001-Add-support-for-Quectel-EC20-modem.patch"

#
# EHCI drivers
#
RESIN_CONFIGS_append = " ehci"
RESIN_CONFIGS[ehci] = " \
    CONFIG_USB_EHCI_HCD_PLATFORM=y \
    "

#
# Support for NVME block devices
#
RESIN_CONFIGS_append = " nvme"
RESIN_CONFIGS[nvme] = " \
    CONFIG_BLK_DEV_NVME=y \
    "

#
# Support Intel wrieless LAN adapter
#
RESIN_CONFIGS_append = " iwlwifi"
RESIN_CONFIGS_DEPS[iwlwifi] = " \
    CONFIG_PCI=m \
    CONFIG_MAC80211=m \
    CONFIG_HAS_IOMEM=m \
    "
RESIN_CONFIGS[iwlwifi] = " \
    CONFIG_IWLMVM=m \
    CONFIG_IWLDVM=m \
    CONFIG_IWLWIFI=m \
    "

#
# Support Intel NUC Bluetooth
#
RESIN_CONFIGS_append = " nuc_bluetooth"
RESIN_CONFIGS[nuc_bluetooth] = " \
    CONFIG_BT_HCIUART=m \
    CONFIG_BT_HCIUART_INTEL=y \
    CONFIG_BT_HCIBTUSB=m \
    "

#
# Support for DLM module
#
RESIN_CONFIGS_append = " dlm"
RESIN_CONFIGS[dlm] = " \
    CONFIG_DLM=m \
    "

#
# Support for serial console and more than 4 serial ports
#
RESIN_CONFIGS_append = " serial_8250"
RESIN_CONFIGS[serial_8250] = " \
    CONFIG_SERIAL_8250_CONSOLE=y \
    CONFIG_SERIAL_8250_NR_UARTS=32 \
    CONFIG_SERIAL_8250_RUNTIME_UARTS=32 \
    "

#
# Support Intel(R) 82575/82576 PCI-Express Gigabit Ethernet
#
RESIN_CONFIGS_append = " igb"
RESIN_CONFIGS_DEPS[igb] = " \
    CONFIG_PCI=m \
    "
RESIN_CONFIGS[igb] = " \
    CONFIG_IGB=m \
    "

# Support for RTL8723BE and RTL8821AE based WiFi/BT cards
RESIN_CONFIGS_append = " rtl8723be_rtl8821ae"
RESIN_CONFIGS_DEPS[rtl8723be_rtl8821ae] = " \
        CONFIG_RTL_CARDS=m \
"
RESIN_CONFIGS[rtl8723be_rtl8821ae] = " \
    CONFIG_RTL8723BE=m \
    CONFIG_RTL8821AE=m \
"

# Enable Intel Low Power Subsystem Support
# (for detecting the eMMC on some Atom based Intel SoCs)
RESIN_CONFIGS_append = " lpss"
RESIN_CONFIGS[lpss] = " \
    CONFIG_X86_INTEL_LPSS=y \
"

# Enable vxlan support (requested by customer)
RESIN_CONFIGS_append = " vxlan"
RESIN_CONFIGS[vxlan] = " \
    CONFIG_VXLAN=m \
"

# enable audio over HDMI (requested by customer for the Intel Compute Stick)
RESIN_CONFIGS_append = " hdmi_lpe_audio"
RESIN_CONFIGS[hdmi_lpe_audio] = " \
    CONFIG_HDMI_LPE_AUDIO=m \
"

RESIN_CONFIGS_append = " quectel_ec20"
RESIN_CONFIGS_DEPS[quectel_ec20] = "\
    CONFIG_USB_SERIAL_OPTION=m \
    CONFIG_USB_SERIAL_WWAN=m \
"
RESIN_CONFIGS[quectel_ec20] ="\
    CONFIG_USB_SERIAL_QUALCOMM=m \
"

RESIN_CONFIGS_append = " batman"
RESIN_CONFIGS[batman] = "\
    CONFIG_BATMAN_ADV=m \
    CONFIG_BATMAN_ADV_DAT=y \
    CONFIG_BATMAN_ADV_MCAST=y \
    CONFIG_BATMAN_ADV_DEBUG=y \
"
