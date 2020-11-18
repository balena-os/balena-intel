CONNECTIVITY_MODULES =+ " \
	rtl8812au \
"

CONNECTIVITY_MODULES_remove_surface-go = "rtl8812au"

# we need to clean-up rootfs space so let's remove some unused firmware
CONNECTIVITY_FIRMWARES_remove = "linux-firmware-wl18xx"
CONNECTIVITY_FIRMWARES_remove = "linux-firmware-wlcommon"
