deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

SURFACE_PRO_6_FLASH = '''
	Press and hold the Volume Down button and press the Power button. Release the Power button but keep pressing the Volume Down button until the windows logo disappears.
'''

SURFACE_PRO_6_POWERON = 'Press the Power button.'

postProvisioningInstructions = [
	instructions.BOARD_SHUTDOWN
	instructions.REMOVE_INSTALL_MEDIA
	SURFACE_PRO_6_POWERON
]

module.exports =
	version: 1
	slug: 'surface-pro-6'
	name: 'Microsoft Surface 6'
	arch: 'amd64'
	state: 'experimental'

	stateInstructions:
		postProvisioning: postProvisioningInstructions

	instructions: [
		instructions.ETCHER_USB
		instructions.EJECT_USB
		instructions.FLASHER_WARNING
		SURFACE_PRO_6_FLASH
	].concat(postProvisioningInstructions)

	gettingStartedLink:
		windows: 'http://docs.resin.io/surface-pro-6/nodejs/getting-started/#adding-your-first-device'
		osx: 'http://docs.resin.io/surface-pro-6/nodejs/getting-started/#adding-your-first-device'
		linux: 'http://docs.resin.io/surface-pro-6/nodejs/getting-started/#adding-your-first-device'

	yocto:
		machine: 'surface-pro-6'
		image: 'resin-image-flasher'
		fstype: 'resinos-img'
		version: 'yocto-thud'
		deployArtifact: 'resin-image-flasher-surface-pro-6.resinos-img'
		compressed: true

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	options: [ networkOptions.group ]

	initialization: commonImg.initialization
