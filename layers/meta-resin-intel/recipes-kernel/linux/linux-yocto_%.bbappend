inherit kernel-resin

#
# Support for NVME block devices
#
RESIN_CONFIGS_append_intel-corei7-64 = " nvme"
RESIN_CONFIGS[nvme] = " \
    CONFIG_BLK_DEV_NVME=y \
    "
