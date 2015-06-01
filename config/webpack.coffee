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

	output:
		path: path.join(DIST, 'assets')
		publicPath: "/assets/"
		filename: 'bundle.js'
				
		# path: path.join(DIST, 'assets-[hash]')
		# publicPath: "/assets-[hash]/"
		# chunkFilename: "[hash]-test"

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
	resolve:
		root: SRC
		fallback: __dirname
		extensions: ["", ".webpack.js", ".web.js", ".js", ".coffee", ".jsx"]

	plugins: [
		new HtmlWebpackPlugin({
			template: './index.html'
			title: 'Template test'
			filename: path.join(DIST, 'index.html')
			mobile: true
		})
	]

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



