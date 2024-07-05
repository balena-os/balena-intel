IMAGE_ROOTFS_MAXSIZE = "65536"

# The Intel NUC does not have sufficient space in the rootfs
# and also should not be used for migration
PACKAGE_INSTALL:remove:genericx86-64 = "initramfs-module-migrate"

# The generic-x86-x64-ext machine inherits the genericx86-64
# so we need to keep the migrate module for it
PACKAGE_INSTALL:append:genericx86-64-ext = " initramfs-module-migrate "
