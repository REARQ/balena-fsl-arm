deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

module.exports =
	version: 1
	slug: 'mys-6ull'
	aliases: [ 'mys-6ull', 'myir-imx6', 'myc-y6uly2', 'myc-y6uly2-v2', 'myd-y6uly2', 'myd-y6uly2-v2' ]
	name: 'MYiR MYC-Y6ULY2-V2'
	arch: 'armv7hf'
	state: 'new'

	instructions: commonImg.instructions
	supportsBlink: false

	options: [ networkOptions.group ]

	yocto:
		machine: 'mys-6ull'
		image: 'balena-image-flasher'
		fstype: 'balenaos-img'
		version: 'yocto-rocko'
		deployArtifact: 'balena-image-flasher-mys-6ull.balenaos-img'
		compressed: true

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	initialization: commonImg.initialization
 