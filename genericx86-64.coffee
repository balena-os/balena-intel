deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

GENERIC_FLASH = '''
	Please make sure you do not have any other USB keys inserted.
	Power up the <%= TYPE_NAME %>. Make sure you have a keyboard connected.
	Press the F10 key (may differ on some platforms) while BIOS is loading in order to enter the boot menu.
	Next, select the name of your USB key.
'''

GENERIC_POWERON = 'Power on your device.'

postProvisioningInstructions = [
	instructions.BOARD_SHUTDOWN
	instructions.REMOVE_INSTALL_MEDIA
	GENERIC_POWERON
]

module.exports =
	version: 1
	slug: 'intel-nuc'
	aliases: [ 'nuc' ]
	name: 'Intel NUC'
	arch: 'amd64'
	state: 'released'

	stateInstructions:
		postProvisioning: postProvisioningInstructions

	instructions: [
		instructions.ETCHER_USB
		instructions.EJECT_USB
		instructions.FLASHER_WARNING
		GENERIC_FLASH
	].concat(postProvisioningInstructions)

	gettingStartedLink:
		windows: 'http://docs.resin.io/nuc/nodejs/getting-started/#adding-your-first-device'
		osx: 'http://docs.resin.io/nuc/nodejs/getting-started/#adding-your-first-device'
		linux: 'http://docs.resin.io/nuc/nodejs/getting-started/#adding-your-first-device'

	yocto:
		machine: 'genericx86-64'
		image: 'resin-image-flasher'
		fstype: 'resinos-img'
		version: 'yocto-sumo'
		deployArtifact: 'resin-image-flasher-genericx86-64.resinos-img'
		compressed: true

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	options: [ networkOptions.group ]

	initialization: commonImg.initialization
