RDEPENDS:${PN}:append:surface-go = " \
    linux-firmware-ipu3-firmware \
"

# install aufs support even when BALENA_STORAGE is overlay2
RDEPENDS:${PN}:append:genericx86-64-ext = " \
    aufs-util-auplink \
"
