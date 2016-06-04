# On Intel intel-corei7-64, we flash on internal hard disk drive
INTERNAL_DEVICE_KERNEL_intel-corei7-64 = "sda"

# the name of the bootloader config file to be written to internal media
INTERNAL_DEVICE_BOOTLOADER_CONFIG_beaglebone = "grub.cfg_internal"

# the pathname (relative to /boot/) where the internal bootloader config file should reside in
# (currently assuming this is on partition 1 of the internal media)
INTERNAL_DEVICE_BOOTLOADER_CONFIG_PATH_beaglebone = "/EFI/BOOT/grub.cfg"
