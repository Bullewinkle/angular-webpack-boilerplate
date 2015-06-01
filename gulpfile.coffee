browserSync = require('browser-sync')
sequence = require('run-sequence')
gulp = require('gulp')
argv = require('optimist').argv
util = require('gulp-util')
plug = require('gulp-load-plugins')(camelize: true)
webpack = require('webpack')
webpackConfig = require('./webpack')


if argv.prod
	webpackConfig.debug = false
	webpackConfig.devtool = false


gulp.task 'jade', ->
	gulp.src 'src/index.jade'
		.pipe plug.plumber()
		.pipe plug.jade(pretty: true)
		.pipe gulp.dest('dist')


gulp.task 'webpack', (cb) ->
	webpack webpackConfig, (err, stats) ->
		if err then throw new util.PluginError('webpack', err)
		util.log '[webpack]', stats.toString(colors: true)
		cb()


gulp.task 'browser-sync', (cb) ->
	files = [
		"dist/**/*.js"
		"dist/**/*.css"
		"dist/**/*.html"
	]
	options =
		browser: []
		port: 8888
		server:
			baseDir: 'dist'
	browserSync files, options, cb


gulp.task 'watch', (cb) ->
	gulp.watch 'src/index.jade', ['jade']
	webpack(webpackConfig)
		.watch 200, (err, stats) ->
			if (err) then throw new util.PluginError 'webpack', err
			util.log '[webpack]', stats.toString(colors: true)

gulp.task 'server', (cb) ->
	require './server'

gulp.task 'default', ->
	sequence.apply @, [
		'jade'
		'webpack'
		[
			'server'
			'browser-sync'
			'watch'
		]
	]