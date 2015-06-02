path = require 'path'

controllers =
	'AppController': ($route, $routeParams, $location, $http) ->
		@$route = $route
		@$location = $location
		@$routeParams = $routeParams

		@postName = 'post name'
		@num = 0


	'HeaderController': ($scope) ->
		$scope.menu = [
			href: '/'
			text: 'Home'
		,
			href: '/posts'
			text: 'Posts'
		,
			href: '/about'
			text: 'About'
		,
			href: '/contacts'
			text: 'Contacts'
		,
			href: '/test'
			text: 'Test page'
		,
			href: '/wat?'
			text: 'Wat?'
		]

module.exports =  controllers
