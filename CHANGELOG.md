Change log
-----------

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
