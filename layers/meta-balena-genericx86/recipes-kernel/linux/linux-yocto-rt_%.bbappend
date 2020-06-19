inherit kernel-resin

FILESEXTRAPATHS_prepend := "${THISDIR}/files:${THISDIR}/genericx86-64-ext:"

SRC_URI_append_smartcube-kbox-a150 = " \
    file://0001-ovl-fix-regression-caused-by-overlapping-layers-dete.patch \    
    file://defconfig \
"

COMPATIBLE_MACHINE_smartcube-kbox-a150 = "smartcube-kbox-a150"
