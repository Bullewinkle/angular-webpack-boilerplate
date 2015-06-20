appTemplates = require '../templates'

angular.module('app').config ['$stateProvider', '$urlRouterProvider', ($stateProvider, $urlRouterProvider) ->
	$urlRouterProvider

	.when '/posts',
		controller: 'AppController'
		controllerAs: 'root'
		template: appTemplates('./posts.jade') page: 'posts'
		resolve:
			delay: ($q, $timeout) ->
				delay = $q.defer()
				$timeout delay.resolve, 500
				delay.promise

	.when '/about',
		controller: 'AppController'
		controllerAs: 'root'
		template: appTemplates('./about.jade') page: 'about'
		resolve:
			delay: ($q, $timeout) ->
				delay = $q.defer()
				$timeout delay.resolve, 500
				delay.promise

	.when '/contacts',
		controller: 'AppController'
		controllerAs: 'root'
		template: appTemplates('./contacts.jade') page: 'contacts'
		resolve:
			delay: ($q, $timeout) ->
				delay = $q.defer()
				$timeout delay.resolve, 500
				delay.promise

	.when '/test',
		controller: 'AppController'
		controllerAs: 'root'
		template: appTemplates('./test.jade') page: 'test'
		resolve:
			delay: ($q, $timeout) ->
				delay = $q.defer()
				$timeout delay.resolve, 500
				delay.promise

	.otherwise
			controller: 'AppController'
			controllerAs: 'root'
			template: appTemplates('./not-found.jade')

	$locationProvider.html5Mode
		enabled: true
		requireBase: false
		rewriteLinks: true


]