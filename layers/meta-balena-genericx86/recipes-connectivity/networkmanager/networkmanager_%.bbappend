FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

# There have been some reported
# issues where connections set in the
# NM conn file don't get activated by default.
# Enhance logging in the areas that might reveal
# root cause
SRC_URI_append=" \
    file://0001-enhanced-logging-on-activation.patch \
"

do_install_append() {
    # don't enable random mac address generation when scanning for WiFi (required by customer on Intel Compute Stick)
    cat >> ${D}${sysconfdir}/NetworkManager/NetworkManager.conf <<EOF

[device]
wifi.scan-rand-mac-address=no
EOF
}
