appTemplates = require '../templates'
requires = [
	'$routeProvider',
	'$locationProvider'
]
configFn = ($routeProvider, $locationProvider) ->
	$routeProvider

	.when '/',
		controller: 'NavigationController'
		template: appTemplates('./home.jade') page: 'home'
	.when '/posts',
		controller: 'PostsController'
		controllerAs: 'c'
		template: appTemplates('./posts.jade') page: 'posts'
	.when '/about',
		controller: 'AboutController'
		controllerAs: 'c'
		template: appTemplates('./about.jade') page: 'about'
	.when '/contacts',
		controller: 'ContactsController'
		controllerAs: 'c'
		template: appTemplates('./contacts.jade') page: 'contacts'
	.when '/test',
		controller: 'TestController'
		controllerAs: 'c'
		template: appTemplates('./test.jade') page: 'test'

	.otherwise
		controller: 'NavigationController'	
		controllerAs: 'c'
		template: appTemplates('./not-found.jade')

	$locationProvider.html5Mode
		enabled: true
		requireBase: false
		rewriteLinks: true
	return

angular.module('app').config requires, configFn