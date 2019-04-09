do_install_append() {
    # don't enable random mac address generation when scanning for WiFi (required by customer on Intel Compute Stick)
    cat >> ${D}${sysconfdir}/NetworkManager/NetworkManager.conf <<EOF

[device]
wifi.scan-rand-mac-address=no
EOF
}
