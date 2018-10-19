include resin-image.inc

RESIN_BOOT_PARTITION_FILES_append = " \
	grub.cfg_internal:/EFI/BOOT/grub.cfg \
	grub.cfg_internal:/grub/grub.cfg \
	"
