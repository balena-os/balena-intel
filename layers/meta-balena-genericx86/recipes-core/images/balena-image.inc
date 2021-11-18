#
# Genericx86-64
#

IMAGE_FSTYPES_append = " balenaos-img"

# Do not support live USB stick
NOISO = "1"
NOHDD = "1"

# Customize balenaos-img
BALENA_IMAGE_BOOTLOADER = "grub-efi grub"
BALENA_BOOT_PARTITION_FILES = " \
    grub-efi-bootx64.efi:/EFI/BOOT/bootx64.efi \
    grub:/grub/ \
    grub/i386-pc:/grub/i386-pc/ \
    grub/x86_64-efi:/EFI/BOOT/x86_64-efi/ \
    grubenv:/grub/grubenv \
    grubenv:/EFI/BOOT/grubenv \
    grub_extraenv:/grub/grub_extraenv \
    grub_extraenv:/EFI/BOOT/grub_extraenv \
    "

write_mbr() {
    # Write MBR with first stage bootloader
    dd if=${DEPLOY_DIR_IMAGE}/grub/boot.img of=${BALENA_RAW_IMG} conv=notrunc bs=1
    # Write Post-MBR with second stage bootloader
    dd if=${DEPLOY_DIR_IMAGE}/grub/core.img of=${BALENA_RAW_IMG} conv=notrunc bs=1 seek=512
}

IMAGE_POSTPROCESS_COMMAND_append = " write_mbr; "

IMAGE_INSTALL_append = " efibootmgr"
IMAGE_INSTALL_append_genericx86-64-ext = " cryptsetup dosfstools e2fsprogs-mke2fs libtss2-tcti-device lvm2-udevrules tpm2-tools"
