inherit kernel-resin

FILESEXTRAPATHS_prepend := "${THISDIR}/files:${THISDIR}/genericx86-64-ext:"

SRC_URI_append_smartcube-kbox-a150 = " \
    file://0001-ovl-fix-regression-caused-by-overlapping-layers-dete.patch \    
    file://defconfig \
"

RESIN_CONFIGS_append = " preempt_rt"
RESIN_CONFIGS[preempt_rt] = " \
    CONFIG_PREEMPT_RT_FULL=y \
"

COMPATIBLE_MACHINE_smartcube-kbox-a150 = "smartcube-kbox-a150"
