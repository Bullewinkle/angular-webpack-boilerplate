path = require 'path'

module.exports = [
	'$stateProvider',
	'$urlRouterProvider',
	'$locationProvider',
	($stateProvider, $urlRouterProvider, $locationProvider) ->
		$stateProvider
		.state 'home',
			url: '/'
			template: require '../templates/pages/home.jade'

		.state 'posts',
			url: '/posts'
			template: require '../templates/pages/posts.jade'
			resolve:
				delay: ($q, $timeout) ->
					delay = $q.defer()
					$timeout delay.resolve, 500
					delay.promise

		.state 'about',
			url: '/about'
			template: require '../templates/pages/about.jade'
			resolve:
				delay: ($q, $timeout) ->
					delay = $q.defer()
					$timeout delay.resolve, 500
					delay.promise

		.state 'contacts',
			url: '/contacts'
			template: require '../templates/pages/contacts.jade'
			resolve:
				delay: ($q, $timeout) ->
					delay = $q.defer()
					$timeout delay.resolve, 500
					delay.promise

		.state 'test',
			url: '/test'
			template: require '../templates/pages/test.jade'
			resolve:
				delay: ($q, $timeout, $rootScope) ->
					delay = $q.defer()
					$timeout delay.resolve, 500
					delay.promise

		.state 'not-found',
			url: '/not-found'
			template: require '../templates/pages/not-found.jade'

		$urlRouterProvider
		.otherwise '/not-found'

		$locationProvider.html5Mode
			enabled: true
			requireBase: false
			rewriteLinks: true

]