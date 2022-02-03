FILESEXTRAPATHS:append := "${THISDIR}/${PN}"

SRC_URI:append:surface-go = " \
			file://surface-go-init-board \
"

RDEPENDS:${PN} += " os-helpers-fs"

# Adds LTE Modem initialization sequence for the Surface Go
# See: https://github.com/jakeday/linux-surface/issues/306#issuecomment-518898603
do_install:append:surface-go() {
    cat ${WORKDIR}/resin-init-board | grep -v "exit 0" > ${D}${bindir}/resin-init-board
    cat ${WORKDIR}/surface-go-init-board >> ${D}${bindir}/resin-init-board
    echo "exit 0"  >> ${D}${bindir}/resin-init-board
}
