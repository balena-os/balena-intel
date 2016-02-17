#
# intel intel-corei7-64
#

IMAGE_FSTYPES_append_intel-corei7-64 = " resin-sdcard"

# Do not support live USB stick
NOISO_intel-corei7-64 = "1"
NOHDD_intel-corei7-64 = "1"

# Customize resin-sdcard
RESIN_IMAGE_BOOTLOADER_intel-corei7-64 = "grub-efi"
RESIN_BOOT_PARTITION_FILES_intel-corei7-64 = " \
    bootx64.efi:/EFI/BOOT/ \
    grub.cfg:/EFI/BOOT/ \
    bzImage-intel-corei7-64.bin:/vmlinuz \
    "
