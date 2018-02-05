include resin-image.inc

RESIN_BOOT_PARTITION_FILES_append = " \
    grub.cfg_external:/EFI/BOOT/grub.cfg \
    grub.cfg_external:/grub/grub.cfg \
    grub.cfg_internal: \
    "

IMAGE_INSTALL_append = " efibootmgr"

write_mbr() {
    # Write MBR with first stage bootloader
    dd if=${DEPLOY_DIR_IMAGE}/grub/boot.img of=${RESIN_RAW_IMG} conv=notrunc bs=1
    # Write Post-MBR with second stage bootloader
    dd if=${DEPLOY_DIR_IMAGE}/grub/core.img of=${RESIN_RAW_IMG} conv=notrunc bs=1 seek=512
}

IMAGE_POSTPROCESS_COMMAND_append = " write_mbr; "
