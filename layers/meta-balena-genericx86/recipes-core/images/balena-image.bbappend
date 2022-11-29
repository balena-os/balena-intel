include balena-image.inc

BALENA_BOOT_PARTITION_FILES:append = " \
	grub.cfg_internal:/EFI/BOOT/grub.cfg \
	grub.cfg_internal:/grub/grub.cfg \
	"

IMAGE_INSTALL:append:genericx86-64-ext =" \
    linux-firmware                        \
    peak                                  \
"

IMAGE_ROOTFS_SIZE:genericx86-64-ext = "1024000"
