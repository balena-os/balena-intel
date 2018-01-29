inherit kernel-resin

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
