FILESEXTRAPATHS:append := ":${THISDIR}/files"

HOSTAPP_HOOKS += " \
  99-resin-grub \
  999-resin-boot-cleaner \
  "

RDEPENDS:${PN} += " \
  os-helpers-fs \
  util-linux-lsblk \
"
