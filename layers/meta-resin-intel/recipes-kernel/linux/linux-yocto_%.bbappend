inherit kernel-resin

#
# Support for NVME block devices
#
RESIN_CONFIGS_append_intel-corei7-64 = " nvme"
RESIN_CONFIGS[nvme] = " \
    CONFIG_BLK_DEV_NVME=y \
    "

#
# Support for DLM module
#
RESIN_CONFIGS_append_intel-corei7-64 = " dlm"
RESIN_CONFIGS[dlm] = " \
    CONFIG_DLM=m \
    "

#
# Support for serial console and more than 4 serial ports
#
RESIN_CONFIGS_append_intel-corei7-64 = " serial_8250"
RESIN_CONFIGS[serial_8250] = " \
    CONFIG_SERIAL_8250_CONSOLE=y \
    CONFIG_SERIAL_8250_NR_UARTS=32 \
    CONFIG_SERIAL_8250_RUNTIME_UARTS=32 \
    "

RESIN_CONFIGS_append_intel-corei7-64 = " sierra"
RESIN_CONFIGS[sierra] = " \
     CONFIG_USB_ANNOUNCE_NEW_DEVICES=y \
     CONFIG_USB_NET_CDC_MBIM=m \
     CONFIG_USB_NET_QMI_WWAN=m \
     "
