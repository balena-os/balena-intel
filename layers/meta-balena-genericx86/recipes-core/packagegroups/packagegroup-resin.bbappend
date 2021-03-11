RDEPENDS_${PN}_append_surface-go = " \
    linux-firmware-ipu3-firmware \
"

# install aufs support even when BALENA_STORAGE is overlay2
RDEPENDS_${PN}_append_genericx86-64-ext = " \
    aufs-util-auplink \
"
