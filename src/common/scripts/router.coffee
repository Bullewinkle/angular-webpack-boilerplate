appTemplates = require '../templates'

angular.module('app').config [ '$routeProvider', '$locationProvider', ($routeProvider, $locationProvider) ->
	$routeProvider

	.when '/',
		controller: 'AppController'
		controllerAs: 'root'
		template: appTemplates('./home.jade') page: 'home'
	.when '/posts',
		controller: 'AppController'
		controllerAs: 'root'
		template: appTemplates('./posts.jade') page: 'posts'
	.when '/about',
		controller: 'AppController'
		controllerAs: 'root'
		template: appTemplates('./about.jade') page: 'about'
	.when '/contacts',
		controller: 'AppController'
		controllerAs: 'root'
		template: appTemplates('./contacts.jade') page: 'contacts'
	.when '/test',
		controller: 'AppController'
		controllerAs: 'root'
		template: appTemplates('./test.jade') page: 'test'

	.otherwise
			controller: 'AppController'
			controllerAs: 'root'
			template: appTemplates('./not-found.jade')

	$locationProvider.html5Mode
		enabled: true
		requireBase: false
		rewriteLinks: true
	return

]