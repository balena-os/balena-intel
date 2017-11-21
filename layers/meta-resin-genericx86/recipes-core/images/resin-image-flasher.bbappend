include resin-image.inc

RESIN_BOOT_PARTITION_FILES_append = " \
    grub.cfg_external:/EFI/BOOT/grub.cfg \
    grub.cfg_external:/grub/grub.cfg \
    grub.cfg_internal: \
    "

IMAGE_INSTALL_append = " efibootmgr"

