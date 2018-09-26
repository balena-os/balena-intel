FILESEXTRAPATHS_append := ":${THISDIR}/files"

HOSTAPP_HOOKS += " \
  99-resin-grub \
  "

RDEPENDS_${PN} += "util-linux-lsblk"
