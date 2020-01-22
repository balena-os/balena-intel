Change log
-----------

# v2.46.0+rev2
## (2020-01-22)

* Remove the usb-modeswitch patch that fixes crashes on 64 bits architectures [Florin Sarbu]

# v2.46.0+rev1
## (2019-12-23)


<details>
<summary> Update meta-balena from v2.45.1 to v2.46.0 [Florin Sarbu] </summary>

> ## meta-balena-2.46.0
> ### (2019-12-23)
> 
> * Update to ModemManager v1.12.2 [Zahari Petkov]
> * Update libmbim to version 1.20.2 [Zahari Petkov]
> * Update libqmi to version 1.24.2 [Zahari Petkov]
> * Update balena-supervisor to v10.6.27 [Cameron Diver]
> * Tweak how the flasher asserts that internal media is valid for being installed balena OS on [Florin Sarbu]
> * Remove networkmanager stale temporary files at startup [Alex Gonzalez]
> * networkmanager: Rework patches to remove fuzzing [Alex Gonzalez]
> * Update openvpn to v2.4.7 [Will Boyce]
> * Enable kernel configs for USB_SERIAL, USB_SERIAL_PL2303 and HFS for all devices [Zubair Lutfullah Kakakhel]
> * image-resin.bbclass: Mark do_populate_lic_deploy with nostamp [Zubair Lutfullah Kakakhel]
> * Namespace the hello-world healthcheck image [Zubair Lutfullah Kakakhel]
> * Update balena-supervisor to v10.6.17 [Cameron Diver]
> * Update balena-supervisor to v10.6.13 [Cameron Diver]
> * Update CODEOWNERS [Zubair Lutfullah Kakakhel]
</details>

# v2.45.1+rev4
## (2019-12-18)

* Tweak how the flasher asserts that internal media is valid for being installed UEFI grub on [Florin Sarbu]

# v2.45.1+rev3
## (2019-12-13)

* Enable the xillybus pcie driver for the genericx86-64 machine [Florin Sarbu]

# v2.45.1+rev2
## (2019-12-05)

* Enable the ixgbe driver for the genericx86-64 machine [Florin Sarbu]

# v2.45.1+rev1
## (2019-11-24)


<details>
<summary> Update meta-balena from v2.45.0 to v2.45.1 [Florin Sarbu] </summary>

> ## meta-balena-2.45.1
> ### (2019-11-21)
> 
> * Fix for a race condition where occasionally the supervisor might not be able to come up during boot. Also can be caused by using io.balena.features.balena-socket and app container restart always policy. Affects meta-balena 2.44.0 and 2.45.0. To be fixed in 2.44.1 and 2.46.0 [Zubair Lutfullah Kakakhel]
> * Rename resin to balena where possible [Pagan Gazzard]
> * Add leading new line for PACKAGE_INSTALL variable [Vicentiu Galanopulo]
> * Set `net.ipv4.ip_local_port_range` to recommended range (49152-65535) [Will Boyce]
> * No user impact, subtle fix in rollback version checks [Zubair Lutfullah Kakakhel]
</details>

# v2.45.0+rev4
## (2019-11-19)

* Update balena-yocto-scripts to v1.5.2 [Florin Sarbu]

# v2.45.0+rev3
## (2019-11-13)

* Update poky to latest warrior branch (b021992106c6b5ba02b825afa7dcc422b135b59b) [Florin Sarbu]

# v2.45.0+rev2
## (2019-11-06)

* Add support for Microsoft Surface Go [Florin Sarbu]

# v2.45.0+rev1
## (2019-11-01)

* Update balena-yocto-scripts to v1.4.0 [Florin Sarbu]

<details>
<summary> Update meta-balena from v2.44.0 to v2.45.0 [Florin Sarbu] </summary>

> ## meta-balena-2.45.0
> ### (2019-10-30)
> 
> * Increase persistent journal size to 32M [Will Boyce]
> * Move persistent logs from state to data partition [Will Boyce]
> * Add wpa-supplicant recipe and update to v2.9 [Will Boyce]
> * Improve robustness by making variou services restart if they stop for some reason [Zubair Lutfullah Kakakhel]
> * Build net/dummy as module [Alexandru Costache]
</details>

# v2.44.0+rev1
## (2019-10-03)


<details>
<summary> Update meta-balena from v2.43.0 to v2.44.0 [Florin Sarbu] </summary>

> ## meta-balena-2.44.0
> ### (2019-10-03)
> 
> * Make uboot dev images autoboot delay build time configurable. Default is no delay [Zubair Lutfullah Kakakhel]
> * Reduce systemd logging level from info to notice [Zubair Lutfullah Kakakhel]
> * resin-supervisor: Expose container ID via env variable [Roman Mazur]
> * kernel-devsrc: Copy vdso.lds.S file in source archive if available [Sebastian Panceac]
> * Disable PasswordAuthentication in sshd in production images as an extra precautionary measure. [Zubair Lutfullah Kakakhel]
> * Update balena-engine to 18.9.10 [Robert Günzler]
> * hostapp-update-hooks: Filter out automount for inactive sysroot [Alexandru Costache]
> * Add support for hooks 2.0 enabling finer granularity during HostOS updates. [Zubair Lutfullah Kakakhel]
> * Update balena-supervisor to v10.3.7 [Cameron Diver]
> * Add support for balena cloud SSH public keys [Andrei Gherzan]
> * Map any user to root using libnss-ato [Andrei Gherzan]
> * Add option to disable kernel headers from being built. [Zubair Lutfullah Kakakhel]
</details>

# v2.43.0+rev2
## (2019-09-30)

* Update balena-yocto-scripts to v1.3.8 [Zubair Lutfullah Kakakhel]

# v2.43.0+rev1
## (2019-09-26)

* Switch to kernel version 5.2.10 for the genericx86-64 machine [Florin Sarbu]

<details>
<summary> Update meta-balena from v2.41.1 to v2.43.0 [Florin Sarbu] </summary>

> ## meta-balena-2.43.0
> ### (2019-09-13)
> 
> * Update NetworkManager to 1.20.2 [Andrei Gherzan]
> * Update ModemManager to 1.10.6 [Andrei Gherzan]

> ## meta-balena-2.42.0
> ### (2019-09-13)
> 
> * A small fix in initramfs when /dev/console is invalid due to whatever reason [Zubair Lutfullah Kakakhel]
> * Add automated testing for external kernel module header tarballs [Zubair Lutfullah Kakakhel]
> * Make sure correct utsrelease.h is packaged [Zubair Lutfullah Kakakhel]
> * Fix a bug where application containers with new systemd versions were failing to start in cases. Switch to systemd cgroup driver in balenaEngine [Zubair Lutfullah Kakakhel]
</details>

# v2.41.1+rev4
## (2019-09-24)

* Enable HFS drives support [Florin Sarbu]

# v2.41.1+rev3
## (2019-09-20)

* Pass partitions UUID in cmdline when available [Andrei Gherzan]

# v2.41.1+rev2
## (2019-09-16)

* Update balena-yocto-scripts to v1.3.7 [Zubair Lutfullah Kakakhel]

# v2.41.1+rev1
## (2019-09-04)


<details>
<summary> Update meta-balena from v2.41.0 to v2.41.1 [Florin Sarbu] </summary>

> ## meta-balena-2.41.1
> ### (2019-09-03)
> 
> * Update ModemManager to version 1.10.4 [Florin Sarbu]
> * Fix for some innocous systemd tmpfile warnings /var/run -> /run ones [Zubair Lutfullah Kakakhel]
> * Fix for rollbacks where the inactive partition mount was unavailable when altboot triggered [Zubair Lutfullah Kakakhel]
> * kernel-resin: Enable FTDI USB-serial convertors driver [Sebastian Panceac]
</details>

# v2.41.0+rev3
## (2019-08-30)

* Enable I2C support on kernel 5.x for Intel Atom Cherry Trail based SoCs [Florin Sarbu]

# v2.41.0+rev2
## (2019-08-26)

* Only mount efivarfs in flasher if it's not already mounted [Florin Sarbu]

# v2.41.0+rev1
## (2019-08-26)


<details>
<summary> Update meta-balena from v2.40.0 to v2.41.0 [Florin Sarbu] </summary>

> ## meta-balena-2.41.0
> ### (2019-08-22)
> 
> * Fix a hang in initramfs for warrior production images [Zubair Lutfullah Kakakhel]
> * Update balena-engine to 18.09.8 [Robert Günzler]
> * Avoid overlayfs mounts in poky's volatile-binds [Andrei Gherzan]
</details>

# v2.40.0+rev1
## (2019-08-19)

* iwlwifi: bump the API version to 46 for 9000 and 22000 [Florin Sarbu]
* Update poky submodule to version warrior-21.0.1 [Florin Sarbu]

<details>
<summary> Update meta-balena from v2.39.0 to v2.40.0 [Florin Sarbu] </summary>

> ## meta-balena-2.40.0
> ### (2019-08-14)
> 
> * Update balena-supervisor to v10.2.2 [Cameron Diver]
> * Workaround for a cornercase bug in PersistentLogging where journalctl filled the state partition. Vacuum the journal on boot. [Zubair Lutfullah Kakakhel]
</details>

# v2.39.0+rev3
## (2019-08-08)

* Backport iwlwifi patches for multicast frames handling [Florin Sarbu]

# v2.39.0+rev2
## (2019-08-02)

* Enable rollback-altboot [Zubair Lutfullah Kakakhel]

# v2.39.0+rev1
## (2019-07-31)


<details>
<summary> Update meta-balena from v2.38.3 to v2.39.0 [Florin Sarbu] </summary>

> ## meta-balena-2.39.0
> ### (2019-07-31)
> 
> * usb-modeswitch-data: Switch Huawei E3372 12d1:1f01 to mbim mode [Alexandru Costache]
> * Fix rollback altboots to prevent good reboots by supervisor triggering rollback. [Zubair Lutfullah Kakakhel]
> * Devices using u-boot. Remove any BOOTDELAY for production images. Add a 2 seconds delay for development images [Zubair Lutfullah Kakakhel]
> * Devices using u-boot. Enable CONFIG_CMD_SETEXPR for all devices. Required for rollbacks to work [Zubair Lutfullah Kakakhel]
> * Devices using u-boot. Enable rollback-altboot by handling bootcount via meta-balena. [Zubair Lutfullah Kakakhel]
> * Production Devices using u-boot. Enable CONFIG_RESET_TO_RETRY to reset a device in case it drops into a u-boot shell [Zubair Lutfullah Kakakhel]
> * Remove confusing networkmanager https connectivity warning [Zubair Lutfullah Kakakhel]
> * Increase fs.inotify.max_user_instances to 512 [Zubair Lutfullah Kakakhel]
> * Update balena-supervisor to v10.0.3 [Cameron Diver]
> * Fix balena hello-world healthcheck [Zubair Lutfullah Kakakhel]
> * Add nf_table kernel modules [Zubair Lutfullah Kakakhel]
> * hostapp-update-hooks: Use correct source for inactive sysroot [Alexandru Costache]
> * Add extra healthcheck to balena service. It will spin up a hello-world container as well [Zubair Lutfullah Kakakhel]
> * Update balena-supervisor to v9.18.8 [Cameron Diver]
> * image-resin.bbclass: fixed a typo [Kyle Harding]
> * kernel-resin: Add support for CH340 family of usb-serial adapters [Sebastian Panceac]
> * resin-proxy-config: add missing reserved ip ranges to default noproxy [Will Boyce]
> * Reduce data partition size from 1G to 192M [Zubair Lutfullah Kakakhel]
</details>

# v2.38.3+rev6
## (2019-07-31)

* Enable USB Winchiphead CH341 Single Port Serial Driver [Florin Sarbu]

# v2.38.3+rev5
## (2019-07-18)

* Enable PINCTRL_BAYTRAIL support in the kernel [Florin Sarbu]

# v2.38.3+rev4
## (2019-07-15)

* Update the balena-yocto-scripts submodule to v1.3.5 [Florin Sarbu]

# v2.38.3+rev3
## (2019-07-15)

* Update the balena-yocto-scripts submodule to v1.3.4 [Florin Sarbu]

# v2.38.3+rev2
## (2019-07-15)

* Update the balena-yocto-scripts submodule to v1.3.3 [Florin Sarbu]

# v2.38.3+rev1
## (2019-07-12)

* Update the balena-yocto-scripts submodule to v1.3.0 [Florin Sarbu]

<details>
<summary> Update meta-balena from v2.38.2 to v2.38.3 [Florin Sarbu] </summary>

> ## meta-balena-2.38.3
> ### (2019-07-10)
> 
> * resin-proxy-config: fix up incorrect bash subshell command [Matthew McGinn]
</details>

# v2.38.2+rev4
## (2019-07-04)

* Set ATA_PIIX as built-in so we can boot legacy IDE mode without adding the ata_piix driver in the initramfs [Florin Sarbu]

# v2.38.2+rev3
## (2019-07-03)

* Enable the AD5593R driver [Florin Sarbu]

# v2.38.2+rev2
## (2019-07-03)

* Patches for TCP-based remote denial of service vulnerabilities [Vicentiu Galanopulo]

# v2.38.2+rev1
## (2019-06-27)

* Update the balena-yocto-scripts submodule to v1.2.3 [Florin Sarbu]

<details>
<summary> Update meta-balena from v2.38.1 to v2.38.2 [Florin Sarbu] </summary>

> ## meta-balena-2.38.2
> ### (2019-06-27)
> 
> * Update to kernel-modules-headers v0.0.20 to fix missing target modpost binary on kernel 5.0.3 [Florin Sarbu]
> 
> * Update to kernel-modules-headers v0.0.19 to fix target objtool compile issue on kernel 5.0.3 [Florin Sarbu]
> 
</details>

# v2.38.1+rev2
## (2019-06-25)

* Remove kernel-modules-headers fixdep patch for kernel 5.0.3 as it will be applied in meta-balena [Florin Sarbu]

# v2.38.1+rev1
## (2019-06-22)

* Update meta-balena from v2.38.0 to v2.38.1 [Florin Sarbu]

<details>
<summary> View details </summary>

## meta-balena-2.38.1
### (2019-06-20)

* Add warrior to compatible layers for meta-balena-common [Florin Sarbu]
* Fix image-resin.bbclass to be able to use deprecated layers [Andrei Gherzan]
* Fix kernel-devsrc on thud when kernel version < 4.10 [Andrei Gherzan]
</details>

* Update the balena-yocto-scripts submodule to v1.2.1 [Florin Sarbu]
* Update to Poky version warrior-21.0.0 [Florin Sarbu]

# v2.38.0+rev1
## (2019-06-18)

* Update meta-balena from v2.36.0 to v2.38.0 [Florin Sarbu]

<details>
<summary> View details </summary>

## meta-balena-2.38.0
### (2019-06-14)

* Fix VERSION_ID os-release to be semver complient [Andrei Gherzan]
* Introduce META_BALENA_VERSION in os-release [Andrei Gherzan]
* Fix a case where changes to u-boot were not regenerating the config file at build time and using stale values. [Zubair Lutfullah Kakakhel]
* Use all.rp_filter=2 as the default value in balenaOS [Andrei Gherzan]
* Persist bluetooth storage data over reboots [Andrei Gherzan]
* Drop support for morty and krogoth Yocto versions [Andrei Gherzan]
* Add Yocto Warrior support [Zubair Lutfullah Kakakhel]
* Set both VERSION_ID and VERSION in os-release to host OS version [Andrei Gherzan]
* Bump balena-engine to 18.9.6 [Zubair Lutfullah Kakakhel]
* Downgrade balena-supervisor to v9.15.7 [Andrei Gherzan]
* Switch from dropbear to openSSH [Andrei Gherzan]
* Rename meta-resin-common to meta-balena-common [Andrei Gherzan]
* Add wifi firmware for rtl8192su [Zubair Lutfullah Kakakhel]

## meta-balena-2.37.0
### (2019-05-29)

* Update balena-supervisor to v9.15.8 [Cameron Diver]
* kernel-modules-headers: Update to v0.0.18 [Andrei Gherzan]
* os-config: Update to v1.1.1 to fix mDNS [Andrei Gherzan]
* Fix busybox nslookup mdns lookups [Andrei Gherzan]
* Update balena-supervisor to v9.15.4 [Cameron Diver]
* Improve logging and version comparison in linux-firmware cleanup class [Andrei Gherzan]
* Sync ModemManager recipe with upstream [Andrei Gherzan]
* Update NetworkManager to 1.18.0 [Andrei Gherzan]
</details>

* Update the balena-yocto-scripts submodule to v1.2.0 [Florin Sarbu]
* Enable the Intel TCO Watchdog [Florin Sarbu]
* Make sure we don't have duplicate OS entries in some BIOSes [Florin Sarbu]

# v2.36.0+rev5
## (2019-06-17)

* Added TPM kernel module support [Vicentiu Galanopulo]

# v2.36.0+rev4
## (2019-05-28)

* Add support for Microsoft Surface Pro 6 touchscreen [Florin Sarbu]
* Add new machine Microsoft Surface Pro 6 [Florin Sarbu]

# v2.36.0+rev3
## (2019-05-28)

* Remove duplicate 4.18.14 kernel recipes [Florin Sarbu]

# v2.36.0+rev2
## (2019-05-21)

* Update the balena-yocto-scripts submodule to v1.1.1 [Florin Sarbu]

# v2.36.0+rev1
## (2019-05-20)

* Update meta-balena from v2.35.0 to v2.36.0 [Florin Sarbu]

<details>
<summary> View details </summary>

## meta-balena-2.36.0
### (2019-05-20)

* Cleanup old versions of iwlwifi firmware files in Yocto Thud [Florin Sarbu]
</details>

* Update the balena-yocto-scripts submodule to v1.1.0 [Florin Sarbu]

# v2.35.0+rev1
## (2019-05-20)

* Update meta-balena from v2.34.1 to v2.35.0 [Florin Sarbu]

<details>
<summary> View details </summary>

## meta-balena-2.35.0
### (2019-05-18)

* Update kernel-module-headers to version v0.0.16 [Florin Sarbu]
* Add uboot support for unified kernel cmdline arguments [Andrei Gherzan]
* Switch flasher detection in initramfs to flasher boot parameter [Andrei Gherzan]
* Update balena-supervisor to v9.15.0 [Cameron Diver]
* Improve boot speed by only mounting the inactive partition when needed [Zubair Lutfullah Kakakhel]
* Fix openssl dependency of balena-unique-key [Andrei Gherzan]
* Do not spawn getty in production images [Florin Sarbu]
</details>

* Update efivar to version 37 [Florin Sarbu]

# v2.34.1+rev3
## (2019-05-19)

* Pass 'flasher' kernel argument on flasher images [Andrei Gherzan]

# v2.34.1+rev2
## (2019-05-16)

* Fix typo that prevented microSD card support for Microsoft Surface Go [Florin Sarbu]

# v2.34.1+rev1
## (2019-05-15)

* Update meta-balena from v2.33.0 to v2.34.1 [Florin Sarbu]

<details>
<summary> View details </summary>

## meta-balena-2.34.1
### (2019-05-14)

* Update balena-supervisor to v9.14.10 [Cameron Diver]

## meta-balena-2.34.0
### (2019-05-10)

* Add support to update a connectivity section in NetworkManager via config.json [Zubair Lutfullah Kakakhel]
* systemd: Fix journald configuration file [Andrei Gherzan]
* Add --max-download-attempts=10 to balenaEngine service to improve performance on shaky networks [Zubair Lutfullah Kakakhel]
* Update balena-engine to 18.09.5 [Zubair Lutfullah Kakakhel]
* Log initramfs messages to kernel dmesg to capture fsck, partition expand etc. command output [Zubair Lutfullah Kakakhel]
* kernel-resin: Add FAT fs specific configs to RESIN_CONFIGS [Sebastian Panceac]
* Update balena-supervisor to v9.14.9 [Cameron Diver]
* Introduce meta-balena yocto thud support [Andrei Gherzan]
* Update os-config to 1.1.0 [Andrei Gherzan]
</details>

* Enable support for Microsoft Surface Go microSD card reader [Florin Sarbu]
* Enable kernel WiFi drivers for Microsoft Surface Go [Florin Sarbu]
* Enable WiFi/BT on Microsoft Surface Go [Florin Sarbu]
* Enable uinput kernel module [Florin Sarbu]
* Enable WiFi/BT on Microsoft Surface Pro [Florin Sarbu]
* Enable kernel WiFi drivers for Microsoft Surface Pro [Florin Sarbu]

# v2.33.0+rev2
## (2019-05-07)

* Update to yocto thud [Andrei Gherzan]

# v2.33.0+rev1
## (2019-05-02)

* Update rust to 1.33 [Andrei Gherzan]
* Update meta-balena from v2.32.0 to v2.33.0 [Andrei Gherzan]

<details>
<summary> View details </summary>

## meta-balena-2.33.0
### (2019-05-02)

* Fixes for sysroot symlinks creation [Andrei Gherzan]
* libmbim: Refresh patches after last update to avoid build warnings [Andrei Gherzan]
* modemmanager: Refresh patches after last update to avoid build warnings [Andrei Gherzan]
* Make security flags inclusion yocto version specific [Andrei Gherzan]
* systemd: Make directory warning patch yocto version specific [Andrei Gherzan]
* Replace wireless tools by iw [Andrei Gherzan]
* systemd: Use a conf.d file for journald configuration [Andrei Gherzan]
* Set go verison to 1.10.8 to match balena-engine requirements [Andrei Gherzan]
* Update balena-engine to 18.09.3 [Andrei Gherzan]
* Update balena-supervisor to v9.14.6 [Cameron Diver]
* resin-u-boot: make devtool-compatible [Sven Schwermer]
* docker-disk: Disable unnecessary docker pid check [Armin Schlegel]
* Update libmbim to version 1.18.0 [Zahari Petkov]
* Update libqmi to version 1.22.2 [Zahari Petkov]
* Update to ModemManager v1.10.0 [Zahari Petkov]
* Add a OS_KERNEL_CMDLINE parameter that allows BSPs to easily add extra kernel cmdline args to production images [Zubair Lutfullah Kakakhel]
</details>

# v2.32.0+rev4
## (2019-04-29)

* Update the balena-yocto-scripts submodule to v1.0.6 [Florin Sarbu]
* Include in rootfs the bluetooth firmware ibt-18-16-1 [Florin Sarbu]

# v2.32.0+rev3
## (2019-04-26)

* Build ACPI_WMI kernel module as requested by customer [Florin Sarbu]

# v2.32.0+rev2
## (2019-04-10)

* Enable USB RNDIS driver [Zahari Petkov]

# v2.32.0+rev1
## (2019-04-10)

* Update meta-balena from v2.31.5 to v2.32.0 [Florin Sarbu]

<details>
<summary> View details </summary>

## meta-balena-2.32.0
### (2019-04-08)

* balena-supervisor: Update to v9.14.0 [Cameron Diver]
* readme: Replace resin with balena where appropriate [Roman Mazur]
* Add systemd-analyze to production images as well [Zubair Lutfullah Kakakhel]
* Enable dbus interface for dnsmasq [Zubair Lutfullah Kakakhel]
* Disable docker bridge while pulling the supervisor container to remove runtime balena-engine warnings [Zubair Lutfullah Kakakhel]
* Fix typo in os-networkmanager that prevented it from working [Zubair Lutfullah Kakakhel]
* Fix bug where fsck was run on the data partition on every boot even if it wasn't needed due to old system time. [Zubair Lutfullah Kakakhel]
* Fix the balena version string reported by balena-engine info [Zubair Lutfullah Kakakhel]
* Only check mmc devices for flasher image presence by default. [Zubair Lutfullah Kakakhel]
* Remove an extra redundant copy of udev rules database [Zubair Lutfullah Kakakhel]
* Un-upx mobynit and os-config to speed them up a bit. Approx 1 second boost to boot time. [Zubair Lutfullah Kakakhel]
</details>

# v2.31.5+rev2
## (2019-04-09)

* Update the balena-yocto-scripts submodule to v1.0.5 [Florin Sarbu]

# v2.31.5+rev1
## (2019-04-09)

* Update meta-balena from v2.31.2 to v2.31.5 [Florin Sarbu]

<details>
<summary> View details </summary>

## meta-balena-2.31.5
### (2019-03-21)

* Update resin-supervisor to v9.11.3 [Andrei Gherzan]

## meta-balena-2.31.4
### (2019-03-20)

* resin-supervisor: Recreate on start if config has changed [Rich Bayliss]

## meta-balena-2.31.3
### (2019-03-20)

* Update resin-supervisor to v9.11.2 [Pablo Carranza Velez]
</details>

* Change the poky submodule to our github mirror [Florin Sarbu]
* Update the balena-yocto-scripts submodule to v1.0.4 [Florin Sarbu]
* Rename meta-resin to meta-balena in repository [Florin Sarbu]
* Update repo.yml to be able to trigger VersionBot with `meta-balena` [Florin Sarbu]
* Add BCM43455 firmware and nvram settings to rootfs [Florin Sarbu]

# v2.31.2+rev1
## (2019-03-20)

* Update meta-resin from v2.31.1 to v2.31.2 [Florin Sarbu]

<details>
<summary> View details </summary>

## meta-resin-2.31.2
### (2019-03-19)

* Update resin-supervisor to v9.11.1 [Pablo Carranza Velez]
</details>

# v2.31.1+rev1
## (2019-03-18)

* Update meta-resin from v2.31.0 to v2.31.1 [Pablo Carranza Velez]

# v2.31.0+rev2
## (2019-03-12)

* Enable kernel drivers coretemp.ko and nct6775.ko [Florin Sarbu]

# v2.31.0+rev1
## (2019-03-11)

* Update meta-resin from v2.30.0 to v2.31.0 [Florin Sarbu]

<details>
<summary> View details </summary>

## meta-resin-2.31.0
### (2019-03-08)

* README:md: Document dnsServers behaviour [Alexis Svinartchouk]
* Update resin-supervisor to v9.9.0 [Cameron Diver]
* Cleanup old versions of iwlwifi firmware files in Yocto sumo [Andrei Gherzan]
* Remove polkit dependency in balenaOS [Andrei Gherzan]
* Remove support for XFS file system [Andrei Gherzan]
* resin-init: update resin.io reference to balenaOS [Matthew McGinn]
</details>

* Update the balena-yocto-scripts submodule to v1.0.3 [Florin Sarbu]

# v2.30.0+rev1
## (2019-02-28)

* Update meta-resin from v2.29.2 to v2.30.0 [Florin Sarbu]

<details>
<summary> View details </summary>

## meta-resin-2.30.0
### (2019-02-28)

* resin-supervisor: Recreate on start if config has changed [Rich Bayliss]
* Generate the temporary kernel-devsrc compressed archive in WORKDIR instead of B [Florin Sarbu]
* balena-engine: Update to include fix for signal SIGRTMIN+3 [Andrei Gherzan]
* Reduce sleeps while trying to mount partition to speed up boot [Zubair Lutfullah Kakakhel]
* resin-expand: Reduce sleep duration to speed up boot [Zubair Lutfullah Kakakhel]
* initrdscripts: Reduce sleep to speed up boot [Zubair Lutfullah Kakakhel]
* Make balena-host daemon socket activated to reduce baseline cpu/memory usage [Zubair Lutfullah Kakakhel]
* Update resin-supervisor to v9.8.6 [Cameron Diver]
* Add support for aufs 4.18.11+, 4.19, 4.20 variants and update 4.14, 4.14.56+, 4.15, 4.16, 4.17, 4.18 [Florin Sarbu]
* balena-engine: Bump to include runc patch [Andrei Gherzan]
* Improve kernel-module-headers for v4.18+ kernels [Zubair Lutfullah Kakakhel]
* Update balena-supervisor to v9.8.3 [Cameron Diver]
* Ask chrony to quickly take measurements from custom NTP servers when they are added [Zubair Lutfullah Kakakhel]
* Disable in-tree rtl8192cu driver [Florin Sarbu]
* Prevent rollbacks from running if the previous OS is before v2.30.0 [Zubair Lutfullah Kakakhel]
* Change rollbacks to accept hex partition numbers for jetsons [Zubair Lutfullah Kakakhel]
* Convert partition numbers to hex in u-boot hook. Shouldn't affect any device. [Zubair Lutfullah Kakakhel]
* Reduce default reboot/poweroff timeouts from 30 minutes to 10 minutes [Zubair Lutfullah Kakakhel]
* Configure systemd tmpfiles to ignore supervisor tmp directories [Andrei Gherzan]
* Fixed "Can't have overlapping partitions." error in flasher [Alexandru Costache]
* Define default DNS servers behaviour with and without google DNS [Andrei Gherzan]
* Update balena-supervisor to v9.4.2 [Cameron Diver]
* Fix for some warnings [Zubair Lutfullah Kakakhel]
* Fix tini filename after balena-engine rename [Andrei Gherzan]
* Fix nm dispatcher hook when there are no custom ntp servers in config.json [Zubair Lutfullah Kakakhel]
* Improve persistent logging systemd service dependencies [Zubair Lutfullah Kakakhel]
* Update balena-supervisor to v9.3.0 [Cameron Diver]
* Use the new revision for balena source code [Florin Sarbu]
* Add a workaround for a bug where the chronyc online command in network manager hook would get stuck and eat cpu cycles [Zubair Lutfullah Kakakhel]
* Fix img to rootfs dependency when img is invalidated [Andrei Gherzan]
* Have boot partition type configurable as FAT32 [Andrei Gherzan]
* Deprecate morty and krogoth [Zubair Lutfullah Kakakhel]
* Deploy kernel source as a build artifact as well for external module compilation [Zubair Lutfullah Kakakhel]
* kernel-devsrc: Tarball up the kernel source and deploy it. [Zubair Lutfullah Kakakhel]
* kernel-modules-headers: Use the build directory for artifacts [Zubair Lutfullah Kakakhel]
* docs: Add documentation on nested changelogs [Giovanni Garufi]
* VersionBot: update upstream name and url [Giovanni Garufi]
</details>

* Update the balena-yocto-scripts submodule to v1.0.2 [Florin Sarbu]

# v2.29.2+rev5
## (2019-02-21)

* Revert a patch to kernel module headers that is in meta-balena now [Zubair Lutfullah Kakakhel]

# v2.29.2+rev4
## (2019-02-20)

* Enable TULIP driver for Hyper-V [Florin Sarbu]

# v2.29.2+rev3
## (2019-02-19)

* kernel-modules-headers: Update for 4.18 kernel [Sebastian Panceac]
* rtl8812au: Update source location [Sebastian Panceac]
* Switch to kernel 4.18.14 [Florin Sarbu]
* Add kernel 4.18.14 [Florin Sarbu]

# v2.29.2+rev2
## (2019-02-01)

* Remove older AC 8260 WiFi firmware [Florin Sarbu]
* Add firmware for AC 9560 wifi chipset [Florin Sarbu]

# v2.29.2+rev1
## (2019-01-16)

* Update meta-resin from v2.29.0 to v2.29.2 [Florin Sarbu]

# v2.29.0+rev3
## (2019-01-16)

* Split grub configuration in its own recipe to avoid yocto build deploy issues [Andrei Gherzan]

# v2.29.0+rev2
## (2019-01-07)

# v2.29.0+rev1
## (2018-12-19)

* Update meta-resin from v2.28.0 to v2.29.0 [Sebastian Panceac]
* Update balena-yocto-scripts submodule to v1.0.1 [Sebastian Panceac]

# v2.28.0+rev2
## (2018-12-10)

* Make hostapp-update-hooks clean-up legacy grub to ensure correct future EFI boot [Florin Sarbu]

# v2.28.0+rev1
## (2018-12-06)

* Update meta-resin from v2.27.0 to v2.28.0 [Florin Sarbu]

<details>
<summary> View details </summary>

## meta-resin-2.28.0
### (2018-12-05)

* Update os-config to 1.0.0 [Zahari Petkov]
* Update libqmi to version 1.20.2 [Florin Sarbu]
* Update libmbim to version 1.16.2 [Florin Sarbu]
* kernel-modules-headers: Add basic sanity test [Zubair Lutfullah Kakakhel]
* Fix kernel module header generation [Zubair Lutfullah Kakakhel]
* image-resin.bbclass: Fix config.json pretty format [Andrei Gherzan]
* Allow supervisor update on unmanaged devices [Andrei Gherzan]
* Update resin-supervisor to v8.6.3 [Cameron Diver]
</details>

* Switch from resin-yocto-scripts to balena-yocto-scripts [Florin Sarbu]

# v2.27.0+rev1
## (2018-11-26)

* Update meta-resin from v2.26.0 to v2.27.0 [Florin Sarbu]

<details>
<summary> View details </summary>

## meta-resin-2.27.0
### (2018-11-23)

* Expose randomMacAddressScan config.json knob [Andrei Gherzan]
* Move modemmanager udev rules in /lib/udev/rules.d [Andrei Gherzan]
* Fix modemmanager bbappend files [Andrei Gherzan]
* dnsmasq: Define 8.8.8.8 as a fallback nameserver [Andrei Gherzan]
* Increase timeout for filesystem label [Vicentiu Galanopulo]
* Add support for Huawei ME936 modem in MBIM mode [Florin Sarbu]
* Backport systemd sd-shutdown improvements for sumo versions [Florin Sarbu]
* Include avahi d-bus introspection files in rootfs [Andrei Gherzan]
* Fix custom udev rules when rule is removed from config.json [Zubair Lutfullah Kakakhel]
* resin-mounts: Add NetworkManager conf.d bind mounts [Zubair Lutfullah Kakakhel]
* Add support to pass custom configuration to NetworkManager [Zubair Lutfullah Kakakhel]
* README.md: Add info about SSH and Avahi services [Andrei Gherzan]
* Avoid xtables lock in resin-proxy-config [Andrei Gherzan]
* Migrate the supervisor to balena repositories [Florin Sarbu]
* Update balena-supervisor to v8.3.5 [Cameron Diver]
* Update supported modems list [Florin Sarbu]

## meta-resin-2.26.0
### (2018-11-05)

* Rename resin-unique-key to balena-unique-key [Andrei Gherzan]
* Don't let resin-unique-key rewrite config.json [Andrei Gherzan]
</details>

# v2.26.0+rev3
## (2018-11-23)

* Fix incorrect FILESEXTRAPATHS append [Florin Sarbu]

# v2.26.0+rev2
## (2018-11-21)

* Add script to ensure correct future EFI boot [Florin Sarbu]

# v2.26.0+rev1
## (2018-11-06)

* Update meta-resin from v2.25.0 to v2.26.0 [Florin Sarbu]

<details>
<summary> View details </summary>

## meta-resin-2.26.0
### (2018-11-05)

* Rename resin-unique-key to balena-unique-key [Andrei Gherzan]
* Don't let resin-unique-key rewrite config.json [Andrei Gherzan]

## meta-resin-2.25.0
### (2018-11-02)

* Generate ssh host key at first boot (not at first connection) [Andrei Gherzan]
* Fix extraneous space in kernel-resin.bbclass config [Florin Sarbu]
* Drop obsolete eval from kernel-resin's do_kernel_resin_reconfigure [Florin Sarbu]
* Add SyslogIdentifier for balena and resin-supervisor healthdog services [Matthew McGinn]
</details>

* Update the resin-yocto-scripts submodule to master HEAD [Florin Sarbu]

# v2.25.0+rev1
## (2018-11-05)

* Update meta-resin from v2.24.0 to v2.25.0 [Florin Sarbu]

<details>
<summary> View details </summary>

## meta-resin-2.25.0
### (2018-11-02)

* Generate ssh host key at first boot (not at first connection) [Andrei Gherzan]
* Fix extraneous space in kernel-resin.bbclass config [Florin Sarbu]
* Drop obsolete eval from kernel-resin's do_kernel_resin_reconfigure [Florin Sarbu]
* Add SyslogIdentifier for balena and resin-supervisor healthdog services [Matthew McGinn]

## meta-resin-2.24.1
### (2018-11-01)

* Update resin-supervisor to v8.0.0 [Pablo Carranza Velez]

## meta-resin-2.24.0
### (2018-10-24)

* resin-info: Small tweak for balenaCloud product [Andrei Gherzan]
* Update resin-supervisor to v7.25.8 [Pablo Carranza Velez]
* Rename resinOS to balenaOS [Andrei Gherzan]
</details>

# v2.24.0+rev3
## (2018-10-26)

* Temporarily disable rollback functionality [Florin Sarbu]

# v2.24.0+rev2
## (2018-10-25)

* Workaround for usb_modeswitch crash on 64 bits platforms [Florin Sarbu]

# v2.24.0+rev1
## (2018-10-24)

* Update meta-resin from v2.21.0 to v2.24.0 [Florin Sarbu]

# v2.21.0+rev2
## (2018-10-19)

* Remove TI wl firmware [Zubair Lutfullah Kakakhel]

# v2.21.0+rev1
## (2018-10-19)

* Add hook to remove kernel from boot parition after a HUP [Zubair Lutfullah Kakakhel]
* Remove 99-flash-grub hook [Zubair Lutfullah Kakakhel]
* Install legacy grub.cfg file in boot files [Zubair Lutfullah Kakakhel]
* Add Automated Rollback support to grub.cfg [Zubair Lutfullah Kakakhel]
* Add grub environment file [Zubair Lutfullah Kakakhel]
* Remove the kernel from the boot partition [Zubair Lutfullah Kakakhel]
* Update grub to boot kernel from root partition [Zubair Lutfullah Kakakhel]
* Rework grub.cfg_internal to prepare for automated rollback [Zubair Lutfullah Kakakhel]
* Update meta-resin to v2.21 [Zubair Lutfullah Kakakhel]

<details>
<summary> View details </summary>

## meta-resin-2.21.0
### (2018-10-18)

* Improve systemd service ordering in rollbacks
* Update resin-supervisor to v7.24.1

## meta-resin-2.20.0
### (2018-10-18)

* Avoid expander on flasher based on root kernel argument
* Resin-vars: Implement custom ssh keys service
* Fix redsocks interface creation when no proxy configured
* Replace NM's DHCP request option "Client indentifier" with udhcpc style option
* Fix for rollbacks in case of old balenaOS version
* Update resin-supervisor to v7.21.4
* Warn if rules are found in /etc/udev/rules.d
* Add support to load custom udev rules from config.json
* Aufs-util: Package auplink separately
* Enable kernel config dependencies for MBIM and QMI
* Set UPX to use LZMA compression by default
* Downgrade UPX to 3.94 for ARM
* Balena update for rollbacks. mobynit can now mount rootfs from sysroot.
* Fix proxy when using containers over bridge network
* Add support for aufs 4.9.9+, 4.9.94+, 4.18
* Add rollback-altboot service before balena service
* Add Automated Rollback recipe
* Add Automated Rollback support in u-boot env_resin.h
* Add a hook to support Automated Rollbacks
* Update HUP grub hook to support Automated Rollbacks
* Update HUP u-boot hook to support Automated Rollbacks
* Move kernel-image-initramfs from resin-image recipe to packagegroup-resin.inc
* Have 99-resin-grub hostapp-update-hook decide which grub to use

## meta-resin-2.19.0
### (2018-09-23)

* Update Balena to fix tty console hanging in some cases
* Pin down cargo deps (using Cargo.lock) to versions known working with rust 1.24.1 (for sumo)
* Remove duplicate packaging of bcm43143
* Set ModemManager to ignore Inca Roads Serial Device
* Add support for aufs 4.14.56+
* Update resin-supervisor to v7.19.7
</details>

# v2.19.0+rev4
## (2018-10-08)

* Revert "random: fix crng_ready() test" to fix balena delay start issue [Florin Sarbu]

# v2.19.0+rev3
## (2018-10-04)

* Linux-yocto: Activate CONFIG_SND_DYNAMIC_MINORS in kernel [Sebastian Panceac]

# v2.19.0+rev2
## (2018-10-03)

* Re-add UPX compression for os-config [Florin Sarbu]

# v2.19.0+rev1
## (2018-09-24)

* Update meta-resin from v2.15.1 to v2.19.0 [Florin Sarbu]

<details>
<summary> View details </summary>

## meta-resin-2.19.0
### (2018-09-23)

* Update Balena to fix tty console hanging in some cases
* Pin down cargo deps (using Cargo.lock) to versions known working with rust 1.24.1 (for sumo)
* Remove duplicate packaging of bcm43143
* Set ModemManager to ignore Inca Roads Serial Device
* Add support for aufs 4.14.56+
* Update resin-supervisor to v7.19.7

## meta-resin-2.18.1
### (2018-09-14)

* Add a parsable representation of the changelog

## meta-resin-v2.18.0
### (2018-09-12)

* Update grub hooks to prepare to load kernel from root [Zubair Lutfullah Kakakhel]
* Update resin-supervisor to v7.19.4 [Cameron Diver]
* Kernel-resin.bbclass: Enable CONFIG_IP_NF_TARGET_LOG as a module [John (Jack) Brown]
* Balena: Update to current HEAD of 17.12-resin [Andrei Gherzan]
* Compress os-config with UPX on arm64 too [Andrei Gherzan]
* Update upx to 3.95 [Andrei Gherzan]
* Add support to skip flasher detection in env_resin.h [Zubair Lutfullah Kakakhel]
* Add the kernel to the rootfs [Zubair Lutfullah Kakakhel]
* Rework resin-supervisor systemd dependency on balena [Florin Sarbu]
* Enhanced security options for dropbear - sumo [Andrei Gherzan]
* Enhanced security options for dropbear - rocko [Andrei Gherzan]
* Enhanced security options for dropbear - pyro [Andrei Gherzan]
* Enhanced security options for dropbear - morty [Andrei Gherzan]
* Enhanced security options for dropbear - krogoth [Andrei Gherzan]

## meta-resin-2.17.0
### (2018-09-03)

* Resin-proxy-config: The no_proxy file fails to parse when missing EOL [Rich Bayliss]

## meta-resin-2.16.0
### (2018-08-31)

* Os-config: UPX is broken on aarch64 [Theodor Gherzan]
* Allow flasher types to pin preloaded devices [Theodor Gherzan]
* Disable PIE for go [Zubair Lutfullah Kakakhel]
* Disable PIE for balena [Zubair Lutfullah Kakakhel]

</details>

# v2.15.1+rev2
## (2018-09-19)

* Update the poky submodule to sumo-19.0.1 [Florin Sarbu]
* Add a parsable representation of the changelog [Giovanni Garufi]

# v2.15.1+rev1
## (2018-09-05)

* Update the meta-resin submodule to version v2.15.1 [Florin Sarbu]
* Make the default resin-image have both grub EFI and grub legacy [Florin Sarbu]
* Do not install grub-common in the rootfs [Florin Sarbu]

# v2.14.3+rev3
## (2018-08-28)

* Enable kernel I2C and GPIO support for Kontron PLD devices [Florin Sarbu]

# v2.14.3+rev2
## (2018-08-27)

* Add versionist support [Giovanni Garufi]

# v2.14.3+rev1
## (2018-08-14)

* Update the meta-resin submodule to version v2.14.3 [Florin]
* Enable CONFIG_NETFILTER_XT_MATCH_TIME in kernel [Florin]
* Remove efibootmgr and efivar recipes as we have them in meta-oe [Andrei]

# v2.14.1+rev3
## (2018-08-10)

* Switch to sumo-19.0.0 [Florin]

# v2.14.1+rev2
## (2018-08-09)

* Enable support for Huawei USB modems [Florin]

# v2.14.1+rev1
## (2018-08-06)

* Update the meta-resin submodule to version v2.14.1 [Andrei]
* Update resin-yocto-scripts to current HEAD [Andrei]
* Update poky submodule to yocto-2.4.3 [Andrei]
* Avoid os-config segfault at runtime by disabling UPX [Andrei]
* Delete references to obsolete RESIN_CONNECTABLE* variables [Florin]

# v2.14.0+rev1
## (2018-07-18)

* Update the meta-resin submodule to version v2.14.0 [Florin]

# v2.13.6+rev1
## (2018-07-13)

* Update the meta-resin submodule to version v2.13.6 [Florin]
* Enable CAN modules [Florin]

# v2.13.5+rev1
## (2018-07-09)

* Update the meta-resin submodule to version v2.13.5 [Florin]
* Update the resin-yocto-scripts submodule to 59ccd8558435ff6424827fb36ccb43b14650f4d4 (on master branch) [Florin]

# v2.13.3+rev1
## (2018-07-06)

* Update the meta-resin submodule to version v2.13.3 [Florin]
* Update the resin-yocto-scripts submodule to 6eddcc9a637e00dbca94815f9af0f2b7bf61eb88 (on master branch) [Florin]

# v2.13.1+rev1
## (2018-06-15)

* Update the meta-resin submodule to version v2.13.1 [Florin]

# v2.13.0+rev1
## (2018-06-07)

* Update the meta-resin submodule to version v2.13.0 [Florin]
* Enable overlayfs as a kernel module (not switching to overlay2 as balena storage driver yet) [Florin]

# v2.12.7+rev2
## (2018-05-21)

* linux-yocto: Add support for WiFi adapters that use Realtek chipset (like Edimax EW-7811Un) [Sebastian]

# v2.12.7+rev1
## (2018-05-18)

* Update the meta-resin submodule to version v2.12.7 [Florin]

# v2.12.5+rev2
## (2018-04-23)

* Update the resin-yocto-scripts submodule to f7718efbbf53369aaacb7eb54e707ee8a5d4fc4b (on master branch) [Florin]
* Limit the CPU cstate to 1 [Florin]

# v2.12.5+rev1
## (2018-03-28)

* Update the meta-resin submodule to version v2.12.5 [Florin]
* Enable support for USB audio [Florin]
* Update the resin-yocto-scripts submodule to 9cecb1ca4d9d4713dd337148b7d04a17afdba772 (on master branch) [Florin]
* Make hostapp-update-hooks flash grub legacy only when UEFI is not supported [Florin]

# v2.12.3+rev1
## (2018-03-15)

* Update the meta-resin submodule to version v2.12.3 [Florin]
* Add support for VIA AMOS-3005 board [Sebastian]

# v2.12.2+rev1
## (2018-03-14)

* Update the meta-resin submodule to version v2.12.2 [Florin]

# v2.12.1+rev1
## (2018-03-12)

* Update the meta-resin submodule to version v2.12.1 [Andrei]

# v2.12.0+rev1
## (2018-03-09)

* Update the meta-resin submodule to version v2.12.0 [Theodor]

# v2.11.2+rev1
## (2018-03-08)

* Update the meta-resin submodule to version v2.11.2 [Andrei]

# v2.11.1+rev1
## (2018-03-08)

* Update the meta-resin submodule to version v2.11.1 [Andrei]

# v2.11.0+rev1
## (2018-03-08)

* Update the meta-resin submodule to version v2.11.0 [Theodor]

# v2.10.1+rev1
## (2018-02-28)

* Update the meta-resin submodule to version v2.10.1 [Florin]
* Add entry for the disabling of random MAC address generation when scanning for a WiFi connection [Florin]
* Update the resin-yocto-scripts submodule to dc9dfe466e48d934e55fb20a05156886873b1ab1 (on master branch) [Florin]

# v2.10.0+rev1
## (2018-02-27)

* Update the meta-resin submodule to version v2.10.0 [Andrei]
* Update to rocko [Andrei]
* Enable VXLAN support [Florin]
* Fix eMMC detection on some Atom based SoCs [Florin]

# v2.9.7+rev2
## (2018-02-02)

* Conditionally write grub legacy to internal boot device's MBR [Florin]
* Include bluetooth firmware for Realtek 8723 based cards [Florin]

# v2.9.7+rev1
## (2018-02-01)

* Update the meta-resin submodule to version v2.9.7 [Florin]
* Update the resin-yocto-scripts submodule to 6f7a9ab326bb822196e3e48b08ef1d73d08caec6 (on master branch) [Florin]
* Support RTL8723BE and RTL8821AE based WiFi/BT cards [Florin]
* Activate CONFIG_USB_EHCI_HCD_PLATFORM in kernel [Andrei]

# v2.9.6+rev1
## (2018-01-13)

* Update the meta-resin submodule to version v2.9.6 [Florin]

# v2.9.5+rev1
## (2018-01-11)

* Update the meta-resin submodule to version v2.9.5 [Florin]
* Update the resin-yocto-scripts submodule to 6f7a9ab326bb822196e3e48b08ef1d73d08caec6 (on master branch) [Florin]
* Activate kernel drivers for bluetooth to work on the Intel NUC when using the genericx86-64 machine [Florin]

# v2.9.3+rev1
## (2018-01-09)

* Update the meta-resin submodule to version v2.9.3 [Andrei]

# v2.9.2+rev2
## (2018-01-08)

* Deploy generic x86-64 images under the old nuc slug [Andrei]

# v2.9.2+rev1
## (2017-12-19)

* Support I350-based Intel® Gigabit Ethernet Network Connections [Theodor]
* Allow genericx86-64 to be configured with or without UEFI [Theodor]
* Move to a more generic device type: intel-corei7-64 -> genericx86-64 [Theodor]

# v2.7.8+rev1
## (2017-11-17)

* Update the meta-resin submodule to version v2.7.8 [Florin]
* Update the resin-yocto-scripts submodule to c4db082fd2d5a3b4857035264c1e726962d7b826 (on master branch) [Florin]

# v2.7.5+rev1
## (2017-10-31)

* Update the meta-resin submodule to version v2.7.5 [Florin]
* Install in the rootfs the 99-resin-grub hostapp hook needed for GRUB to switch the root partition when doing host OS updates [Florin]

# v2.7.4+rev1
## (2017-10-26)

* Update the meta-resin submodule to version v2.7.4 [Florin]
* Update the resin-yocto-scripts submodule to e3a06d48a2f8b7e32d3047c33066a5b896e6ae93 (on master branch) [Florin]
* Include efibootmgr in the flasher so we create the appropriate UEFI boot entry for resinOS [Florin]
* Switch back to EFI GRUB instead of the systemd gummiboot implementation [Florin]
* Update meta-openembedded to latest pyro branch [Will]
* Update poky to latest pyro branch [Will]
* Update to Pyro [Will]
* Include meta-rust layer [Will]
* Add meta-rust layer [Will]
* Add missing bluetooth firmware [Florin]

# v2.3.0+rev1
## (2017-08-17)

* Update the meta-resin submodule to version v2.3.0 [Florin]
* Update the getting started links [Zach]

# v2.2.0+rev1
## (2017-07-30)

* Update the meta-resin submodule to version v2.2.0 [Florin]
* Update the resin-yocto-scripts submodule to HEAD of master [Florin]

# v2.1.0+rev1
## (2017-07-24)

* Update the meta-resin submodule to version v2.1.0 [Florin]
* Update the resin-yocto-scripts submodule to HEAD of master [Florin]

# v2.0.9+rev1
## (2017-07-06)

* Update the meta-resin submodule to version v2.0.9 [Florin]

# v2.0.8+rev1
## (2017-07-04)

* Update the meta-resin submodule to version v2.0.8 [Florin]
* Update the resin-yocto-scripts submodule to HEAD of master [Florin]
* Update the resin-yocto-scripts submodule [Florin]

# v2.0.4+rev1
## (2017-05-18)

* Update the meta-resin submodule to version v2.0.4 [Florin]
* Update resin-yocto-scripts to master [Will]

# v2.0.2+rev2
## (2017-05-01)

* Bump resin-yocto-scripts to fix Jenkins deployment [Andrei]

# v2.0.2+rev1
## (2017-04-24)

* Update the meta-resin submodule to version v2.0.2 [Andrei]

# v2.0.0+rev3
## (2017-04-13)

* Bump resin-yocto-scripts to include deployment routine [Andrei]
* Add support for more than 4 serial ports [Will]

# v2.0.0+rev2
## (2017-04-04)

* Bump resin-yocto-scripts to fix resinOS docker registry push [Andrei]

# v2.0.0+rev1
## (2017-04-03)

* Fix OS version to be semver compliant [Andrei]

# v2.0.0.rev1
## (2017-04-01)

* Update the meta-resin submodule to version v2.0.0 [Andrei]

# v2.0.0-rc6.rev1
## (2017-03-31)

* Update the meta-resin submodule to version v2.0.0-rc6 [Andrei]

# v2.0.0-rc5.rev1
## (2017-03-26)

* Drop the external initramfs and only use the initramfs bundled in the kernel [Florin]
* Update the meta-resin submodule to version v2.0.0-rc5 [Florin]
* Enable the DLM module for intel NUC [Theodor]
* Update the Poky submodule, which reverts previous change [Will]
* Do not show kernel boot messages on the display for production images [Florin]
* Update the Poky submodule [Will]

# v2.0.0-rc4.rev1
## (2017-03-17)

* Update the meta-resin submodule to version v2.0.0-rc4 [Florin]
* Integrate our current initramfs in the new initramfs framework [Theodor]

# v2.0.0-beta12.rev2
## (2017-02-28)

* Fix partition labels from last meta-resin update [Andrei]

# v2.0.0-beta12.rev1
## (2017-02-27)

* Bump resin-yocto-scripts to current HEAD [Andrei]
* meta-resin: Bump to 2.0.0-beta12 [Andrei]

# v2.0.0-beta11.rev2
## (2017-02-15)

* Add NVME support [Andrei]

# v2.0.0-beta11.rev1
## (2017-02-15)

* Update meta-resin to v2.0.0-beta.11 [Andrei]

# v2.0.0-beta10.rev1
## (2017-02-14)

* Update meta-resin to v2.0.0-beta.10 [Andrei]
* Update to morty [Andrei]

# v2.0.0-beta.9
## (2017-02-08)

* Update meta-resin to v2.0-beta.9 [Andrei]

# v2.0.0-beta.8
## (2017-01-27)

* Update meta-resin to v2.0-beta.8 [Andrei]
* Update resin-yocto-scripts to HEAD of the master branch [Florin]

# v2.0.0-beta.7
## (2016-12-05)

* Update meta-resin to v2.0-beta.7 [Florin]

# v2.0.0-beta.6
## (2016-12-05)

* Update meta-resin to v2.0-beta.6 [Andrei]

# v2.0.0-beta.5
## (2016-11-30)

* Update meta-resin to v2.0-beta.5 [Andrei]

# v2.0.0-beta.3
## (2016-11-07)

* Update meta-resin to v2.0-beta.3 [Andrei]
* Cleanup docker-resin-supervisor-disk of unneeded variables [Andrei]
* Update resin-yocto-scripts to fix logging in container builds

# v2.0.0-beta.1
## (2016-10-11)

* Update meta-resin to v2.0-beta.1 [Andrei]
* Add meta-filesystem as we need aufs-utils [Andrei]
* Add build support for resinos [Andrei]
* Update resin-yocto-script to include changes in our image types [Theodor]
* Replace the concept of a debug image with a development image [Theodor]
* Update meta-resin to include avahi [Florin]
* Update resin-yocto-scripts to include kernel headers handling as gzip [Florin]

# v1.16.0
## (2016-09-27)

* Update meta-resin to v1.16 [Florin]

# v1.15.0
## (2016-09-24)

* Update meta-resin to v1.15 [Florin]

# v1.14.0
## (2016-09-23)

* Update meta-resin to v1.14 [Florin]

# v1.13.0
## (2016-09-23)

* Update meta-resin to v1.13 [Florin]

# v1.12.0
## (2016-09-21)

* Update meta-resin to v1.12 [Florin]
* Update resin-yocto-scripts to include resinhup upload to dockerhub [Florin]
* Update meta-resin [Florin]
* Change .coffee to announce partition 1 now holds config.json and also introduce versioning (v1) [Florin]

# v1.11.0
## (2016-08-31)

* Update meta-resin to v1.11 [Florin]
* Include firmware for ibt [Michal]

# v1.10.0
## (2016-08-24)

* Update meta-resin to v1.10 [Florin]

# v1.9.0
## (2016-08-24)

* Update meta-resin to v1.9 [Florin]
* Update resin-yocto-scripts for including kernel modules headers deploy [Florin]
* Update yocto-resin-scripts for host nodejs detection improvements [Florin]

# v1.8.0
## (2016-08-02)

* Bump meta-resin to v1.8 [Andrei]
* Bump resin-device-types to include partial manifest support [Andrei]
* No more debug images in staging

# v1.7.0
## (2016-07-14)

* Update meta-resin to v1.7

# v1.6.0
## (2016-07-06)

* Update meta-resin to v1.6 [Florin]

# v1.5.0
## (2016-07-04)

* Update meta-resin to v1.5 [Florin]

# v1.5.0rc4
## (2016-06-29)

* Update meta-resin to include supervisor update to v1.11.6 [Florin]

# v1.5.0rc3
## (2016-06-29)

* Update meta-resin to include openvpn-resin.service refactoring [Florin]

# v1.5.0rc2
## (2016-06-28)

* Update meta-resin to include docker key.json fix [Florin]
* Update meta-resin to include flasher fixes [Florin]

# v1.4.0
## (2016-06-27)

* Update meta-resin to v1.4 [Florin]
* Update meta-resin to allow let error out [Florin]
* Update meta-resin to allow patching of kernel-modules-headers [Florin]
* Bump meta-resin to fix various issues [Andrei]
* Fix a small syntax error in meta-resin [Andrei]
* Fix automation fix for debug image [Andrei]
* Replace RESIN_STAGING_BUILD by DEBUG_IMAGE [Andrei]

# v1.3.0
## (2016-06-24)

* Update meta-resin to v1.3 [Florin]
* Update meta-resin to include kernel modules compress support [Andrei]
* Replace SUPERVISOR_TAG by TARGET_TAG [Andrei]
* Custom docker images in connectable builds [Andrei]
* Bump meta-resin to include connectable builds [Andrei]
* Add support for optional supervisor image [Andrei]
* Update meta-resin to v1.2 [Andrei]
* Bump meta-resin to HEAD [Andrei]
* Use new flasher strategy (specify internal bootloader config file and location where to copy it) [Florin]
* Update meta-resin submodule for including bootloader specific removal changes [Florin]
* Bump yocto-resin-scripts to bring in improvements for in-docker builds [Andrei]
* Configure builds with RM_OLD_IMAGE [Theodor]
* Bump meta-resin to include switch from rce to docker [Andrei]

# v1.1.4
## (2016-04-16)

# v1.1.1
## (2016-03-16)

* Promote intel-corei7-64 to released [Florin]
* Transition from fido -> jethro [theodor]
