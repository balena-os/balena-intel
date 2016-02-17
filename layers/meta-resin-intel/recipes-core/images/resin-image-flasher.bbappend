include resin-image.inc

# Make sure we have the resin image and the initramfs ready
IMAGE_DEPENDS_resin-sdcard_append_intel-corei7-64 = " core-image-minimal-initramfs:do_rootfs"

# Put the initramfs inside the boot partition
RESIN_BOOT_PARTITION_FILES_append_intel-corei7-64 = " \
    core-image-minimal-initramfs-intel-corei7-64.cpio.gz:/initramfs \
    "
