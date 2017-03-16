include resin-image.inc

IMAGE_DEPENDS_resinos-img_append_intel-corei7-64 = " core-image-minimal-initramfs:do_rootfs"

# Put the initramfs inside the boot partition
RESIN_BOOT_PARTITION_FILES_append_intel-corei7-64 = " \
    core-image-minimal-initramfs-intel-corei7-64.cpio.gz:/initramfs \
    grub.cfg_external:/EFI/BOOT/grub.cfg \
    grub.cfg_internal: \
    "
