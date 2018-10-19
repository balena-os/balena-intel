#
# Genericx86-64
#

IMAGE_FSTYPES_append = " resinos-img"

# Do not support live USB stick
NOISO = "1"
NOHDD = "1"

# Customize resinos-img
RESIN_IMAGE_BOOTLOADER = "grub-efi grub"
RESIN_BOOT_PARTITION_FILES = " \
    grub-efi-bootx64.efi:/EFI/BOOT/bootx64.efi \
    grub:/grub/ \
    grub/i386-pc:/grub/i386-pc/ \
    grubenv:/grub/grubenv \
    grubenv:/EFI/BOOT/grubenv \
    "

write_mbr() {
    # Write MBR with first stage bootloader
    dd if=${DEPLOY_DIR_IMAGE}/grub/boot.img of=${RESIN_RAW_IMG} conv=notrunc bs=1
    # Write Post-MBR with second stage bootloader
    dd if=${DEPLOY_DIR_IMAGE}/grub/core.img of=${RESIN_RAW_IMG} conv=notrunc bs=1 seek=512
}

IMAGE_POSTPROCESS_COMMAND_append = " write_mbr; "
