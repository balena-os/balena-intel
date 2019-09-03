deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

SURFACE_GO_FLASH = '''
	Press and hold the Volume Down button and press the Power button. Release the Power button but keep pressing the Volume Down button until the windows logo disappears.
'''

SURFACE_GO_POWERON = 'Press the Power button.'

postProvisioningInstructions = [
	instructions.BOARD_SHUTDOWN
	instructions.REMOVE_INSTALL_MEDIA
	SURFACE_GO_POWERON
]

module.exports =
	version: 1
	slug: 'surface-go'
	name: 'Microsoft Surface Go'
	arch: 'amd64'
	state: 'experimental'

	stateInstructions:
		postProvisioning: postProvisioningInstructions

	instructions: [
		instructions.ETCHER_USB
		instructions.EJECT_USB
		instructions.FLASHER_WARNING
		SURFACE_GO_FLASH
	].concat(postProvisioningInstructions)

	gettingStartedLink:
		windows: 'http://docs.resin.io/surface-go/nodejs/getting-started/#adding-your-first-device'
		osx: 'http://docs.resin.io/surface-go/nodejs/getting-started/#adding-your-first-device'
		linux: 'http://docs.resin.io/surface-go/nodejs/getting-started/#adding-your-first-device'

	yocto:
		machine: 'surface-go'
		image: 'resin-image-flasher'
		fstype: 'resinos-img'
		version: 'yocto-warrior'
		deployArtifact: 'resin-image-flasher-surface-go.resinos-img'
		compressed: true

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	options: [ networkOptions.group ]

	initialization: commonImg.initialization
