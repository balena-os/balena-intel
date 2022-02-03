include balena-image.inc

BALENA_BOOT_PARTITION_FILES:append = " \
	grub.cfg_internal:/EFI/BOOT/grub.cfg \
	grub.cfg_internal_luks:/EFI/BOOT/grub-luks.cfg \
	grub.cfg_internal:/grub/grub.cfg \
	"

IMAGE_INSTALL:append:genericx86-64-ext =" \
    peak                                  \
    cryptsetup                            \
    lvm2-udevrules                        \
    tpm2-tools                            \
    libtss2-tcti-device                   \
    linux-firmware                        \
"

IMAGE_ROOTFS_SIZE:genericx86-64-ext = "1024000"
