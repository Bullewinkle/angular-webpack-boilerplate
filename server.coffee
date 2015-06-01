path = require 'path'
express = require 'express'
app = express()
console.log 'server',__dirname
assets = path.join(__dirname, "dist/assets")

app.use '/assets', express.static assets
app.all '/*', (req, res) ->
	res.sendFile(path.join(__dirname, "dist/index.html"))

app.listen 9000, ->
	console.log '!!!!!!!!!!!!!!! SERVER STARTED !!!!!!!!!!!!!!!'