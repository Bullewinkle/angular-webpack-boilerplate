path = require 'path'

controllers =
	'AppController': ($location, $http) ->
		@$location = $location
		@postName = 'post name'
		@num = 0


	'HeaderController': ($scope) ->
		$scope.menu = [
			sref: 'home'
			text: 'Home'
		,
			sref: 'posts'
			text: 'Posts'
		,
			sref: 'about'
			text: 'About'
		,
			sref: 'contacts'
			text: 'Contacts'
		,
			sref: 'test'
			text: 'Test page'
		]

module.exports = controllers
