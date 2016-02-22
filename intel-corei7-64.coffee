deviceTypesCommon = require 'resin-device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

NUC_WINDOWS_DISK_IMAGER = '''
	Install <a href="http://sourceforge.net/projects/win32diskimager/">Win32 Disk Imager</a>.
	<br>
	Start Win32 Disk Imager and navigate to the Device OS <code>.img</code> in your downloads.
	Select &lt;OS-image-download&gt;.img (<%= SUBSTITUTE_DOWNLOAD %>)
	as your “Image File”.'
	<br>
	Insert your USB key. In Win32 Disk Imager, select your USB key in the drop down for “Device”
	<br>
	Make 100% sure it is the correct drive and click “Write”.
	<br>
	Wait until it's finished writing.
'''

NUC_SUBSTITUTE_DISK= 'where N is your USB key number'

NUC_DD_BURN_IMAGE = '''
	Run <code>sudo dd bs=1m if=~/Downloads/&lt;OS-image-download&gt;.img of=/dev/rdiskN</code>
	<%= SUBSTITUTE_DOWNLOAD %>
	and replacing the <code>of=/dev/rdiskN</code> with the appropriate device name.
	<br>
	<strong>Warning!</strong>&nbsp;Please make sure you have backed-up your USB key first,
	as this will completely erase its contents. You can see a full description of this process
	<a href="<%= GETTING_STARTED_LINK %>">here</a>.
'''

NUC_EJECT = 'Safely eject the freshly burnt USB key and insert into the <%= TYPE_NAME %>.'

NUC_OSX_PLUG = 'Plug your USB key into your computer and in a terminal run <code>diskutil list</code>.
You should see your USB key as <code>/dev/diskN</code>, (N=1,2,3,4…)'

NUC_OSX_UNMOUNT = 'Unmount your USB key with <code>diskutil umountDisk /dev/diskN</code> <%= SUBSTITUTE_DISK %>.'

NUC_LINUX_DF = '''
	Run <code>df -h</code> to see what devices are currently mounted.
	<br>
	Insert your USB key.
	<br>
	Run <code>df -h</code> again,the device that wasn\'t there last time is your USB key.
	It will be listed as something like <code>/dev/sdd1</code>.
	The last part ("1") is the partition number,
	so the USB device name is without that suffix: "/dev/sdd"
	<br>
	Unmount your USB key with <code>umount /dev/sddN</code> <%= SUBSTITUTE_DISK %>.
'''

NUC_FLASH = '''
	Power up the <%= TYPE_NAME %>. Make sure you have a keyboard connected.
	Press the F10 key while BIOS is loading in order to enter the boot menu. Next, select the "UEFI : USB" option.
'''

NUC_POWERON = 'Press the power on button on your Intel NUC.'

NUC_BOOT_SETUP = 'Press F2 to enter Setup. Select the UEFI:SATA option under Boot Drive Order, save and exit Setup.'

module.exports =
	slug: 'intel-nuc'
	aliases: [ 'nuc' ]
	name: 'Intel NUC'
	arch: 'amd64'
	state: 'preview'

	stateInstructions:
		postProvisioning: [
			instructions.BOARD_SHUTDOWN
			instructions.REMOVE_INSTALL_MEDIA
			NUC_POWERON
			NUC_BOOT_SETUP
		]

	instructions:
		windows: [
			instructions.WINDOWS_DISK_IMAGER_USB
			instructions.EJECT_USB
			instructions.FLASHER_WARNING
			NUC_FLASH
			instructions.BOARD_SHUTDOWN
			instructions.REMOVE_INSTALL_MEDIA
			NUC_POWERON
			NUC_BOOT_SETUP
		]
		osx: [
			instructions.OSX_PLUG_USB
			instructions.OSX_UNMOUNT_USB
			instructions.DD_BURN_IMAGE_USB
			instructions.EJECT_USB
			instructions.FLASHER_WARNING
			NUC_FLASH
			instructions.BOARD_SHUTDOWN
			instructions.REMOVE_INSTALL_MEDIA
			NUC_POWERON
			NUC_BOOT_SETUP
		]
		linux: [
			instructions.LINUX_DF_USB
			instructions.DD_BURN_IMAGE_USB
			instructions.EJECT_USB
			instructions.FLASHER_WARNING
			NUC_FLASH
			instructions.BOARD_SHUTDOWN
			instructions.REMOVE_INSTALL_MEDIA
			NUC_POWERON
			NUC_BOOT_SETUP
		]

	gettingStartedLink:
		windows: 'http://docs.resin.io/#/pages/installing/gettingStarted-NUC.md#windows'
		osx: 'http://docs.resin.io/#/pages/installing/gettingStarted-NUC.md#on-mac-and-linux'
		linux: 'http://docs.resin.io/#/pages/installing/gettingStarted-NUC.md#on-mac-and-linux'

	yocto:
		machine: 'intel-corei7-64'
		image: 'resin-image-flasher'
		fstype: 'resin-sdcard'
		version: 'yocto-jethro'
		deployArtifact: 'resin-image-flasher-intel-corei7-64.resin-sdcard'

	configuration:
		config:
			partition:
				primary: 4
				logical: 1
			path: '/config.json'

	options: [ networkOptions.group ]

	initialization: commonImg.initialization
