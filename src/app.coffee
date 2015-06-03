require '../bower_components/angular'
require '../bower_components/angular-route'
config = require './config'

console.log 'app',__dirname
console.log 'config',config

app = angular.module 'app', ['ngRoute']

appTemplates = require './common/templates'
appControllers = require './common/scripts/controllers.coffee'
appRoutes = require './common/scripts/router.coffee'
app.controller name, constructor for name, constructor of appControllers
app.run ['$location', '$rootScope', ($location, $rootScope) ->
	$rootScope.$on "$routeChangeStart", (event, next, current) ->
		console.warn '$routeChangeStart', arguments
		$rootScope.isLoading = true

	$rootScope.$on "$routeChangeSuccess", (event, next, current) ->
		console.warn '$routeChangeSuccess', arguments
		$rootScope.isLoading = false

	$rootScope.$on "$routeChangeError", (event, next, current) ->
		console.warn '$routeChangeError', arguments
		$rootScope.isLoading = false


	$rootScope.$on "$routeUpdate", (event, next, current) ->
		console.warn '$routeUpdate', arguments
]


