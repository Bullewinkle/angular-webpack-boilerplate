path = require('path')

SRC = path.join(__dirname, 'src')
DIST = path.join(__dirname, 'dist')

module.exports =

	devtool: 'eval'
	cache: true
	debug: true

	context: SRC

	entry:
		"./index.coffee"

	resolve:
		root: SRC
		fallback: path.join SRC, '../'
		extensions: ["", ".webpack.js", ".web.js", ".js", ".coffee", ".jsx"]		

	output:
		path: path.join(DIST, 'assets')
		publicPath: "/assets/"
		filename: 'bundle.js'

	module:
		loaders: [
			test: /\.css$/
			loaders: ['style','css']
		,
			test: /\.styl$/
			loaders: ['style','css', 'stylus']
		,
			test: /\.jade$/
			loader: 'jade'
		,
			test: /\.coffee$/
			loader: 'coffee'
		,
			test: /\.jpg$/
			loader: "file-loader"
		,
			test: /\.png$/
			loader: "url-loader?mimetype=image/png"
		,
			test: /\.jsx$/
			loader: 'babel-loader'
	
		]	

	plugins: []

	node:
		console: true
		global: true
		process: true
		Buffer: true
		__filename: true
		__dirname: true

	recordsPath: path.join(__dirname, 'tmp/webpak_records.json')

	# node
	# 	console: true or false
	# 	global: true or false
	# 	process: true, "mock" or false
	# 	Buffer: true or false
	# 	__filename: true (real filename), "mock" ("/index.js") or false
	# 	__dirname: true (real dirname), "mock" ("/") or false
	# 	<node buildin>: true, "mock", "empty" or false



