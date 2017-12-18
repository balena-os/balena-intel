FILESEXTRAPATHS_append := ":${THISDIR}/files"

HOSTAPP_HOOKS += " \
  99-resin-grub \
  99-flash-grub \
  "

RDEPENDS_${PN} += "util-linux-lsblk"
