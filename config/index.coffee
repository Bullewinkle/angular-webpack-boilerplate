console.log __dirname

require("fs").readdirSync(__dirname).forEach (file) ->
	require __dirname + file