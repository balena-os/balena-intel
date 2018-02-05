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
    bzImage${KERNEL_INITRAMFS}-genericx86-64.bin:/vmlinuz \
    grub:/grub/ \
    grub/i386-pc:/grub/i386-pc/ \
    "
