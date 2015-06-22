path = require 'path'
root = __dirname

module.exports = config =
	port: 9999
	path:
		vendors: path.join root, 'vendors'
		common: path.join root, 'common'
		assets: path.join root, 'assets'
		images: path.join root, 'assets/images'