CONNECTIVITY_FIRMWARES =+ " \
	linux-firmware-ath10k-qca6174 \
	linux-firmware-bcm43455 \
	linux-firmware-ibt-11-5 \
	linux-firmware-ibt-12-16 \
	linux-firmware-ibt-18-16-1 \
	linux-firmware-ibt-hw-37-7 \
	linux-firmware-ibt-hw-37-8 \
	linux-firmware-iwlwifi-3168 \
	linux-firmware-iwlwifi-9000 \
	linux-firmware-pcie8897 \
	linux-firmware-rtl8723 \
	linux-firmware-rtl8821 \
	linux-firmware-rtl8723b-bt \
	linux-firmware-ralink-nic \
	"

CONNECTIVITY_FIRMWARES_append_surface-go = " \
	linux-firmware-i915-kbl \
"

CONNECTIVITY_FIRMWARES_append_surface-pro-6 = " \
	linux-firmware-i915-kbl \
	linux-firmware-ipts-v102 \
"

CONNECTIVITY_FIRMWARES_remove = "linux-firmware-wl12xx"

CONNECTIVITY_MODULES =+ " \
	rtl8812au \
"
