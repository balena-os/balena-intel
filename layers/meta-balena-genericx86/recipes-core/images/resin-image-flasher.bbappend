include resin-image.inc

RESIN_BOOT_PARTITION_FILES_append = " \
    grub.cfg_external:/EFI/BOOT/grub.cfg \
    grub.cfg_external.sig:/EFI/BOOT/grub.cfg.sig \
    grub.cfg_external:/grub/grub.cfg \
    grub.cfg_external.sig:/grub/grub.cfg.sig \
    grub.cfg_internal: \
    grub.cfg_internal.sig: \
    "

