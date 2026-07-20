include balena-image.inc

BALENA_BOOT_PARTITION_FILES:append = " \
	grub.cfg_internal:/EFI/BOOT/grub.cfg \
	grub.cfg_internal:/grub/grub.cfg \
	"

IMAGE_INSTALL:append:genericx86-64-ext =" \
    linux-firmware                        \
    linux-firmware-kbl-guc                \
"

IMAGE_ROOTFS_SIZE:genericx86-64-ext = "1024000"

BALENA_BOOT_SIZE:genericx86-64-ext = "40960"
BALENA_STATE_SIZE:genericx86-64-ext = "20480"
IMAGE_ROOTFS_SIZE:genericx86-64 = "327680"
BALENA_BOOT_SIZE:genericx86-64 = "40960"
BALENA_STATE_SIZE:genericx86-64 = "20480"
IMAGE_ROOTFS_SIZE:surface-go = "327680"
BALENA_BOOT_SIZE:surface-go = "40960"
BALENA_STATE_SIZE:surface-go = "20480"
IMAGE_ROOTFS_SIZE:surface-pro-6 = "327680"
BALENA_BOOT_SIZE:surface-pro-6 = "40960"
BALENA_STATE_SIZE:surface-pro-6 = "20480"
