include resin-image.inc

RESIN_BOOT_PARTITION_FILES_append_intel-corei7-64 = " \
    grub.cfg_external:/EFI/BOOT/grub.cfg \
    grub.cfg_internal: \
    "
