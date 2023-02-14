deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

module.exports =
	version: 1
	slug: 'myd-y6ull14x14'
	aliases: [ 'myd-y6ull14x14' ]
	name: 'MYiR MYC-Y6ULY2-V2'
	arch: 'armv7hf'
	state: 'new'

	instructions: commonImg.instructions
	supportsBlink: false

	options: [ networkOptions.group ]

	yocto:
		machine: 'myd-y6ull14x14'
		image: 'balena-image-flasher'
		fstype: 'balenaos-img'
		version: 'yocto-gatesgarth'
		deployArtifact: 'balena-image-flasher-myd-y6ull14x14.balenaos-img'
		compressed: true

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	initialization: commonImg.initialization
 